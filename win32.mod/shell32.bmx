Strict


Extern
	Function ExtractIconA:Byte Ptr(hInst:Byte Ptr, lpszExeFileName$z, iconIndex:Int)="HICON ExtractIconA(HINSTANCE , LPCSTR , UINT )!"
	Function ExtractIconW:Byte Ptr(hInst:Byte Ptr, lpszExeFileName$w, iconIndex:Int)="HICON ExtractIconW(HINSTANCE , LPCWSTR , UINT )!"
End Extern	
