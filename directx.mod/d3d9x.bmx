
SuperStrict

Import Pub.Win32

Extern "win32"

Interface ID3DXBuffer_ Extends IUnknown_

	Method GetBufferPointer:Byte Ptr()
	Method GetBufferSize:Int()
Rem
    // ID3DXBuffer
    STDMETHOD_(LPVOID, GetBufferPointer)(THIS) PURE;
    STDMETHOD_(DWORD, GetBufferSize)(THIS) PURE;
end rem
End Interface

End Extern

Global d3dx9Lib:Byte Ptr=LoadLibraryA( "d3dx9" )

If Not d3dx9Lib Return 0

Global D3DXAssembleShader:Int( pSrcData:Byte Ptr,SrcDataLen:Int,pDefines:Byte Ptr,pInclude:Byte Ptr,Flags:Int,ppShader:ID3DXBuffer_ Var,ppErrorMsgs:ID3DXBuffer_ Var )"win32"=GetProcAddress( d3dx9Lib,"D3DXAssembleShader" )
