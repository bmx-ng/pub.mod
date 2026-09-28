SuperStrict
Framework BRL.StandardIO
Import Pub.DXGI
Import BRL.Retro
Import "swapchain.cpp"
Import "-ld3d11"

Extern "C"
 Function dxgi_test_open:Byte Ptr()
 Function dxgi_test_close(fixture:Byte Ptr)
 Function dxgi_test_device:IUnknown_(fixture:Byte Ptr)
 Function dxgi_test_association:Byte Ptr(factory:IDXGIFactory)
 Function dxgi_test_event:Byte Ptr(fixture:Byte Ptr)
 Function dxgi_test_window:Byte Ptr(fixture:Byte Ptr)
End Extern
Function Check(ok:Int,message:String)
 If Not ok Then Throw message
End Function
Function HR(result:Int,message:String)
 If result<0 Then Throw message+" HRESULT $"+Hex(result)
End Function

Local fixture:Byte Ptr
Local device:IDXGIDevice1
Local adapter:IDXGIAdapter
Local factory:IDXGIFactory2
Local chain:IDXGISwapChain1
Local surface:IDXGISurface
Local target:IDXGIOutput
Try
 fixture=dxgi_test_open()
 Check(fixture<>Null,"D3D11 test fixture creation")
 Local native:IUnknown_=dxgi_test_device(fixture)
 HR(DXGIQueryInterface(native,IID_IDXGIDevice1,Byte Ptr Ptr(Varptr device)),"Query IDXGIDevice1")
 HR(device.GetAdapter(adapter),"Device GetAdapter")
 HR(adapter.GetParent(IID_IDXGIFactory2,Byte Ptr Ptr(Varptr factory)),"Device's factory")
 HR(device.SetMaximumFrameLatency(2),"SetMaximumFrameLatency")
 Local latency:UInt
 HR(device.GetMaximumFrameLatency(Varptr latency),"GetMaximumFrameLatency")
 Check(latency=2,"Device1 inherited vtable/UINT output")
 Local priority:Int
 HR(device.GetGPUThreadPriority(Varptr priority),"GetGPUThreadPriority")

 Local window:Byte Ptr=dxgi_test_window(fixture)
 Local desc:DXGI_SWAP_CHAIN_DESC1
 desc.Width=64; desc.Height=48; desc.Format=DXGI_FORMAT_R8G8B8A8_UNORM
 desc.SampleDesc.Count=1
 desc.BufferUsage=DXGI_USAGE_RENDER_TARGET_OUTPUT
 desc.BufferCount=2
 desc.SwapEffect=DXGI_SWAP_EFFECT_FLIP_SEQUENTIAL
 desc.AlphaMode=DXGI_ALPHA_MODE_IGNORE
 HR(factory.CreateSwapChainForHwnd(native,window,Varptr desc,Null,Null,chain),"CreateSwapChainForHwnd")
 HR(factory.MakeWindowAssociation(window,DXGI_MWA_NO_ALT_ENTER),"MakeWindowAssociation")
 Local associated:Byte Ptr
 HR(factory.GetWindowAssociation(Varptr associated),"GetWindowAssociation")
 Check(associated=dxgi_test_association(factory),"HWND output agrees with native SDK call")
 Local actual:DXGI_SWAP_CHAIN_DESC1
 HR(chain.GetDesc1(Varptr actual),"GetDesc1")
 Check(actual.Width=64 And actual.Height=48 And actual.BufferCount=2,"Swap-chain descriptor")
 Check(actual.Stereo=0 And actual.SampleDesc.Count=1,"BOOL and nested structure")
 Local legacy:DXGI_SWAP_CHAIN_DESC
 HR(chain.GetDesc(Varptr legacy),"Inherited GetDesc")
 Check(legacy.OutputWindow=window And legacy.Windowed=1,"Legacy swap-chain HWND/BOOL")
 Local full:DXGI_SWAP_CHAIN_FULLSCREEN_DESC
 HR(chain.GetFullscreenDesc(Varptr full),"GetFullscreenDesc")
 Check(full.Windowed=1,"Fullscreen descriptor BOOL")
 Local hwnd:Byte Ptr
 HR(chain.GetHwnd(Varptr hwnd),"GetHwnd")
 Check(hwnd=window,"SwapChain1 HWND output")
 Local fullscreen:Int
 HR(chain.GetFullscreenState(Varptr fullscreen,target),"GetFullscreenState")
 Check(fullscreen=0,"Windowed state")
 If target Then target.Release_(); target=Null

 HR(chain.GetBuffer(0,IID_IDXGISurface,Byte Ptr Ptr(Varptr surface)),"GetBuffer / IDXGISurface")
 Local sd:DXGI_SURFACE_DESC
 HR(surface.GetDesc(Varptr sd),"Surface GetDesc")
 Check(sd.Width=64 And sd.Height=48 And sd.Format=desc.Format,"Surface descriptor")
 surface.Release_(); surface=Null

 Local rgba:DXGI_RGBA
 rgba.r=0.25; rgba.g=0.5; rgba.b=0.75; rgba.a=1
 HR(chain.SetBackgroundColor(Varptr rgba),"SetBackgroundColor")
 Local got:DXGI_RGBA
 HR(chain.GetBackgroundColor(Varptr got),"GetBackgroundColor")
 Check(got.r=rgba.r And got.g=rgba.g And got.b=rgba.b,"RGBA structure roundtrip")
 Local rotation:Int
 HR(chain.GetRotation(Varptr rotation),"Final SwapChain1 vtable slot")
 Local present:DXGI_PRESENT_PARAMETERS
 ' Hidden window: an occluded success status is valid; no pixels are presented.
 HR(chain.Present1(0,DXGI_PRESENT_TEST,Varptr present),"Present1 test")
 HR(chain.ResizeBuffers(2,80,60,DXGI_FORMAT_UNKNOWN,0),"ResizeBuffers")
 HR(chain.GetDesc1(Varptr actual),"Descriptor after resize")
 Check(actual.Width=80 And actual.Height=60,"Resized dimensions")

 ' Register a real event, then exercise the matching native void-return method.
 Local cookie:UInt
 HR(factory.RegisterOcclusionStatusEvent(dxgi_test_event(fixture),Varptr cookie),"RegisterOcclusionStatusEvent")
 factory.UnregisterOcclusionStatus(cookie)
 chain.Release_(); chain=Null
 factory.Release_(); factory=Null
 adapter.Release_(); adapter=Null
 device.Release_(); device=Null
 dxgi_test_close(fixture); fixture=Null
 Print "Pub.DXGI device/swap-chain checks passed"
Catch error:Object
 If surface Then surface.Release_()
 If target Then target.Release_()
 If chain Then chain.Release_()
 If factory Then factory.Release_()
 If adapter Then adapter.Release_()
 If device Then device.Release_()
 dxgi_test_close(fixture)
 Print "FAILED: "+error.ToString()
 EndWithCode(1)
End Try
