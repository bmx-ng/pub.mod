#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include "d3d9types.h"
#include <stdlib.h>

extern "C" {

	D3DPRESENT_PARAMETERS * bmx_directx_D3DPRESENT_PARAMETERS_new();
	void bmx_directx_D3DPRESENT_PARAMETERS_SetBackBufferWidth(D3DPRESENT_PARAMETERS * params, int BackBufferWidth);
	int bmx_directx_D3DPRESENT_PARAMETERS_GetBackBufferWidth(D3DPRESENT_PARAMETERS * params);
	void bmx_directx_D3DPRESENT_PARAMETERS_SetBackBufferHeight(D3DPRESENT_PARAMETERS * params, int BackBufferHeight);
	int bmx_directx_D3DPRESENT_PARAMETERS_GetBackBufferHeight(D3DPRESENT_PARAMETERS * params);
	void bmx_directx_D3DPRESENT_PARAMETERS_SetBackBufferFormat(D3DPRESENT_PARAMETERS * params, int BackBufferFormat);
	int bmx_directx_D3DPRESENT_PARAMETERS_GetBackBufferFormat(D3DPRESENT_PARAMETERS * params);
	void bmx_directx_D3DPRESENT_PARAMETERS_SetBackBufferCount(D3DPRESENT_PARAMETERS * params, int BackBufferCount);
	int bmx_directx_D3DPRESENT_PARAMETERS_GetBackBufferCount(D3DPRESENT_PARAMETERS * params);
	void bmx_directx_D3DPRESENT_PARAMETERS_SetMultiSampleType(D3DPRESENT_PARAMETERS * params, int MultiSampleType);
	int bmx_directx_D3DPRESENT_PARAMETERS_GetMultiSampleType(D3DPRESENT_PARAMETERS * params);
	void bmx_directx_D3DPRESENT_PARAMETERS_SetMultiSampleQuality(D3DPRESENT_PARAMETERS * params, int MultiSampleQuality);
	int bmx_directx_D3DPRESENT_PARAMETERS_GetMultiSampleQuality(D3DPRESENT_PARAMETERS * params);
	void bmx_directx_D3DPRESENT_PARAMETERS_SetSwapEffect(D3DPRESENT_PARAMETERS * params, int SwapEffect);
	int bmx_directx_D3DPRESENT_PARAMETERS_GetSwapEffect(D3DPRESENT_PARAMETERS * params);
	void bmx_directx_D3DPRESENT_PARAMETERS_SethDeviceWindow(D3DPRESENT_PARAMETERS * params, HWND hDeviceWindow);
	HWND bmx_directx_D3DPRESENT_PARAMETERS_GethDeviceWindow(D3DPRESENT_PARAMETERS * params);
	void bmx_directx_D3DPRESENT_PARAMETERS_SetWindowed(D3DPRESENT_PARAMETERS * params, int Windowed);
	int bmx_directx_D3DPRESENT_PARAMETERS_GetWindowed(D3DPRESENT_PARAMETERS * params);
	void bmx_directx_D3DPRESENT_PARAMETERS_SetEnableAutoDepthStencil(D3DPRESENT_PARAMETERS * params, int EnableAutoDepthStencil);
	int bmx_directx_D3DPRESENT_PARAMETERS_GetEnableAutoDepthStencil(D3DPRESENT_PARAMETERS * params);
	void bmx_directx_D3DPRESENT_PARAMETERS_SetAutoDepthStencilFormat(D3DPRESENT_PARAMETERS * params, int AutoDepthStencilFormat);
	int bmx_directx_D3DPRESENT_PARAMETERS_GetAutoDepthStencilFormat(D3DPRESENT_PARAMETERS * params);
	void bmx_directx_D3DPRESENT_PARAMETERS_SetFlags(D3DPRESENT_PARAMETERS * params, int Flags);
	int bmx_directx_D3DPRESENT_PARAMETERS_GetFlags(D3DPRESENT_PARAMETERS * params);
	void bmx_directx_D3DPRESENT_PARAMETERS_SetFullScreen_RefreshRateInHz(D3DPRESENT_PARAMETERS * params, int FullScreen_RefreshRateInHz);
	int bmx_directx_D3DPRESENT_PARAMETERS_GetFullScreen_RefreshRateInHz(D3DPRESENT_PARAMETERS * params);
	void bmx_directx_D3DPRESENT_PARAMETERS_SetPresentationInterval(D3DPRESENT_PARAMETERS * params, int PresentationInterval);
	int bmx_directx_D3DPRESENT_PARAMETERS_GetPresentationInterval(D3DPRESENT_PARAMETERS * params);
	void bmx_directx_D3DPRESENT_PARAMETERS_free(D3DPRESENT_PARAMETERS * params);

	D3DDISPLAYMODE * bmx_directx_D3DDISPLAYMODE_new();
	void bmx_directx_D3DDISPLAYMODE_free(D3DDISPLAYMODE * mode);
	int bmx_directx_D3DDISPLAYMODE_GetWidth(D3DDISPLAYMODE * mode);
	int bmx_directx_D3DDISPLAYMODE_GetHeight(D3DDISPLAYMODE * mode);
	int bmx_directx_D3DDISPLAYMODE_GetRefreshRate(D3DDISPLAYMODE * mode);
	int bmx_directx_D3DDISPLAYMODE_GetFormat(D3DDISPLAYMODE * mode);

	D3DSURFACE_DESC * bmx_directx_D3DSURFACE_DESC_new();
	void bmx_directx_D3DSURFACE_DESC_free(D3DSURFACE_DESC * desc);

}


D3DPRESENT_PARAMETERS * bmx_directx_D3DPRESENT_PARAMETERS_new() {
	return (D3DPRESENT_PARAMETERS *)malloc(sizeof(D3DPRESENT_PARAMETERS));
}

void bmx_directx_D3DPRESENT_PARAMETERS_SetBackBufferWidth(D3DPRESENT_PARAMETERS * params, int BackBufferWidth) {
	params->BackBufferWidth = BackBufferWidth;
}

int bmx_directx_D3DPRESENT_PARAMETERS_GetBackBufferWidth(D3DPRESENT_PARAMETERS * params) {
	return params->BackBufferWidth;
}

void bmx_directx_D3DPRESENT_PARAMETERS_SetBackBufferHeight(D3DPRESENT_PARAMETERS * params, int BackBufferHeight) {
	params->BackBufferHeight = BackBufferHeight;
}

int bmx_directx_D3DPRESENT_PARAMETERS_GetBackBufferHeight(D3DPRESENT_PARAMETERS * params) {
	return params->BackBufferHeight;
}

void bmx_directx_D3DPRESENT_PARAMETERS_SetBackBufferFormat(D3DPRESENT_PARAMETERS * params, int BackBufferFormat) {
	params->BackBufferFormat = static_cast<D3DFORMAT>(BackBufferFormat);
}

int bmx_directx_D3DPRESENT_PARAMETERS_GetBackBufferFormat(D3DPRESENT_PARAMETERS * params) {
	return params->BackBufferFormat;
}

void bmx_directx_D3DPRESENT_PARAMETERS_SetBackBufferCount(D3DPRESENT_PARAMETERS * params, int BackBufferCount) {
	params->BackBufferCount = BackBufferCount;
}

int bmx_directx_D3DPRESENT_PARAMETERS_GetBackBufferCount(D3DPRESENT_PARAMETERS * params) {
	return params->BackBufferCount;
}

void bmx_directx_D3DPRESENT_PARAMETERS_SetMultiSampleType(D3DPRESENT_PARAMETERS * params, int MultiSampleType) {
	params->MultiSampleType = static_cast<D3DMULTISAMPLE_TYPE>(MultiSampleType);
}

int bmx_directx_D3DPRESENT_PARAMETERS_GetMultiSampleType(D3DPRESENT_PARAMETERS * params) {
	return params->MultiSampleType;
}

void bmx_directx_D3DPRESENT_PARAMETERS_SetMultiSampleQuality(D3DPRESENT_PARAMETERS * params, int MultiSampleQuality) {
	params->MultiSampleQuality = MultiSampleQuality;
}

int bmx_directx_D3DPRESENT_PARAMETERS_GetMultiSampleQuality(D3DPRESENT_PARAMETERS * params) {
	return params->MultiSampleQuality;
}

void bmx_directx_D3DPRESENT_PARAMETERS_SetSwapEffect(D3DPRESENT_PARAMETERS * params, int SwapEffect) {
	params->SwapEffect = static_cast<D3DSWAPEFFECT>(SwapEffect);
}

int bmx_directx_D3DPRESENT_PARAMETERS_GetSwapEffect(D3DPRESENT_PARAMETERS * params) {
	return params->SwapEffect;
}

void bmx_directx_D3DPRESENT_PARAMETERS_SethDeviceWindow(D3DPRESENT_PARAMETERS * params, HWND hDeviceWindow) {
	params->hDeviceWindow = hDeviceWindow;
}

HWND bmx_directx_D3DPRESENT_PARAMETERS_GethDeviceWindow(D3DPRESENT_PARAMETERS * params) {
	return params->hDeviceWindow;
}

void bmx_directx_D3DPRESENT_PARAMETERS_SetWindowed(D3DPRESENT_PARAMETERS * params, int Windowed) {
	params->Windowed = Windowed;
}

int bmx_directx_D3DPRESENT_PARAMETERS_GetWindowed(D3DPRESENT_PARAMETERS * params) {
	return params->Windowed;
}

void bmx_directx_D3DPRESENT_PARAMETERS_SetEnableAutoDepthStencil(D3DPRESENT_PARAMETERS * params, int EnableAutoDepthStencil) {
	params->EnableAutoDepthStencil = EnableAutoDepthStencil;
}

int bmx_directx_D3DPRESENT_PARAMETERS_GetEnableAutoDepthStencil(D3DPRESENT_PARAMETERS * params) {
	return params->EnableAutoDepthStencil;
}

void bmx_directx_D3DPRESENT_PARAMETERS_SetAutoDepthStencilFormat(D3DPRESENT_PARAMETERS * params, int AutoDepthStencilFormat) {
	params->AutoDepthStencilFormat = static_cast<D3DFORMAT>(AutoDepthStencilFormat);
}

int bmx_directx_D3DPRESENT_PARAMETERS_GetAutoDepthStencilFormat(D3DPRESENT_PARAMETERS * params) {
	return params->AutoDepthStencilFormat;
}

void bmx_directx_D3DPRESENT_PARAMETERS_SetFlags(D3DPRESENT_PARAMETERS * params, int Flags) {
	params->Flags = Flags;
}

int bmx_directx_D3DPRESENT_PARAMETERS_GetFlags(D3DPRESENT_PARAMETERS * params) {
	return params->Flags;
}

void bmx_directx_D3DPRESENT_PARAMETERS_SetFullScreen_RefreshRateInHz(D3DPRESENT_PARAMETERS * params, int FullScreen_RefreshRateInHz) {
	params->FullScreen_RefreshRateInHz = FullScreen_RefreshRateInHz;
}

int bmx_directx_D3DPRESENT_PARAMETERS_GetFullScreen_RefreshRateInHz(D3DPRESENT_PARAMETERS * params) {
	return params->FullScreen_RefreshRateInHz;
}

void bmx_directx_D3DPRESENT_PARAMETERS_SetPresentationInterval(D3DPRESENT_PARAMETERS * params, int PresentationInterval) {
	params->PresentationInterval = PresentationInterval;
}

int bmx_directx_D3DPRESENT_PARAMETERS_GetPresentationInterval(D3DPRESENT_PARAMETERS * params) {
	return params->PresentationInterval;
}

void bmx_directx_D3DPRESENT_PARAMETERS_free(D3DPRESENT_PARAMETERS * params) {
	free(params);
}

// ********************************************************

D3DDISPLAYMODE * bmx_directx_D3DDISPLAYMODE_new() {
	return (D3DDISPLAYMODE *)malloc(sizeof(D3DDISPLAYMODE));
}

void bmx_directx_D3DDISPLAYMODE_free(D3DDISPLAYMODE * mode) {
	free(mode);
}

int bmx_directx_D3DDISPLAYMODE_GetWidth(D3DDISPLAYMODE * mode) {
	return mode->Width;
}

int bmx_directx_D3DDISPLAYMODE_GetHeight(D3DDISPLAYMODE * mode) {
	return mode->Height;
}

int bmx_directx_D3DDISPLAYMODE_GetRefreshRate(D3DDISPLAYMODE * mode) {
	return mode->RefreshRate;
}

int bmx_directx_D3DDISPLAYMODE_GetFormat(D3DDISPLAYMODE * mode) {
	return mode->Format;
}

// ********************************************************

D3DSURFACE_DESC * bmx_directx_D3DSURFACE_DESC_new() {
	return (D3DSURFACE_DESC *)malloc(sizeof(D3DSURFACE_DESC));
}

void bmx_directx_D3DSURFACE_DESC_free(D3DSURFACE_DESC * desc) {
	free(desc);
}

