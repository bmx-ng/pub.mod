#include <windows.h>
#include <richedit.h>

extern "C" {

	CHARRANGE * bmx_win32_CHARRANGE_new();
	void bmx_win32_CHARRANGE_free(CHARRANGE * range);
	void bmx_win32_CHARRANGE_SetcpMin(CHARRANGE * range, int cpMin);
	void bmx_win32_CHARRANGE_SetcpMax(CHARRANGE * range, int cpMax);
	int bmx_win32_CHARRANGE_cpMin(CHARRANGE * range);
	int bmx_win32_CHARRANGE_cpMax(CHARRANGE * range);

	CHARFORMATW * bmx_win32_CHARFORMATW_new();
	void bmx_win32_CHARFORMATW_free(CHARFORMATW * format);
	void bmx_win32_CHARFORMATW_SetdwMask(CHARFORMATW * format, int dwMask);
	void bmx_win32_CHARFORMATW_SetcrTextColor(CHARFORMATW * format, int crTextColor);

}

// ********************************************************

CHARRANGE * bmx_win32_CHARRANGE_new() {
	return (CHARRANGE *)calloc(1, sizeof(CHARRANGE));
}

void bmx_win32_CHARRANGE_free(CHARRANGE * range) {
	free(range);
}

void bmx_win32_CHARRANGE_SetcpMin(CHARRANGE * range, int cpMin) {
	range->cpMin = cpMin;
}

void bmx_win32_CHARRANGE_SetcpMax(CHARRANGE * range, int cpMax) {
	range->cpMax = cpMax;
}

int bmx_win32_CHARRANGE_cpMin(CHARRANGE * range) {
	return range->cpMin;
}

int bmx_win32_CHARRANGE_cpMax(CHARRANGE * range) {
	return range->cpMax;
}

// ********************************************************

CHARFORMATW * bmx_win32_CHARFORMATW_new() {
	CHARFORMATW * format = (CHARFORMATW *)calloc(1, sizeof(CHARFORMATW));
	format->cbSize = sizeof(CHARFORMATW);
	return format;
}

void bmx_win32_CHARFORMATW_free(CHARFORMATW * format) {
	free(format);
}

void bmx_win32_CHARFORMATW_SetdwMask(CHARFORMATW * format, int dwMask) {
	format->dwMask = dwMask;
}

void bmx_win32_CHARFORMATW_SetcrTextColor(CHARFORMATW * format, int crTextColor) {
	format->crTextColor = crTextColor;
}

