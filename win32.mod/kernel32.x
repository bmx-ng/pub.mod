BBINT Sleep(BBINT )!
BBINT Beep(BBINT ,BBINT )!
BBINT GetModuleHandleA(BBBYTE * )!
BBINT GetModuleHandleW(BBSHORT * )!
BBINT SetFileAttributesA(BBBYTE * ,BBINT )!
BBINT SetFileAttributesW(BBBYTE * ,BBINT )!
BBINT GetFileAttributesA(BBBYTE * )!
BBINT GetFileAttributesW(BBBYTE * )!
BBINT GetCurrentThreadId()!
HGLOBAL GlobalAlloc(UINT ,SIZE_T )!
SIZE_T GlobalSize(HGLOBAL )!
HGLOBAL GlobalFree(HGLOBAL )!
BBBYTE * GlobalLock(HGLOBAL )!
BBINT GlobalUnlock(HGLOBAL )!
HANDLE __stdcall GetStdHandle(BBINT )!
WINBOOL __stdcall ReleaseMutex(HANDLE)!
HANDLE __stdcall CreateMutexW(LPSECURITY_ATTRIBUTES, WINBOOL , LPCWSTR)!
DWORD __stdcall GetLastError()!