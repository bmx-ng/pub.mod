SuperStrict
Framework BRL.StandardIO
Import Pub.DXGI
Import "layouts.cpp"

Extern "C"
 Function dxgi_test_layout:Int(kind:Int,field:Int)
End Extern

Function Check(ok:Int,message:String)
 If Not ok Then Throw "DXGI layout mismatch: "+message
End Function

Try
 Local s0:DXGI_LUID
 Check(SizeOf(s0)=dxgi_test_layout(0,-1),"sizeof DXGI_LUID")
 Check(Byte Ptr(Varptr s0.LowPart)-Byte Ptr(Varptr s0)=dxgi_test_layout(0,0),"offsetof DXGI_LUID.LowPart")
 Check(Byte Ptr(Varptr s0.HighPart)-Byte Ptr(Varptr s0)=dxgi_test_layout(0,1),"offsetof DXGI_LUID.HighPart")
 Local s1:DXGI_RECT
 Check(SizeOf(s1)=dxgi_test_layout(1,-1),"sizeof DXGI_RECT")
 Check(Byte Ptr(Varptr s1.left)-Byte Ptr(Varptr s1)=dxgi_test_layout(1,0),"offsetof DXGI_RECT.left")
 Check(Byte Ptr(Varptr s1.top)-Byte Ptr(Varptr s1)=dxgi_test_layout(1,1),"offsetof DXGI_RECT.top")
 Check(Byte Ptr(Varptr s1.right)-Byte Ptr(Varptr s1)=dxgi_test_layout(1,2),"offsetof DXGI_RECT.right")
 Check(Byte Ptr(Varptr s1.bottom)-Byte Ptr(Varptr s1)=dxgi_test_layout(1,3),"offsetof DXGI_RECT.bottom")
 Local s2:DXGI_POINT
 Check(SizeOf(s2)=dxgi_test_layout(2,-1),"sizeof DXGI_POINT")
 Check(Byte Ptr(Varptr s2.x)-Byte Ptr(Varptr s2)=dxgi_test_layout(2,0),"offsetof DXGI_POINT.x")
 Check(Byte Ptr(Varptr s2.y)-Byte Ptr(Varptr s2)=dxgi_test_layout(2,1),"offsetof DXGI_POINT.y")
 Local s3:DXGI_RATIONAL
 Check(SizeOf(s3)=dxgi_test_layout(3,-1),"sizeof DXGI_RATIONAL")
 Check(Byte Ptr(Varptr s3.Numerator)-Byte Ptr(Varptr s3)=dxgi_test_layout(3,0),"offsetof DXGI_RATIONAL.Numerator")
 Check(Byte Ptr(Varptr s3.Denominator)-Byte Ptr(Varptr s3)=dxgi_test_layout(3,1),"offsetof DXGI_RATIONAL.Denominator")
 Local s4:DXGI_SAMPLE_DESC
 Check(SizeOf(s4)=dxgi_test_layout(4,-1),"sizeof DXGI_SAMPLE_DESC")
 Check(Byte Ptr(Varptr s4.Count)-Byte Ptr(Varptr s4)=dxgi_test_layout(4,0),"offsetof DXGI_SAMPLE_DESC.Count")
 Check(Byte Ptr(Varptr s4.Quality)-Byte Ptr(Varptr s4)=dxgi_test_layout(4,1),"offsetof DXGI_SAMPLE_DESC.Quality")
 Local s5:DXGI_RGB
 Check(SizeOf(s5)=dxgi_test_layout(5,-1),"sizeof DXGI_RGB")
 Check(Byte Ptr(Varptr s5.Red)-Byte Ptr(Varptr s5)=dxgi_test_layout(5,0),"offsetof DXGI_RGB.Red")
 Check(Byte Ptr(Varptr s5.Green)-Byte Ptr(Varptr s5)=dxgi_test_layout(5,1),"offsetof DXGI_RGB.Green")
 Check(Byte Ptr(Varptr s5.Blue)-Byte Ptr(Varptr s5)=dxgi_test_layout(5,2),"offsetof DXGI_RGB.Blue")
 Local s6:DXGI_RGBA
 Check(SizeOf(s6)=dxgi_test_layout(6,-1),"sizeof DXGI_RGBA")
 Check(Byte Ptr(Varptr s6.r)-Byte Ptr(Varptr s6)=dxgi_test_layout(6,0),"offsetof DXGI_RGBA.r")
 Check(Byte Ptr(Varptr s6.g)-Byte Ptr(Varptr s6)=dxgi_test_layout(6,1),"offsetof DXGI_RGBA.g")
 Check(Byte Ptr(Varptr s6.b)-Byte Ptr(Varptr s6)=dxgi_test_layout(6,2),"offsetof DXGI_RGBA.b")
 Check(Byte Ptr(Varptr s6.a)-Byte Ptr(Varptr s6)=dxgi_test_layout(6,3),"offsetof DXGI_RGBA.a")
 Local s7:DXGI_MODE_DESC
 Check(SizeOf(s7)=dxgi_test_layout(7,-1),"sizeof DXGI_MODE_DESC")
 Check(Byte Ptr(Varptr s7.Width)-Byte Ptr(Varptr s7)=dxgi_test_layout(7,0),"offsetof DXGI_MODE_DESC.Width")
 Check(Byte Ptr(Varptr s7.Height)-Byte Ptr(Varptr s7)=dxgi_test_layout(7,1),"offsetof DXGI_MODE_DESC.Height")
 Check(Byte Ptr(Varptr s7.RefreshRate)-Byte Ptr(Varptr s7)=dxgi_test_layout(7,2),"offsetof DXGI_MODE_DESC.RefreshRate")
 Check(Byte Ptr(Varptr s7.Format)-Byte Ptr(Varptr s7)=dxgi_test_layout(7,3),"offsetof DXGI_MODE_DESC.Format")
 Check(Byte Ptr(Varptr s7.ScanlineOrdering)-Byte Ptr(Varptr s7)=dxgi_test_layout(7,4),"offsetof DXGI_MODE_DESC.ScanlineOrdering")
 Check(Byte Ptr(Varptr s7.Scaling)-Byte Ptr(Varptr s7)=dxgi_test_layout(7,5),"offsetof DXGI_MODE_DESC.Scaling")
 Local s8:DXGI_SURFACE_DESC
 Check(SizeOf(s8)=dxgi_test_layout(8,-1),"sizeof DXGI_SURFACE_DESC")
 Check(Byte Ptr(Varptr s8.Width)-Byte Ptr(Varptr s8)=dxgi_test_layout(8,0),"offsetof DXGI_SURFACE_DESC.Width")
 Check(Byte Ptr(Varptr s8.Height)-Byte Ptr(Varptr s8)=dxgi_test_layout(8,1),"offsetof DXGI_SURFACE_DESC.Height")
 Check(Byte Ptr(Varptr s8.Format)-Byte Ptr(Varptr s8)=dxgi_test_layout(8,2),"offsetof DXGI_SURFACE_DESC.Format")
 Check(Byte Ptr(Varptr s8.SampleDesc)-Byte Ptr(Varptr s8)=dxgi_test_layout(8,3),"offsetof DXGI_SURFACE_DESC.SampleDesc")
 Local s9:DXGI_MAPPED_RECT
 Check(SizeOf(s9)=dxgi_test_layout(9,-1),"sizeof DXGI_MAPPED_RECT")
 Check(Byte Ptr(Varptr s9.Pitch)-Byte Ptr(Varptr s9)=dxgi_test_layout(9,0),"offsetof DXGI_MAPPED_RECT.Pitch")
 Check(Byte Ptr(Varptr s9.pBits)-Byte Ptr(Varptr s9)=dxgi_test_layout(9,1),"offsetof DXGI_MAPPED_RECT.pBits")
 Local s10:DXGI_OUTPUT_DESC
 Check(SizeOf(s10)=dxgi_test_layout(10,-1),"sizeof DXGI_OUTPUT_DESC")
 Check(Byte Ptr(Varptr s10.DeviceName[0])-Byte Ptr(Varptr s10)=dxgi_test_layout(10,0),"offsetof DXGI_OUTPUT_DESC.DeviceName")
 Check(Byte Ptr(Varptr s10.DesktopCoordinates)-Byte Ptr(Varptr s10)=dxgi_test_layout(10,1),"offsetof DXGI_OUTPUT_DESC.DesktopCoordinates")
 Check(Byte Ptr(Varptr s10.AttachedToDesktop)-Byte Ptr(Varptr s10)=dxgi_test_layout(10,2),"offsetof DXGI_OUTPUT_DESC.AttachedToDesktop")
 Check(Byte Ptr(Varptr s10.Rotation)-Byte Ptr(Varptr s10)=dxgi_test_layout(10,3),"offsetof DXGI_OUTPUT_DESC.Rotation")
 Check(Byte Ptr(Varptr s10.Monitor)-Byte Ptr(Varptr s10)=dxgi_test_layout(10,4),"offsetof DXGI_OUTPUT_DESC.Monitor")
 Local s11:DXGI_FRAME_STATISTICS
 Check(SizeOf(s11)=dxgi_test_layout(11,-1),"sizeof DXGI_FRAME_STATISTICS")
 Check(Byte Ptr(Varptr s11.PresentCount)-Byte Ptr(Varptr s11)=dxgi_test_layout(11,0),"offsetof DXGI_FRAME_STATISTICS.PresentCount")
 Check(Byte Ptr(Varptr s11.PresentRefreshCount)-Byte Ptr(Varptr s11)=dxgi_test_layout(11,1),"offsetof DXGI_FRAME_STATISTICS.PresentRefreshCount")
 Check(Byte Ptr(Varptr s11.SyncRefreshCount)-Byte Ptr(Varptr s11)=dxgi_test_layout(11,2),"offsetof DXGI_FRAME_STATISTICS.SyncRefreshCount")
 Check(Byte Ptr(Varptr s11.SyncQPCTime)-Byte Ptr(Varptr s11)=dxgi_test_layout(11,3),"offsetof DXGI_FRAME_STATISTICS.SyncQPCTime")
 Check(Byte Ptr(Varptr s11.SyncGPUTime)-Byte Ptr(Varptr s11)=dxgi_test_layout(11,4),"offsetof DXGI_FRAME_STATISTICS.SyncGPUTime")
 Local s12:DXGI_ADAPTER_DESC
 Check(SizeOf(s12)=dxgi_test_layout(12,-1),"sizeof DXGI_ADAPTER_DESC")
 Check(Byte Ptr(Varptr s12.Description[0])-Byte Ptr(Varptr s12)=dxgi_test_layout(12,0),"offsetof DXGI_ADAPTER_DESC.Description")
 Check(Byte Ptr(Varptr s12.VendorId)-Byte Ptr(Varptr s12)=dxgi_test_layout(12,1),"offsetof DXGI_ADAPTER_DESC.VendorId")
 Check(Byte Ptr(Varptr s12.DeviceId)-Byte Ptr(Varptr s12)=dxgi_test_layout(12,2),"offsetof DXGI_ADAPTER_DESC.DeviceId")
 Check(Byte Ptr(Varptr s12.SubSysId)-Byte Ptr(Varptr s12)=dxgi_test_layout(12,3),"offsetof DXGI_ADAPTER_DESC.SubSysId")
 Check(Byte Ptr(Varptr s12.Revision)-Byte Ptr(Varptr s12)=dxgi_test_layout(12,4),"offsetof DXGI_ADAPTER_DESC.Revision")
 Check(Byte Ptr(Varptr s12.DedicatedVideoMemory)-Byte Ptr(Varptr s12)=dxgi_test_layout(12,5),"offsetof DXGI_ADAPTER_DESC.DedicatedVideoMemory")
 Check(Byte Ptr(Varptr s12.DedicatedSystemMemory)-Byte Ptr(Varptr s12)=dxgi_test_layout(12,6),"offsetof DXGI_ADAPTER_DESC.DedicatedSystemMemory")
 Check(Byte Ptr(Varptr s12.SharedSystemMemory)-Byte Ptr(Varptr s12)=dxgi_test_layout(12,7),"offsetof DXGI_ADAPTER_DESC.SharedSystemMemory")
 Check(Byte Ptr(Varptr s12.AdapterLuid)-Byte Ptr(Varptr s12)=dxgi_test_layout(12,8),"offsetof DXGI_ADAPTER_DESC.AdapterLuid")
 Local s13:DXGI_ADAPTER_DESC1
 Check(SizeOf(s13)=dxgi_test_layout(13,-1),"sizeof DXGI_ADAPTER_DESC1")
 Check(Byte Ptr(Varptr s13.Description[0])-Byte Ptr(Varptr s13)=dxgi_test_layout(13,0),"offsetof DXGI_ADAPTER_DESC1.Description")
 Check(Byte Ptr(Varptr s13.VendorId)-Byte Ptr(Varptr s13)=dxgi_test_layout(13,1),"offsetof DXGI_ADAPTER_DESC1.VendorId")
 Check(Byte Ptr(Varptr s13.DeviceId)-Byte Ptr(Varptr s13)=dxgi_test_layout(13,2),"offsetof DXGI_ADAPTER_DESC1.DeviceId")
 Check(Byte Ptr(Varptr s13.SubSysId)-Byte Ptr(Varptr s13)=dxgi_test_layout(13,3),"offsetof DXGI_ADAPTER_DESC1.SubSysId")
 Check(Byte Ptr(Varptr s13.Revision)-Byte Ptr(Varptr s13)=dxgi_test_layout(13,4),"offsetof DXGI_ADAPTER_DESC1.Revision")
 Check(Byte Ptr(Varptr s13.DedicatedVideoMemory)-Byte Ptr(Varptr s13)=dxgi_test_layout(13,5),"offsetof DXGI_ADAPTER_DESC1.DedicatedVideoMemory")
 Check(Byte Ptr(Varptr s13.DedicatedSystemMemory)-Byte Ptr(Varptr s13)=dxgi_test_layout(13,6),"offsetof DXGI_ADAPTER_DESC1.DedicatedSystemMemory")
 Check(Byte Ptr(Varptr s13.SharedSystemMemory)-Byte Ptr(Varptr s13)=dxgi_test_layout(13,7),"offsetof DXGI_ADAPTER_DESC1.SharedSystemMemory")
 Check(Byte Ptr(Varptr s13.AdapterLuid)-Byte Ptr(Varptr s13)=dxgi_test_layout(13,8),"offsetof DXGI_ADAPTER_DESC1.AdapterLuid")
 Check(Byte Ptr(Varptr s13.Flags)-Byte Ptr(Varptr s13)=dxgi_test_layout(13,9),"offsetof DXGI_ADAPTER_DESC1.Flags")
 Local s14:DXGI_SWAP_CHAIN_DESC
 Check(SizeOf(s14)=dxgi_test_layout(14,-1),"sizeof DXGI_SWAP_CHAIN_DESC")
 Check(Byte Ptr(Varptr s14.BufferDesc)-Byte Ptr(Varptr s14)=dxgi_test_layout(14,0),"offsetof DXGI_SWAP_CHAIN_DESC.BufferDesc")
 Check(Byte Ptr(Varptr s14.SampleDesc)-Byte Ptr(Varptr s14)=dxgi_test_layout(14,1),"offsetof DXGI_SWAP_CHAIN_DESC.SampleDesc")
 Check(Byte Ptr(Varptr s14.BufferUsage)-Byte Ptr(Varptr s14)=dxgi_test_layout(14,2),"offsetof DXGI_SWAP_CHAIN_DESC.BufferUsage")
 Check(Byte Ptr(Varptr s14.BufferCount)-Byte Ptr(Varptr s14)=dxgi_test_layout(14,3),"offsetof DXGI_SWAP_CHAIN_DESC.BufferCount")
 Check(Byte Ptr(Varptr s14.OutputWindow)-Byte Ptr(Varptr s14)=dxgi_test_layout(14,4),"offsetof DXGI_SWAP_CHAIN_DESC.OutputWindow")
 Check(Byte Ptr(Varptr s14.Windowed)-Byte Ptr(Varptr s14)=dxgi_test_layout(14,5),"offsetof DXGI_SWAP_CHAIN_DESC.Windowed")
 Check(Byte Ptr(Varptr s14.SwapEffect)-Byte Ptr(Varptr s14)=dxgi_test_layout(14,6),"offsetof DXGI_SWAP_CHAIN_DESC.SwapEffect")
 Check(Byte Ptr(Varptr s14.Flags)-Byte Ptr(Varptr s14)=dxgi_test_layout(14,7),"offsetof DXGI_SWAP_CHAIN_DESC.Flags")
 Local s15:DXGI_SHARED_RESOURCE
 Check(SizeOf(s15)=dxgi_test_layout(15,-1),"sizeof DXGI_SHARED_RESOURCE")
 Check(Byte Ptr(Varptr s15.Handle)-Byte Ptr(Varptr s15)=dxgi_test_layout(15,0),"offsetof DXGI_SHARED_RESOURCE.Handle")
 Local s16:DXGI_GAMMA_CONTROL_CAPABILITIES
 Check(SizeOf(s16)=dxgi_test_layout(16,-1),"sizeof DXGI_GAMMA_CONTROL_CAPABILITIES")
 Check(Byte Ptr(Varptr s16.ScaleAndOffsetSupported)-Byte Ptr(Varptr s16)=dxgi_test_layout(16,0),"offsetof DXGI_GAMMA_CONTROL_CAPABILITIES.ScaleAndOffsetSupported")
 Check(Byte Ptr(Varptr s16.MaxConvertedValue)-Byte Ptr(Varptr s16)=dxgi_test_layout(16,1),"offsetof DXGI_GAMMA_CONTROL_CAPABILITIES.MaxConvertedValue")
 Check(Byte Ptr(Varptr s16.MinConvertedValue)-Byte Ptr(Varptr s16)=dxgi_test_layout(16,2),"offsetof DXGI_GAMMA_CONTROL_CAPABILITIES.MinConvertedValue")
 Check(Byte Ptr(Varptr s16.NumGammaControlPoints)-Byte Ptr(Varptr s16)=dxgi_test_layout(16,3),"offsetof DXGI_GAMMA_CONTROL_CAPABILITIES.NumGammaControlPoints")
 Check(Byte Ptr(Varptr s16.ControlPointPositions[0])-Byte Ptr(Varptr s16)=dxgi_test_layout(16,4),"offsetof DXGI_GAMMA_CONTROL_CAPABILITIES.ControlPointPositions")
 Local s17:DXGI_GAMMA_CONTROL
 Check(SizeOf(s17)=dxgi_test_layout(17,-1),"sizeof DXGI_GAMMA_CONTROL")
 Check(Byte Ptr(Varptr s17.Scale)-Byte Ptr(Varptr s17)=dxgi_test_layout(17,0),"offsetof DXGI_GAMMA_CONTROL.Scale")
 Check(Byte Ptr(Varptr s17.Offset)-Byte Ptr(Varptr s17)=dxgi_test_layout(17,1),"offsetof DXGI_GAMMA_CONTROL.Offset")
 Check(Byte Ptr(Varptr s17.GammaCurve[0])-Byte Ptr(Varptr s17)=dxgi_test_layout(17,2),"offsetof DXGI_GAMMA_CONTROL.GammaCurve")
 Local s18:DXGI_SWAP_CHAIN_DESC1
 Check(SizeOf(s18)=dxgi_test_layout(18,-1),"sizeof DXGI_SWAP_CHAIN_DESC1")
 Check(Byte Ptr(Varptr s18.Width)-Byte Ptr(Varptr s18)=dxgi_test_layout(18,0),"offsetof DXGI_SWAP_CHAIN_DESC1.Width")
 Check(Byte Ptr(Varptr s18.Height)-Byte Ptr(Varptr s18)=dxgi_test_layout(18,1),"offsetof DXGI_SWAP_CHAIN_DESC1.Height")
 Check(Byte Ptr(Varptr s18.Format)-Byte Ptr(Varptr s18)=dxgi_test_layout(18,2),"offsetof DXGI_SWAP_CHAIN_DESC1.Format")
 Check(Byte Ptr(Varptr s18.Stereo)-Byte Ptr(Varptr s18)=dxgi_test_layout(18,3),"offsetof DXGI_SWAP_CHAIN_DESC1.Stereo")
 Check(Byte Ptr(Varptr s18.SampleDesc)-Byte Ptr(Varptr s18)=dxgi_test_layout(18,4),"offsetof DXGI_SWAP_CHAIN_DESC1.SampleDesc")
 Check(Byte Ptr(Varptr s18.BufferUsage)-Byte Ptr(Varptr s18)=dxgi_test_layout(18,5),"offsetof DXGI_SWAP_CHAIN_DESC1.BufferUsage")
 Check(Byte Ptr(Varptr s18.BufferCount)-Byte Ptr(Varptr s18)=dxgi_test_layout(18,6),"offsetof DXGI_SWAP_CHAIN_DESC1.BufferCount")
 Check(Byte Ptr(Varptr s18.Scaling)-Byte Ptr(Varptr s18)=dxgi_test_layout(18,7),"offsetof DXGI_SWAP_CHAIN_DESC1.Scaling")
 Check(Byte Ptr(Varptr s18.SwapEffect)-Byte Ptr(Varptr s18)=dxgi_test_layout(18,8),"offsetof DXGI_SWAP_CHAIN_DESC1.SwapEffect")
 Check(Byte Ptr(Varptr s18.AlphaMode)-Byte Ptr(Varptr s18)=dxgi_test_layout(18,9),"offsetof DXGI_SWAP_CHAIN_DESC1.AlphaMode")
 Check(Byte Ptr(Varptr s18.Flags)-Byte Ptr(Varptr s18)=dxgi_test_layout(18,10),"offsetof DXGI_SWAP_CHAIN_DESC1.Flags")
 Local s19:DXGI_SWAP_CHAIN_FULLSCREEN_DESC
 Check(SizeOf(s19)=dxgi_test_layout(19,-1),"sizeof DXGI_SWAP_CHAIN_FULLSCREEN_DESC")
 Check(Byte Ptr(Varptr s19.RefreshRate)-Byte Ptr(Varptr s19)=dxgi_test_layout(19,0),"offsetof DXGI_SWAP_CHAIN_FULLSCREEN_DESC.RefreshRate")
 Check(Byte Ptr(Varptr s19.ScanlineOrdering)-Byte Ptr(Varptr s19)=dxgi_test_layout(19,1),"offsetof DXGI_SWAP_CHAIN_FULLSCREEN_DESC.ScanlineOrdering")
 Check(Byte Ptr(Varptr s19.Scaling)-Byte Ptr(Varptr s19)=dxgi_test_layout(19,2),"offsetof DXGI_SWAP_CHAIN_FULLSCREEN_DESC.Scaling")
 Check(Byte Ptr(Varptr s19.Windowed)-Byte Ptr(Varptr s19)=dxgi_test_layout(19,3),"offsetof DXGI_SWAP_CHAIN_FULLSCREEN_DESC.Windowed")
 Local s20:DXGI_PRESENT_PARAMETERS
 Check(SizeOf(s20)=dxgi_test_layout(20,-1),"sizeof DXGI_PRESENT_PARAMETERS")
 Check(Byte Ptr(Varptr s20.DirtyRectsCount)-Byte Ptr(Varptr s20)=dxgi_test_layout(20,0),"offsetof DXGI_PRESENT_PARAMETERS.DirtyRectsCount")
 Check(Byte Ptr(Varptr s20.pDirtyRects)-Byte Ptr(Varptr s20)=dxgi_test_layout(20,1),"offsetof DXGI_PRESENT_PARAMETERS.pDirtyRects")
 Check(Byte Ptr(Varptr s20.pScrollRect)-Byte Ptr(Varptr s20)=dxgi_test_layout(20,2),"offsetof DXGI_PRESENT_PARAMETERS.pScrollRect")
 Check(Byte Ptr(Varptr s20.pScrollOffset)-Byte Ptr(Varptr s20)=dxgi_test_layout(20,3),"offsetof DXGI_PRESENT_PARAMETERS.pScrollOffset")
 Print "Pub.DXGI: 117 native layout checks passed"
Catch error:Object
 Print "FAILED: "+error.ToString()
 EndWithCode(1)
End Try
