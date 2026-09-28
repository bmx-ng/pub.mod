#include <windows.h>
#include <d3d11.h>

// Test-only D3D11 device/window. The DXGI calls themselves are made in BlitzMax.
struct Fixture { HANDLE event; HWND window; ID3D11Device *device; };
extern "C" {
void dxgi_test_close(Fixture *f) {
 if(!f)return;
 if(f->device)f->device->Release();
 if(f->window)DestroyWindow(f->window);
 if(f->event)CloseHandle(f->event);
 delete f;
}
void *dxgi_test_open() {
 Fixture *f=new Fixture();
 f->event=CreateEventW(NULL,FALSE,FALSE,NULL);
 if(!f->event){dxgi_test_close(f);return nullptr;}
 f->window=CreateWindowExW(0,L"STATIC",L"Pub.DXGI test",WS_OVERLAPPEDWINDOW,
   0,0,128,96,NULL,NULL,GetModuleHandleW(NULL),NULL);
 if(!f->window){dxgi_test_close(f);return nullptr;}
 HRESULT hr=D3D11CreateDevice(NULL,D3D_DRIVER_TYPE_HARDWARE,NULL,0,NULL,0,
    D3D11_SDK_VERSION,&f->device,NULL,NULL);
 if(FAILED(hr))hr=D3D11CreateDevice(NULL,D3D_DRIVER_TYPE_WARP,NULL,0,NULL,0,
    D3D11_SDK_VERSION,&f->device,NULL,NULL);
 if(FAILED(hr)){dxgi_test_close(f);return nullptr;}
 return f;
}
IUnknown *dxgi_test_device(Fixture *f){return f->device;} // Borrowed.
HANDLE dxgi_test_event(Fixture *f){return f->event;}
HWND dxgi_test_association(IDXGIFactory *factory){
 HWND window=nullptr;
 return SUCCEEDED(factory->GetWindowAssociation(&window))?window:(HWND)(INT_PTR)-1;
}
HWND dxgi_test_window(Fixture *f){return f->window;}
}
