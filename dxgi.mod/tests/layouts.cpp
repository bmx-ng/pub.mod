// Generated native Windows SDK layout oracle.
#include <dxgi1_2.h>
#include <cstddef>
extern "C" int dxgi_test_layout(int type,int field) {
 switch(type) {
 case 0: switch(field) {
  case -1: return sizeof(LUID);
  case 0: return offsetof(LUID,LowPart);
  case 1: return offsetof(LUID,HighPart);
 } break;
 case 1: switch(field) {
  case -1: return sizeof(RECT);
  case 0: return offsetof(RECT,left);
  case 1: return offsetof(RECT,top);
  case 2: return offsetof(RECT,right);
  case 3: return offsetof(RECT,bottom);
 } break;
 case 2: switch(field) {
  case -1: return sizeof(POINT);
  case 0: return offsetof(POINT,x);
  case 1: return offsetof(POINT,y);
 } break;
 case 3: switch(field) {
  case -1: return sizeof(DXGI_RATIONAL);
  case 0: return offsetof(DXGI_RATIONAL,Numerator);
  case 1: return offsetof(DXGI_RATIONAL,Denominator);
 } break;
 case 4: switch(field) {
  case -1: return sizeof(DXGI_SAMPLE_DESC);
  case 0: return offsetof(DXGI_SAMPLE_DESC,Count);
  case 1: return offsetof(DXGI_SAMPLE_DESC,Quality);
 } break;
 case 5: switch(field) {
  case -1: return sizeof(DXGI_RGB);
  case 0: return offsetof(DXGI_RGB,Red);
  case 1: return offsetof(DXGI_RGB,Green);
  case 2: return offsetof(DXGI_RGB,Blue);
 } break;
 case 6: switch(field) {
  case -1: return sizeof(DXGI_RGBA);
  case 0: return offsetof(DXGI_RGBA,r);
  case 1: return offsetof(DXGI_RGBA,g);
  case 2: return offsetof(DXGI_RGBA,b);
  case 3: return offsetof(DXGI_RGBA,a);
 } break;
 case 7: switch(field) {
  case -1: return sizeof(DXGI_MODE_DESC);
  case 0: return offsetof(DXGI_MODE_DESC,Width);
  case 1: return offsetof(DXGI_MODE_DESC,Height);
  case 2: return offsetof(DXGI_MODE_DESC,RefreshRate);
  case 3: return offsetof(DXGI_MODE_DESC,Format);
  case 4: return offsetof(DXGI_MODE_DESC,ScanlineOrdering);
  case 5: return offsetof(DXGI_MODE_DESC,Scaling);
 } break;
 case 8: switch(field) {
  case -1: return sizeof(DXGI_SURFACE_DESC);
  case 0: return offsetof(DXGI_SURFACE_DESC,Width);
  case 1: return offsetof(DXGI_SURFACE_DESC,Height);
  case 2: return offsetof(DXGI_SURFACE_DESC,Format);
  case 3: return offsetof(DXGI_SURFACE_DESC,SampleDesc);
 } break;
 case 9: switch(field) {
  case -1: return sizeof(DXGI_MAPPED_RECT);
  case 0: return offsetof(DXGI_MAPPED_RECT,Pitch);
  case 1: return offsetof(DXGI_MAPPED_RECT,pBits);
 } break;
 case 10: switch(field) {
  case -1: return sizeof(DXGI_OUTPUT_DESC);
  case 0: return offsetof(DXGI_OUTPUT_DESC,DeviceName);
  case 1: return offsetof(DXGI_OUTPUT_DESC,DesktopCoordinates);
  case 2: return offsetof(DXGI_OUTPUT_DESC,AttachedToDesktop);
  case 3: return offsetof(DXGI_OUTPUT_DESC,Rotation);
  case 4: return offsetof(DXGI_OUTPUT_DESC,Monitor);
 } break;
 case 11: switch(field) {
  case -1: return sizeof(DXGI_FRAME_STATISTICS);
  case 0: return offsetof(DXGI_FRAME_STATISTICS,PresentCount);
  case 1: return offsetof(DXGI_FRAME_STATISTICS,PresentRefreshCount);
  case 2: return offsetof(DXGI_FRAME_STATISTICS,SyncRefreshCount);
  case 3: return offsetof(DXGI_FRAME_STATISTICS,SyncQPCTime);
  case 4: return offsetof(DXGI_FRAME_STATISTICS,SyncGPUTime);
 } break;
 case 12: switch(field) {
  case -1: return sizeof(DXGI_ADAPTER_DESC);
  case 0: return offsetof(DXGI_ADAPTER_DESC,Description);
  case 1: return offsetof(DXGI_ADAPTER_DESC,VendorId);
  case 2: return offsetof(DXGI_ADAPTER_DESC,DeviceId);
  case 3: return offsetof(DXGI_ADAPTER_DESC,SubSysId);
  case 4: return offsetof(DXGI_ADAPTER_DESC,Revision);
  case 5: return offsetof(DXGI_ADAPTER_DESC,DedicatedVideoMemory);
  case 6: return offsetof(DXGI_ADAPTER_DESC,DedicatedSystemMemory);
  case 7: return offsetof(DXGI_ADAPTER_DESC,SharedSystemMemory);
  case 8: return offsetof(DXGI_ADAPTER_DESC,AdapterLuid);
 } break;
 case 13: switch(field) {
  case -1: return sizeof(DXGI_ADAPTER_DESC1);
  case 0: return offsetof(DXGI_ADAPTER_DESC1,Description);
  case 1: return offsetof(DXGI_ADAPTER_DESC1,VendorId);
  case 2: return offsetof(DXGI_ADAPTER_DESC1,DeviceId);
  case 3: return offsetof(DXGI_ADAPTER_DESC1,SubSysId);
  case 4: return offsetof(DXGI_ADAPTER_DESC1,Revision);
  case 5: return offsetof(DXGI_ADAPTER_DESC1,DedicatedVideoMemory);
  case 6: return offsetof(DXGI_ADAPTER_DESC1,DedicatedSystemMemory);
  case 7: return offsetof(DXGI_ADAPTER_DESC1,SharedSystemMemory);
  case 8: return offsetof(DXGI_ADAPTER_DESC1,AdapterLuid);
  case 9: return offsetof(DXGI_ADAPTER_DESC1,Flags);
 } break;
 case 14: switch(field) {
  case -1: return sizeof(DXGI_SWAP_CHAIN_DESC);
  case 0: return offsetof(DXGI_SWAP_CHAIN_DESC,BufferDesc);
  case 1: return offsetof(DXGI_SWAP_CHAIN_DESC,SampleDesc);
  case 2: return offsetof(DXGI_SWAP_CHAIN_DESC,BufferUsage);
  case 3: return offsetof(DXGI_SWAP_CHAIN_DESC,BufferCount);
  case 4: return offsetof(DXGI_SWAP_CHAIN_DESC,OutputWindow);
  case 5: return offsetof(DXGI_SWAP_CHAIN_DESC,Windowed);
  case 6: return offsetof(DXGI_SWAP_CHAIN_DESC,SwapEffect);
  case 7: return offsetof(DXGI_SWAP_CHAIN_DESC,Flags);
 } break;
 case 15: switch(field) {
  case -1: return sizeof(DXGI_SHARED_RESOURCE);
  case 0: return offsetof(DXGI_SHARED_RESOURCE,Handle);
 } break;
 case 16: switch(field) {
  case -1: return sizeof(DXGI_GAMMA_CONTROL_CAPABILITIES);
  case 0: return offsetof(DXGI_GAMMA_CONTROL_CAPABILITIES,ScaleAndOffsetSupported);
  case 1: return offsetof(DXGI_GAMMA_CONTROL_CAPABILITIES,MaxConvertedValue);
  case 2: return offsetof(DXGI_GAMMA_CONTROL_CAPABILITIES,MinConvertedValue);
  case 3: return offsetof(DXGI_GAMMA_CONTROL_CAPABILITIES,NumGammaControlPoints);
  case 4: return offsetof(DXGI_GAMMA_CONTROL_CAPABILITIES,ControlPointPositions);
 } break;
 case 17: switch(field) {
  case -1: return sizeof(DXGI_GAMMA_CONTROL);
  case 0: return offsetof(DXGI_GAMMA_CONTROL,Scale);
  case 1: return offsetof(DXGI_GAMMA_CONTROL,Offset);
  case 2: return offsetof(DXGI_GAMMA_CONTROL,GammaCurve);
 } break;
 case 18: switch(field) {
  case -1: return sizeof(DXGI_SWAP_CHAIN_DESC1);
  case 0: return offsetof(DXGI_SWAP_CHAIN_DESC1,Width);
  case 1: return offsetof(DXGI_SWAP_CHAIN_DESC1,Height);
  case 2: return offsetof(DXGI_SWAP_CHAIN_DESC1,Format);
  case 3: return offsetof(DXGI_SWAP_CHAIN_DESC1,Stereo);
  case 4: return offsetof(DXGI_SWAP_CHAIN_DESC1,SampleDesc);
  case 5: return offsetof(DXGI_SWAP_CHAIN_DESC1,BufferUsage);
  case 6: return offsetof(DXGI_SWAP_CHAIN_DESC1,BufferCount);
  case 7: return offsetof(DXGI_SWAP_CHAIN_DESC1,Scaling);
  case 8: return offsetof(DXGI_SWAP_CHAIN_DESC1,SwapEffect);
  case 9: return offsetof(DXGI_SWAP_CHAIN_DESC1,AlphaMode);
  case 10: return offsetof(DXGI_SWAP_CHAIN_DESC1,Flags);
 } break;
 case 19: switch(field) {
  case -1: return sizeof(DXGI_SWAP_CHAIN_FULLSCREEN_DESC);
  case 0: return offsetof(DXGI_SWAP_CHAIN_FULLSCREEN_DESC,RefreshRate);
  case 1: return offsetof(DXGI_SWAP_CHAIN_FULLSCREEN_DESC,ScanlineOrdering);
  case 2: return offsetof(DXGI_SWAP_CHAIN_FULLSCREEN_DESC,Scaling);
  case 3: return offsetof(DXGI_SWAP_CHAIN_FULLSCREEN_DESC,Windowed);
 } break;
 case 20: switch(field) {
  case -1: return sizeof(DXGI_PRESENT_PARAMETERS);
  case 0: return offsetof(DXGI_PRESENT_PARAMETERS,DirtyRectsCount);
  case 1: return offsetof(DXGI_PRESENT_PARAMETERS,pDirtyRects);
  case 2: return offsetof(DXGI_PRESENT_PARAMETERS,pScrollRect);
  case 3: return offsetof(DXGI_PRESENT_PARAMETERS,pScrollOffset);
 } break;
 }
 return -1;
}
