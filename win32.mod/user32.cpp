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

}


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

