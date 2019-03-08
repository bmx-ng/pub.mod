Strict

Extern "Win32"

Const FILE_ATTRIBUTE_READONLY=		$0001
Const FILE_ATTRIBUTE_HIDDEN=		$0002
Const FILE_ATTRIBUTE_SYSTEM=		$0004
Const FILE_ATTRIBUTE_DIRECTORY=		$0010
Const FILE_ATTRIBUTE_ARCHIVE=		$0020
Const FILE_ATTRIBUTE_DEVICE=		$0040
Const FILE_ATTRIBUTE_NORMAL=		$0080
Const FILE_ATTRIBUTE_TEMPORARY=		$0100
Const FILE_ATTRIBUTE_SPARSE_FILE=	$0200
Const FILE_ATTRIBUTE_REPARSE_POINT=	$0400
Const FILE_ATTRIBUTE_COMPRESSED=	$0800
Const FILE_ATTRIBUTE_OFFLINE=		$1000
Const FILE_ATTRIBUTE_NOT_CONTENT_INDEXED=$2000
Const FILE_ATTRIBUTE_ENCRYPTED=		$4000
Const FILE_ATTRIBUTE_VALID_FLAGS=	$7fb7
Const FILE_ATTRIBUTE_VALID_SET_FLAGS=$31a7

Const GMEM_FIXED=0
Const GMEM_MOVEABLE=2
Const GMEM_ZEROINT=$40

Function Sleep( dwMilliseconds )="BBINT Sleep(BBINT )!"
Function beep( dwFreq,dwDuration )="BBINT Beep(BBINT ,BBINT )!"
Function GetModuleHandleA:Byte Ptr( lpModuleName:Byte Ptr  )="HMODULE GetModuleHandleA(BBBYTE * )!"
Function GetModuleHandleW:Byte Ptr( lpModuleName:Short Ptr )="HMODULE GetModuleHandleW(BBSHORT * )!"
Function SetFileAttributesA( lpFileName$z,dwFileAttributes )="BBINT SetFileAttributesA(BBBYTE * ,BBINT )!"
Function SetFileAttributesW( lpFileName$z,dwFileAttributes )="BBINT SetFileAttributesW(BBBYTE * ,BBINT )!"
Function GetFileAttributesA( lpFileName$z )="BBINT GetFileAttributesA(BBBYTE * )!"
Function GetFileAttributesW( lpFileName$z )="BBINT GetFileAttributesW(BBBYTE * )!"

Function GetCurrentThreadId()="BBINT GetCurrentThreadId()!"

Function GlobalAlloc:Byte Ptr(uFlags:UInt,dwBytes:Size_T)="HGLOBAL GlobalAlloc(UINT ,SIZE_T )!"
Function GlobalSize:Size_T(hMem:Byte Ptr)="SIZE_T GlobalSize(HGLOBAL )!"
Function GlobalFree(hMem:Byte Ptr)="HGLOBAL GlobalFree(HGLOBAL )!"
Function GlobalLock:Byte Ptr(hMem:Byte Ptr)="BBBYTE * GlobalLock(HGLOBAL )!"
Function GlobalUnlock(hMem:Byte Ptr)="BBINT GlobalUnlock(HGLOBAL )!"

Const STD_INPUT_HANDLE=-10
Const STD_OUTPUT_HANDLE=-11
Const STD_ERROR_HANDLE=-12

Function GetLastError()="DWORD __stdcall GetLastError()!"

Function GetStdHandle:Byte Ptr(nStdHandle)="HANDLE __stdcall GetStdHandle(BBINT )!"

Function ReleaseMutex(mutex:Byte Ptr)="WINBOOL __stdcall ReleaseMutex(HANDLE)!"
Function CreateMutexW:Byte Ptr( security:Byte Ptr, owner:Int, name$w)="HANDLE __stdcall CreateMutexW(LPSECURITY_ATTRIBUTES, WINBOOL , LPCWSTR)!"

Function RegisterApplicationRestart:Int(pwzCommandline:Byte Ptr, dwFlags:Int)="HRESULT RegisterApplicationRestart(PCWSTR, DWORD)!"
Function UnregisterApplicationRestart:Int()="HRESULT UnregisterApplicationRestart()!"

Const RESTART_NO_CRASH:Int = 1
Const RESTART_NO_HANG:Int = 2
Const RESTART_NO_PATCH:Int = 4
Const RESTART_NO_REBOOT:Int = 8
End Extern
