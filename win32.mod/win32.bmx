
Strict

Module Pub.Win32

ModuleInfo "Version: 1.16"
ModuleInfo "Author: Mark Sibly, Simon Armstrong"
ModuleInfo "License: zlib/libpng"
ModuleInfo "Copyright: Blitz Research Ltd"
ModuleInfo "ModServer: BRL"

ModuleInfo "History: 1.16"
ModuleInfo "History: Added EnableWindowsKeyLock()."
ModuleInfo "History: 1.15 Release"
ModuleInfo "History: Added more stuff"
ModuleInfo "History: 1.14 Release"
ModuleInfo "History: Added some menu state stuff"
ModuleInfo "History: 1.13 Release"
ModuleInfo "History: Added misc shell32 stuff"
ModuleInfo "History: 1.12 Release"
ModuleInfo "History: Added user32 popupmenu stuff"
ModuleInfo "History: 1.11 Release"
ModuleInfo "History: Added richedit stuff"
ModuleInfo "History: 1.10 Release"
ModuleInfo "History: Added a bunch of gdi WGL_ stuff"
ModuleInfo "History: 1.09 Release"
ModuleInfo "History: Added more stuff"
ModuleInfo "History: 1.08 Release"
ModuleInfo "History: Added more stuff"
ModuleInfo "History: 1.07 Release"
ModuleInfo "History: Added more stuff"
ModuleInfo "History: 1.06 Release"
ModuleInfo "History: Added more stuff"
ModuleInfo "History: 1.05 Release"
ModuleInfo "History: Added more functions"
ModuleInfo "History: 1.04 Release"
ModuleInfo "History: Added com.bmx"

?Win32
Import "gdi32.bmx"
Import "shell32.bmx"
Import "user32.bmx"
Import "kernel32.bmx"
Import "winmm.bmx"
Import "com.bmx"
Import "commdlg.bmx"
Import "commctrl.bmx"
Import "richedit.bmx"

Rem
bbdoc: Locks the left/right Windows keys, preventing them from opening the Windows menu.
End Rem
Function EnableWindowsKeyLock( enable:Int, lw:Int = True, rw:Int = True )
	lwin = lw
	rwin = rw
	If enable Then
		wkhook = SetWindowsHookEx( 13, KeyboardProc, GetModuleHandleA( Null ), 0 )
	Else
		UnhookWindowsHookEx( wkhook ) 
	End If
End Function 

Private

Global wkhook:Byte Ptr 
Global lwin:Int, rwin:Int

Extern "win32"
	Function SetWindowsHookEx:Byte Ptr(idHook:Int, lpfn:Byte Ptr, hMod:Byte Ptr, threadId:Int) = "HHOOK __stdcall SetWindowsHookEx(int, HOOKPROC, HINSTANCE, DWORD)!"
	Function UnhookWindowsHookEx:Int(hook:Byte Ptr) = "WINBOOL __stdcall UnhookWindowsHookEx(HHOOK)!"
	Function CallNextHookEx:Byte Ptr( hook:Byte Ptr, code:Int, wp:WParam, lp:LParam) = "LRESULT __stdcall CallNextHookEx(HHOOK, int, WPARAM, LPARAM)!"
End Extern

Function KeyboardProc:Byte Ptr(code:Int, wp:WParam, lp:LParam) "win32"
	If code <= 0 Then
		CallNextHookEx( wkhook, code, wp, lp )
	End If
	
	Local key:Int = Byte Ptr(lp)[0]
	
	If wp = WM_KEYDOWN Or wp = WM_KEYUP Then
		If (lwin And key = 91) Or (rwin And key = 92) Then
			Return 1
		End If
	End If 
	
	Return CallNextHookEx(wkhook, code, wp, lp) 
End Function

?
