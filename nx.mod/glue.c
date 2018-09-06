
#include "switch.h"
#include "sys/filio.h"

int bmx_nx_socketInitializeDefault() {
	return socketInitializeDefault();
}

int bmx_nx_romfsInit() {
	return romfsInit();
}
