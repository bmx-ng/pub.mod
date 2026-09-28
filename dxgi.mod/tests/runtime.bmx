SuperStrict
Framework BRL.StandardIO
Import Pub.DXGI
Import BRL.Retro

Function Check(ok:Int,message:String)
 If Not ok Then Throw message
End Function
Function HR(result:Int,message:String)
 If result<0 Then Throw message+" HRESULT $"+Hex(result)
End Function

Local factory:IDXGIFactory1
Local adapter:IDXGIAdapter1
Local output:IDXGIOutput
Local parent:IDXGIFactory1
Local factory2:IDXGIFactory2
Try
 Check(CreateDXGIFactory1(IID_IDXGIFactory1,Null)<0,"Null output must fail")
 Check(CreateDXGIFactory1(Null,Byte Ptr Ptr(Varptr factory))<0 And Not factory,"Null IID must fail and clear output")
 HR(CreateDXGIFactory1(IID_IDXGIFactory1,Byte Ptr Ptr(Varptr factory)),"CreateDXGIFactory1")
 Check(factory<>Null,"Factory output")
 Check(factory.IsCurrent()=1,"Factory IsCurrent BOOL/vtable slot")
 Local marker:UInt=$fedcba98, value:UInt, bytes:UInt=4
 HR(factory.SetPrivateData(IID_IDXGIObject,4,Byte Ptr(Varptr marker)),"SetPrivateData")
 HR(factory.GetPrivateData(IID_IDXGIObject,Varptr bytes,Byte Ptr(Varptr value)),"GetPrivateData")
 Check(bytes=4 And value=marker,"Inherited private-data methods / UInt pointer")
 HR(factory.SetPrivateData(IID_IDXGIObject,0,Null),"Remove private data")
 Local index:UInt, totalOutputs:Int
 While True
  Local result:Int=factory.EnumAdapters1(index,adapter)
  If result=DXGI_ERROR_NOT_FOUND Then Exit
  HR(result,"EnumAdapters1")
  Local desc:DXGI_ADAPTER_DESC1
  HR(adapter.GetDesc1(Varptr desc),"Adapter GetDesc1")
  Check(desc.Description[0]<>0,"Inline UTF-16 description")
  Local base:DXGI_ADAPTER_DESC
  HR(adapter.GetDesc(Varptr base),"Inherited adapter GetDesc")
  Check(base.VendorId=desc.VendorId And base.AdapterLuid.LowPart=desc.AdapterLuid.LowPart,"Adapter descriptor agreement")
  Check(base.SharedSystemMemory=desc.SharedSystemMemory,"SIZE_T memory fields")
  HR(adapter.GetParent(IID_IDXGIFactory1,Byte Ptr Ptr(Varptr parent)),"Adapter GetParent")
  Check(parent.IsCurrent()=1,"Parent factory")
  parent.Release_(); parent=Null
  Local oi:UInt
  While True
   result=adapter.EnumOutputs(oi,output)
   If result=DXGI_ERROR_NOT_FOUND Then Exit
   HR(result,"EnumOutputs")
   Local od:DXGI_OUTPUT_DESC
   HR(output.GetDesc(Varptr od),"Output GetDesc")
   Check(od.DeviceName[0]<>0,"Inline output name")
   If od.AttachedToDesktop Then Check(od.Monitor<>Null,"Pointer-sized monitor handle")
   Local count:UInt
   HR(output.GetDisplayModeList(DXGI_FORMAT_R8G8B8A8_UNORM,0,Varptr count,Null),"Mode count")
   If count>0 Then
    Local modes:DXGI_MODE_DESC[]=New DXGI_MODE_DESC[Int(count)]
    result=output.GetDisplayModeList(DXGI_FORMAT_R8G8B8A8_UNORM,0,Varptr count,Varptr modes[0])
    ' A display change between calls is a legitimate runtime result.
    If result<>DXGI_ERROR_MORE_DATA Then
     HR(result,"Mode list")
     Check(modes[0].Width>0 And modes[0].Height>0,"Mode array output")
    End If
   End If
   output.Release_(); output=Null
   totalOutputs:+1; oi:+1
  Wend
  adapter.Release_(); adapter=Null
  index:+1
 Wend
 Check(index>0,"At least one adapter")
 HR(DXGIQueryInterface(factory,IID_IDXGIFactory2,Byte Ptr Ptr(Varptr factory2)),"QueryInterface Factory2")
 Local stereo:Int=factory2.IsWindowedStereoEnabled()
 Check(stereo=0 Or stereo=1,"Factory2 BOOL/vtable slot")
 factory2.Release_(); factory2=Null
 factory.Release_(); factory=Null
 Local legacy:IDXGIFactory
 HR(CreateDXGIFactory(IID_IDXGIFactory,Byte Ptr Ptr(Varptr legacy)),"Legacy factory entry point")
 legacy.Release_()
 HR(CreateDXGIFactory2(0,IID_IDXGIFactory2,Byte Ptr Ptr(Varptr factory2)),"CreateDXGIFactory2 entry point")
 factory2.Release_(); factory2=Null
 Print "Pub.DXGI runtime checks passed: "+index+" adapters, "+totalOutputs+" outputs"
Catch error:Object
 If factory2 Then factory2.Release_()
 If parent Then parent.Release_()
 If output Then output.Release_()
 If adapter Then adapter.Release_()
 If factory Then factory.Release_()
 Print "FAILED: "+error.ToString()
 EndWithCode(1)
End Try
