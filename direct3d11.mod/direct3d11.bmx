SuperStrict
Module Pub.Direct3D11
ModuleInfo "Version: 0.01"
ModuleInfo "License: zlib/libpng"

?win32
Import Pub.DXGI
Import "common.bmx"
Import "constants.bmx"
Import "interfaces.bmx"
Import "iids.bmx"
Import "glue.cpp"

Extern "C"
 Function D3D11CreateDevice:Int(adapter:IDXGIAdapter,driverType:Int,software:Byte Ptr,flags:UInt,featureLevels:Int Ptr,featureLevelCount:UInt,sdkVersion:UInt,device:ID3D11Device Ptr,featureLevel:Int Ptr,context:ID3D11DeviceContext Ptr)="bmx_d3d11_CreateDevice"
End Extern
?
