#define WIN32_LEAN_AND_MEAN
#include <windows.h>
//#include <objbase.h>
//#include <mmsystem.h>
#include <stdio.h>
#include <unknwn.h>

extern "C" {

	int bmx_win32_com_IUnknown_QueryInterface(IUnknown * unk, void * riid, void ** ppvObj);
	int bmx_win32_com_IUnknown_AddRef(IUnknown * unk);
	int bmx_win32_com_IUnknown_Release(IUnknown * unk);

}

int bmx_win32_com_IUnknown_QueryInterface(IUnknown * unk, void * riid, void ** ppvObj) {
	return unk->QueryInterface((REFIID)riid, ppvObj);
}

int bmx_win32_com_IUnknown_AddRef(IUnknown * unk) {
	return unk->AddRef();
}

int bmx_win32_com_IUnknown_Release(IUnknown * unk) {
	return unk->Release();
}
