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

	BUTTON_IMAGELIST * bmx_win32_BUTTON_IMAGELIST_new();
	void bmx_win32_BUTTON_IMAGELIST_free(BUTTON_IMAGELIST * list);
	void bmx_win32_BUTTON_IMAGELIST_Sethiml(BUTTON_IMAGELIST * list, HIMAGELIST himl);
	void bmx_win32_BUTTON_IMAGELIST_SetuAlign(BUTTON_IMAGELIST * list, UINT uAlign);
	HIMAGELIST bmx_win32_BUTTON_IMAGELIST_himl(BUTTON_IMAGELIST * list);

	COMBOBOXEXITEMW * bmx_win32_COMBOBOXEXITEMW_new();
	void bmx_win32_COMBOBOXEXITEMW_free(COMBOBOXEXITEMW * item);
	void bmx_win32_COMBOBOXEXITEMW_Setmask(COMBOBOXEXITEMW * item, UINT mask);
	void bmx_win32_COMBOBOXEXITEMW_SetiItem(COMBOBOXEXITEMW * item, INT_PTR iItem);
	void bmx_win32_COMBOBOXEXITEMW_SetpszText(COMBOBOXEXITEMW * item, LPWSTR pszText);
	void bmx_win32_COMBOBOXEXITEMW_SetiImage(COMBOBOXEXITEMW * item, int iImage);
	void bmx_win32_COMBOBOXEXITEMW_SetiSelectedImage(COMBOBOXEXITEMW * item, int iSelectedImage);
	UINT bmx_win32_COMBOBOXEXITEMW_mask(COMBOBOXEXITEMW * item);
	LPWSTR bmx_win32_COMBOBOXEXITEMW_pszText(COMBOBOXEXITEMW * item);

	LVCOLUMNW * bmx_win32_LVCOLUMNW_new();
	void bmx_win32_LVCOLUMNW_free(LVCOLUMNW * col);

	LVITEMW * bmx_win32_LVITEMW_new();
	void bmx_win32_LVITEMW_free(LVITEMW * item);
	void bmx_win32_LVITEMW_Setmask(LVITEMW * item, UINT mask);
	void bmx_win32_LVITEMW_SetiItem(LVITEMW * item, int iItem);
	void bmx_win32_LVITEMW_Setstate(LVITEMW * item, UINT state);
	void bmx_win32_LVITEMW_SetstateMask(LVITEMW * item, UINT stateMask);
	void bmx_win32_LVITEMW_SetpszText(LVITEMW * item, LPWSTR pszText);
	void bmx_win32_LVITEMW_SetiImage(LVITEMW * item, int iImage);
	UINT bmx_win32_LVITEMW_mask(LVITEMW * item);
	UINT bmx_win32_LVITEMW_state(LVITEMW * item);
	LPWSTR bmx_win32_LVITEMW_pszText(LVITEMW * item);

	HWND bmx_win32_NMHDR_hwndFrom(NMHDR * hdr);
	UINT bmx_win32_NMHDR_code(NMHDR * hdr);
	
	void bmx_win32_NMTTDISPINFOW_SetlpszText(NMTTDISPINFOW * info, LPWSTR lpszText);

	LPWSTR bmx_win32_NMLVGETINFOTIPW_pszText(NMLVGETINFOTIPW * info);
	int bmx_win32_NMLVGETINFOTIPW_cchTextMax(NMLVGETINFOTIPW * info);
	int bmx_win32_NMLVGETINFOTIPW_iItem(NMLVGETINFOTIPW * info);
	
	UINT bmx_win32_NMLISTVIEW_uChanged(NMLISTVIEW * view);
	
	int bmx_win32_NMITEMACTIVATE_iItem(NMITEMACTIVATE * act);

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

// ********************************************************

BUTTON_IMAGELIST * bmx_win32_BUTTON_IMAGELIST_new() {
	return (BUTTON_IMAGELIST *)calloc(1,sizeof(BUTTON_IMAGELIST));
}

void bmx_win32_BUTTON_IMAGELIST_free(BUTTON_IMAGELIST * list) {
	free(list);
}

void bmx_win32_BUTTON_IMAGELIST_Sethiml(BUTTON_IMAGELIST * list, HIMAGELIST himl) {
	list->himl = himl;
}

void bmx_win32_BUTTON_IMAGELIST_SetuAlign(BUTTON_IMAGELIST * list, UINT uAlign) {
	list->uAlign = uAlign;
}

HIMAGELIST bmx_win32_BUTTON_IMAGELIST_himl(BUTTON_IMAGELIST * list) {
	return list->himl;
}

// ********************************************************

COMBOBOXEXITEMW * bmx_win32_COMBOBOXEXITEMW_new() {
	return (COMBOBOXEXITEMW *)malloc(sizeof(COMBOBOXEXITEMW));
}

void bmx_win32_COMBOBOXEXITEMW_free(COMBOBOXEXITEMW * item) {
	free(item);
}

void bmx_win32_COMBOBOXEXITEMW_Setmask(COMBOBOXEXITEMW * item, UINT mask) {
	item->mask = mask;
}

void bmx_win32_COMBOBOXEXITEMW_SetiItem(COMBOBOXEXITEMW * item, INT_PTR iItem) {
	item->iItem = iItem;
}

void bmx_win32_COMBOBOXEXITEMW_SetpszText(COMBOBOXEXITEMW * item, LPWSTR pszText) {
	item->pszText = pszText;
}

void bmx_win32_COMBOBOXEXITEMW_SetiImage(COMBOBOXEXITEMW * item, int iImage) {
	item->iImage = iImage;
}

void bmx_win32_COMBOBOXEXITEMW_SetiSelectedImage(COMBOBOXEXITEMW * item, int iSelectedImage) {
	item->iSelectedImage = iSelectedImage;
}

UINT bmx_win32_COMBOBOXEXITEMW_mask(COMBOBOXEXITEMW * item) {
	return item->mask;
}

LPWSTR bmx_win32_COMBOBOXEXITEMW_pszText(COMBOBOXEXITEMW * item) {
	return item->pszText;
}

// ********************************************************

LVCOLUMNW * bmx_win32_LVCOLUMNW_new() {
	return (LVCOLUMNW *)malloc(sizeof(LVCOLUMNW));
}

void bmx_win32_LVCOLUMNW_free(LVCOLUMNW * col) {
	free(col);
}

// ********************************************************

LVITEMW * bmx_win32_LVITEMW_new() {
	return (LVITEMW *)malloc(sizeof(LVITEMW));
}

void bmx_win32_LVITEMW_free(LVITEMW * item) {
	free(item);
}

void bmx_win32_LVITEMW_Setmask(LVITEMW * item, UINT mask) {
	item->mask = mask;
}

void bmx_win32_LVITEMW_SetiItem(LVITEMW * item, int iItem) {
	item->iItem = iItem;
}

void bmx_win32_LVITEMW_Setstate(LVITEMW * item, UINT state) {
	item->state = state;
}

void bmx_win32_LVITEMW_SetstateMask(LVITEMW * item, UINT stateMask) {
	item->stateMask = stateMask;
}

void bmx_win32_LVITEMW_SetpszText(LVITEMW * item, LPWSTR pszText) {
	item->pszText = pszText;
}

void bmx_win32_LVITEMW_SetiImage(LVITEMW * item, int iImage) {
	item->iImage = iImage;
}

UINT bmx_win32_LVITEMW_mask(LVITEMW * item) {
	return item->mask;
}

UINT bmx_win32_LVITEMW_state(LVITEMW * item) {
	return item->state;
}

LPWSTR bmx_win32_LVITEMW_pszText(LVITEMW * item) {
	return item->pszText;
}

// ********************************************************

HWND bmx_win32_NMHDR_hwndFrom(NMHDR * hdr) {
	return hdr->hwndFrom;
}

UINT bmx_win32_NMHDR_code(NMHDR * hdr) {
	return hdr->code;
}
	
// ********************************************************

void bmx_win32_NMTTDISPINFOW_SetlpszText(NMTTDISPINFOW * info, LPWSTR lpszText) {
	info->lpszText = lpszText;
}

// ********************************************************

LPWSTR bmx_win32_NMLVGETINFOTIPW_pszText(NMLVGETINFOTIPW * info) {
	return info->pszText;
}

int bmx_win32_NMLVGETINFOTIPW_cchTextMax(NMLVGETINFOTIPW * info) {
	return info->cchTextMax;
}

int bmx_win32_NMLVGETINFOTIPW_iItem(NMLVGETINFOTIPW * info) {
	return info->iItem;
}

// ********************************************************

UINT bmx_win32_NMLISTVIEW_uChanged(NMLISTVIEW * view) {
	return view->uChanged;
}

// ********************************************************

int bmx_win32_NMITEMACTIVATE_iItem(NMITEMACTIVATE * act) {
	return act->iItem;
}

