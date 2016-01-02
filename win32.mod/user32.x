HWND SetCapture(HWND)!
BOOL ReleaseCapture()!
ATOM RegisterClassA(CONST WNDCLASSA*)!
ATOM RegisterClassW(CONST WNDCLASSW*)!
HWND CreateWindowExA(DWORD,LPCSTR,LPCSTR,DWORD,int,int,int,int,HWND,HMENU,HINSTANCE,LPVOID)!
HWND CreateWindowExW(DWORD,LPCWSTR,LPCWSTR,DWORD,int,int,int,int,HWND,HMENU,HINSTANCE,LPVOID)!
LRESULT DefWindowProcA(HWND,UINT,WPARAM,LPARAM)!
LRESULT DefWindowProcW(HWND,UINT,WPARAM,LPARAM)!
LONG DispatchMessageA(const MSG*)!
LONG DispatchMessageW(const MSG*)!
BOOL GetMessageA(LPMSG,HWND,UINT,UINT)!
BOOL GetMessageW(LPMSG,HWND,UINT,UINT)!
BBINT PeekMessageA(BBBYTE * ,BBINT ,BBINT ,BBINT ,BBINT )!
BBINT PeekMessageW(BBBYTE * ,BBINT ,BBINT ,BBINT ,BBINT )!
BBINT PostMessageA(HWND ,UINT ,WPARAM ,LPARAM )!
BBINT PostMessageW(HWND ,UINT ,WPARAM ,LPARAM )!
BBINT SendMessageA(HWND ,UINT ,WPARAM ,LPARAM )!
BBINT SendMessageW(HWND ,UINT ,WPARAM ,LPARAM )!
BBINT PostThreadMessageA(BBINT ,UINT ,WPARAM ,LPARAM )!
BBINT PostThreadMessageW(BBINT ,UINT ,WPARAM ,LPARAM )!
BBINT GetDC(BBINT )!
BBINT PostQuitMessage(BBINT )!
BBINT TranslateMessage(BBBYTE * )!
BBINT DestroyWindow(BBINT )!
BBINT MsgWaitForMultipleObjects(BBINT ,BBBYTE * ,BBINT ,BBINT ,BBINT )!
BBINT MsgWaitForMultipleObjectsEx(BBINT ,BBBYTE * ,BBINT ,BBINT ,BBINT )!
BBINT ChangeDisplaySettingsA(BBBYTE * ,BBINT )!
BBINT ChangeDisplaySettingsW(BBBYTE * ,BBINT )!
BBINT LoadCursorA(BBINT ,BBBYTE * )!
BBINT LoadCursorW(BBINT ,BBSHORT * )!
BBINT ShowCursor(BBINT )!
BBINT SetCursor(BBINT )!
BBINT LoadIconA(BBINT ,BBBYTE * )!
BBINT LoadIconW(BBINT ,BBSHORT * )!
BBINT LoadLibraryA(BBBYTE * )!
FARPROC __stdcall GetProcAddress(HMODULE ,LPCSTR )!
HMODULE __stdcall LoadLibraryW(LPCTSTR )!
BBINT GetClientRect(BBINT ,BBINT * )!
BBINT GetWindowRect(BBINT ,BBINT * )!
HWND GetDesktopWindow()!
BBINT AdjustWindowRect(BBINT * ,BBINT ,BBINT )!
BBINT AdjustWindowRectEx(BBINT * ,BBINT ,BBINT ,BBINT )!
BBINT ClientToScreen(BBINT ,BBBYTE * )!
BBINT ShowWindow(BBINT ,BBINT )!
BBINT SetMenu(BBINT ,BBINT )!
BBINT DrawMenuBar(BBINT )!
BBINT CreateMenu()!
BBINT CreatePopupMenu()!
BBINT TrackPopupMenu(BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBINT )!
BBINT DestroyMenu(BBINT )!
BBINT EnableMenuItem(BBINT ,BBINT ,BBINT )!
BBINT CheckMenuItem(BBINT ,BBINT ,BBINT )!
BBINT AppendMenuA(BBINT ,BBINT ,BBINT ,BBBYTE * )!
BBINT AppendMenuW(BBINT ,BBINT ,BBINT ,BBBYTE * )!
BBINT SetMenuItemInfoA(BBINT ,BBINT ,BBINT ,BBBYTE * )!
BBINT SetMenuItemInfoW(BBINT ,BBINT ,BBINT ,BBBYTE * )!
BBINT GetMenuItemCount(BBINT )!
BBINT SetWindowTextA(HWND ,BBBYTE * )!
BBINT SetWindowTextW(HWND ,BBSHORT * )!
BBINT SetWindowPos(HWND ,HWND ,BBINT ,BBINT ,BBINT ,BBINT ,UINT )!
HWND GetForegroundWindow()!
BBINT SetForegroundWindow(HWND )!
BBINT IsIconic(HWND )!
HWND GetParent(HWND )!
BBINT GetWindowLongA(HWND ,BBINT )!
BBINT SetWindowLongA(HWND ,BBINT ,BBINT )!
BBINT GetWindowLongW(HWND ,BBINT )!
BBINT SetWindowLongW(HWND ,BBINT ,BBINT )!
BBINT GetClassLongA(HWND ,BBINT )!
BBINT SetClassLongA(HWND ,BBINT ,BBINT )!
BBINT GetClassLongW(HWND ,BBINT )!
BBINT SetClassLongW(HWND ,BBINT ,BBINT )!
BBINT IsZoomed(HWND )!
BBINT CallWindowProcA(BBBYTE * ,HWND ,UINT ,WPARAM ,LPARAM )!
BBINT CallWindowProcW(BBBYTE * ,HWND ,UINT ,WPARAM ,LPARAM )!
BBINT OleInitialize(BBBYTE * )!
BBINT OleUninitialize()!
BBINT InitCommonControlsEx(const INITCOMMONCONTROLSEX *)!
BBINT SetScrollPos(HWND ,BBINT ,BBINT ,BBINT )!
BBINT GetScrollPos(HWND ,BBINT )!
BBINT SetScrollRange(HWND ,BBINT ,BBINT ,BBINT ,BBINT )!
BBINT GetScrollRange(HWND ,BBINT ,BBINT * ,BBINT * )!
BBINT ShowScrollBar(HWND ,BBINT ,BBINT )!
BBINT EnableScrollBar(HWND ,BBINT ,BBINT )!
BBINT SetScrollInfo(HWND ,BBINT ,void* ,BBINT )!
BBINT GetScrollInfo(HWND ,BBINT ,void* )!
BBINT InvalidateRect(HWND ,BBINT * ,BBINT )!
BBINT ValidateRect(HWND ,BBINT * )!
BBINT BeginPaint(HWND ,BBBYTE * )!
BBINT FillRect(BBINT ,BBINT * ,BBINT )!
BBINT EndPaint(HWND ,BBBYTE * )!
BBINT SetFocus(BBINT )!
BBINT GetFocus()!
BBINT GetActiveWindow()!
BBINT SetActiveWindow(BBINT )!
BBINT MoveWindow(BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBINT )!
BBINT SetParent(BBINT ,BBINT )!
BBINT WindowFromPoint(BBINT * )!
BBINT GetKeyState(BBINT )!
BBINT SetWindowsHookExW(BBINT ,BBBYTE * ,BBINT ,BBINT )!
BBINT CallNextHookEx(BBINT ,BBINT ,BBINT ,BBINT )!
BBINT UnhookWindowsHookEx(BBINT )!
BBINT EnableWindow(HWND ,BBINT )!
BBINT IsWindowEnabled(HWND )!
BBINT IsWindowVisible(HWND )!
BBINT GetWindowInfo(HWND ,BBBYTE * )!
BBINT GetCursorPos(BBINT * )!
BBINT EnumChildWindows(HWND ,BBBYTE * ,LPARAM )!
BBINT EnumWindows(BBBYTE * ,LPARAM )!
BBINT OpenClipboard(BBINT )!
BBINT CloseClipboard()!
BBINT SetClipboardData(BBINT ,BBINT )!
BBINT GetClipboardData(BBINT )!
BBINT EmptyClipboard()!
BBINT IsClipboardFormatAvailable(BBINT )!
BBINT DefDlgProcW(BBINT ,BBINT ,BBINT ,BBINT )!
BBINT DragAcceptFiles(BBINT ,BBINT )!
BBINT DragQueryPoint(BBINT ,BBINT * )!
BBINT DragQueryFileW(BBINT ,BBINT ,BBSHORT * ,BBINT )!
BBINT DragFinish(BBINT )!
WINBOOL __stdcall _TrackMouseEvent(LPTRACKMOUSEEVENT )!
LONG_PTR __stdcall SetWindowLongPtrW(HWND ,int ,LONG_PTR )!
UINT __stdcall GetWindowModuleFileNameW(HWND ,LPWSTR ,UINT )!
DWORD __stdcall GetModuleFileNameW(HMODULE , LPWSTR , DWORD )!
int __stdcall GetWindowTextA(HWND ,LPSTR ,int )!
int __stdcall GetWindowTextW(HWND ,LPWSTR ,int )!
int __stdcall GetClassNameW(HWND ,LPWSTR ,int )!
