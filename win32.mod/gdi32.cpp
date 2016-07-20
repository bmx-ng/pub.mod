#include "windows.h"

extern "C" {

	LOGFONTW * bmx_win32_LOGFONTW_new();
	void bmx_win32_LOGFONTW_free(LOGFONTW * font);
	void bmx_win32_LOGFONTW_SetlfHeight(LOGFONTW * font, int lfHeight);
	void bmx_win32_LOGFONTW_SetlfWidth(LOGFONTW * font, int lfWidth);
	void bmx_win32_LOGFONTW_SetlfWeight(LOGFONTW * font, int lfWeight);
	void bmx_win32_LOGFONTW_SetlfItalic(LOGFONTW * font, int lfItalic);
	void bmx_win32_LOGFONTW_SetlfUnderline(LOGFONTW * font, int lfUnderline);
	void bmx_win32_LOGFONTW_SetlfStrikeOut(LOGFONTW * font, int lfStrikeOut);
	int bmx_win32_LOGFONTW_lfHeight(LOGFONTW * font);
	int bmx_win32_LOGFONTW_lfWidth(LOGFONTW * font);
	int bmx_win32_LOGFONTW_lfEscapement(LOGFONTW * font);
	int bmx_win32_LOGFONTW_lfOrientation(LOGFONTW * font);
	int bmx_win32_LOGFONTW_lfWeight(LOGFONTW * font);
	int bmx_win32_LOGFONTW_lfItalic(LOGFONTW * font);
	int bmx_win32_LOGFONTW_lfUnderline(LOGFONTW * font);
	int bmx_win32_LOGFONTW_lfStrikeOut(LOGFONTW * font);
	int bmx_win32_LOGFONTW_lfCharSet(LOGFONTW * font);
	int bmx_win32_LOGFONTW_lfOutPrecision(LOGFONTW * font);
	int bmx_win32_LOGFONTW_lfClipPrecision(LOGFONTW * font);
	int bmx_win32_LOGFONTW_lfQuality(LOGFONTW * font);
	int bmx_win32_LOGFONTW_lfPitchAndFamily(LOGFONTW * font);
	WCHAR * bmx_win32_LOGFONTW_lfFaceName(LOGFONTW * font);
	int bmx_win32_LOGFONTW_size();

	TEXTMETRIC * bmx_win32_TEXTMETRIC_new();
	void bmx_win32_TEXTMETRIC_free(TEXTMETRIC * metric);
	int bmx_win32_TEXTMETRIC_tmAveCharWidth(TEXTMETRIC * metric);

	BITMAPINFOHEADER * bmx_win32_BITMAPINFOHEADER_new();
	void bmx_win32_BITMAPINFOHEADER_free(BITMAPINFOHEADER * hdr);
	void bmx_win32_BITMAPINFOHEADER_SetbiWidth(BITMAPINFOHEADER * hdr, int biWidth);
	void bmx_win32_BITMAPINFOHEADER_SetbiHeight(BITMAPINFOHEADER * hdr, int biHeight);
	void bmx_win32_BITMAPINFOHEADER_SetbiPlanes(BITMAPINFOHEADER * hdr, int biPlanes);
	void bmx_win32_BITMAPINFOHEADER_SetbiBitCount(BITMAPINFOHEADER * hdr, int biBitCount);
	void bmx_win32_BITMAPINFOHEADER_SetbiCompression(BITMAPINFOHEADER * hdr, int biCompression);
}

// ********************************************************

int bmx_win32_LOGFONTW_size() {
	return sizeof(LOGFONTW);
}

LOGFONTW * bmx_win32_LOGFONTW_new() {
	return (LOGFONTW *)calloc(1, sizeof(LOGFONTW));
}

void bmx_win32_LOGFONTW_free(LOGFONTW * font) {
	free(font);
}

void bmx_win32_LOGFONTW_SetlfHeight(LOGFONTW * font, int lfHeight) {
	font->lfHeight= lfHeight;
}

void bmx_win32_LOGFONTW_SetlfWidth(LOGFONTW * font, int lfWidth) {
	font->lfWidth= lfWidth;
}

void bmx_win32_LOGFONTW_SetlfWeight(LOGFONTW * font, int lfWeight) {
	font->lfWeight= lfWeight;
}

void bmx_win32_LOGFONTW_SetlfItalic(LOGFONTW * font, int lfItalic) {
	font->lfItalic= lfItalic;
}

void bmx_win32_LOGFONTW_SetlfUnderline(LOGFONTW * font, int lfUnderline) {
	font->lfUnderline= lfUnderline;
}

void bmx_win32_LOGFONTW_SetlfStrikeOut(LOGFONTW * font, int lfStrikeOut) {
	font->lfStrikeOut= lfStrikeOut;
}

int bmx_win32_LOGFONTW_lfHeight(LOGFONTW * font) {
	return font->lfHeight;
}

int bmx_win32_LOGFONTW_lfWidth(LOGFONTW * font) {
	return font->lfWidth;
}

int bmx_win32_LOGFONTW_lfEscapement(LOGFONTW * font) {
	return font->lfEscapement;
}

int bmx_win32_LOGFONTW_lfOrientation(LOGFONTW * font) {
	return font->lfOrientation;
}

int bmx_win32_LOGFONTW_lfWeight(LOGFONTW * font) {
	return font->lfWeight;
}

int bmx_win32_LOGFONTW_lfItalic(LOGFONTW * font) {
	return font->lfItalic;
}

int bmx_win32_LOGFONTW_lfUnderline(LOGFONTW * font) {
	return font->lfUnderline;
}

int bmx_win32_LOGFONTW_lfStrikeOut(LOGFONTW * font) {
	return font->lfStrikeOut;
}

int bmx_win32_LOGFONTW_lfCharSet(LOGFONTW * font) {
	return font->lfCharSet;
}

int bmx_win32_LOGFONTW_lfOutPrecision(LOGFONTW * font) {
	return font->lfOutPrecision;
}

int bmx_win32_LOGFONTW_lfClipPrecision(LOGFONTW * font) {
	return font->lfClipPrecision;
}

int bmx_win32_LOGFONTW_lfQuality(LOGFONTW * font) {
	return font->lfQuality;
}

int bmx_win32_LOGFONTW_lfPitchAndFamily(LOGFONTW * font) {
	return font->lfPitchAndFamily;
}

WCHAR * bmx_win32_LOGFONTW_lfFaceName(LOGFONTW * font) {
	return font->lfFaceName;
}

// ********************************************************

TEXTMETRIC * bmx_win32_TEXTMETRIC_new() {
	return (TEXTMETRIC *)calloc(1, sizeof(TEXTMETRIC));
}

void bmx_win32_TEXTMETRIC_free(TEXTMETRIC * metric) {
	free(metric);
}

int bmx_win32_TEXTMETRIC_tmAveCharWidth(TEXTMETRIC * metric) {
	return metric->tmAveCharWidth;
}

// ********************************************************

BITMAPINFOHEADER * bmx_win32_BITMAPINFOHEADER_new() {
	BITMAPINFOHEADER * hdr = (BITMAPINFOHEADER *)calloc(1, sizeof(BITMAPINFOHEADER));
	hdr->biSize = sizeof(BITMAPINFOHEADER);
	return hdr;
}

void bmx_win32_BITMAPINFOHEADER_free(BITMAPINFOHEADER * hdr) {
	free(hdr);
}

void bmx_win32_BITMAPINFOHEADER_SetbiWidth(BITMAPINFOHEADER * hdr, int biWidth) {
	hdr->biWidth = biWidth;
}

void bmx_win32_BITMAPINFOHEADER_SetbiHeight(BITMAPINFOHEADER * hdr, int biHeight) {
	hdr->biHeight = biHeight;
}

void bmx_win32_BITMAPINFOHEADER_SetbiPlanes(BITMAPINFOHEADER * hdr, int biPlanes) {
	hdr->biPlanes = biPlanes;
}

void bmx_win32_BITMAPINFOHEADER_SetbiBitCount(BITMAPINFOHEADER * hdr, int biBitCount) {
	hdr->biBitCount = biBitCount;
}

void bmx_win32_BITMAPINFOHEADER_SetbiCompression(BITMAPINFOHEADER * hdr, int biCompression) {
	hdr->biCompression = biCompression;
}

