SuperStrict
Framework BRL.StandardIO
Import Pub.DirectX
Import "abi.cpp"
Extern "C"
 Function dx_test_size:Int(which:Int)
 Function dx_test_window_offset:Int()
End Extern
Function Check(ok:Int, message:String)
 If Not ok Then Throw message
End Function
Try
 Local pp:D3DPRESENT_PARAMETERS
 Local caps:D3DCAPS9
 Local viewport:D3DVIEWPORT9
 Local desc:D3DSURFACE_DESC
 Check(SizeOf(pp)=dx_test_size(0),"D3DPRESENT_PARAMETERS size")
 Check(SizeOf(caps)=dx_test_size(1),"D3DCAPS9 size")
 Check(SizeOf(viewport)=dx_test_size(2),"D3DVIEWPORT9 size")
 Check(SizeOf(desc)=dx_test_size(3),"D3DSURFACE_DESC size")
 Check(Byte Ptr(Varptr pp.hDeviceWindow)-Byte Ptr(Varptr pp)=dx_test_window_offset(),"HWND alignment")
 Local d3d:IDirect3D9=Direct3DCreate9(32)
 Check(d3d<>Null,"Direct3DCreate9")
 Check(d3d.GetAdapterCount()>0,"Adapter count")
 Check(d3d.GetAdapterMonitor(0)<>Null,"Pointer-sized monitor handle")
 Check(d3d.GetDeviceCaps(0,D3DDEVTYPE.D3DDEVTYPE_HAL,caps)>=0,"GetDeviceCaps")
 Check(caps.MaxTextureWidth>0,"Native caps output")
 d3d.Release_()
 Print "Pub.DirectX ABI tests passed"
Catch error:Object
 Print "FAILED: "+error.ToString()
 EndWithCode(1)
End Try
