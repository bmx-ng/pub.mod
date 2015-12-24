#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <stdio.h>
#include <stdlib.h>

extern "C" {

	WNDCLASSW * bmx_win32_WNDCLASSW_new();
	void bmx_win32_WNDCLASSW_free(WNDCLASSW * clas);
	void bmx_win32_WNDCLASSW_SetlpfnWndProc(WNDCLASSW * clas, WNDPROC lpfnWndProc);
	void bmx_win32_WNDCLASSW_SethInstance(WNDCLASSW * clas, HINSTANCE hInstance);
	void bmx_win32_WNDCLASSW_SethCursor(WNDCLASSW * clas, HCURSOR hCursor);
	void bmx_win32_WNDCLASSW_SetlpszClassName(WNDCLASSW * clas, LPCWSTR lpszClassName);
	void bmx_win32_WNDCLASSW_Setstyle(WNDCLASSW * clas, int style);
	void bmx_win32_WNDCLASSW_SethIcon(WNDCLASSW * clas, HICON hIcon);
	void bmx_win32_WNDCLASSW_SethbrBackground(WNDCLASSW * clas, int hbrBackground);
	void bmx_win32_WNDCLASSW_SetcbWndExtra(WNDCLASSW * clas, int cbWndExtra);

	ICONINFO * bmx_win32_ICONINFO_new();
	void bmx_win32_ICONINFO_free(ICONINFO * info);
	void bmx_win32_ICONINFO_SetfIcon(ICONINFO * info, int fIcon);
	void bmx_win32_ICONINFO_SethbmMask(ICONINFO * info, HBITMAP hbmMask);
	void bmx_win32_ICONINFO_SethbmColor(ICONINFO * info, HBITMAP hbmColor);

	MENUINFO * bmx_win32_MENUINFO_new();
	void bmx_win32_MENUINFO_free(MENUINFO * info);
	void bmx_win32_MENUINFO_SetfMask(MENUINFO * info, int fMask);
	void bmx_win32_MENUINFO_SetdwStyle(MENUINFO * info, int dwStyle);
	void bmx_win32_MENUINFO_SetcyMax(MENUINFO * info, UINT cyMax);
	void bmx_win32_MENUINFO_SethbrBack(MENUINFO * info, HBRUSH hbrBack);
	void bmx_win32_MENUINFO_SetdwContextHelpID(MENUINFO * info, int dwContextHelpID);
	void bmx_win32_MENUINFO_SetdwMenuData(MENUINFO * info, ULONG_PTR dwMenuData);

	MENUITEMINFOW * bmx_win32_MENUITEMINFOW_new();
	void bmx_win32_MENUITEMINFOW_free(MENUITEMINFOW * info);
	void bmx_win32_MENUITEMINFOW_SetfMask(MENUITEMINFOW * info, UINT fMask);
	void bmx_win32_MENUITEMINFOW_SetfType(MENUITEMINFOW * info, UINT fType);
	void bmx_win32_MENUITEMINFOW_SetfState(MENUITEMINFOW * info, UINT fState);
	void bmx_win32_MENUITEMINFOW_SetwID(MENUITEMINFOW * info, UINT wID);
	void bmx_win32_MENUITEMINFOW_SethSubMenu(MENUITEMINFOW * info, HMENU hSubMenu);
	void bmx_win32_MENUITEMINFOW_SetdwItemData(MENUITEMINFOW * info, ULONG_PTR dwItemData);
	void bmx_win32_MENUITEMINFOW_SetdwTypeData(MENUITEMINFOW * info, LPWSTR dwTypeData);
	LPWSTR bmx_win32_MENUITEMINFOW_dwTypeData(MENUITEMINFOW * info);

	SCROLLINFO * bmx_win32_SCROLLINFO_new();
	void bmx_win32_SCROLLINFO_free(SCROLLINFO * info);
	void bmx_win32_SCROLLINFO_SetfMask(SCROLLINFO * info, UINT fMask);
	void bmx_win32_SCROLLINFO_SetnMin(SCROLLINFO * info, int nMin);
	void bmx_win32_SCROLLINFO_SetnMax(SCROLLINFO * info, int nMax);
	void bmx_win32_SCROLLINFO_SetnPage(SCROLLINFO * info, UINT nPage);
	void bmx_win32_SCROLLINFO_SetnPos(SCROLLINFO * info, int nPos);
	void bmx_win32_SCROLLINFO_SetnTrackPos(SCROLLINFO * info, int nTrackPos);
	UINT bmx_win32_SCROLLINFO_nPage(SCROLLINFO * info);
	int bmx_win32_SCROLLINFO_nPos(SCROLLINFO * info);
	int bmx_win32_SCROLLINFO_nTrackPos(SCROLLINFO * info);

}

// ********************************************************

WNDCLASSW * bmx_win32_WNDCLASSW_new() {
	WNDCLASSW * clas = (WNDCLASSW *)malloc(sizeof(WNDCLASSW));
	memset(clas, 0, sizeof(WNDCLASSW));
	return clas;
}

void bmx_win32_WNDCLASSW_free(WNDCLASSW * clas) {
	free(clas);
}

void bmx_win32_WNDCLASSW_SetlpfnWndProc(WNDCLASSW * clas, WNDPROC lpfnWndProc) {
	clas->lpfnWndProc = lpfnWndProc;
}

void bmx_win32_WNDCLASSW_SethInstance(WNDCLASSW * clas, HINSTANCE hInstance) {
	clas->hInstance = hInstance;
}

void bmx_win32_WNDCLASSW_SethCursor(WNDCLASSW * clas, HCURSOR hCursor) {
	clas->hCursor = hCursor;
}

void bmx_win32_WNDCLASSW_SetlpszClassName(WNDCLASSW * clas, LPCWSTR lpszClassName) {
	clas->lpszClassName = lpszClassName;
}

void bmx_win32_WNDCLASSW_Setstyle(WNDCLASSW * clas, int style) {
	clas->style = style;
}

void bmx_win32_WNDCLASSW_SethIcon(WNDCLASSW * clas, HICON hIcon) {
	clas->hIcon = hIcon;
}

void bmx_win32_WNDCLASSW_SethbrBackground(WNDCLASSW * clas, int hbrBackground) {
	clas->hbrBackground = (HBRUSH)hbrBackground;
}

void bmx_win32_WNDCLASSW_SetcbWndExtra(WNDCLASSW * clas, int cbWndExtra) {
	clas->cbWndExtra = cbWndExtra;
}

// ********************************************************

ICONINFO * bmx_win32_ICONINFO_new() {
	return (ICONINFO *)malloc(sizeof(ICONINFO));
}

void bmx_win32_ICONINFO_free(ICONINFO * info) {
	free(info);
}

void bmx_win32_ICONINFO_SetfIcon(ICONINFO * info, int fIcon) {
	info->fIcon = fIcon;
}

void bmx_win32_ICONINFO_SethbmMask(ICONINFO * info, HBITMAP hbmMask) {
	info->hbmMask = hbmMask;
}

void bmx_win32_ICONINFO_SethbmColor(ICONINFO * info, HBITMAP hbmColor) {
	info->hbmColor = hbmColor;
}

// ********************************************************

MENUINFO * bmx_win32_MENUINFO_new() {
	MENUINFO * info = (MENUINFO *)malloc(sizeof(MENUINFO));
	info->cbSize = sizeof(MENUINFO);
	return info;
}

void bmx_win32_MENUINFO_free(MENUINFO * info) {
	free(info);
}

void bmx_win32_MENUINFO_SetfMask(MENUINFO * info, int fMask) {
	info->fMask = fMask;
}

void bmx_win32_MENUINFO_SetdwStyle(MENUINFO * info, int dwStyle) {
	info->dwStyle = dwStyle;
}

void bmx_win32_MENUINFO_SetcyMax(MENUINFO * info, UINT cyMax) {
	info->cyMax = cyMax;
}

void bmx_win32_MENUINFO_SethbrBack(MENUINFO * info, HBRUSH hbrBack) {
	info->hbrBack = hbrBack;
}

void bmx_win32_MENUINFO_SetdwContextHelpID(MENUINFO * info, int dwContextHelpID) {
	info->dwContextHelpID = dwContextHelpID;
}

void bmx_win32_MENUINFO_SetdwMenuData(MENUINFO * info, ULONG_PTR dwMenuData) {
	info->dwMenuData = dwMenuData;
}

// ********************************************************

MENUITEMINFOW * bmx_win32_MENUITEMINFOW_new() {
	MENUITEMINFOW * info = (MENUITEMINFOW *)malloc(sizeof(MENUITEMINFOW));
	info->cbSize = sizeof(MENUITEMINFOW);
	return info;
}

void bmx_win32_MENUITEMINFOW_free(MENUITEMINFOW * info) {
	free(info);
}

void bmx_win32_MENUITEMINFOW_SetfMask(MENUITEMINFOW * info, UINT fMask) {
	info->fMask = fMask;
}

void bmx_win32_MENUITEMINFOW_SetfType(MENUITEMINFOW * info, UINT fType) {
	info->fType = fType;
}

void bmx_win32_MENUITEMINFOW_SetfState(MENUITEMINFOW * info, UINT fState) {
	info->fState = fState;
}

void bmx_win32_MENUITEMINFOW_SetwID(MENUITEMINFOW * info, UINT wID) {
	info->wID = wID;
}

void bmx_win32_MENUITEMINFOW_SethSubMenu(MENUITEMINFOW * info, HMENU hSubMenu) {
	info->hSubMenu = hSubMenu;
}

void bmx_win32_MENUITEMINFOW_SetdwItemData(MENUITEMINFOW * info, ULONG_PTR dwItemData) {
	info->dwItemData = dwItemData;
}

void bmx_win32_MENUITEMINFOW_SetdwTypeData(MENUITEMINFOW * info, LPWSTR dwTypeData) {
	info->dwTypeData = dwTypeData;
}

LPWSTR bmx_win32_MENUITEMINFOW_dwTypeData(MENUITEMINFOW * info) {
	return info->dwTypeData;
}

// ********************************************************

SCROLLINFO * bmx_win32_SCROLLINFO_new() {
	SCROLLINFO * info = (SCROLLINFO *)malloc(sizeof(SCROLLINFO));
	info->cbSize = sizeof(SCROLLINFO);
	return info;
}

void bmx_win32_SCROLLINFO_free(SCROLLINFO * info) {
	free(info);
}

void bmx_win32_SCROLLINFO_SetfMask(SCROLLINFO * info, UINT fMask) {
	info->fMask = fMask;
}

void bmx_win32_SCROLLINFO_SetnMin(SCROLLINFO * info, int nMin) {
	info->nMin = nMin;
}

void bmx_win32_SCROLLINFO_SetnMax(SCROLLINFO * info, int nMax) {
	info->nMax = nMax;
}

void bmx_win32_SCROLLINFO_SetnPage(SCROLLINFO * info, UINT nPage) {
	info->nPage = nPage;
}

void bmx_win32_SCROLLINFO_SetnPos(SCROLLINFO * info, int nPos) {
	info->nPos = nPos;
}

void bmx_win32_SCROLLINFO_SetnTrackPos(SCROLLINFO * info, int nTrackPos) {
	info->nTrackPos = nTrackPos;
}

UINT bmx_win32_SCROLLINFO_nPage(SCROLLINFO * info) {
	return info->nPage;
}

int bmx_win32_SCROLLINFO_nPos(SCROLLINFO * info) {
	return info->nPos;
}

int bmx_win32_SCROLLINFO_nTrackPos(SCROLLINFO * info) {
	return info->nTrackPos;
}


