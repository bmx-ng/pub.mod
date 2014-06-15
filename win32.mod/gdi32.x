int SetDIBits(HDC,HBITMAP,UINT,UINT,PCVOID,const BITMAPINFO*,UINT)!
BOOL DeleteDC(HDC)!
BOOL StretchBlt(HDC,int,int,int,int,HDC,int,int,int,int,DWORD)!
HFONT CreateFontIndirectW(const LOGFONTW*)!
HGDIOBJ GetStockObject(int)!
int ChoosePixelFormat(HDC,CONST PIXELFORMATDESCRIPTOR*)!
BOOL SetPixelFormat(HDC,int,const PIXELFORMATDESCRIPTOR*)!
BOOL SwapBuffers(HDC)!
HGLRC wglCreateContext(HDC)!
BOOL wglDeleteContext(HGLRC)!
BOOL wglMakeCurrent(HDC,HGLRC)!
BOOL BitBlt(HDC,int,int,int,int,HDC,int,int,DWORD)!
int GetDeviceCaps(HDC,int)!
int GetTextMetricsW(HDC,LPTEXTMETRICW)!
int GetTextFaceW(HDC,int,LPWSTR)!
HFONT CreateFontA(int,int,int,int,int,DWORD,DWORD,DWORD,DWORD,DWORD,DWORD,DWORD,DWORD,LPCSTR)!
HFONT CreateFontW(int,int,int,int,int,DWORD,DWORD,DWORD,DWORD,DWORD,DWORD,DWORD,DWORD,LPCWSTR)!
HGDIOBJ SelectObject(HDC,HGDIOBJ)!
BOOL DeleteObject(HGDIOBJ)!
HBRUSH CreateSolidBrush(COLORREF)!
HDC CreateCompatibleDC(HDC)!
HBITMAP CreateCompatibleBitmap(HDC,int,int)!
int SetStretchBltMode(HDC,int)!
