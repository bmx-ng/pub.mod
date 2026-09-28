#include <windows.h>
#include <dxgi1_3.h>

// Keep the DLL loaded for the lifetime of any returned COM objects. Resolve
// newer entry points at runtime so importing this module does not require them.
static HMODULE dxgiLibrary() {
 static HMODULE library=LoadLibraryW(L"dxgi.dll");
 return library;
}
extern "C" {
HRESULT bmx_dxgi_QueryInterface(IUnknown *instance,const GUID *iid,void **out) {
 if(!out)return E_POINTER;
 *out=nullptr;
 if(!instance||!iid)return E_INVALIDARG;
 return instance->QueryInterface(*iid,out);
}
HRESULT bmx_dxgi_CreateDXGIFactory(const GUID *iid,void **out) {
 if(!out)return E_POINTER;
 *out=nullptr;
 if(!iid)return E_INVALIDARG;
 HMODULE library=dxgiLibrary();
 if(!library)return HRESULT_FROM_WIN32(ERROR_MOD_NOT_FOUND);
 auto create=reinterpret_cast<decltype(&CreateDXGIFactory)>(GetProcAddress(library,"CreateDXGIFactory"));
 return create?create(*iid,out):E_NOTIMPL;
}
HRESULT bmx_dxgi_CreateDXGIFactory1(const GUID *iid,void **out) {
 if(!out)return E_POINTER;
 *out=nullptr;
 if(!iid)return E_INVALIDARG;
 HMODULE library=dxgiLibrary();
 if(!library)return HRESULT_FROM_WIN32(ERROR_MOD_NOT_FOUND);
 auto create=reinterpret_cast<decltype(&CreateDXGIFactory1)>(GetProcAddress(library,"CreateDXGIFactory1"));
 return create?create(*iid,out):E_NOTIMPL;
}
HRESULT bmx_dxgi_CreateDXGIFactory2(UINT flags,const GUID *iid,void **out) {
 if(!out)return E_POINTER;
 *out=nullptr;
 if(!iid)return E_INVALIDARG;
 HMODULE library=dxgiLibrary();
 if(!library)return HRESULT_FROM_WIN32(ERROR_MOD_NOT_FOUND);
 auto create=reinterpret_cast<decltype(&CreateDXGIFactory2)>(GetProcAddress(library,"CreateDXGIFactory2"));
 return create?create(flags,*iid,out):E_NOTIMPL;
}
}
