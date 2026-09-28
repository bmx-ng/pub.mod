#include <windows.h>
#include <d3d9.h>
#include <cstddef>
extern "C" {
int dx_test_size(int which) {
 switch(which) {
 case 0: return sizeof(D3DPRESENT_PARAMETERS);
 case 1: return sizeof(D3DCAPS9);
 case 2: return sizeof(D3DVIEWPORT9);
 case 3: return sizeof(D3DSURFACE_DESC);
 }
 return 0;
}
int dx_test_window_offset() { return offsetof(D3DPRESENT_PARAMETERS,hDeviceWindow); }
}
