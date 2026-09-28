#include <windows.h>
#include <d3d11.h>
extern "C" HRESULT bmx_d3d11_CreateDevice(IDXGIAdapter *adapter,int type,HMODULE software,UINT flags,
 const D3D_FEATURE_LEVEL *levels,UINT count,UINT version,ID3D11Device **device,D3D_FEATURE_LEVEL *level,ID3D11DeviceContext **context){
 if(device)*device=nullptr;
 if(context)*context=nullptr;
 if(level)*level=(D3D_FEATURE_LEVEL)0;
 // Keep the runtime loaded while any returned COM objects may still exist.
 static HMODULE library=LoadLibraryW(L"d3d11.dll");
 if(!library)return HRESULT_FROM_WIN32(ERROR_MOD_NOT_FOUND);
 auto create=reinterpret_cast<decltype(&D3D11CreateDevice)>(GetProcAddress(library,"D3D11CreateDevice"));
 if(!create)return E_NOTIMPL;
 return create(adapter,(D3D_DRIVER_TYPE)type,software,flags,levels,count,version,device,level,context);
}
