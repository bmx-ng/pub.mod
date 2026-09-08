#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#include "lwip/dns.h"
#include "lwip/inet.h"
#include "lwip/ip_addr.h"
#include "lwip/pbuf.h"
#include "lwip/tcp.h"
#include "lwip/udp.h"
#include "hardware/sync.h"
#include "pico/cyw43_arch.h"
#include "pico/stdlib.h"

#include "blitzmax/pico_runtime.h"

#define BMX_PICO_NET_SOCKET_CAPACITY 8u
#define BMX_PICO_NET_TCP_RX_CAPACITY 4096u
#define BMX_PICO_NET_UDP_RX_CAPACITY 4u
#define BMX_PICO_NET_ACCEPT_CAPACITY 4u
#define BMX_PICO_NET_CONNECT_TIMEOUT_MS 15000u

#define BMX_PICO_NET_AF_UNSPEC 0
#define BMX_PICO_NET_AF_INET 2
#define BMX_PICO_NET_SOCK_STREAM 1
#define BMX_PICO_NET_SOCK_DGRAM 2
#define BMX_PICO_NET_IPPROTO_TCP 6
#define BMX_PICO_NET_IPPROTO_UDP 17

#define BMX_PICO_NET_SOL_SOCKET 0xffff
#define BMX_PICO_NET_SO_BROADCAST 0x20
#define BMX_PICO_NET_SO_ERROR 0x1007
#define BMX_PICO_NET_SO_TYPE 0x1008
#define BMX_PICO_NET_TCP_NODELAY 1

typedef struct BMXPicoAddrInfo {
    int32_t flags;
    int32_t family;
    int32_t socket_type;
    int32_t protocol;
    uint16_t port;
    ip_addr_t address;
    char canonical_name[DNS_MAX_NAME_LENGTH + 1];
} BMXPicoAddrInfo;

typedef struct BMXPicoSockaddrStorage {
    int32_t family;
    ip_addr_t address;
    uint16_t port;
} BMXPicoSockaddrStorage;

typedef struct BMXPicoUDPDatagram {
    struct pbuf *buffer;
    ip_addr_t address;
    uint16_t port;
} BMXPicoUDPDatagram;

typedef struct BMXPicoPendingTCP {
    struct tcp_pcb *pcb;
    volatile bool remote_closed;
    ip_addr_t address;
    uint16_t port;
} BMXPicoPendingTCP;

typedef struct BMXPicoSocket {
    uint16_t generation;
    uint8_t active;
    uint8_t type;
    int32_t error;
    volatile bool connected;
    volatile bool connecting;
    volatile bool remote_closed;
    volatile bool send_closed;
    volatile bool receive_closed;
    bool listening;
    ip_addr_t local_address;
    ip_addr_t remote_address;
    uint16_t local_port;
    uint16_t remote_port;
    union {
        struct tcp_pcb *tcp;
        struct udp_pcb *udp;
    } pcb;
    uint8_t *tcp_rx;
    volatile uint32_t tcp_rx_get;
    volatile uint32_t tcp_rx_put;
    BMXPicoUDPDatagram udp_rx[BMX_PICO_NET_UDP_RX_CAPACITY];
    volatile uint8_t udp_rx_get;
    volatile uint8_t udp_rx_put;
    BMXPicoPendingTCP accepted[BMX_PICO_NET_ACCEPT_CAPACITY];
    volatile uint8_t accepted_get;
    volatile uint8_t accepted_put;
    uint32_t readable_token;
    uint32_t writable_token;
    uint32_t accept_token;
    uint32_t closed_token;
    uint32_t error_token;
    bool readable_notified;
    bool writable_notified;
    bool accept_notified;
    bool closed_notified;
    bool error_notified;
} BMXPicoSocket;

typedef struct BMXPicoDNSRequest {
    volatile bool in_progress;
    volatile bool complete;
    volatile bool found;
    ip_addr_t address;
} BMXPicoDNSRequest;

struct pub_net_TAddrInfo_obj;
extern struct pub_net_TAddrInfo_obj *pub_net_TAddrInfo__Create(void *info, int owner);
extern BMXPicoArray *pub_net_TAddrInfo__CreateArray(int count);
extern void pub_net_TAddrInfo__SetAtIndex(BMXPicoArray *array,
    struct pub_net_TAddrInfo_obj *info, int index);
extern int32_t bmx_pico_wifi_initialized(void) __attribute__((weak));

static BMXPicoSocket bmx_pico_net_sockets[BMX_PICO_NET_SOCKET_CAPACITY];
static BMXPicoDNSRequest bmx_pico_net_dns_request;

int sendto_(int handle, const char *buffer, int size, int flags,
    const char *destination, int port, int family);
int recvfrom_(int handle, char *buffer, int size, int flags,
    int *sender_address, int *sender_port);
int bmx_stdc_accept_(int handle, BMXPicoSockaddrStorage *storage);

static void *bmx_pico_net_allocate(size_t size) {
    void *memory = bbMemAlloc(size);
    if (memory) memset(memory, 0, size);
    return memory;
}

static int32_t bmx_pico_net_handle(uint32_t index, uint16_t generation) {
    return ((int32_t)generation << 8) | (int32_t)(index + 1u);
}

static BMXPicoSocket *bmx_pico_net_socket_for_handle(int32_t handle) {
    if (handle <= 0) return NULL;
    uint32_t index = ((uint32_t)handle & 0xffu) - 1u;
    uint16_t generation = (uint16_t)((uint32_t)handle >> 8);
    if (index >= BMX_PICO_NET_SOCKET_CAPACITY) return NULL;
    BMXPicoSocket *socket = &bmx_pico_net_sockets[index];
    if (!socket->active || socket->generation != generation) return NULL;
    return socket;
}

static BMXPicoSocket *bmx_pico_net_allocate_socket(int32_t type, int32_t *handle) {
    for (uint32_t index = 0; index < BMX_PICO_NET_SOCKET_CAPACITY; ++index) {
        BMXPicoSocket *socket = &bmx_pico_net_sockets[index];
        if (socket->active) continue;
        uint16_t generation = (uint16_t)((socket->generation + 1u) & 0x7fffu);
        if (!generation) generation = 1u;
        memset(socket, 0, sizeof(*socket));
        socket->generation = generation;
        socket->active = 1u;
        socket->type = (uint8_t)type;
        ip_addr_set_zero(&socket->local_address);
        ip_addr_set_zero(&socket->remote_address);
        *handle = bmx_pico_net_handle(index, generation);
        return socket;
    }
    return NULL;
}

static uint32_t bmx_pico_net_tcp_available(const BMXPicoSocket *socket) {
    return socket->tcp_rx_put - socket->tcp_rx_get;
}

static uint32_t bmx_pico_net_udp_available(const BMXPicoSocket *socket) {
    if (socket->udp_rx_put == socket->udp_rx_get) return 0;
    const BMXPicoUDPDatagram *datagram =
        &socket->udp_rx[socket->udp_rx_get % BMX_PICO_NET_UDP_RX_CAPACITY];
    return datagram->buffer ? datagram->buffer->tot_len : 0;
}

static void bmx_pico_net_notify_readable(BMXPicoSocket *socket) {
    if (!socket->readable_token || socket->readable_notified) return;
    uint32_t available = socket->type == BMX_PICO_NET_SOCK_STREAM ?
        bmx_pico_net_tcp_available(socket) : bmx_pico_net_udp_available(socket);
    if (!available) return;
    uint32_t interrupt_state = save_and_disable_interrupts();
    if (bmx_pico_event_post_from_irq_ex(socket->readable_token, available,
            socket->type, 0, 0)) socket->readable_notified = true;
    restore_interrupts(interrupt_state);
}

static void bmx_pico_net_notify_writable(BMXPicoSocket *socket) {
    if (!socket->writable_token || socket->writable_notified ||
            socket->send_closed || socket->listening) return;
    uint32_t available = socket->type == BMX_PICO_NET_SOCK_DGRAM ? UINT16_MAX :
        (socket->connected && socket->pcb.tcp ? tcp_sndbuf(socket->pcb.tcp) : 0);
    if (!available) return;
    uint32_t interrupt_state = save_and_disable_interrupts();
    if (bmx_pico_event_post_from_irq_ex(socket->writable_token, available,
            socket->type, 0, 0)) socket->writable_notified = true;
    restore_interrupts(interrupt_state);
}

static void bmx_pico_net_notify_accept(BMXPicoSocket *socket) {
    if (!socket->accept_token || socket->accept_notified || !socket->listening)
        return;
    uint32_t pending = socket->accepted_put - socket->accepted_get;
    if (!pending) return;
    uint32_t interrupt_state = save_and_disable_interrupts();
    if (bmx_pico_event_post_from_irq_ex(socket->accept_token, pending, 0, 0, 0))
        socket->accept_notified = true;
    restore_interrupts(interrupt_state);
}

static void bmx_pico_net_notify_closed(BMXPicoSocket *socket) {
    if (!socket->closed_token || socket->closed_notified) return;
    uint32_t interrupt_state = save_and_disable_interrupts();
    if (bmx_pico_event_post_from_irq_ex(socket->closed_token, 0,
            socket->type, 0, 0)) socket->closed_notified = true;
    restore_interrupts(interrupt_state);
}

static void bmx_pico_net_notify_error(BMXPicoSocket *socket) {
    if (!socket->error_token || socket->error_notified ||
            socket->error == ERR_OK) return;
    uint32_t interrupt_state = save_and_disable_interrupts();
    if (bmx_pico_event_post_from_irq_ex(socket->error_token,
            (uint32_t)socket->error, socket->type, 0, 0))
        socket->error_notified = true;
    restore_interrupts(interrupt_state);
}

static void bmx_pico_net_tcp_error(void *argument, err_t error) {
    BMXPicoSocket *socket = (BMXPicoSocket *)argument;
    if (!socket || !socket->active) return;
    socket->pcb.tcp = NULL;
    socket->error = error;
    socket->connecting = false;
    socket->connected = false;
    socket->remote_closed = true;
    bmx_pico_net_notify_error(socket);
    bmx_pico_net_notify_closed(socket);
}

static void bmx_pico_net_pending_tcp_error(void *argument, err_t error) {
    BMXPicoPendingTCP *pending = (BMXPicoPendingTCP *)argument;
    if (!pending) return;
    pending->pcb = NULL;
    pending->remote_closed = true;
    (void)error;
}

static err_t bmx_pico_net_pending_tcp_receive(void *argument,
        struct tcp_pcb *pcb, struct pbuf *buffer, err_t error) {
    BMXPicoPendingTCP *pending = (BMXPicoPendingTCP *)argument;
    if (!pending) {
        if (buffer) pbuf_free(buffer);
        return ERR_ABRT;
    }
    if (!buffer) {
        pending->remote_closed = true;
        return ERR_OK;
    }
    (void)pcb;
    (void)error;
    return ERR_MEM;
}

static err_t bmx_pico_net_tcp_accept(void *argument, struct tcp_pcb *pcb,
        err_t error) {
    BMXPicoSocket *listener = (BMXPicoSocket *)argument;
    if (!listener || !listener->active || !listener->listening ||
            error != ERR_OK || !pcb) {
        if (pcb) tcp_abort(pcb);
        return ERR_ABRT;
    }
    uint8_t count = (uint8_t)(listener->accepted_put - listener->accepted_get);
    if (count >= BMX_PICO_NET_ACCEPT_CAPACITY) {
        tcp_abort(pcb);
        return ERR_ABRT;
    }
    BMXPicoPendingTCP *pending =
        &listener->accepted[listener->accepted_put % BMX_PICO_NET_ACCEPT_CAPACITY];
    memset(pending, 0, sizeof(*pending));
    pending->pcb = pcb;
    ip_addr_copy(pending->address, pcb->remote_ip);
    pending->port = pcb->remote_port;
    tcp_arg(pcb, pending);
    tcp_recv(pcb, bmx_pico_net_pending_tcp_receive);
    tcp_err(pcb, bmx_pico_net_pending_tcp_error);
    ++listener->accepted_put;
    bmx_pico_net_notify_accept(listener);
    return ERR_OK;
}

static err_t bmx_pico_net_tcp_connected(void *argument, struct tcp_pcb *pcb,
        err_t error) {
    BMXPicoSocket *socket = (BMXPicoSocket *)argument;
    if (!socket || !socket->active) return ERR_ABRT;
    socket->connecting = false;
    socket->error = error;
    socket->connected = error == ERR_OK;
    if (socket->connected) {
        ip_addr_copy(socket->local_address, pcb->local_ip);
        ip_addr_copy(socket->remote_address, pcb->remote_ip);
        socket->local_port = pcb->local_port;
        socket->remote_port = pcb->remote_port;
        bmx_pico_net_notify_writable(socket);
    } else {
        bmx_pico_net_notify_error(socket);
    }
    return ERR_OK;
}

static err_t bmx_pico_net_tcp_sent(void *argument, struct tcp_pcb *pcb,
        u16_t length) {
    BMXPicoSocket *socket = (BMXPicoSocket *)argument;
    if (!socket || !socket->active) return ERR_ABRT;
    socket->writable_notified = false;
    bmx_pico_net_notify_writable(socket);
    (void)pcb;
    (void)length;
    return ERR_OK;
}

static err_t bmx_pico_net_tcp_receive(void *argument, struct tcp_pcb *pcb,
        struct pbuf *buffer, err_t error) {
    BMXPicoSocket *socket = (BMXPicoSocket *)argument;
    if (!socket || !socket->active) {
        if (buffer) pbuf_free(buffer);
        return ERR_OK;
    }
    if (!buffer) {
        socket->remote_closed = true;
        socket->connected = false;
        bmx_pico_net_notify_closed(socket);
        return ERR_OK;
    }
    if (error != ERR_OK) {
        socket->error = error;
        pbuf_free(buffer);
        bmx_pico_net_notify_error(socket);
        return error;
    }
    uint32_t queued = socket->tcp_rx_put - socket->tcp_rx_get;
    uint32_t free_bytes = BMX_PICO_NET_TCP_RX_CAPACITY - queued;
    if (!socket->tcp_rx || buffer->tot_len > free_bytes) return ERR_MEM;
    uint32_t destination = socket->tcp_rx_put % BMX_PICO_NET_TCP_RX_CAPACITY;
    uint32_t first = BMX_PICO_NET_TCP_RX_CAPACITY - destination;
    if (first > buffer->tot_len) first = buffer->tot_len;
    pbuf_copy_partial(buffer, socket->tcp_rx + destination, (u16_t)first, 0);
    if (first < buffer->tot_len) {
        pbuf_copy_partial(buffer, socket->tcp_rx, (u16_t)(buffer->tot_len - first),
            (u16_t)first);
    }
    socket->tcp_rx_put += buffer->tot_len;
    pbuf_free(buffer);
    bmx_pico_net_notify_readable(socket);
    (void)pcb;
    return ERR_OK;
}

static void bmx_pico_net_udp_receive(void *argument, struct udp_pcb *pcb,
        struct pbuf *buffer, const ip_addr_t *address, u16_t port) {
    BMXPicoSocket *socket = (BMXPicoSocket *)argument;
    if (!socket || !socket->active || !buffer) {
        if (buffer) pbuf_free(buffer);
        return;
    }
    uint8_t count = (uint8_t)(socket->udp_rx_put - socket->udp_rx_get);
    if (count >= BMX_PICO_NET_UDP_RX_CAPACITY) {
        pbuf_free(buffer);
        return;
    }
    BMXPicoUDPDatagram *datagram =
        &socket->udp_rx[socket->udp_rx_put % BMX_PICO_NET_UDP_RX_CAPACITY];
    datagram->buffer = buffer;
    ip_addr_copy(datagram->address, *address);
    datagram->port = port;
    ++socket->udp_rx_put;
    bmx_pico_net_notify_readable(socket);
    (void)pcb;
}

static void bmx_pico_net_dns_found(const char *name, const ip_addr_t *address,
        void *argument) {
    BMXPicoDNSRequest *request = (BMXPicoDNSRequest *)argument;
    if (address) {
        ip_addr_copy(request->address, *address);
        request->found = true;
    }
    request->complete = true;
    request->in_progress = false;
    (void)name;
}

static bool bmx_pico_net_parse_service(const char *service, uint16_t *port) {
    if (!service || !*service) {
        *port = 0;
        return true;
    }
    if (!strcmp(service, "http")) {
        *port = 80;
        return true;
    }
    if (!strcmp(service, "https")) {
        *port = 443;
        return true;
    }
    char *end = NULL;
    long value = strtol(service, &end, 10);
    if (!end || *end || value < 0 || value > 65535) return false;
    *port = (uint16_t)value;
    return true;
}

static bool bmx_pico_net_resolve(const char *name, ip_addr_t *address) {
    if (!name || !*name) {
        ip_addr_set_any(IPADDR_TYPE_V4, address);
        return true;
    }
    if (ipaddr_aton(name, address)) return IP_IS_V4(address);
    if (!bmx_pico_wifi_initialized || !bmx_pico_wifi_initialized()) return false;
    BMXPicoDNSRequest *request = &bmx_pico_net_dns_request;
    if (request->in_progress) return false;
    memset(request, 0, sizeof(*request));
    request->in_progress = true;
    cyw43_arch_lwip_begin();
    err_t result = dns_gethostbyname(name, &request->address,
        bmx_pico_net_dns_found, request);
    cyw43_arch_lwip_end();
    if (result == ERR_OK) {
        request->in_progress = false;
        request->complete = true;
        request->found = true;
        if (!IP_IS_V4(&request->address)) return false;
        ip_addr_copy(*address, request->address);
        return true;
    }
    if (result != ERR_INPROGRESS) {
        request->in_progress = false;
        return false;
    }
    uint64_t deadline = time_us_64() + BMX_PICO_NET_CONNECT_TIMEOUT_MS * 1000ull;
    while (!request->complete && time_us_64() < deadline) {
        sleep_ms(1);
    }
    if (!request->found || !IP_IS_V4(&request->address)) return false;
    ip_addr_copy(*address, request->address);
    return true;
}

int htons_(int value) { return lwip_htons((uint16_t)value); }
int ntohs_(int value) { return lwip_ntohs((uint16_t)value); }
int htonl_(int value) { return (int)lwip_htonl((uint32_t)value); }
int ntohl_(int value) { return (int)lwip_ntohl((uint32_t)value); }

int socket_(int family, int type, int protocol) {
    if (family != BMX_PICO_NET_AF_INET && family != BMX_PICO_NET_AF_UNSPEC)
        return -1;
    if (type != BMX_PICO_NET_SOCK_STREAM && type != BMX_PICO_NET_SOCK_DGRAM)
        return -1;
    if (!bmx_pico_wifi_initialized || !bmx_pico_wifi_initialized()) return -1;
    int32_t handle = -1;
    BMXPicoSocket *socket = bmx_pico_net_allocate_socket(type, &handle);
    if (!socket) return -1;
    if (type == BMX_PICO_NET_SOCK_STREAM) {
        socket->tcp_rx = (uint8_t *)bbMemAlloc(BMX_PICO_NET_TCP_RX_CAPACITY);
        if (!socket->tcp_rx) {
            uint16_t generation = socket->generation;
            memset(socket, 0, sizeof(*socket));
            socket->generation = generation;
            return -1;
        }
    }
    cyw43_arch_lwip_begin();
    if (type == BMX_PICO_NET_SOCK_STREAM) {
        socket->pcb.tcp = tcp_new_ip_type(IPADDR_TYPE_V4);
        if (socket->pcb.tcp) {
            tcp_arg(socket->pcb.tcp, socket);
            tcp_recv(socket->pcb.tcp, bmx_pico_net_tcp_receive);
            tcp_sent(socket->pcb.tcp, bmx_pico_net_tcp_sent);
            tcp_err(socket->pcb.tcp, bmx_pico_net_tcp_error);
        }
    } else {
        socket->pcb.udp = udp_new_ip_type(IPADDR_TYPE_V4);
        if (socket->pcb.udp) udp_recv(socket->pcb.udp,
            bmx_pico_net_udp_receive, socket);
    }
    bool valid = type == BMX_PICO_NET_SOCK_STREAM ?
        socket->pcb.tcp && socket->tcp_rx : socket->pcb.udp != NULL;
    cyw43_arch_lwip_end();
    if (!valid) {
        if (socket->tcp_rx) bbMemFree(socket->tcp_rx);
        uint16_t generation = socket->generation;
        memset(socket, 0, sizeof(*socket));
        socket->generation = generation;
        return -1;
    }
    (void)protocol;
    return handle;
}

void closesocket_(int handle) {
    BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(handle);
    if (!socket) return;
    cyw43_arch_lwip_begin();
    if (socket->type == BMX_PICO_NET_SOCK_STREAM && socket->pcb.tcp) {
        tcp_arg(socket->pcb.tcp, NULL);
        if (socket->listening) {
            tcp_accept(socket->pcb.tcp, NULL);
        } else {
            tcp_recv(socket->pcb.tcp, NULL);
            tcp_sent(socket->pcb.tcp, NULL);
            tcp_err(socket->pcb.tcp, NULL);
        }
        if (tcp_close(socket->pcb.tcp) != ERR_OK) tcp_abort(socket->pcb.tcp);
    } else if (socket->type == BMX_PICO_NET_SOCK_DGRAM && socket->pcb.udp) {
        udp_recv(socket->pcb.udp, NULL, NULL);
        udp_remove(socket->pcb.udp);
    }
    for (uint32_t index = socket->accepted_get;
            index != socket->accepted_put; ++index) {
        BMXPicoPendingTCP *pending =
            &socket->accepted[index % BMX_PICO_NET_ACCEPT_CAPACITY];
        if (pending->pcb) {
            tcp_arg(pending->pcb, NULL);
            tcp_recv(pending->pcb, NULL);
            tcp_sent(pending->pcb, NULL);
            tcp_err(pending->pcb, NULL);
            tcp_abort(pending->pcb);
        }
    }
    for (uint32_t index = socket->udp_rx_get; index != socket->udp_rx_put; ++index) {
        BMXPicoUDPDatagram *datagram =
            &socket->udp_rx[index % BMX_PICO_NET_UDP_RX_CAPACITY];
        if (datagram->buffer) pbuf_free(datagram->buffer);
    }
    cyw43_arch_lwip_end();
    if (socket->tcp_rx) bbMemFree(socket->tcp_rx);
    uint16_t generation = socket->generation;
    memset(socket, 0, sizeof(*socket));
    socket->generation = generation;
}

int bind_(int handle, int family, int port) {
    BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(handle);
    if (!socket || family != BMX_PICO_NET_AF_INET || port < 0 || port > 65535)
        return -1;
    cyw43_arch_lwip_begin();
    err_t result;
    if (socket->type == BMX_PICO_NET_SOCK_STREAM) {
        result = tcp_bind(socket->pcb.tcp, IP4_ADDR_ANY, (u16_t)port);
        if (result == ERR_OK) {
            ip_addr_copy(socket->local_address, socket->pcb.tcp->local_ip);
            socket->local_port = socket->pcb.tcp->local_port;
        }
    } else {
        result = udp_bind(socket->pcb.udp, IP4_ADDR_ANY, (u16_t)port);
        if (result == ERR_OK) {
            ip_addr_copy(socket->local_address, socket->pcb.udp->local_ip);
            socket->local_port = socket->pcb.udp->local_port;
        }
    }
    cyw43_arch_lwip_end();
    if (result != ERR_OK) {
        socket->error = result;
        bmx_pico_net_notify_error(socket);
    }
    return result == ERR_OK ? 0 : -1;
}

int bmx_stdc_bind_info(int handle, BMXPicoAddrInfo *info) {
    if (!info) return -1;
    return bind_(handle, info->family, info->port);
}

int connect_(int handle, BMXPicoAddrInfo *info) {
    BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(handle);
    if (!socket || !info || info->family != BMX_PICO_NET_AF_INET ||
            socket->listening) return -1;
    cyw43_arch_lwip_begin();
    err_t result;
    if (socket->type == BMX_PICO_NET_SOCK_DGRAM) {
        result = udp_connect(socket->pcb.udp, &info->address, info->port);
        if (result == ERR_OK) {
            socket->connected = true;
            ip_addr_copy(socket->remote_address, info->address);
            socket->remote_port = info->port;
            ip_addr_copy(socket->local_address, socket->pcb.udp->local_ip);
            socket->local_port = socket->pcb.udp->local_port;
        } else {
            socket->error = result;
        }
        cyw43_arch_lwip_end();
        if (result != ERR_OK) bmx_pico_net_notify_error(socket);
        return result == ERR_OK ? 0 : -1;
    }
    socket->connecting = true;
    socket->error = ERR_OK;
    result = tcp_connect(socket->pcb.tcp, &info->address, info->port,
        bmx_pico_net_tcp_connected);
    cyw43_arch_lwip_end();
    if (result != ERR_OK) {
        socket->connecting = false;
        socket->error = result;
        return -1;
    }
    uint64_t deadline = time_us_64() + BMX_PICO_NET_CONNECT_TIMEOUT_MS * 1000ull;
    while (socket->connecting && time_us_64() < deadline) sleep_ms(1);
    if (socket->connecting) {
        cyw43_arch_lwip_begin();
        if (socket->connecting && socket->pcb.tcp) {
            tcp_arg(socket->pcb.tcp, NULL);
            tcp_recv(socket->pcb.tcp, NULL);
            tcp_sent(socket->pcb.tcp, NULL);
            tcp_err(socket->pcb.tcp, NULL);
            tcp_abort(socket->pcb.tcp);
            socket->pcb.tcp = NULL;
        }
        socket->connecting = false;
        socket->connected = false;
        socket->remote_closed = true;
        socket->error = ERR_TIMEOUT;
        cyw43_arch_lwip_end();
        bmx_pico_net_notify_error(socket);
        return -1;
    }
    return socket->connected ? 0 : -1;
}

int listen_(int handle, int backlog) {
    BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(handle);
    if (!socket || socket->type != BMX_PICO_NET_SOCK_STREAM ||
            !socket->pcb.tcp || socket->listening) return -1;
    if (backlog <= 0) backlog = 1;
    if (backlog > (int)BMX_PICO_NET_ACCEPT_CAPACITY)
        backlog = BMX_PICO_NET_ACCEPT_CAPACITY;
    cyw43_arch_lwip_begin();
    err_t error = ERR_OK;
    struct tcp_pcb *listener = (struct tcp_pcb *)tcp_listen_with_backlog_and_err(
        socket->pcb.tcp, (u8_t)backlog, &error);
    if (listener) {
        socket->pcb.tcp = listener;
        socket->listening = true;
        tcp_arg(listener, socket);
        tcp_accept(listener, bmx_pico_net_tcp_accept);
    }
    cyw43_arch_lwip_end();
    if (!listener) {
        socket->error = error;
        bmx_pico_net_notify_error(socket);
        return -1;
    }
    if (socket->tcp_rx) {
        bbMemFree(socket->tcp_rx);
        socket->tcp_rx = NULL;
    }
    return 0;
}

int accept_(int handle, char *address, unsigned int *length) {
    (void)address;
    (void)length;
    return bmx_stdc_accept_(handle, NULL);
}

int bmx_stdc_accept_(int handle, BMXPicoSockaddrStorage *storage) {
    BMXPicoSocket *listener = bmx_pico_net_socket_for_handle(handle);
    if (!listener || !listener->listening) return -1;
    while (listener->accepted_get == listener->accepted_put &&
            listener->active) sleep_ms(1);
    while (listener->accepted_get != listener->accepted_put) {
        BMXPicoSocket *client;
        int32_t client_handle = -1;
        cyw43_arch_lwip_begin();
        BMXPicoPendingTCP *pending = &listener->accepted[
            listener->accepted_get % BMX_PICO_NET_ACCEPT_CAPACITY];
        struct tcp_pcb *pcb = pending->pcb;
        bool remote_closed = pending->remote_closed;
        ip_addr_t remote_address;
        ip_addr_copy(remote_address, pending->address);
        uint16_t remote_port = pending->port;
        cyw43_arch_lwip_end();
        if (!pcb) {
            ++listener->accepted_get;
            continue;
        }
        client = bmx_pico_net_allocate_socket(BMX_PICO_NET_SOCK_STREAM,
            &client_handle);
        if (!client) {
            listener->error = ERR_MEM;
            bmx_pico_net_notify_error(listener);
            return -1;
        }
        client->tcp_rx = (uint8_t *)bbMemAlloc(BMX_PICO_NET_TCP_RX_CAPACITY);
        if (!client->tcp_rx) {
            uint16_t generation = client->generation;
            memset(client, 0, sizeof(*client));
            client->generation = generation;
            listener->error = ERR_MEM;
            bmx_pico_net_notify_error(listener);
            return -1;
        }
        cyw43_arch_lwip_begin();
        pending = &listener->accepted[
            listener->accepted_get % BMX_PICO_NET_ACCEPT_CAPACITY];
        if (pending->pcb != pcb) {
            cyw43_arch_lwip_end();
            bbMemFree(client->tcp_rx);
            uint16_t generation = client->generation;
            memset(client, 0, sizeof(*client));
            client->generation = generation;
            continue;
        }
        memset(pending, 0, sizeof(*pending));
        ++listener->accepted_get;
        if (listener->accepted_get == listener->accepted_put)
            listener->accept_notified = false;
        client->pcb.tcp = pcb;
        client->connected = !remote_closed;
        client->remote_closed = remote_closed;
        ip_addr_copy(client->local_address, pcb->local_ip);
        ip_addr_copy(client->remote_address, remote_address);
        client->local_port = pcb->local_port;
        client->remote_port = remote_port;
        tcp_backlog_accepted(pcb);
        tcp_arg(pcb, client);
        tcp_recv(pcb, bmx_pico_net_tcp_receive);
        tcp_sent(pcb, bmx_pico_net_tcp_sent);
        tcp_err(pcb, bmx_pico_net_tcp_error);
        cyw43_arch_lwip_end();
        if (storage) {
            storage->family = BMX_PICO_NET_AF_INET;
            ip_addr_copy(storage->address, remote_address);
            storage->port = remote_port;
        }
        return client_handle;
    }
    return -1;
}

static bool bmx_pico_net_readable(BMXPicoSocket *socket) {
    if (socket->listening)
        return socket->accepted_put != socket->accepted_get;
    if (socket->type == BMX_PICO_NET_SOCK_STREAM)
        return socket->tcp_rx_put != socket->tcp_rx_get || socket->remote_closed;
    return socket->udp_rx_put != socket->udp_rx_get;
}

static bool bmx_pico_net_writable(BMXPicoSocket *socket) {
    if (socket->send_closed || socket->listening) return false;
    if (socket->type == BMX_PICO_NET_SOCK_DGRAM) return true;
    return socket->connected && socket->pcb.tcp && tcp_sndbuf(socket->pcb.tcp) > 0;
}

int select_(int read_count, int *read_handles, int write_count,
        int *write_handles, int exception_count, int *exception_handles,
        int millis) {
    uint64_t deadline = millis < 0 ? UINT64_MAX :
        time_us_64() + (uint64_t)millis * 1000ull;
    while (true) {
        int ready = 0;
        cyw43_arch_lwip_begin();
        for (int index = 0; index < read_count; ++index) {
            BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(read_handles[index]);
            if (socket && bmx_pico_net_readable(socket)) ++ready;
        }
        for (int index = 0; index < write_count; ++index) {
            BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(write_handles[index]);
            if (socket && bmx_pico_net_writable(socket)) ++ready;
        }
        for (int index = 0; index < exception_count; ++index) {
            BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(exception_handles[index]);
            if (socket && socket->error != ERR_OK) ++ready;
        }
        cyw43_arch_lwip_end();
        if (ready || time_us_64() >= deadline) {
            cyw43_arch_lwip_begin();
            for (int index = 0; index < read_count; ++index) {
                BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(read_handles[index]);
                if (!socket || !bmx_pico_net_readable(socket)) read_handles[index] = 0;
            }
            for (int index = 0; index < write_count; ++index) {
                BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(write_handles[index]);
                if (!socket || !bmx_pico_net_writable(socket)) write_handles[index] = 0;
            }
            for (int index = 0; index < exception_count; ++index) {
                BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(exception_handles[index]);
                if (!socket || socket->error == ERR_OK) exception_handles[index] = 0;
            }
            cyw43_arch_lwip_end();
            return ready;
        }
        sleep_ms(1);
    }
}

static int bmx_pico_net_udp_send(BMXPicoSocket *socket, const char *buffer,
        int size, const ip_addr_t *address, uint16_t port) {
    cyw43_arch_lwip_begin();
    struct pbuf *packet = pbuf_alloc(PBUF_TRANSPORT, (u16_t)size, PBUF_RAM);
    err_t result = packet ? pbuf_take(packet, buffer, (u16_t)size) : ERR_MEM;
    if (result == ERR_OK) result = udp_sendto(socket->pcb.udp, packet,
        address, port);
    if (packet) pbuf_free(packet);
    cyw43_arch_lwip_end();
    if (result != ERR_OK) {
        socket->error = result;
        bmx_pico_net_notify_error(socket);
    }
    return result == ERR_OK ? size : -1;
}

int send_(int handle, const char *buffer, size_t size, int flags) {
    BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(handle);
    if (!socket || !buffer || socket->send_closed) return -1;
    if (!size) return 0;
    if (socket->type == BMX_PICO_NET_SOCK_DGRAM) {
        if (!socket->connected) return -1;
        if (size > UINT16_MAX) return -1;
        return bmx_pico_net_udp_send(socket, buffer, (int)size,
            &socket->remote_address, socket->remote_port);
    }
    if (!socket->connected || !socket->pcb.tcp) return -1;
    u16_t count;
    err_t result;
    do {
        cyw43_arch_lwip_begin();
        count = tcp_sndbuf(socket->pcb.tcp);
        if (count > size) count = (u16_t)size;
        result = count ? tcp_write(socket->pcb.tcp, buffer, count,
            TCP_WRITE_FLAG_COPY) : ERR_MEM;
        if (result == ERR_OK) tcp_output(socket->pcb.tcp);
        cyw43_arch_lwip_end();
        if (result == ERR_MEM) sleep_ms(1);
    } while (result == ERR_MEM && socket->connected);
    (void)flags;
    if (result != ERR_OK) {
        socket->error = result;
        bmx_pico_net_notify_error(socket);
    }
    return result == ERR_OK ? count : -1;
}

int recv_(int handle, char *buffer, size_t size, int flags) {
    BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(handle);
    if (!socket || !buffer || socket->receive_closed) return -1;
    if (!size) return 0;
    if (socket->type == BMX_PICO_NET_SOCK_DGRAM) {
        int sender_address, sender_port;
        return recvfrom_(handle, buffer, (int)size, flags,
            &sender_address, &sender_port);
    }
    while (socket->tcp_rx_put == socket->tcp_rx_get && !socket->remote_closed &&
            socket->error == ERR_OK) sleep_ms(1);
    cyw43_arch_lwip_begin();
    uint32_t available = socket->tcp_rx_put - socket->tcp_rx_get;
    if (!available) {
        cyw43_arch_lwip_end();
        return socket->remote_closed ? 0 : -1;
    }
    uint32_t count = available < size ? available : (uint32_t)size;
    uint32_t source = socket->tcp_rx_get % BMX_PICO_NET_TCP_RX_CAPACITY;
    uint32_t first = BMX_PICO_NET_TCP_RX_CAPACITY - source;
    if (first > count) first = count;
    memcpy(buffer, socket->tcp_rx + source, first);
    if (first < count) memcpy(buffer + first, socket->tcp_rx, count - first);
    socket->tcp_rx_get += count;
    if (socket->tcp_rx_get == socket->tcp_rx_put)
        socket->readable_notified = false;
    if (socket->pcb.tcp) tcp_recved(socket->pcb.tcp, (u16_t)count);
    cyw43_arch_lwip_end();
    (void)flags;
    return (int)count;
}

int sendto_(int handle, const char *buffer, int size, int flags,
        const char *destination, int port, int family) {
    BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(handle);
    if (!socket || socket->type != BMX_PICO_NET_SOCK_DGRAM || !buffer ||
            size < 0 || port < 0 || port > 65535 || family != BMX_PICO_NET_AF_INET) {
        if (socket) {
            socket->error = ERR_ARG;
            bmx_pico_net_notify_error(socket);
        }
        return -1;
    }
    ip_addr_t address;
    if (!ipaddr_aton(destination, &address) || !IP_IS_V4(&address)) {
        socket->error = ERR_ARG;
        bmx_pico_net_notify_error(socket);
        return -1;
    }
    (void)flags;
    if (size > UINT16_MAX) return -1;
    return bmx_pico_net_udp_send(socket, buffer, size, &address,
        (uint16_t)port);
}

int recvfrom_(int handle, char *buffer, int size, int flags,
        int *sender_address, int *sender_port) {
    BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(handle);
    if (!socket || socket->type != BMX_PICO_NET_SOCK_DGRAM || !buffer || size < 0)
        return -1;
    while (socket->udp_rx_put == socket->udp_rx_get && !socket->receive_closed)
        sleep_ms(1);
    cyw43_arch_lwip_begin();
    if (socket->udp_rx_put == socket->udp_rx_get) {
        cyw43_arch_lwip_end();
        return 0;
    }
    BMXPicoUDPDatagram *datagram =
        &socket->udp_rx[socket->udp_rx_get % BMX_PICO_NET_UDP_RX_CAPACITY];
    uint16_t count = datagram->buffer->tot_len < size ? datagram->buffer->tot_len :
        (uint16_t)size;
    pbuf_copy_partial(datagram->buffer, buffer, count, 0);
    if (sender_address) *sender_address = (int)lwip_ntohl(ip_2_ip4(
        &datagram->address)->addr);
    if (sender_port) *sender_port = datagram->port;
    pbuf_free(datagram->buffer);
    memset(datagram, 0, sizeof(*datagram));
    ++socket->udp_rx_get;
    if (socket->udp_rx_get == socket->udp_rx_put)
        socket->readable_notified = false;
    cyw43_arch_lwip_end();
    (void)flags;
    return count;
}

int setsockopt_(int handle, int level, int option, const void *value, int count) {
    BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(handle);
    if (!socket || !value || count < (int)sizeof(int)) return -1;
    int enabled = *(const int *)value;
    if (level == BMX_PICO_NET_IPPROTO_TCP && option == BMX_PICO_NET_TCP_NODELAY &&
            socket->type == BMX_PICO_NET_SOCK_STREAM && !socket->listening) {
        cyw43_arch_lwip_begin();
        if (enabled) tcp_nagle_disable(socket->pcb.tcp);
        else tcp_nagle_enable(socket->pcb.tcp);
        cyw43_arch_lwip_end();
        return 0;
    }
    if (level == BMX_PICO_NET_SOL_SOCKET && option == BMX_PICO_NET_SO_BROADCAST &&
            socket->type == BMX_PICO_NET_SOCK_DGRAM) return 0;
    return -1;
}

int getsockopt_(int handle, int level, int option, void *value, int *count) {
    BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(handle);
    if (!socket || !value || !count || *count < (int)sizeof(int) ||
            level != BMX_PICO_NET_SOL_SOCKET) return -1;
    if (option == BMX_PICO_NET_SO_ERROR) {
        *(int *)value = socket->error;
        socket->error = ERR_OK;
        socket->error_notified = false;
    }
    else if (option == BMX_PICO_NET_SO_TYPE) *(int *)value = socket->type;
    else return -1;
    *count = sizeof(int);
    return 0;
}

int shutdown_(int handle, int how) {
    BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(handle);
    if (!socket) return -1;
    if (how == 0 || how == 2) socket->receive_closed = true;
    if (how == 1 || how == 2) socket->send_closed = true;
    if (socket->type == BMX_PICO_NET_SOCK_STREAM && socket->pcb.tcp) {
        if (socket->listening) return -1;
        cyw43_arch_lwip_begin();
        err_t result = tcp_shutdown(socket->pcb.tcp, how != 1, how != 0);
        cyw43_arch_lwip_end();
        if (result != ERR_OK) {
            socket->error = result;
            bmx_pico_net_notify_error(socket);
        }
        return result == ERR_OK ? 0 : -1;
    }
    return 0;
}

int bmx_net_read_avail(int handle) {
    BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(handle);
    if (!socket) return 0;
    cyw43_arch_lwip_begin();
    int count = socket->type == BMX_PICO_NET_SOCK_STREAM ?
        (int)(socket->tcp_rx_put - socket->tcp_rx_get) :
        (socket->udp_rx_put == socket->udp_rx_get ? 0 :
            socket->udp_rx[socket->udp_rx_get % BMX_PICO_NET_UDP_RX_CAPACITY].buffer->tot_len);
    cyw43_arch_lwip_end();
    return count;
}

int bmx_net_set_event_tokens(int handle, uint32_t readable_token,
        uint32_t writable_token, uint32_t accept_token,
        uint32_t closed_token, uint32_t error_token) {
    BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(handle);
    if (!socket) return 0;
    cyw43_arch_lwip_begin();
    uint32_t interrupt_state = save_and_disable_interrupts();
    socket->readable_token = readable_token;
    socket->writable_token = writable_token;
    socket->accept_token = accept_token;
    socket->closed_token = closed_token;
    socket->error_token = error_token;
    socket->readable_notified = false;
    socket->writable_notified = false;
    socket->accept_notified = false;
    socket->closed_notified = false;
    socket->error_notified = false;
    bmx_pico_net_notify_readable(socket);
    bmx_pico_net_notify_writable(socket);
    bmx_pico_net_notify_accept(socket);
    if (socket->remote_closed) bmx_pico_net_notify_closed(socket);
    bmx_pico_net_notify_error(socket);
    restore_interrupts(interrupt_state);
    cyw43_arch_lwip_end();
    return 1;
}

static const BMXPicoString *bmx_pico_net_address_string(const ip_addr_t *address) {
    char text[IP4ADDR_STRLEN_MAX];
    if (!ipaddr_ntoa_r(address, text, sizeof(text))) return &bmx_pico_empty_string;
    return bmx_pico_string_from_utf8_string((const uint8_t *)text);
}

int bmx_stdc_getsockname(int handle, int *port, const BMXPicoString **address) {
    BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(handle);
    if (!socket || !port || !address) return -1;
    *port = socket->local_port;
    *address = bmx_pico_net_address_string(&socket->local_address);
    return 0;
}

int bmx_stdc_getpeername(int handle, int *port, const BMXPicoString **address) {
    BMXPicoSocket *socket = bmx_pico_net_socket_for_handle(handle);
    if (!socket || !port || !address || !socket->connected) return -1;
    *port = socket->remote_port;
    *address = bmx_pico_net_address_string(&socket->remote_address);
    return 0;
}

BMXPicoArray *getaddrinfo_hints(const BMXPicoString *name,
        const BMXPicoString *service,
        BMXPicoAddrInfo *hints) {
    uint8_t *name_text = bmx_pico_string_to_utf8_string(name);
    uint8_t *service_text = service == &bmx_pico_empty_string ? NULL :
        bmx_pico_string_to_utf8_string(service);
    uint16_t port;
    ip_addr_t address;
    bool valid = (!hints || hints->family == BMX_PICO_NET_AF_UNSPEC ||
        hints->family == BMX_PICO_NET_AF_INET) &&
        bmx_pico_net_parse_service((const char *)service_text, &port) &&
        bmx_pico_net_resolve((const char *)name_text, &address);
    bbMemFree(service_text);
    bbMemFree(name_text);
    if (!valid) return &bmx_pico_empty_array;
    BMXPicoAddrInfo *info = (BMXPicoAddrInfo *)bmx_pico_net_allocate(sizeof(*info));
    if (!info) return &bmx_pico_empty_array;
    info->family = BMX_PICO_NET_AF_INET;
    info->socket_type = hints ? hints->socket_type : 0;
    info->protocol = hints ? hints->protocol : 0;
    info->flags = hints ? hints->flags : 0;
    info->port = port;
    ip_addr_copy(info->address, address);
    BMXPicoArray *array = pub_net_TAddrInfo__CreateArray(1);
    if (array == &bmx_pico_empty_array) {
        bbMemFree(info);
        return array;
    }
    BMXPicoArray *array_root = array;
    BMXPicoRootSlot root_slot = {
        (void *)&array_root, BMX_PICO_ROOT_ARRAY, NULL
    };
    BMXPicoRootFrame root_frame;
    bmx_pico_root_frame_enter(&root_frame, &root_slot, 1);
    struct pub_net_TAddrInfo_obj *object = pub_net_TAddrInfo__Create(info, 1);
    if (object) pub_net_TAddrInfo__SetAtIndex(array_root, object, 0);
    else bbMemFree(info);
    bmx_pico_root_frame_leave(&root_frame);
    return array_root;
}

BMXPicoArray *getaddrinfo_(const BMXPicoString *name,
        const BMXPicoString *service, int family) {
    BMXPicoAddrInfo hints = {0};
    hints.family = family;
    return getaddrinfo_hints(name, service, &hints);
}

BMXPicoAddrInfo *bmx_stdc_addrinfo_new(void) {
    return (BMXPicoAddrInfo *)bmx_pico_net_allocate(sizeof(BMXPicoAddrInfo));
}
void bmx_stdc_addrinfo_delete(BMXPicoAddrInfo *info) { bbMemFree(info); }
void freeaddrinfo_(BMXPicoAddrInfo *info) { bbMemFree(info); }
int bmx_stdc_addrinfo_flags(BMXPicoAddrInfo *info) { return info ? info->flags : 0; }
int bmx_stdc_addrinfo_family(BMXPicoAddrInfo *info) { return info ? info->family : 0; }
int bmx_stdc_addrinfo_socktype(BMXPicoAddrInfo *info) { return info ? info->socket_type : 0; }
int bmx_stdc_addrinfo_protocol(BMXPicoAddrInfo *info) { return info ? info->protocol : 0; }
int bmx_stdc_addrinfo_addrlen(BMXPicoAddrInfo *info) { return info ? 4 : 0; }
void *bmx_stdc_addrinfo_addr(BMXPicoAddrInfo *info) { return info ? &info->address : NULL; }
const BMXPicoString *bmx_stdc_addrinfo_hostname(BMXPicoAddrInfo *info, int flags) {
    (void)flags;
    return info ? bmx_pico_net_address_string(&info->address) : &bmx_pico_empty_string;
}
const BMXPicoString *bmx_stdc_addrinfo_canonname(BMXPicoAddrInfo *info) {
    return info && info->canonical_name[0] ?
        bmx_pico_string_from_utf8_string((const uint8_t *)info->canonical_name) :
        &bmx_pico_empty_string;
}
void bmx_stdc_addrinfo_setflags(BMXPicoAddrInfo *info, int value) { if (info) info->flags = value; }
void bmx_stdc_addrinfo_setfamily(BMXPicoAddrInfo *info, int value) { if (info) info->family = value; }
void bmx_stdc_addrinfo_setsocktype(BMXPicoAddrInfo *info, int value) { if (info) info->socket_type = value; }
void bmx_stdc_addrinfo_setprotocol(BMXPicoAddrInfo *info, int value) { if (info) info->protocol = value; }

int inet_pton_(int family, const BMXPicoString *source, void *destination) {
    if (family != BMX_PICO_NET_AF_INET || !destination) return -1;
    uint8_t *text = bmx_pico_string_to_utf8_string(source);
    ip4_addr_t address;
    int result = ip4addr_aton((const char *)text, &address);
    bbMemFree(text);
    if (result) memcpy(destination, &address.addr, sizeof(address.addr));
    return result;
}

BMXPicoSockaddrStorage *bmx_stdc_sockaddrestorage_new(void) {
    return (BMXPicoSockaddrStorage *)bmx_pico_net_allocate(
        sizeof(BMXPicoSockaddrStorage));
}
int bmx_stdc_sockaddrestorage_family(BMXPicoSockaddrStorage *storage) {
    return storage ? storage->family : 0;
}
const BMXPicoString *bmx_stdc_sockaddrestorage_address(BMXPicoSockaddrStorage *storage) {
    return storage ? bmx_pico_net_address_string(&storage->address) :
        &bmx_pico_empty_string;
}
void bmx_net_sockaddrestorage_free(BMXPicoSockaddrStorage *storage) {
    bbMemFree(storage);
}

char *gethostbyaddr_(void *address, int length, int family) {
    (void)address; (void)length; (void)family;
    return NULL;
}

void bb_net_Startup(void) {}

uint32_t bmx_pico_net_active_socket_count(void) {
    uint32_t count = 0;
    for (uint32_t index = 0; index < BMX_PICO_NET_SOCKET_CAPACITY; ++index) {
        if (bmx_pico_net_sockets[index].active) ++count;
    }
    return count;
}
