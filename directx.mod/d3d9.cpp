#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include "d3d9.h"
#include <stdlib.h>

extern "C" {

	IDirect3D9 * bmx_directx_d3d9_Direct3DCreate9(int SDKVersion);

	int bmx_directx_d3d9_IDirect3D9_CreateDevice(IDirect3D9 * id, int Adapter, int DeviceType, HWND hFocusWindow,
			int BehaviorFlags, D3DPRESENT_PARAMETERS * pPresentationParameters, IDirect3DDevice9 ** ppReturnedDeviceInterface);
	int bmx_directx_d3d9_IDirect3D9_GetDeviceCaps(IDirect3D9 * id, int Adapter, int DeviceType, D3DCAPS9 * pCaps);
	int bmx_directx_d3d9_IDirect3D9_GetAdapterModeCount(IDirect3D9 * id, int Adapter, int Format);
	int bmx_directx_d3d9_IDirect3D9_EnumAdapterModes(IDirect3D9 * id, int Adapter, int Format, int Mode, D3DDISPLAYMODE * pMode);
	int bmx_directx_d3d9_IDirect3D9_CheckDeviceFormat(IDirect3D9 * id, int Adapter, int DeviceType, int AdapterFormat, int Usage, int RType, int CheckFormat);


	int bmx_directx_d3d9_IDirect3DDevice9_CreateQuery(IDirect3DDevice9 * id, int type, IDirect3DQuery9 ** ppQuery);
	int bmx_directx_d3d9_IDirect3DDevice9_TestCooperativeLevel(IDirect3DDevice9 * id);
	int bmx_directx_d3d9_IDirect3DDevice9_Reset(IDirect3DDevice9 * id, D3DPRESENT_PARAMETERS * pPresentationParameters);
	int bmx_directx_d3d9_IDirect3DDevice9_Present(IDirect3DDevice9 * id, RECT * pSourceRect, RECT * pDestRect, HWND hDestWindowOverride, RGNDATA * pDirtyRegion);
	int bmx_directx_d3d9_IDirect3DDevice9_CreateTexture(IDirect3DDevice9 * id, int Width, int Height, int Levels, int Usage, int Format, int Pool, IDirect3DTexture9 ** ppTexture, HANDLE * pSharedHandle);
	int bmx_directx_d3d9_IDirect3DDevice9_CreateOffscreenPlainSurface(IDirect3DDevice9 * id, int Width, int Height, int Format, int Pool, IDirect3DSurface9 ** ppSurface, HANDLE * pSharedHandle);
	int bmx_directx_d3d9_IDirect3DDevice9_GetRenderTarget(IDirect3DDevice9 * id, int RenderTargetIndex, IDirect3DSurface9 ** ppRenderTarget);
	int bmx_directx_d3d9_IDirect3DDevice9_BeginScene(IDirect3DDevice9 * id);
	int bmx_directx_d3d9_IDirect3DDevice9_EndScene(IDirect3DDevice9 * id);
	int bmx_directx_d3d9_IDirect3DDevice9_Clear(IDirect3DDevice9 * id, int Count, D3DRECT * pRects, int Flags, int Color, float Z, int Stencil);
	int bmx_directx_d3d9_IDirect3DDevice9_SetTransform(IDirect3DDevice9 * id, int State, D3DMATRIX * pMatrix);
	int bmx_directx_d3d9_IDirect3DDevice9_SetViewport(IDirect3DDevice9 * id, D3DVIEWPORT9 * pViewport);
	int bmx_directx_d3d9_IDirect3DDevice9_SetRenderState(IDirect3DDevice9 * id, int State, int Value);
	int bmx_directx_d3d9_IDirect3DDevice9_SetTexture(IDirect3DDevice9 * id, int Stage, IDirect3DBaseTexture9 * pTexture);
	int bmx_directx_d3d9_IDirect3DDevice9_SetTextureStageState(IDirect3DDevice9 * id, int Stage, int Type, int Value);
	int bmx_directx_d3d9_IDirect3DDevice9_SetScissorRect(IDirect3DDevice9 * id, RECT * pRect);
	int bmx_directx_d3d9_IDirect3DDevice9_DrawPrimitiveUP(IDirect3DDevice9 * id, int PrimitiveType, int PrimitiveCount, void * pVertexStreamZeroData, int VertexStreamZeroStride);
	int bmx_directx_d3d9_IDirect3DDevice9_SetFVF(IDirect3DDevice9 * id, int FVF);


	int bmx_directx_d3d9_IDirect3DQuery9_Issue(IDirect3DQuery9 * id, int dwIssueFlags);
	int bmx_directx_d3d9_IDirect3DQuery9_GetData(IDirect3DQuery9 * id, void * pData, int dwSize, int dwGetDataFlags);


	D3DCAPS9 * bmx_directx_d3d9_D3DCAPS9_new();
	void bmx_directx_d3d9_D3DCAPS9_free(D3DCAPS9 * caps);

	D3DVIEWPORT9 * bmx_directx_d3d9_D3DVIEWPORT9_new();
	void bmx_directx_d3d9_D3DVIEWPORT9_free(D3DVIEWPORT9 * vp);
	void bmx_directx_d3d9_D3DVIEWPORT9_SetX(D3DVIEWPORT9 * vp, int X);
	void bmx_directx_d3d9_D3DVIEWPORT9_SetY(D3DVIEWPORT9 * vp, int Y);
	void bmx_directx_d3d9_D3DVIEWPORT9_SetWidth(D3DVIEWPORT9 * vp, int Width);
	void bmx_directx_d3d9_D3DVIEWPORT9_SetHeight(D3DVIEWPORT9 * vp, int Height);
	void bmx_directx_d3d9_D3DVIEWPORT9_SetMinZ(D3DVIEWPORT9 * vp, float MinZ);
	void bmx_directx_d3d9_D3DVIEWPORT9_SetMaxZ(D3DVIEWPORT9 * vp, float MaxZ);

	int bmx_directx_d3d9_IDirect3DTexture9_GetSurfaceLevel(IDirect3DTexture9 * tex, int Level, IDirect3DSurface9 ** ppSurfaceLevel);
	int bmx_directx_d3d9_IDirect3DTexture9_LockRect(IDirect3DTexture9 * tex, int Level, D3DLOCKED_RECT * pLockedRect, RECT * pRect, int Flags);

	int bmx_directx_d3d9_IDirect3DSurface9_LockRect(IDirect3DSurface9 * surf, D3DLOCKED_RECT * pLockedRect, RECT * pRect, int Flags);
	int bmx_directx_d3d9_IDirect3DSurface9_UnlockRect(IDirect3DSurface9 * surf);
	int bmx_directx_d3d9_IDirect3DSurface9_GetDC(IDirect3DSurface9 * surf, HDC * phdc);
	int bmx_directx_d3d9_IDirect3DSurface9_ReleaseDC(IDirect3DSurface9 * surf, HDC hdc);
	int bmx_directx_d3d9_IDirect3DSurface9_GetDesc(IDirect3DSurface9 * surf, D3DSURFACE_DESC * pDesc);

}

// ********************************************************

typedef IDirect3D9 * (WINAPI *_Direct3DCreate9)(UINT);

IDirect3D9 * bmx_directx_d3d9_Direct3DCreate9(int SDKVersion) {
	HINSTANCE inst = LoadLibrary("d3d9");
	if (inst != NULL) {
		_Direct3DCreate9 create = (_Direct3DCreate9)GetProcAddress( inst, "Direct3DCreate9" );
		
		if (create != NULL) {
		
			return create(SDKVersion);
		
		}
		
	}
	
	return NULL;
}

// ********************************************************

int bmx_directx_d3d9_IDirect3D9_CreateDevice(IDirect3D9 * id, int Adapter, int DeviceType, HWND hFocusWindow,
		int BehaviorFlags, D3DPRESENT_PARAMETERS * pPresentationParameters, IDirect3DDevice9 ** ppReturnedDeviceInterface) {
	int res = id->CreateDevice(Adapter, static_cast<D3DDEVTYPE>(DeviceType), hFocusWindow, BehaviorFlags, pPresentationParameters, ppReturnedDeviceInterface);
	
	return res;
}

int bmx_directx_d3d9_IDirect3D9_GetDeviceCaps(IDirect3D9 * id, int Adapter, int DeviceType, D3DCAPS9 * pCaps) {
	return id->GetDeviceCaps(Adapter, static_cast<D3DDEVTYPE>(DeviceType), pCaps);
}

int bmx_directx_d3d9_IDirect3D9_GetAdapterModeCount(IDirect3D9 * id, int Adapter, int Format) {
	return id->GetAdapterModeCount(Adapter, static_cast<D3DFORMAT>(Format));
}

int bmx_directx_d3d9_IDirect3D9_EnumAdapterModes(IDirect3D9 * id, int Adapter, int Format, int Mode, D3DDISPLAYMODE * pMode) {
	return id->EnumAdapterModes(Adapter, static_cast<D3DFORMAT>(Format), Mode, pMode);
}

int bmx_directx_d3d9_IDirect3D9_CheckDeviceFormat(IDirect3D9 * id, int Adapter, int DeviceType, int AdapterFormat, int Usage, int RType, int CheckFormat) {
	return id->CheckDeviceFormat(Adapter, static_cast<D3DDEVTYPE>(DeviceType), static_cast<D3DFORMAT>(AdapterFormat), Usage, static_cast<D3DRESOURCETYPE>(RType), static_cast<D3DFORMAT>(CheckFormat));
}

// ********************************************************

int bmx_directx_d3d9_IDirect3DDevice9_CreateQuery(IDirect3DDevice9 * id, int type, IDirect3DQuery9 ** ppQuery) {
	return id->CreateQuery(static_cast<D3DQUERYTYPE>(type), ppQuery);
}

int bmx_directx_d3d9_IDirect3DDevice9_TestCooperativeLevel(IDirect3DDevice9 * id) {
	return id->TestCooperativeLevel();
}

int bmx_directx_d3d9_IDirect3DDevice9_Reset(IDirect3DDevice9 * id, D3DPRESENT_PARAMETERS * pPresentationParameters) {
	return id->Reset(pPresentationParameters);
}

int bmx_directx_d3d9_IDirect3DDevice9_Present(IDirect3DDevice9 * id, RECT * pSourceRect, RECT * pDestRect, HWND hDestWindowOverride, RGNDATA * pDirtyRegion) {
	return id->Present(pSourceRect, pDestRect, hDestWindowOverride, pDirtyRegion);
}

int bmx_directx_d3d9_IDirect3DDevice9_CreateTexture(IDirect3DDevice9 * id, int Width, int Height, int Levels, int Usage, int Format,
		int Pool, IDirect3DTexture9 ** ppTexture, HANDLE * pSharedHandle) {
	return id->CreateTexture(Width, Height, Levels, Usage, static_cast<D3DFORMAT>(Format), static_cast<D3DPOOL>(Pool), ppTexture, pSharedHandle);
}

int bmx_directx_d3d9_IDirect3DDevice9_CreateOffscreenPlainSurface(IDirect3DDevice9 * id, int Width, int Height, int Format, int Pool,
		IDirect3DSurface9 ** ppSurface, HANDLE * pSharedHandle) {
	return id->CreateOffscreenPlainSurface(Width, Height, static_cast<D3DFORMAT>(Format), static_cast<D3DPOOL>(Pool), ppSurface, pSharedHandle);
}

int bmx_directx_d3d9_IDirect3DDevice9_GetRenderTarget(IDirect3DDevice9 * id, int RenderTargetIndex, IDirect3DSurface9 ** ppRenderTarget) {
	return id->GetRenderTarget(RenderTargetIndex, ppRenderTarget);
}

int bmx_directx_d3d9_IDirect3DDevice9_BeginScene(IDirect3DDevice9 * id) {
	return id->BeginScene();
}

int bmx_directx_d3d9_IDirect3DDevice9_EndScene(IDirect3DDevice9 * id) {
	return id->EndScene();
}

int bmx_directx_d3d9_IDirect3DDevice9_Clear(IDirect3DDevice9 * id, int Count, D3DRECT * pRects, int Flags, int Color, float Z, int Stencil) {
	return id->Clear(Count, pRects, Flags, Color, Z, Stencil);
}

int bmx_directx_d3d9_IDirect3DDevice9_SetTransform(IDirect3DDevice9 * id, int State, D3DMATRIX * pMatrix) {
	return id->SetTransform(static_cast<D3DTRANSFORMSTATETYPE>(State), pMatrix);
}

int bmx_directx_d3d9_IDirect3DDevice9_SetViewport(IDirect3DDevice9 * id, D3DVIEWPORT9 * pViewport) {
	return id->SetViewport(pViewport);
}

int bmx_directx_d3d9_IDirect3DDevice9_SetRenderState(IDirect3DDevice9 * id, int State, int Value) {
	return id->SetRenderState(static_cast<D3DRENDERSTATETYPE>(State), Value);
}

int bmx_directx_d3d9_IDirect3DDevice9_SetTexture(IDirect3DDevice9 * id, int Stage, IDirect3DBaseTexture9 * pTexture) {
	return id->SetTexture(Stage, pTexture);
}

int bmx_directx_d3d9_IDirect3DDevice9_SetTextureStageState(IDirect3DDevice9 * id, int Stage, int Type, int Value) {
	return id->SetTextureStageState(Stage, static_cast<D3DTEXTURESTAGESTATETYPE>(Type), Value);
}

int bmx_directx_d3d9_IDirect3DDevice9_SetScissorRect(IDirect3DDevice9 * id, RECT * pRect) {
	return id->SetScissorRect(pRect);
}

int bmx_directx_d3d9_IDirect3DDevice9_DrawPrimitiveUP(IDirect3DDevice9 * id, int PrimitiveType, int PrimitiveCount, void * pVertexStreamZeroData, int VertexStreamZeroStride) {
	return id->DrawPrimitiveUP(static_cast<D3DPRIMITIVETYPE>(PrimitiveType), PrimitiveCount, pVertexStreamZeroData, VertexStreamZeroStride);
}

int bmx_directx_d3d9_IDirect3DDevice9_SetFVF(IDirect3DDevice9 * id, int FVF) {
	return id->SetFVF(FVF);
}

// ********************************************************

int bmx_directx_d3d9_IDirect3DQuery9_Issue(IDirect3DQuery9 * id, int dwIssueFlags) {
	return id->Issue(dwIssueFlags);
}

int bmx_directx_d3d9_IDirect3DQuery9_GetData(IDirect3DQuery9 * id, void * pData, int dwSize, int dwGetDataFlags) {
	return id->GetData(pData, dwSize, dwGetDataFlags);
}

// ********************************************************

D3DCAPS9 * bmx_directx_d3d9_D3DCAPS9_new() {
	return (D3DCAPS9*)calloc(1,sizeof(D3DCAPS9));
}

void bmx_directx_d3d9_D3DCAPS9_free(D3DCAPS9 * caps) {
	free(caps);
}

// ********************************************************

D3DVIEWPORT9 * bmx_directx_d3d9_D3DVIEWPORT9_new() {
	return (D3DVIEWPORT9*)calloc(1,sizeof(D3DVIEWPORT9));
}

void bmx_directx_d3d9_D3DVIEWPORT9_free(D3DVIEWPORT9 * vp) {
	free(vp);
}

void bmx_directx_d3d9_D3DVIEWPORT9_SetX(D3DVIEWPORT9 * vp, int X) {
	vp->X = X;
}

void bmx_directx_d3d9_D3DVIEWPORT9_SetY(D3DVIEWPORT9 * vp, int Y) {
	vp->Y = Y;
}

void bmx_directx_d3d9_D3DVIEWPORT9_SetWidth(D3DVIEWPORT9 * vp, int Width) {
	vp->Width = Width;
}

void bmx_directx_d3d9_D3DVIEWPORT9_SetHeight(D3DVIEWPORT9 * vp, int Height) {
	vp->Height = Height;
}

void bmx_directx_d3d9_D3DVIEWPORT9_SetMinZ(D3DVIEWPORT9 * vp, float MinZ) {
	vp->MinZ = MinZ;
}

void bmx_directx_d3d9_D3DVIEWPORT9_SetMaxZ(D3DVIEWPORT9 * vp, float MaxZ) {
	vp->MaxZ = MaxZ;
}

// ********************************************************

int bmx_directx_d3d9_IDirect3DTexture9_GetSurfaceLevel(IDirect3DTexture9 * tex, int Level, IDirect3DSurface9 ** ppSurfaceLevel) {
	return tex->GetSurfaceLevel(Level, ppSurfaceLevel);
}

int bmx_directx_d3d9_IDirect3DTexture9_LockRect(IDirect3DTexture9 * tex, int Level, D3DLOCKED_RECT * pLockedRect, RECT * pRect, int Flags) {
	return tex->LockRect(Level, pLockedRect, pRect, Flags);
}

// ********************************************************

int bmx_directx_d3d9_IDirect3DSurface9_LockRect(IDirect3DSurface9 * surf, D3DLOCKED_RECT * pLockedRect, RECT * pRect, int Flags) {
	return surf->LockRect(pLockedRect, pRect, Flags);
}

int bmx_directx_d3d9_IDirect3DSurface9_UnlockRect(IDirect3DSurface9 * surf) {
	return surf->UnlockRect();
}

int bmx_directx_d3d9_IDirect3DSurface9_GetDC(IDirect3DSurface9 * surf, HDC * phdc) {
	return surf->GetDC(phdc);
}

int bmx_directx_d3d9_IDirect3DSurface9_ReleaseDC(IDirect3DSurface9 * surf, HDC hdc) {
	return surf->ReleaseDC(hdc);
}

int bmx_directx_d3d9_IDirect3DSurface9_GetDesc(IDirect3DSurface9 * surf, D3DSURFACE_DESC * pDesc) {
	return surf->GetDesc(pDesc);
}
