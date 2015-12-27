#include "windows.h"

extern "C" {

	CHOOSEFONTW * bmx_win32_CHOOSEFONTW_new();
	void bmx_win32_CHOOSEFONTW_free(CHOOSEFONTW * cf);
	void bmx_win32_CHOOSEFONTW_SethwndOwner(CHOOSEFONTW * cf, HWND hwndOwner);
	void bmx_win32_CHOOSEFONTW_SethDC(CHOOSEFONTW * cf, HDC hDC);
	void bmx_win32_CHOOSEFONTW_SetlpLogFont(CHOOSEFONTW * cf, LOGFONTW * lpLogFont);
	void bmx_win32_CHOOSEFONTW_SetiPointSize(CHOOSEFONTW * cf, int iPointSize);
	void bmx_win32_CHOOSEFONTW_SetFlags(CHOOSEFONTW * cf, int Flags);
	void bmx_win32_CHOOSEFONTW_SetrgbColors(CHOOSEFONTW * cf, int rgbColors);
	int bmx_win32_CHOOSEFONTW_iPointSize(CHOOSEFONTW * cf);
	int bmx_win32_CHOOSEFONTW_Flags(CHOOSEFONTW * cf);
	int bmx_win32_CHOOSEFONTW_nFontType(CHOOSEFONTW * cf);

}

CHOOSEFONTW * bmx_win32_CHOOSEFONTW_new() {
	CHOOSEFONTW * cf = (CHOOSEFONTW *)calloc(1, sizeof(CHOOSEFONTW));
	cf->lStructSize = sizeof(CHOOSEFONTW);
	return cf;
}

void bmx_win32_CHOOSEFONTW_free(CHOOSEFONTW * cf) {
	free(cf);
}

void bmx_win32_CHOOSEFONTW_SethwndOwner(CHOOSEFONTW * cf, HWND hwndOwner) {
	cf->hwndOwner = hwndOwner;
}

void bmx_win32_CHOOSEFONTW_SethDC(CHOOSEFONTW * cf, HDC hDC) {
	cf->hDC = hDC;
}

void bmx_win32_CHOOSEFONTW_SetlpLogFont(CHOOSEFONTW * cf, LOGFONTW * lpLogFont) {
	cf->lpLogFont = lpLogFont;
}

void bmx_win32_CHOOSEFONTW_SetiPointSize(CHOOSEFONTW * cf, int iPointSize) {
	cf->iPointSize = iPointSize;
}

void bmx_win32_CHOOSEFONTW_SetFlags(CHOOSEFONTW * cf, int Flags) {
	cf->Flags = Flags;
}

void bmx_win32_CHOOSEFONTW_SetrgbColors(CHOOSEFONTW * cf, int rgbColors) {
	cf->rgbColors = rgbColors;
}

int bmx_win32_CHOOSEFONTW_iPointSize(CHOOSEFONTW * cf) {
	return cf->iPointSize;
}

int bmx_win32_CHOOSEFONTW_Flags(CHOOSEFONTW * cf) {
	return cf->Flags;
}

int bmx_win32_CHOOSEFONTW_nFontType(CHOOSEFONTW * cf) {
	return cf->nFontType;
}

