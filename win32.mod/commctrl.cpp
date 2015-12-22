#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <stdio.h>
#include <stdlib.h>
#include <commctrl.h>

extern "C" {

	TOOLINFOW * bmx_win32_TOOLINFOW_new();
	void bmx_win32_TOOLINFOW_free(TOOLINFOW * clas);
	void bmx_win32_TOOLINFOW_free(TOOLINFOW * clas);


	INITCOMMONCONTROLSEX * bmx_win32_TINITCOMMONCONTROLSEX_new();
	void bmx_win32_TINITCOMMONCONTROLSEX_free(INITCOMMONCONTROLSEX * icc);
	void bmx_win32_TINITCOMMONCONTROLSEX_SetdwICC(INITCOMMONCONTROLSEX * icc, int dwICC);

}

// ********************************************************

TOOLINFOW * bmx_win32_TOOLINFOW_new() {
	TOOLINFOW * clas = (TOOLINFOW *)malloc(sizeof(TOOLINFOW));
	memset(clas, 0, sizeof(TOOLINFOW));
	clas->cbSize = sizeof(TOOLINFOW);
	return clas;
}

void bmx_win32_TOOLINFOW_free(TOOLINFOW * clas) {
	free(clas);
}

// ********************************************************

INITCOMMONCONTROLSEX * bmx_win32_TINITCOMMONCONTROLSEX_new() {
	INITCOMMONCONTROLSEX * icc = (INITCOMMONCONTROLSEX *)malloc(sizeof(INITCOMMONCONTROLSEX));
	memset(icc, 0, sizeof(INITCOMMONCONTROLSEX));
	icc->dwSize = sizeof(INITCOMMONCONTROLSEX);
	return icc;
}

void bmx_win32_TINITCOMMONCONTROLSEX_free(INITCOMMONCONTROLSEX * icc) {
	free(icc);
}

void bmx_win32_TINITCOMMONCONTROLSEX_SetdwICC(INITCOMMONCONTROLSEX * icc, int dwICC) {
	icc->dwICC = dwICC;
}



