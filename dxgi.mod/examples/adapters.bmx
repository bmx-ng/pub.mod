SuperStrict
Framework BRL.StandardIO
Import Pub.DXGI
Import BRL.Retro

Function HR(result:Int,operation:String)
 If result<0 Then Throw operation+" failed: $"+Hex(result)
End Function

Local factory:IDXGIFactory1
Local adapter:IDXGIAdapter1
Local output:IDXGIOutput
Try
 HR(CreateDXGIFactory1(IID_IDXGIFactory1,Byte Ptr Ptr(Varptr factory)),"CreateDXGIFactory1")
 Local index:UInt
 While True
  Local result:Int=factory.EnumAdapters1(index,adapter)
  If result=DXGI_ERROR_NOT_FOUND Then Exit
  HR(result,"EnumAdapters1")

  Local desc:DXGI_ADAPTER_DESC1
  HR(adapter.GetDesc1(Varptr desc),"GetDesc1")
  Print "Adapter "+index+": "+String.FromWString(Varptr desc.Description[0])
  Print "  Vendor/device: $"+Hex(Int(desc.VendorId))+" / $"+Hex(Int(desc.DeviceId))
  Print "  Dedicated video memory: "+(ULong(desc.DedicatedVideoMemory)/1048576)+" MiB"
  Print "  Shared system memory: "+(ULong(desc.SharedSystemMemory)/1048576)+" MiB"
  Print "  Software adapter: "+Int((desc.Flags & DXGI_ADAPTER_FLAG_SOFTWARE)<>0)

  Local oi:UInt
  While True
   result=adapter.EnumOutputs(oi,output)
   If result=DXGI_ERROR_NOT_FOUND Then Exit
   HR(result,"EnumOutputs")
   Local od:DXGI_OUTPUT_DESC
   HR(output.GetDesc(Varptr od),"Output GetDesc")
   Print "  Output "+oi+": "+String.FromWString(Varptr od.DeviceName[0])
   Print "    Desktop: "+od.DesktopCoordinates.left+", "+od.DesktopCoordinates.top+" to "+od.DesktopCoordinates.right+", "+od.DesktopCoordinates.bottom
   Print "    Attached: "+od.AttachedToDesktop+"; rotation: "+od.Rotation
   output.Release_(); output=Null
   oi:+1
  Wend
  adapter.Release_(); adapter=Null
  index:+1
 Wend
 factory.Release_(); factory=Null
 Print "DXGI enumeration complete."
Catch error:Object
 If output Then output.Release_()
 If adapter Then adapter.Release_()
 If factory Then factory.Release_()
 Print error.ToString()
 EndWithCode(1)
End Try
