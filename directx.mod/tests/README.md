# DirectX binding checks

On Windows, build and run `abi.bmx` with the SDK's bmk. It compares four
BlitzMax structures and HWND alignment against the MinGW native headers,
and exercises adapter enumeration, monitor handles and device-capability
output through the BlitzMax COM bindings. Tested on Windows x64 in Parallels.

All imported source files now use SuperStrict with explicit types. Existing
32-bit integer bit patterns are retained for constants and most DWORD/UINT
arguments to avoid unnecessarily breaking callers. HRESULT and Win32 BOOL
remain Int. The initial ABI corrections cover native void returns, window/DC/
monitor handles, shader BOOL arrays, resource private-data size pointers and
floating-point clip extents. D3D9 texture/surface width and height parameters
use UInt to match native UINT; callers with Int dimensions must convert
explicitly after validating them.

This is an incremental audit, not certification of every legacy declaration.
Incomplete DirectDraw methods and commented D3D7 definitions still need a
separate review before extending their use. No Direct3D11 bindings are added.
