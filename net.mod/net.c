#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <errno.h>

#if defined(_WIN32) || defined(_WIN64)

#define WIN32_LEAN_AND_MEAN
#include <winsock2.h>
#include <windows.h>
#include <ws2tcpip.h>

extern int bmx_inet_pton(int af, const char *src, void *dst);
#define inet_pton bmx_inet_pton

#else

#if defined(BMX_EMBEDDED)
#include "lwip/inet.h"
#include "lwip/netdb.h"
#include "lwip/sockets.h"
#include <netdb.h>
#else
#include <unistd.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <sys/ioctl.h>
#include <netdb.h>
#include <arpa/inet.h>
#endif

#endif

#if defined(BMX_EMBEDDED)
#include <blitzmax/embedded_runtime.h>
#if defined(BMX_ESP32)
#include "esp_err.h"
#include "esp_netif.h"
#include "freertos/FreeRTOS.h"
#include "freertos/semphr.h"
#include "freertos/task.h"
#include <blitzmax/embedded_events.h>
#endif
typedef const BMXEmbeddedString BBString;
typedef BMXEmbeddedObject BBObject;
typedef BMXEmbeddedArray BBArray;
typedef const BMXEmbeddedString *BBSTRING;
#define bbEmptyString bmx_embedded_empty_string
#define bbEmptyArray bmx_embedded_empty_array
#define bbStringToUTF8String bmx_embedded_string_to_utf8_string
#define bbStringToCString bmx_embedded_string_to_c_string
#define bbStringFromUTF8String bmx_embedded_string_from_utf8_string
#define bbStringFromCString(value) bmx_embedded_string_from_c_string((const uint8_t *)(value))
#else
#include <brl.mod/blitz.mod/blitz.h>
#endif

#if defined(_WIN32) || defined(_WIN64)
typedef int bmx_socklen_t;
#else
typedef socklen_t bmx_socklen_t;
#endif

extern BBObject * pub_net_TAddrInfo__Create(struct addrinfo * info, int owner);
extern BBArray * pub_net_TAddrInfo__CreateArray(int count);
extern void pub_net_TAddrInfo__SetAtIndex(BBArray * arr, BBObject * info, int index);
extern void pub_net_TAddrInfo__SetOwner(BBObject * info, BBObject * owner);

static int bmx_net_native_family(int family);

#if defined(BMX_ESP32)
static int bmx_net_esp32_initialized;

#define BMX_NET_EVENT_SOCKET_CAPACITY 16
#define BMX_NET_EVENT_READABLE 1u
#define BMX_NET_EVENT_WRITABLE 2u
#define BMX_NET_EVENT_ACCEPT 4u
#define BMX_NET_EVENT_CLOSED 8u
#define BMX_NET_EVENT_ERROR 16u

typedef struct BMXNetEventSocket {
	int socket;
	int type;
	int listening;
	uint32_t readable_token;
	uint32_t writable_token;
	uint32_t accept_token;
	uint32_t closed_token;
	uint32_t error_token;
	uint32_t notified;
} BMXNetEventSocket;

static BMXNetEventSocket bmx_net_event_sockets[BMX_NET_EVENT_SOCKET_CAPACITY];
static int bmx_net_listener_sockets[BMX_NET_EVENT_SOCKET_CAPACITY];
static SemaphoreHandle_t bmx_net_event_mutex;
static TaskHandle_t bmx_net_event_task_handle;
static uint32_t bmx_net_active_socket_count;
static portMUX_TYPE bmx_net_socket_count_lock = portMUX_INITIALIZER_UNLOCKED;

static void bmx_net_socket_opened(void) {
	portENTER_CRITICAL(&bmx_net_socket_count_lock);
	++bmx_net_active_socket_count;
	portEXIT_CRITICAL(&bmx_net_socket_count_lock);
}

static void bmx_net_socket_closed(void) {
	portENTER_CRITICAL(&bmx_net_socket_count_lock);
	if (bmx_net_active_socket_count) --bmx_net_active_socket_count;
	portEXIT_CRITICAL(&bmx_net_socket_count_lock);
}

uint32_t bmx_embedded_net_active_socket_count(void) {
	uint32_t count;
	portENTER_CRITICAL(&bmx_net_socket_count_lock);
	count = bmx_net_active_socket_count;
	portEXIT_CRITICAL(&bmx_net_socket_count_lock);
	return count;
}

static void bmx_net_listener_mark(int socket) {
	int free_index = -1;
	for (int index = 0; index < BMX_NET_EVENT_SOCKET_CAPACITY; ++index) {
		if (bmx_net_listener_sockets[index] == socket + 1) return;
		if (!bmx_net_listener_sockets[index] && free_index < 0) free_index = index;
	}
	if (free_index >= 0) bmx_net_listener_sockets[free_index] = socket + 1;
}

static void bmx_net_listener_unmark(int socket) {
	for (int index = 0; index < BMX_NET_EVENT_SOCKET_CAPACITY; ++index) {
		if (bmx_net_listener_sockets[index] == socket + 1)
			bmx_net_listener_sockets[index] = 0;
	}
}

static int bmx_net_listener_is_marked(int socket) {
	for (int index = 0; index < BMX_NET_EVENT_SOCKET_CAPACITY; ++index) {
		if (bmx_net_listener_sockets[index] == socket + 1) return 1;
	}
	return 0;
}

static BMXNetEventSocket *bmx_net_event_find_locked(int socket) {
	for (int index = 0; index < BMX_NET_EVENT_SOCKET_CAPACITY; ++index) {
		if (bmx_net_event_sockets[index].socket == socket)
			return &bmx_net_event_sockets[index];
	}
	return NULL;
}

static void bmx_net_event_reset(int socket, uint32_t events) {
	if (!bmx_net_event_mutex) return;
	if (xSemaphoreTake(bmx_net_event_mutex, portMAX_DELAY) == pdTRUE) {
		BMXNetEventSocket *entry = bmx_net_event_find_locked(socket);
		if (entry) entry->notified &= ~events;
		xSemaphoreGive(bmx_net_event_mutex);
	}
}

static void bmx_net_event_remove(int socket) {
	if (!bmx_net_event_mutex) return;
	if (xSemaphoreTake(bmx_net_event_mutex, portMAX_DELAY) == pdTRUE) {
		BMXNetEventSocket *entry = bmx_net_event_find_locked(socket);
		if (entry) {
			memset(entry, 0, sizeof(*entry));
			entry->socket = -1;
		}
		xSemaphoreGive(bmx_net_event_mutex);
	}
}

static void bmx_net_event_monitor(void *unused) {
	(void)unused;
	for (;;) {
		fd_set reads, writes, errors;
		FD_ZERO(&reads);
		FD_ZERO(&writes);
		FD_ZERO(&errors);
		int maximum = -1;
		if (xSemaphoreTake(bmx_net_event_mutex, portMAX_DELAY) == pdTRUE) {
			for (int index = 0; index < BMX_NET_EVENT_SOCKET_CAPACITY; ++index) {
				BMXNetEventSocket *entry = &bmx_net_event_sockets[index];
				if (entry->socket < 0) continue;
				int wants_accept = entry->listening && entry->accept_token &&
					!(entry->notified & BMX_NET_EVENT_ACCEPT);
				int wants_read = !entry->listening && entry->readable_token &&
					!(entry->notified & BMX_NET_EVENT_READABLE);
				int wants_close = !entry->listening && entry->closed_token &&
					!(entry->notified & BMX_NET_EVENT_CLOSED) &&
					(!entry->readable_token || !(entry->notified & BMX_NET_EVENT_READABLE));
				if (wants_accept || wants_read || wants_close)
					FD_SET(entry->socket, &reads);
				if (!entry->listening && entry->writable_token &&
						!(entry->notified & BMX_NET_EVENT_WRITABLE))
					FD_SET(entry->socket, &writes);
				if (entry->error_token && !(entry->notified & BMX_NET_EVENT_ERROR))
					FD_SET(entry->socket, &errors);
				if (entry->socket > maximum) maximum = entry->socket;
			}
			xSemaphoreGive(bmx_net_event_mutex);
		}
		if (maximum < 0) {
			ulTaskNotifyTake(pdTRUE, pdMS_TO_TICKS(100));
			continue;
		}
		struct timeval timeout = {.tv_sec = 0, .tv_usec = 50000};
		int ready = select(maximum + 1, &reads, &writes, &errors, &timeout);
		if (ready <= 0) continue;
		if (xSemaphoreTake(bmx_net_event_mutex, portMAX_DELAY) != pdTRUE) continue;
		for (int index = 0; index < BMX_NET_EVENT_SOCKET_CAPACITY; ++index) {
			BMXNetEventSocket *entry = &bmx_net_event_sockets[index];
			if (entry->socket < 0) continue;
			if (FD_ISSET(entry->socket, &errors) && entry->error_token &&
					!(entry->notified & BMX_NET_EVENT_ERROR)) {
				int error = 0;
				socklen_t length = sizeof(error);
				if (getsockopt(entry->socket, SOL_SOCKET, SO_ERROR, &error, &length) == 0 && error &&
						bmx_embedded_event_post(entry->error_token, (uint32_t)error,
							(uint32_t)entry->type)) entry->notified |= BMX_NET_EVENT_ERROR;
			}
			if (FD_ISSET(entry->socket, &reads)) {
				if (entry->listening && entry->accept_token && !(entry->notified & BMX_NET_EVENT_ACCEPT)) {
					if (bmx_embedded_event_post(entry->accept_token, 1, 0))
						entry->notified |= BMX_NET_EVENT_ACCEPT;
				} else if (!entry->listening) {
					char probe;
					int closed = entry->type == SOCK_STREAM &&
						recv(entry->socket, &probe, 1, MSG_PEEK | MSG_DONTWAIT) == 0;
					if (closed && entry->closed_token && !(entry->notified & BMX_NET_EVENT_CLOSED)) {
						if (bmx_embedded_event_post(entry->closed_token, 0,
								(uint32_t)entry->type)) entry->notified |= BMX_NET_EVENT_CLOSED;
					} else if (entry->readable_token && !(entry->notified & BMX_NET_EVENT_READABLE)) {
						int available = 0;
						(void)ioctl(entry->socket, FIONREAD, &available);
						if (bmx_embedded_event_post(entry->readable_token,
								(uint32_t)available, (uint32_t)entry->type))
							entry->notified |= BMX_NET_EVENT_READABLE;
					}
				}
			}
			if (FD_ISSET(entry->socket, &writes) && entry->writable_token &&
					!(entry->notified & BMX_NET_EVENT_WRITABLE)) {
				if (bmx_embedded_event_post(entry->writable_token, 1,
						(uint32_t)entry->type)) entry->notified |= BMX_NET_EVENT_WRITABLE;
			}
		}
		xSemaphoreGive(bmx_net_event_mutex);
		vTaskDelay(1);
	}
}

static int bmx_net_event_initialize(void) {
	if (bmx_net_event_task_handle) return 1;
	if (!bmx_net_event_mutex) {
		bmx_net_event_mutex = xSemaphoreCreateMutex();
		if (!bmx_net_event_mutex) return 0;
		for (int index = 0; index < BMX_NET_EVENT_SOCKET_CAPACITY; ++index)
			bmx_net_event_sockets[index].socket = -1;
	}
	if (xTaskCreate(bmx_net_event_monitor, "bmx_socket", 4096, NULL, 4,
			&bmx_net_event_task_handle) != pdPASS) return 0;
	return 1;
}

static int bmx_net_esp32_initialize(void) {
	if (bmx_net_esp32_initialized) return 0;
	esp_err_t result = esp_netif_init();
	if (result != ESP_OK && result != ESP_ERR_INVALID_STATE) return -1;
	bmx_net_esp32_initialized = 1;
	return 0;
}

int bmx_net_set_event_tokens(int socket, uint32_t readable_token,
		uint32_t writable_token, uint32_t accept_token,
		uint32_t closed_token, uint32_t error_token) {
	if (!bmx_net_event_initialize()) return 0;
	if (xSemaphoreTake(bmx_net_event_mutex, portMAX_DELAY) != pdTRUE) return 0;
	BMXNetEventSocket *entry = bmx_net_event_find_locked(socket);
	if (!readable_token && !writable_token && !accept_token &&
			!closed_token && !error_token) {
		if (entry) {
			memset(entry, 0, sizeof(*entry));
			entry->socket = -1;
		}
		xSemaphoreGive(bmx_net_event_mutex);
		return 1;
	}
	if (!entry) {
		for (int index = 0; index < BMX_NET_EVENT_SOCKET_CAPACITY; ++index) {
			if (bmx_net_event_sockets[index].socket < 0) {
				entry = &bmx_net_event_sockets[index];
				break;
			}
		}
	}
	if (!entry) {
		xSemaphoreGive(bmx_net_event_mutex);
		return 0;
	}
	int type = 0;
	socklen_t length = sizeof(type);
	if (getsockopt(socket, SOL_SOCKET, SO_TYPE, &type, &length) != 0) {
		xSemaphoreGive(bmx_net_event_mutex);
		return 0;
	}
	int listening = bmx_net_listener_is_marked(socket) ||
		(entry->socket == socket && entry->listening);
#ifdef SO_ACCEPTCONN
	int accepting = 0;
	length = sizeof(accepting);
	if (getsockopt(socket, SOL_SOCKET, SO_ACCEPTCONN, &accepting, &length) == 0)
		listening = accepting != 0;
#endif
	memset(entry, 0, sizeof(*entry));
	entry->socket = socket;
	entry->type = type;
	entry->listening = listening;
	entry->readable_token = readable_token;
	entry->writable_token = writable_token;
	entry->accept_token = accept_token;
	entry->closed_token = closed_token;
	entry->error_token = error_token;
	xSemaphoreGive(bmx_net_event_mutex);
	xTaskNotifyGive(bmx_net_event_task_handle);
	return 1;
}
#endif

int htons_( int n ){
	return htons( n );
}

int ntohs_( int n ){
	return ntohs( n );
}

int htonl_( int n ){
	return htonl( n );
}

int ntohl_( int n ){
	return ntohl( n );
}

#if _WIN32
SOCKET socket_( int addr_type,int comm_type,int protocol ){
	return socket( bmx_net_native_family(addr_type),comm_type,protocol );
#else
int socket_( int addr_type,int comm_type,int protocol ){
#if defined(BMX_ESP32)
	if (bmx_net_esp32_initialize() != 0) return -1;
	int result = socket( bmx_net_native_family(addr_type),comm_type,protocol );
	if (result >= 0) bmx_net_socket_opened();
	return result;
#else
	return socket( bmx_net_native_family(addr_type),comm_type,protocol );
#endif
#endif
}

#if _WIN32
void closesocket_( SOCKET s ){
	closesocket( s );
#else
void closesocket_( int s ){
#if defined(BMX_ESP32)
	bmx_net_listener_unmark(s);
	bmx_net_event_remove(s);
	bmx_net_socket_closed();
#endif
	close( s );
#endif
}

#if defined(BMX_EMBEDDED)
int bmx_net_read_avail(int socket) {
    int available = 0;
    return ioctl(socket, FIONREAD, &available) < 0 ? 0 : available;
}
#endif

static int bmx_net_native_family(int family) {
	switch (family) {
		case 2:
			return AF_INET;
		case 10:
			return AF_INET6;
	}

	// unmapped
	return family;
}

int bmx_stdc_convertAFFamily(int family) {
	return bmx_net_native_family(family);
}

int bmx_stdc_unconvertAFFamily(int family) {
	if (family == AF_INET) {
		return 2;
	}
	if (family == AF_INET6) {
		return 10;
	}
	return family;
}

#if _WIN32
int bind_( SOCKET socket,int addr_type,int port ){
#else
int bind_( int socket,int addr_type,int port ){
#endif
	//	if ( addr_type!=AF_INET ) return -1;

	addr_type = bmx_stdc_convertAFFamily(addr_type);
	switch(addr_type) {
		case AF_INET:
		{
			struct sockaddr_in sa;
			memset( &sa,0,sizeof(sa) );
			sa.sin_family= bmx_stdc_convertAFFamily(addr_type);
			sa.sin_addr.s_addr=htonl(INADDR_ANY);
			sa.sin_port=htons( port );
			return bind( socket,(void*)&sa,sizeof(sa) );
		}
		case AF_INET6:
		{
			struct sockaddr_in6 sa;
			memset( &sa,0,sizeof(sa) );
			sa.sin6_family= bmx_stdc_convertAFFamily(addr_type);
			sa.sin6_addr=in6addr_any;
			sa.sin6_port=htons( port );
			return bind( socket,(void*)&sa,sizeof(sa) );
		}
		default:
			return -1;
	}

}

#if _WIN32
int bmx_stdc_bind_info(SOCKET socket, struct addrinfo * info) {
#else
int bmx_stdc_bind_info(int socket, struct addrinfo * info) {
#endif
	return bind(socket, info->ai_addr, info->ai_addrlen);
}

char *gethostbyaddr_( void *addr,int addr_len,int addr_type ){
	return NULL;
	//struct hostent *e=gethostbyaddr( addr,addr_len,addr_type );
	//return e ? e->h_name : 0;
}

BBARRAY getaddrinfo_hints(BBString *name, BBString *service, struct addrinfo * hints) {
	struct addrinfo * info;
	struct addrinfo * ip;

	unsigned char * n = bbStringToUTF8String(name);
	unsigned char * s = 0;
	if (service != &bbEmptyString) {
		s = bbStringToUTF8String(service);
	}

	int res = getaddrinfo((const char *)n, (const char *)s, hints, &info);

	bbMemFree(s);
	bbMemFree(n);

	if (res != 0) {
		return &bbEmptyArray;
	}

	int count = 0;
	for (ip = info; ip != NULL; ip = ip->ai_next) {
		count++;
	}

	BBArray * arr = pub_net_TAddrInfo__CreateArray(count);

	count = 0;
	BBObject * owner = NULL;
	for (ip = info; ip != NULL; ip = ip->ai_next) {

		BBObject * obj = pub_net_TAddrInfo__Create(ip, count == 0);
		if (count == 0) {
			owner = obj;
		} else {
			pub_net_TAddrInfo__SetOwner(obj, owner);
		}

		pub_net_TAddrInfo__SetAtIndex(arr, obj, count);

		count++;
	}

	return arr;
}

BBARRAY getaddrinfo_(BBString *name, BBString *service, int family) {
	struct addrinfo hints;

	memset(&hints, 0, sizeof(struct addrinfo));

	hints.ai_family = bmx_stdc_convertAFFamily(family);

	return getaddrinfo_hints(name, service, &hints);
}

struct addrinfo * bmx_stdc_addrinfo_new() {
	return (struct addrinfo *)calloc(1, sizeof(struct addrinfo));
}

void bmx_stdc_addrinfo_delete(struct addrinfo * info) {
	free(info);
}

void freeaddrinfo_(struct addrinfo * info ) {
	freeaddrinfo(info);
}

#if _WIN32
int connect_( SOCKET socket, struct addrinfo * info ){
#else
int connect_( int socket, struct addrinfo * info ){
#endif
	int result = connect(socket, info->ai_addr, info->ai_addrlen);
#if defined(BMX_ESP32)
	bmx_net_event_reset(socket, BMX_NET_EVENT_WRITABLE);
#endif
	return result;
}

#if _WIN32
int listen_( SOCKET socket,int backlog ){
#else
int listen_( int socket,int backlog ){
#endif
	int result = listen(socket, backlog);
#if defined(BMX_ESP32)
	if (result == 0) bmx_net_listener_mark(socket);
#endif
	return result;
}

#if _WIN32
SOCKET accept_( SOCKET socket,const char *addr,unsigned int *addr_len ){
#else
int accept_( int socket,const char *addr,unsigned int *addr_len ){
#endif
	bmx_socklen_t native_addr_len = addr_len ? (bmx_socklen_t)*addr_len : 0;
	int accepted = accept(socket, (void *)addr, addr_len ? &native_addr_len : NULL);
	if (addr_len) {
		*addr_len = (unsigned int)native_addr_len;
	}
#if defined(BMX_ESP32)
	bmx_net_event_reset(socket, BMX_NET_EVENT_ACCEPT);
	if (accepted >= 0) bmx_net_socket_opened();
#endif
	return accepted;
}

#if _WIN32
SOCKET bmx_stdc_accept_(SOCKET socket, struct sockaddr_storage * storage) {
#else
int bmx_stdc_accept_(int socket, struct sockaddr_storage * storage) {
#endif
	int accepted;
	if (storage) {
		bmx_socklen_t size = sizeof(struct sockaddr_storage );
		accepted = accept(socket, (struct sockaddr *)storage, &size);
	} else {
		accepted = accept(socket, NULL, NULL);
	}
#if defined(BMX_ESP32)
	bmx_net_event_reset(socket, BMX_NET_EVENT_ACCEPT);
	if (accepted >= 0) bmx_net_socket_opened();
#endif
	return accepted;
}

#if _WIN32
int select_( int n_read,SOCKET *r_socks,int n_write,SOCKET *w_socks,int n_except,SOCKET *e_socks,int millis ){
#else
int select_( int n_read,int *r_socks,int n_write,int *w_socks,int n_except,int *e_socks,int millis ){
#endif

	int i,n,r;
	struct timeval tv,*tvp;
	fd_set r_set,w_set,e_set;

	n=-1;

	FD_ZERO( &r_set );
	for( i=0;i<n_read;++i ){
		FD_SET( r_socks[i],&r_set );
		if( r_socks[i]>n ) n=r_socks[i];
	}
	FD_ZERO( &w_set );
	for( i=0;i<n_write;++i ){
		FD_SET( w_socks[i],&w_set );
		if( w_socks[i]>n ) n=w_socks[i];
	}
	FD_ZERO( &e_set );
	for( i=0;i<n_except;++i ){
		FD_SET( e_socks[i],&e_set );
		if( e_socks[i]>n ) n=e_socks[i];
	}

	if( millis<0 ){
		tvp=0;
	}else{
		tv.tv_sec=millis/1000;
		tv.tv_usec=(millis%1000)*1000;
		tvp=&tv;
	}

	r=select( n+1,&r_set,&w_set,&e_set,tvp );
	if( r<0 ) return r;

	for( i=0;i<n_read;++i ){
		if( !FD_ISSET(r_socks[i],&r_set) ) r_socks[i]=0;
	}
	for( i=0;i<n_write;++i ){
		if( !FD_ISSET(w_socks[i],&w_set) ) w_socks[i]=0;
	}
	for( i=0;i<n_except;++i ){
		if( !FD_ISSET(e_socks[i],&e_set) ) e_socks[i]=0;
	}
	return r;
}

#if _WIN32
ssize_t send_( SOCKET socket,const char *buf,size_t size,int flags ){
#else
ssize_t send_( int socket,const char *buf,size_t size,int flags ){
#endif
	ssize_t result = send(socket, buf, size, flags);
#if defined(BMX_ESP32)
	bmx_net_event_reset(socket, BMX_NET_EVENT_WRITABLE);
#endif
	return result;
}

#if _WIN32
int sendto_( SOCKET socket,const char *buf,int size,int flags,const char * dest_ip,int dest_port, int addr_type ){
#else
int sendto_( int socket,const char *buf,int size,int flags,const char * dest_ip,int dest_port, int addr_type ){
#endif
	addr_type = bmx_stdc_convertAFFamily(addr_type);

	switch (addr_type) {
		case AF_INET:
		{
			struct	sockaddr_in sa;
			memset( &sa,0,sizeof(sa) );
			sa.sin_family=AF_INET;
#ifdef _WIN32
			sa.sin_addr.s_addr=inet_addr( dest_ip );
#else
			inet_pton(AF_INET, dest_ip, &(sa.sin_addr));
#endif
//			memcpy( &sa.sin_addr,dest_ip,4 );
			sa.sin_port=htons( dest_port );
			return sendto( socket,buf,size,flags,(void*)&sa,sizeof(sa));
		}
		case AF_INET6:
		{
			struct sockaddr_in6 sa;
			memset( &sa,0,sizeof(sa) );
			sa.sin6_family=AF_INET6;
			sa.sin6_port=htons( dest_port );
			memcpy( &sa.sin6_addr, dest_ip,16 );

			return sendto( socket,buf,size,flags,(void*)&sa,sizeof(sa));
		}
	}
	return 0;
}

#if _WIN32
ssize_t recv_( SOCKET socket,char *buf,size_t size,int flags ){
#else
ssize_t recv_( int socket,char *buf,size_t size,int flags ){
#endif
	ssize_t result = recv(socket, buf, size, flags);
#if defined(BMX_ESP32)
	bmx_net_event_reset(socket, BMX_NET_EVENT_READABLE);
#endif
	return result;
}

#if _WIN32
int recvfrom_( SOCKET socket,char *buf,int size,int flags,int *_ip,int *_port){
#else
int recvfrom_( int socket,char *buf,int size,int flags,int *_ip,int *_port){
#endif
	struct	sockaddr_in sa;
	bmx_socklen_t sasize;
	int		count;
	memset( &sa,0,sizeof(sa) );
	sasize=sizeof(sa);
	count=recvfrom(socket,buf,size,flags,(void*)&sa,&sasize);
#if defined(BMX_ESP32)
	bmx_net_event_reset(socket, BMX_NET_EVENT_READABLE);
#endif
	*_ip=ntohl_(sa.sin_addr.s_addr);
	*_port=ntohs_(sa.sin_port);
	return count;
}

static int bmx_net_native_socket_option(int option) {
	switch (option) {
		case 0x0001: return SO_DEBUG;
		case 0x0002: return SO_ACCEPTCONN;
		case 0x0004: return SO_REUSEADDR;
		case 0x0008: return SO_KEEPALIVE;
		case 0x0010: return SO_DONTROUTE;
		case 0x0020: return SO_BROADCAST;
#ifdef SO_USELOOPBACK
		case 0x0040: return SO_USELOOPBACK;
#endif
		case 0x0080: return SO_LINGER;
		case 0x0100: return SO_OOBINLINE;
		case 0x1001: return SO_SNDBUF;
		case 0x1002: return SO_RCVBUF;
		case 0x1003: return SO_SNDLOWAT;
		case 0x1004: return SO_RCVLOWAT;
		case 0x1005: return SO_SNDTIMEO;
		case 0x1006: return SO_RCVTIMEO;
		case 0x1007: return SO_ERROR;
		case 0x1008: return SO_TYPE;
		default: return option;
	}
}

static void bmx_net_native_socket_level_and_option(int * level, int * option) {
	if (*level == 0xffff) {
		*level = SOL_SOCKET;
		*option = bmx_net_native_socket_option(*option);
	}
}

#if _WIN32
int setsockopt_( SOCKET socket,int level,int optname,const void *optval,int count){
#else
int setsockopt_( int socket,int level,int optname,const void *optval,int count){
#endif
	bmx_net_native_socket_level_and_option(&level, &optname);
	return setsockopt( socket,level,optname,optval,count);
}

#if _WIN32
int getsockopt_( SOCKET socket,int level,int optname,void *optval,int *count){
#else
int getsockopt_( int socket,int level,int optname,void *optval,int *count){
#endif
	bmx_net_native_socket_level_and_option(&level, &optname);
#if defined(_WIN32) || defined(_WIN64)
	return getsockopt( socket,level,optname,optval,count);
#else
	socklen_t length = (socklen_t)*count;
	int result = getsockopt(socket, level, optname, optval, &length);
#if defined(BMX_ESP32)
	if (level == SOL_SOCKET && optname == SO_ERROR)
		bmx_net_event_reset(socket, BMX_NET_EVENT_ERROR);
#endif
	*count = (int)length;
	return result;
#endif
}

#if _WIN32
int shutdown_( SOCKET socket,int how ){
#else
int shutdown_( int socket,int how ){
#endif
	return shutdown( socket,how );
}

#if _WIN32
int getsockname_( SOCKET socket,void *addr,int *len ){
#else
int getsockname_( int socket,void *addr,int *len ){
#endif
#if defined(_WIN32) || defined(_WIN64)
	return getsockname( socket,addr,len );
#else
	socklen_t length = (socklen_t)*len;
	int result = getsockname(socket, addr, &length);
	*len = (int)length;
	return result;
#endif
}

#if _WIN32
int getpeername_( SOCKET socket,void *addr,int *len ){
#else
int getpeername_( int socket,void *addr,int *len ){
#endif
#if defined(_WIN32) || defined(_WIN64)
	return getpeername( socket,addr,len );
#else
	socklen_t length = (socklen_t)*len;
	int result = getpeername(socket, addr, &length);
	*len = (int)length;
	return result;
#endif
}


static int bmx_net_native_ai_flags(int flags) {
	int native_flags = 0;
	if (flags & 0x001) native_flags |= AI_PASSIVE;
	if (flags & 0x002) native_flags |= AI_CANONNAME;
	if (flags & 0x004) native_flags |= AI_NUMERICHOST;
#ifdef AI_V4MAPPED
	if (flags & 0x008) native_flags |= AI_V4MAPPED;
#endif
#ifdef AI_ALL
	if (flags & 0x010) native_flags |= AI_ALL;
#endif
#ifdef AI_ADDRCONFIG
	if (flags & 0x020) native_flags |= AI_ADDRCONFIG;
#endif
#ifdef AI_NUMERICSERV
	if (flags & 0x400) native_flags |= AI_NUMERICSERV;
#endif
	return native_flags;
}

static int bmx_net_abstract_ai_flags(int flags) {
	int abstract_flags = 0;
	if (flags & AI_PASSIVE) abstract_flags |= 0x001;
	if (flags & AI_CANONNAME) abstract_flags |= 0x002;
	if (flags & AI_NUMERICHOST) abstract_flags |= 0x004;
#ifdef AI_V4MAPPED
	if (flags & AI_V4MAPPED) abstract_flags |= 0x008;
#endif
#ifdef AI_ALL
	if (flags & AI_ALL) abstract_flags |= 0x010;
#endif
#ifdef AI_ADDRCONFIG
	if (flags & AI_ADDRCONFIG) abstract_flags |= 0x020;
#endif
#ifdef AI_NUMERICSERV
	if (flags & AI_NUMERICSERV) abstract_flags |= 0x400;
#endif
	return abstract_flags;
}

int bmx_stdc_addrinfo_flags(struct addrinfo * info) {
	return bmx_net_abstract_ai_flags(info->ai_flags);
}

int bmx_stdc_addrinfo_family(struct addrinfo * info) {
	return bmx_stdc_unconvertAFFamily(info->ai_family);
}

int bmx_stdc_addrinfo_socktype(struct addrinfo * info) {
	return info->ai_socktype;
}

int bmx_stdc_addrinfo_protocol(struct addrinfo * info) {
	return info->ai_protocol;
}

int bmx_stdc_addrinfo_addrlen(struct addrinfo * info) {
	return info->ai_addrlen;
}

struct sockaddr * bmx_stdc_addrinfo_addr(struct addrinfo * info) {
	return info->ai_addr;
}

BBString * bmx_stdc_addrinfo_canonname(struct addrinfo * info) {
	return info->ai_canonname ? bbStringFromUTF8String((const unsigned char *)info->ai_canonname) : &bbEmptyString;
}

void bmx_stdc_addrinfo_setflags(struct addrinfo * info, int flags) {
	info->ai_flags = bmx_net_native_ai_flags(flags);
}

void bmx_stdc_addrinfo_setfamily(struct addrinfo * info, int family) {
	info->ai_family = bmx_stdc_convertAFFamily(family);
}

void bmx_stdc_addrinfo_setsocktype(struct addrinfo * info, int sockType) {
	info->ai_socktype = sockType;
}

void bmx_stdc_addrinfo_setprotocol(struct addrinfo * info, int protocol) {
	info->ai_protocol = protocol;
}

int bmx_stdc_convertNIFlags(int flags) {
	int niFlags = 0;

#if defined(BMX_EMBEDDED)
	/* ESP-IDF declares getnameinfo(), but its lwIP headers omit the
	   standard NI_* names used by the portable BlitzMax API. */
#define BMX_NI_NOFQDN 0x01
#define BMX_NI_NUMERICHOST 0x02
#define BMX_NI_NAMEREQD 0x04
#define BMX_NI_NUMERICSERV 0x08
#define BMX_NI_DGRAM 0x10
#else
#define BMX_NI_NOFQDN NI_NOFQDN
#define BMX_NI_NUMERICHOST NI_NUMERICHOST
#define BMX_NI_NAMEREQD NI_NAMEREQD
#define BMX_NI_NUMERICSERV NI_NUMERICSERV
#define BMX_NI_DGRAM NI_DGRAM
#endif

	if (flags & 0x0001) {
		niFlags |= BMX_NI_DGRAM;
	}

	if (flags & 0x0002) {
		niFlags |= BMX_NI_NAMEREQD;
	}

	if (flags & 0x0004) {
		niFlags |= BMX_NI_NOFQDN;
	}

	if (flags & 0x0008) {
		niFlags |= BMX_NI_NUMERICHOST;
	}

	if (flags & 0x0010) {
		niFlags |= BMX_NI_NUMERICSERV;
	}

	return niFlags;
}

BBString * bmx_stdc_addrinfo_hostname(struct addrinfo * info, int flags) {
	char host[256];
#if defined(BMX_EMBEDDED)
	const void * address = NULL;
	if (info->ai_family == AF_INET) {
		address = &((const struct sockaddr_in *)info->ai_addr)->sin_addr;
	} else if (info->ai_family == AF_INET6) {
		address = &((const struct sockaddr_in6 *)info->ai_addr)->sin6_addr;
	}
	if (!address || !inet_ntop(info->ai_family, address, host, sizeof(host))) {
		return &bbEmptyString;
	}
#else
	int res = getnameinfo(info->ai_addr, info->ai_addrlen, host, 256, 0, 0, bmx_stdc_convertNIFlags(flags));
	if (res != 0) {
		return &bbEmptyString;
	}
#endif
	return bbStringFromUTF8String((const unsigned char *)host);
}

int inet_pton_(int family, BBString * src, void * dst) {
	unsigned char * s = bbStringToCString(src);
	int res = inet_pton(bmx_stdc_convertAFFamily(family), (const char *)s, dst);
	bbMemFree(s);
	return res;
}

struct sockaddr_storage * bmx_stdc_sockaddrestorage_new() {
	return calloc(1, sizeof(struct sockaddr_storage));
}

int bmx_stdc_sockaddrestorage_family(struct sockaddr_storage * storage) {
	return storage ? bmx_stdc_unconvertAFFamily(storage->ss_family) : 0;
}

BBString * bmx_stdc_sockaddrestorage_address(struct sockaddr_storage * storage) {

	BBString * address = &bbEmptyString;

#if _WIN32

	TCHAR add[256];
	typedef LPTSTR (__stdcall RTLIPV6ADDRESSTOSTRING)(const IN6_ADDR*, PTSTR);
	typedef LPTSTR (__stdcall RTLIPV4ADDRESSTOSTRING)(const IN_ADDR*, PTSTR);

	HMODULE ntdll = GetModuleHandle("NTDLL.DLL");

	if (storage->ss_family == AF_INET) {
		RTLIPV4ADDRESSTOSTRING* RtlIpv4AddressToStringFunc = (RTLIPV4ADDRESSTOSTRING*)GetProcAddress(ntdll, "RtlIpv4AddressToStringW");

		RtlIpv4AddressToStringFunc(&((struct sockaddr_in*)storage)->sin_addr, add);
	} else {
		RTLIPV6ADDRESSTOSTRING* RtlIpv6AddressToStringFunc = (RTLIPV6ADDRESSTOSTRING*)GetProcAddress(ntdll, "RtlIpv6AddressToStringW");

		RtlIpv6AddressToStringFunc(&((struct sockaddr_in6*)storage)->sin6_addr, add);
	}

	address = bbStringFromWString((BBChar*)add);

#else

	char add[256];

	if (storage->ss_family == AF_INET) {
		inet_ntop(storage->ss_family, &((struct sockaddr_in*)storage)->sin_addr, add, sizeof(add));
	} else {
		inet_ntop(storage->ss_family, &((struct sockaddr_in6*)storage)->sin6_addr, add, sizeof(add));
	}

	address = bbStringFromCString(add);

#endif

	return address;
}

#if _WIN32
int bmx_stdc_getsockname(SOCKET socket, int * port, BBSTRING * address) {
#else
int bmx_stdc_getsockname(int socket, int * port, BBSTRING * address) {
#endif
	struct sockaddr_storage storage;
	bmx_socklen_t len = sizeof(struct sockaddr_storage);

	int res = getsockname(socket, (struct sockaddr *)&storage, &len);

	if (res >= 0) {
		if (storage.ss_family == AF_INET) {
			*port = ntohs(((struct sockaddr_in*)&storage)->sin_port);
		} else {
			*port = ntohs(((struct sockaddr_in6*)&storage)->sin6_port);
		}

		*address = bmx_stdc_sockaddrestorage_address(&storage);
	}

	return res;
}

#if _WIN32
int bmx_stdc_getpeername(SOCKET socket, int * port, BBSTRING * address) {
#else
int bmx_stdc_getpeername(int socket, int * port, BBSTRING * address) {
#endif
	struct sockaddr_storage storage;
	bmx_socklen_t len = sizeof(struct sockaddr_storage);

	int res = getpeername(socket, (struct sockaddr *)&storage, &len);

	if (res >= 0) {
		if (storage.ss_family == AF_INET) {
			*port = ntohs(((struct sockaddr_in*)&storage)->sin_port);
		} else {
			*port = ntohs(((struct sockaddr_in6*)&storage)->sin6_port);
		}

		*address = bmx_stdc_sockaddrestorage_address(&storage);
	}

	return res;
}


void bmx_net_sockaddrestorage_free(struct sockaddr_storage * storage) {
	free(storage);
}

#if defined(_WIN32) || defined(_WIN64)
static void CleanupWSA() {
	WSACleanup();
}
#endif

void bb_net_Startup() {
#if defined(_WIN32) || defined(_WIN64)
	WSADATA ws;
	if (WSAStartup(MAKEWORD(2, 2), &ws) == 0) {
		atexit(CleanupWSA);
	}
#endif
}
