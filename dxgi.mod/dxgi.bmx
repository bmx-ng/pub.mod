SuperStrict

Rem
bbdoc: Windows DXGI graphics infrastructure bindings.
about: Low-level COM interfaces for adapter discovery, displays and swap chains.
See README.md for ownership, native type mappings and supported interface versions.
End Rem
Module Pub.DXGI
ModuleInfo "Version: 0.01"
ModuleInfo "License: zlib/libpng"

?win32
Import Pub.Win32
Import "common.bmx"
Import "interfaces.bmx"
Import "constants.bmx"
Import "iids.bmx"
Import "glue.cpp"

' Generic COM output pointers are Byte Ptr Ptr. Pass Byte Ptr Ptr(Varptr factory).
' Successful creation returns one reference, released explicitly with Release_().
Extern "C"
 Function DXGIQueryInterface:Int(instance:IUnknown_,riid:Byte Ptr,result:Byte Ptr Ptr)="bmx_dxgi_QueryInterface"
 Function CreateDXGIFactory:Int(riid:Byte Ptr,factory:Byte Ptr Ptr)="bmx_dxgi_CreateDXGIFactory"
 Function CreateDXGIFactory1:Int(riid:Byte Ptr,factory:Byte Ptr Ptr)="bmx_dxgi_CreateDXGIFactory1"
 Function CreateDXGIFactory2:Int(flags:UInt,riid:Byte Ptr,factory:Byte Ptr Ptr)="bmx_dxgi_CreateDXGIFactory2"
End Extern
?
