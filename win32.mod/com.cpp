#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <stdio.h>
#include <unknwn.h>
#include <exdisp.h>

extern "C" {

	int bmx_win32_com_IUnknown_QueryInterface(IUnknown * unk, REFIID riid, void ** ppvObj);
	int bmx_win32_com_IUnknown_AddRef(IUnknown * unk);
	int bmx_win32_com_IUnknown_Release(IUnknown * unk);

	GUID * bmx_win32_GUID_new();
	void bmx_win32_GUID_free(GUID * guid);

	int bmx_win32_IWebBrowser_get_LocationURL(IWebBrowser * browser, BSTR * LocationURL);
	int bmx_win32_IWebBrowser_get_LocationName(IWebBrowser * browser, BSTR * LocationName);
	int bmx_win32_IWebBrowser_get_Document(IWebBrowser * browser, IDispatch ** disp);
}

int bmx_win32_com_IUnknown_QueryInterface(IUnknown * unk, REFIID riid, void ** ppvObj) {
	return unk->QueryInterface(riid, ppvObj);
}

int bmx_win32_com_IUnknown_AddRef(IUnknown * unk) {
	return unk->AddRef();
}

int bmx_win32_com_IUnknown_Release(IUnknown * unk) {
	return unk->Release();
}

// ********************************************************

GUID * bmx_win32_GUID_new() {
	return (GUID *)malloc(sizeof(GUID));
}

void bmx_win32_GUID_free(GUID * guid) {
	free(guid);
}

// ********************************************************

int bmx_win32_IWebBrowser_get_LocationURL(IWebBrowser * browser, BSTR * LocationURL) {
	return browser->get_LocationURL(LocationURL);
}

int bmx_win32_IWebBrowser_get_LocationName(IWebBrowser * browser, BSTR * LocationName) {
	return browser->get_LocationName(LocationName);
}

int bmx_win32_IWebBrowser_get_Document(IWebBrowser * browser, IDispatch ** disp) {
	return browser->get_Document(disp);
}

