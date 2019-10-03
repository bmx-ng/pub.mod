#define ENET_IMPLEMENTATION
#include "enet.h"

#include "brl.mod/blitz.mod/blitz.h"

ENetAddress * bmx_enet_address_create_ipv4(int host_ip, int host_port) {
	ENetAddress * address = calloc(1, sizeof(ENetAddress));
	address->host.s6_addr[5] = 0xffff;
	memcpy(&address->host.s6_addr[6], &host_ip, sizeof(int));
	address->port = host_port;

	return address;
}

ENetAddress * bmx_enet_address_create_any(int host_port) {
	ENetAddress * address = calloc(1, sizeof(ENetAddress));
	address->host = ENET_HOST_ANY;
	address->port = host_port;
	return address;
}

ENetAddress * bmx_enet_address_create_ipv6(BBString * host_ip, int host_port, int ipv6) {
	ENetAddress * address = calloc(1, sizeof(ENetAddress));

	char * s = bbStringToUTF8String(host_ip);

	if (ipv6) {
		struct in6_addr addr;
		inet_pton(AF_INET6, s, &addr);
		address->host = addr;
	
	} else {
		struct in_addr addr4;
		inet_pton(AF_INET, s, &addr4);

		struct in6_addr addr = {{{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00 }}};
		addr.s6_addr[12] = ((uint8_t *)&addr4.s_addr)[0];
		addr.s6_addr[13] = ((uint8_t *)&addr4.s_addr)[1];
		addr.s6_addr[14] = ((uint8_t *)&addr4.s_addr)[2];
		addr.s6_addr[15] = ((uint8_t *)&addr4.s_addr)[3];

		address->host = addr;
	}
	bbMemFree(s);

	address->port = host_port;
	return address;
}

void bmx_enet_address_destroy(ENetAddress * address) {
	free(address);
}

enet_uint8 * bmx_enet_packet_data(ENetPacket * packet) {
	return packet->data;
}

size_t bmx_enet_packet_size(ENetPacket * packet) {
	return packet->dataLength;
}

ENetEvent * bmx_enet_enetevent_new() {
	return calloc(1, sizeof(ENetEvent));
}

void bmx_enet_enetevent_free(ENetEvent * event) {
	free(event);
}

ENetPeer * bmx_enet_enetevent_peer(ENetEvent * event) {
	return event->peer;
}


int bmx_enet_enetevent_event(ENetEvent * event) {
	return event->type;
}

ENetPacket * bmx_enet_enetevent_packet(ENetEvent * event) {
	return event->packet;
}
