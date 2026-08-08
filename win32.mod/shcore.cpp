#define WIN32_LEAN_AND_MEAN
#include <windows.h>

typedef HRESULT (WINAPI *GetDpiForMonitorProc)(HMONITOR, int, UINT *, UINT *);

extern "C" HRESULT WINAPI bmx_win32_GetDpiForMonitor(HMONITOR monitor, int dpiType, UINT * dpiX, UINT * dpiY) {
	static HMODULE library = NULL;
	static GetDpiForMonitorProc getDpiForMonitor = NULL;
	static BOOL initialized = FALSE;

	if (!initialized) {
		initialized = TRUE;
		library = LoadLibraryW(L"shcore.dll");
		if (library) {
			union {
				FARPROC generic;
				GetDpiForMonitorProc typed;
			} procedure;
			procedure.generic = GetProcAddress(library, "GetDpiForMonitor");
			getDpiForMonitor = procedure.typed;
		}
	}

	if (!getDpiForMonitor) {
		return HRESULT_FROM_WIN32(ERROR_CALL_NOT_IMPLEMENTED);
	}

	return getDpiForMonitor(monitor, dpiType, dpiX, dpiY);
}
