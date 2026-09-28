// Generated from the selected DXGI interface list.
#include <dxgi1_2.h>
extern "C" const void *bmx_dxgi_iid(int index) {
 static const GUID *const ids[] = {
  &__uuidof(IDXGIObject),
  &__uuidof(IDXGIDeviceSubObject),
  &__uuidof(IDXGIResource),
  &__uuidof(IDXGISurface),
  &__uuidof(IDXGISurface1),
  &__uuidof(IDXGIOutput),
  &__uuidof(IDXGIAdapter),
  &__uuidof(IDXGISwapChain),
  &__uuidof(IDXGIFactory),
  &__uuidof(IDXGIDevice),
  &__uuidof(IDXGIAdapter1),
  &__uuidof(IDXGIDevice1),
  &__uuidof(IDXGIFactory1),
  &__uuidof(IDXGISwapChain1),
  &__uuidof(IDXGIFactory2)
 };
 return index>=0 && index<int(sizeof(ids)/sizeof(ids[0])) ? ids[index] : nullptr;
}
