SuperStrict
Framework BRL.StandardIO
Import Pub.Direct3D11
Function Check(ok:Int,msg:String)
 If Not ok Then Throw msg
End Function
Local device:ID3D11Device, context:ID3D11DeviceContext
Local texture:ID3D11Texture2D
Try
 Local level:Int
 Check(D3D11CreateDevice(Null,D3D_DRIVER_TYPE_HARDWARE,Null,0,Null,0,D3D11_SDK_VERSION,Varptr device,Varptr level,Varptr context)>=0,"CreateDevice")
 Check(device.GetFeatureLevel()=level,"Feature level return / device vtable")
 Local d:D3D11_TEXTURE2D_DESC
 d.Width=4;d.Height=4;d.ArraySize=1;d.MipLevels=1;d.Format=DXGI_FORMAT_R8G8B8A8_UNORM
 d.SampleDesc.Count=1;d.Usage=D3D11_USAGE_STAGING;d.CPUAccessFlags=D3D11_CPU_ACCESS_READ|D3D11_CPU_ACCESS_WRITE
 Check(device.CreateTexture2D(Varptr d,Null,Varptr texture)>=0,"CreateTexture2D")
 Local desc:D3D11_TEXTURE2D_DESC
 texture.GetDesc(Varptr desc)
 Check(desc.Width=4 And desc.Format=d.Format,"Native void GetDesc")
 Local mapped:D3D11_MAPPED_SUBRESOURCE
 Check(context.Map(texture,0,D3D11_MAP_WRITE,0,Varptr mapped)>=0,"Map write")
 Check(mapped.pData<>Null And mapped.RowPitch>=16,"Mapped pointer and pitch")
 Int Ptr(mapped.pData)[0]=$78563412
 context.Unmap(texture,0)
 Check(context.Map(texture,0,D3D11_MAP_READ,0,Varptr mapped)>=0,"Map read")
 Check(Int Ptr(mapped.pData)[0]=$78563412,"Texture roundtrip")
 context.Unmap(texture,0)
 texture.Release_();texture=Null
 Check(device.GetDeviceRemovedReason()=0,"Device healthy")
 context.ClearState();context.Flush()
 context.Release_();context=Null
 device.Release_();device=Null
 Print "Pub.Direct3D11 device tests passed"
Catch e:Object
 If texture Then texture.Release_()
 If context Then context.Release_()
 If device Then device.Release_()
 Print "FAILED: "+e.ToString()
 EndWithCode(1)
End Try
