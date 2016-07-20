#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <stdio.h>
#include <stdlib.h>
#include <commctrl.h>
#include <richedit.h>

extern "C" {

	TOOLINFOW * bmx_win32_TOOLINFOW_new();
	void bmx_win32_TOOLINFOW_free(TOOLINFOW * info);
	void bmx_win32_TOOLINFOW_SetuFlags(TOOLINFOW * info, UINT uFlags);
	void bmx_win32_TOOLINFOW_Sethwnd(TOOLINFOW * info, HWND hwnd);
	void bmx_win32_TOOLINFOW_SetuId(TOOLINFOW * info, UINT_PTR uId);
	void bmx_win32_TOOLINFOW_Sethinst(TOOLINFOW * info, HINSTANCE hinst);
	void bmx_win32_TOOLINFOW_SetlpszText(TOOLINFOW * info, LPWSTR lpszText);
	RECT* bmx_win32_TOOLINFOW_rect(TOOLINFOW * info);
	LPWSTR bmx_win32_TOOLINFOW_lpszText(TOOLINFOW * info);

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

	TVITEMW * bmx_win32_NMTREEVIEW_itemNew(NMTREEVIEWW * view);
	UINT bmx_win32_NMTREEVIEW_action(NMTREEVIEWW * view);
	int bmx_win32_NMTREEVIEW_x(NMTREEVIEWW * view);
	int bmx_win32_NMTREEVIEW_y(NMTREEVIEWW * view);

	TBBUTTON * bmx_win32_TBBUTTON_new();
	void bmx_win32_TBBUTTON_free(TBBUTTON * button);
	void bmx_win32_TBBUTTON_SetiBitmap(TBBUTTON * button, int iBitmap);
	void bmx_win32_TBBUTTON_SetidCommand(TBBUTTON * button, int idCommand);
	void bmx_win32_TBBUTTON_SetfsState(TBBUTTON * button, int fsState);
	void bmx_win32_TBBUTTON_SetfsStyle(TBBUTTON * button, int fsStyle);

	TCHITTESTINFO * bmx_win32_TCHITTESTINFO_new();
	void bmx_win32_TCHITTESTINFO_free(TCHITTESTINFO * info);
	POINT * bmx_win32_TCHITTESTINFO_pt(TCHITTESTINFO * info);
	UINT bmx_win32_TCHITTESTINFO_flags(TCHITTESTINFO * info);
	void bmx_win32_TCHITTESTINFO_Setx(TCHITTESTINFO * info, int x);
	void bmx_win32_TCHITTESTINFO_Sety(TCHITTESTINFO * info, int y);
	int bmx_win32_TCHITTESTINFO_x(TCHITTESTINFO * info);
	int bmx_win32_TCHITTESTINFO_y(TCHITTESTINFO * info);
	void bmx_win32_TCHITTESTINFO_Setflags(TCHITTESTINFO * info, UINT flags);

	TCITEMW * bmx_win32_TCITEMW_new();
	void bmx_win32_TCITEMW_free(TCITEMW * item);
	void bmx_win32_TCITEMW_Setmask(TCITEMW * item, UINT mask);
	void bmx_win32_TCITEMW_SetpszText(TCITEMW * item, LPWSTR pszText);
	void bmx_win32_TCITEMW_SetiImage(TCITEMW * item, int iImage);
	LPWSTR bmx_win32_TCITEMW_pszText(TCITEMW * item);

	TVITEMW * bmx_win32_TVITEMW_new();
	void bmx_win32_TVITEMW_free(TVITEMW * item);
	void bmx_win32_TVITEMW_Setmask(TVITEMW * item, UINT mask);
	void bmx_win32_TVITEMW_SethItem(TVITEMW * item, HTREEITEM hItem);
	void bmx_win32_TVITEMW_Setstate(TVITEMW * item, UINT state);
	void bmx_win32_TVITEMW_SetstateMask(TVITEMW * item, UINT stateMask);
	void bmx_win32_TVITEMW_SetpszText(TVITEMW * item, LPWSTR pszText);
	void bmx_win32_TVITEMW_SetcchTextMax(TVITEMW * item, int cchTextMax);
	void bmx_win32_TVITEMW_SetiImage(TVITEMW * item, int iImage);
	void bmx_win32_TVITEMW_SetiSelectedImage(TVITEMW * item, int iSelectedImage);
	void bmx_win32_TVITEMW_SetcChildren(TVITEMW * item, int cChildren);
	void bmx_win32_TVITEMW_SetlParam(TVITEMW * item, LPARAM lParam);
	UINT bmx_win32_TVITEMW_mask(TVITEMW * item);
	LPWSTR bmx_win32_TVITEMW_pszText(TVITEMW * item);
	int bmx_win32_TVITEMW_iImage(TVITEMW * item);
	HTREEITEM bmx_win32_TVITEMW_hItem(TVITEMW * item);
	LPARAM bmx_win32_TVITEMW_lParam(TVITEMW * item);

	TVINSERTSTRUCTW * bmx_win32_TVINSERTSTRUCTW_new();
	void bmx_win32_TVINSERTSTRUCTW_free(TVINSERTSTRUCTW * tv);
	void bmx_win32_TVINSERTSTRUCTW_SethParent(TVINSERTSTRUCTW * tv, HTREEITEM hParent);
	void bmx_win32_TVINSERTSTRUCTW_SethInsertAfter(TVINSERTSTRUCTW * tv, HTREEITEM hInsertAfter);
	void bmx_win32_TVINSERTSTRUCTW_Setitem_mask(TVINSERTSTRUCTW * tv, UINT item_mask);
	void bmx_win32_TVINSERTSTRUCTW_Setitem_hItem(TVINSERTSTRUCTW * tv, HTREEITEM item_hItem);
	void bmx_win32_TVINSERTSTRUCTW_Setitem_state(TVINSERTSTRUCTW * tv, UINT item_state);
	void bmx_win32_TVINSERTSTRUCTW_Setitem_stateMask(TVINSERTSTRUCTW * tv, UINT item_stateMask);
	void bmx_win32_TVINSERTSTRUCTW_Setitem_pszText(TVINSERTSTRUCTW * tv, LPWSTR item_pszText);
	void bmx_win32_TVINSERTSTRUCTW_Setitem_cchTextMax(TVINSERTSTRUCTW * tv, int item_cchTextMax);
	void bmx_win32_TVINSERTSTRUCTW_Setitem_iImage(TVINSERTSTRUCTW * tv, int item_iImage);
	void bmx_win32_TVINSERTSTRUCTW_Setitem_iSelectedImage(TVINSERTSTRUCTW * tv, int item_iSelectedImage);
	void bmx_win32_TVINSERTSTRUCTW_Setitem_cChildren(TVINSERTSTRUCTW * tv, int item_cChildren);
	void bmx_win32_TVINSERTSTRUCTW_Setitem_lParam(TVINSERTSTRUCTW * tv, LPARAM item_lParam);
	UINT bmx_win32_TVINSERTSTRUCTW_item_mask(TVINSERTSTRUCTW * tv);
	int bmx_win32_TVINSERTSTRUCTW_item_iImage(TVINSERTSTRUCTW * tv);
	LPARAM bmx_win32_TVINSERTSTRUCTW_item_lparam(TVINSERTSTRUCTW * tv);
	LPWSTR bmx_win32_TVINSERTSTRUCTW_item_pszText(TVINSERTSTRUCTW * tv);

	TVHITTESTINFO * bmx_win32_TVHITTESTINFO_new();
	void bmx_win32_TVHITTESTINFO_free(TVHITTESTINFO * info);
	UINT bmx_win32_TVHITTESTINFO_flags(TVHITTESTINFO * info);
	void bmx_win32_TVHITTESTINFO_Setx(TVHITTESTINFO * info, int x);
	void bmx_win32_TVHITTESTINFO_Sety(TVHITTESTINFO * info, int y);
	int bmx_win32_TVHITTESTINFO_x(TVHITTESTINFO * info);
	int bmx_win32_TVHITTESTINFO_y(TVHITTESTINFO * info);
	void bmx_win32_TVHITTESTINFO_Setflags(TVHITTESTINFO * info, UINT flags);
	HTREEITEM bmx_win32_TVHITTESTINFO_hItem(TVHITTESTINFO * info);
	
	UINT bmx_win32_MSGFILTER_msg(MSGFILTER * filter);
	WPARAM bmx_win32_MSGFILTER_wParam(MSGFILTER * filter);
	LPARAM bmx_win32_MSGFILTER_lParam(MSGFILTER * filter);
	void bmx_win32_MSGFILTER_Setmsg(MSGFILTER * filter, UINT msg);

}

// ********************************************************

TOOLINFOW * bmx_win32_TOOLINFOW_new() {
	TOOLINFOW * info = (TOOLINFOW *)calloc(1, sizeof(TOOLINFOW));
	info->cbSize = sizeof(TOOLINFOW);
	return info;
}

void bmx_win32_TOOLINFOW_free(TOOLINFOW * info) {
	free(info);
}

void bmx_win32_TOOLINFOW_SetuFlags(TOOLINFOW * info, UINT uFlags) {
	info->uFlags = uFlags;
}

void bmx_win32_TOOLINFOW_Sethwnd(TOOLINFOW * info, HWND hwnd) {
	info->hwnd = hwnd;
}

void bmx_win32_TOOLINFOW_SetuId(TOOLINFOW * info, UINT_PTR uId) {
	info->uId = uId;
}

void bmx_win32_TOOLINFOW_Sethinst(TOOLINFOW * info, HINSTANCE hinst) {
	info->hinst = hinst;
}

void bmx_win32_TOOLINFOW_SetlpszText(TOOLINFOW * info, LPWSTR lpszText) {
	info->lpszText = lpszText;
}

RECT* bmx_win32_TOOLINFOW_rect(TOOLINFOW * info) {
	return &info->rect;
}

LPWSTR bmx_win32_TOOLINFOW_lpszText(TOOLINFOW * info) {
	return info->lpszText;
}

// ********************************************************

INITCOMMONCONTROLSEX * bmx_win32_TINITCOMMONCONTROLSEX_new() {
	INITCOMMONCONTROLSEX * icc = (INITCOMMONCONTROLSEX *)calloc(1,sizeof(INITCOMMONCONTROLSEX));
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
	return (COMBOBOXEXITEMW *)calloc(1, sizeof(COMBOBOXEXITEMW));
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
	return (LVCOLUMNW *)calloc(1,sizeof(LVCOLUMNW));
}

void bmx_win32_LVCOLUMNW_free(LVCOLUMNW * col) {
	free(col);
}

// ********************************************************

LVITEMW * bmx_win32_LVITEMW_new() {
	return (LVITEMW *)calloc(1, sizeof(LVITEMW));
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

// ********************************************************

TVITEMW * bmx_win32_NMTREEVIEW_itemNew(NMTREEVIEWW * view) {
	return &view->itemNew;
}

UINT bmx_win32_NMTREEVIEW_action(NMTREEVIEWW * view) {
	return view->action;
}

int bmx_win32_NMTREEVIEW_x(NMTREEVIEWW * view) {
	return view->ptDrag.x;
}

int bmx_win32_NMTREEVIEW_y(NMTREEVIEWW * view) {
	return view->ptDrag.y;
}

// ********************************************************

TBBUTTON * bmx_win32_TBBUTTON_new() {
	return (TBBUTTON *)calloc(1,sizeof(TBBUTTON));
}

void bmx_win32_TBBUTTON_free(TBBUTTON * button) {
	free(button);
}

void bmx_win32_TBBUTTON_SetiBitmap(TBBUTTON * button, int iBitmap) {
	button->iBitmap = iBitmap;
}

void bmx_win32_TBBUTTON_SetidCommand(TBBUTTON * button, int idCommand) {
	button->idCommand = idCommand;
}

void bmx_win32_TBBUTTON_SetfsState(TBBUTTON * button, int fsState) {
	button->fsState = fsState;
}

void bmx_win32_TBBUTTON_SetfsStyle(TBBUTTON * button, int fsStyle) {
	button->fsStyle = fsStyle;
}

// ********************************************************

TCHITTESTINFO * bmx_win32_TCHITTESTINFO_new() {
	return (TCHITTESTINFO *)calloc(1, sizeof(TCHITTESTINFO));
}

void bmx_win32_TCHITTESTINFO_free(TCHITTESTINFO * info) {
	free(info);
}

POINT * bmx_win32_TCHITTESTINFO_pt(TCHITTESTINFO * info) {
	return &info->pt;
}

UINT bmx_win32_TCHITTESTINFO_flags(TCHITTESTINFO * info) {
	return info->flags;
}

void bmx_win32_TCHITTESTINFO_Setx(TCHITTESTINFO * info, int x) {
	info->pt.x = x;
}

void bmx_win32_TCHITTESTINFO_Sety(TCHITTESTINFO * info, int y) {
	info->pt.y = y;
}

int bmx_win32_TCHITTESTINFO_x(TCHITTESTINFO * info) {
	return info->pt.x;
}

int bmx_win32_TCHITTESTINFO_y(TCHITTESTINFO * info) {
	return info->pt.y;
}

void bmx_win32_TCHITTESTINFO_Setflags(TCHITTESTINFO * info, UINT flags) {
	info->flags = flags;
}

// ********************************************************

TCITEMW * bmx_win32_TCITEMW_new() {
	return (TCITEMW *)calloc(1, sizeof(TCITEMW));
}

void bmx_win32_TCITEMW_free(TCITEMW * item) {
	free(item);
}

void bmx_win32_TCITEMW_Setmask(TCITEMW * item, UINT mask) {
	item->mask = mask;
}

void bmx_win32_TCITEMW_SetpszText(TCITEMW * item, LPWSTR pszText) {
	item->pszText = pszText;
}

void bmx_win32_TCITEMW_SetiImage(TCITEMW * item, int iImage) {
	item->iImage = iImage;
}

LPWSTR bmx_win32_TCITEMW_pszText(TCITEMW * item) {
	return item->pszText;
}

// ********************************************************

TVITEMW * bmx_win32_TVITEMW_new() {
	return (TVITEMW *)calloc(1, sizeof(TVITEMW));
}

void bmx_win32_TVITEMW_free(TVITEMW * item) {
	free(item);
}

void bmx_win32_TVITEMW_Setmask(TVITEMW * item, UINT mask) {
	item->mask = mask;
}

void bmx_win32_TVITEMW_SethItem(TVITEMW * item, HTREEITEM hItem) {
	item->hItem = hItem;
}

void bmx_win32_TVITEMW_Setstate(TVITEMW * item, UINT state) {
	item->state = state;
}

void bmx_win32_TVITEMW_SetstateMask(TVITEMW * item, UINT stateMask) {
	item->stateMask = stateMask;
}

void bmx_win32_TVITEMW_SetpszText(TVITEMW * item, LPWSTR pszText) {
	item->pszText = pszText;
}

void bmx_win32_TVITEMW_SetcchTextMax(TVITEMW * item, int cchTextMax) {
	item->cchTextMax = cchTextMax;
}

void bmx_win32_TVITEMW_SetiImage(TVITEMW * item, int iImage) {
	item->iImage = iImage;
}

void bmx_win32_TVITEMW_SetiSelectedImage(TVITEMW * item, int iSelectedImage) {
	item->iSelectedImage = iSelectedImage;
}

void bmx_win32_TVITEMW_SetcChildren(TVITEMW * item, int cChildren) {
	item->cChildren = cChildren;
}

void bmx_win32_TVITEMW_SetlParam(TVITEMW * item, LPARAM lParam) {
	item->lParam = lParam;
}

UINT bmx_win32_TVITEMW_mask(TVITEMW * item) {
	return item->mask;
}

LPWSTR bmx_win32_TVITEMW_pszText(TVITEMW * item) {
	return item->pszText;
}

int bmx_win32_TVITEMW_iImage(TVITEMW * item) {
	return item->iImage;
}

HTREEITEM bmx_win32_TVITEMW_hItem(TVITEMW * item) {
	return item->hItem;
}

LPARAM bmx_win32_TVITEMW_lParam(TVITEMW * item) {
	return item->lParam;
}

// ********************************************************

TVINSERTSTRUCTW * bmx_win32_TVINSERTSTRUCTW_new() {
	return (TVINSERTSTRUCTW *)calloc(1, sizeof(TVINSERTSTRUCTW));
}

void bmx_win32_TVINSERTSTRUCTW_free(TVINSERTSTRUCTW * tv) {
	free(tv);
}

void bmx_win32_TVINSERTSTRUCTW_SethParent(TVINSERTSTRUCTW * tv, HTREEITEM hParent) {
	tv->hParent = hParent;
}

void bmx_win32_TVINSERTSTRUCTW_SethInsertAfter(TVINSERTSTRUCTW * tv, HTREEITEM hInsertAfter) {
	tv->hInsertAfter = hInsertAfter;
}

void bmx_win32_TVINSERTSTRUCTW_Setitem_mask(TVINSERTSTRUCTW * tv, UINT item_mask) {
	tv->item.mask = item_mask;
}

void bmx_win32_TVINSERTSTRUCTW_Setitem_hItem(TVINSERTSTRUCTW * tv, HTREEITEM item_hItem) {
	tv->item.hItem = item_hItem;
}

void bmx_win32_TVINSERTSTRUCTW_Setitem_state(TVINSERTSTRUCTW * tv, UINT item_state) {
	tv->item.state = item_state;
}

void bmx_win32_TVINSERTSTRUCTW_Setitem_stateMask(TVINSERTSTRUCTW * tv, UINT item_stateMask) {
	tv->item.stateMask = item_stateMask;
}

void bmx_win32_TVINSERTSTRUCTW_Setitem_pszText(TVINSERTSTRUCTW * tv, LPWSTR item_pszText) {
	tv->item.pszText = item_pszText;
}

void bmx_win32_TVINSERTSTRUCTW_Setitem_cchTextMax(TVINSERTSTRUCTW * tv, int item_cchTextMax) {
	tv->item.cchTextMax = item_cchTextMax;
}

void bmx_win32_TVINSERTSTRUCTW_Setitem_iImage(TVINSERTSTRUCTW * tv, int item_iImage) {
	tv->item.iImage = item_iImage;
}

void bmx_win32_TVINSERTSTRUCTW_Setitem_iSelectedImage(TVINSERTSTRUCTW * tv, int item_iSelectedImage) {
	tv->item.iSelectedImage = item_iSelectedImage;
}

void bmx_win32_TVINSERTSTRUCTW_Setitem_cChildren(TVINSERTSTRUCTW * tv, int item_cChildren) {
	tv->item.cChildren = item_cChildren;
}

void bmx_win32_TVINSERTSTRUCTW_Setitem_lParam(TVINSERTSTRUCTW * tv, LPARAM item_lParam) {
	tv->item.lParam = item_lParam;
}

UINT bmx_win32_TVINSERTSTRUCTW_item_mask(TVINSERTSTRUCTW * tv) {
	return tv->item.mask;
}

int bmx_win32_TVINSERTSTRUCTW_item_iImage(TVINSERTSTRUCTW * tv) {
	return tv->item.iImage;
}

LPARAM bmx_win32_TVINSERTSTRUCTW_item_lparam(TVINSERTSTRUCTW * tv) {
	return tv->item.lParam;
}

LPWSTR bmx_win32_TVINSERTSTRUCTW_item_pszText(TVINSERTSTRUCTW * tv) {
	return tv->item.pszText;
}

// ********************************************************

TVHITTESTINFO * bmx_win32_TVHITTESTINFO_new() {
	return (TVHITTESTINFO *)calloc(1, sizeof(TVHITTESTINFO));
}

void bmx_win32_TVHITTESTINFO_free(TVHITTESTINFO * info) {
	free(info);
}

UINT bmx_win32_TVHITTESTINFO_flags(TVHITTESTINFO * info) {
	return info->flags;
}

void bmx_win32_TVHITTESTINFO_Setx(TVHITTESTINFO * info, int x) {
	info->pt.x = x;
}

void bmx_win32_TVHITTESTINFO_Sety(TVHITTESTINFO * info, int y) {
	info->pt.y = y;
}

int bmx_win32_TVHITTESTINFO_x(TVHITTESTINFO * info) {
	return info->pt.x;
}

int bmx_win32_TVHITTESTINFO_y(TVHITTESTINFO * info) {
	return info->pt.y;
}

void bmx_win32_TVHITTESTINFO_Setflags(TVHITTESTINFO * info, UINT flags) {
	info->flags = flags;
}

HTREEITEM bmx_win32_TVHITTESTINFO_hItem(TVHITTESTINFO * info) {
	return info->hItem;
}

// ********************************************************

UINT bmx_win32_MSGFILTER_msg(MSGFILTER * filter) {
	return filter->msg;
}

WPARAM bmx_win32_MSGFILTER_wParam(MSGFILTER * filter) {
	return filter->wParam;
}

LPARAM bmx_win32_MSGFILTER_lParam(MSGFILTER * filter) {
	return filter->lParam;
}

void bmx_win32_MSGFILTER_Setmsg(MSGFILTER * filter, UINT msg) {
	filter->msg = msg;
}

