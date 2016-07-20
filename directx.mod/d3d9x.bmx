
Strict

Import Pub.Win32

Extern "win32"

Interface ID3DXBuffer_ Extends IUnknown_

	Method GetBufferPointer:Byte Ptr()
	Method GetBufferSize()
Rem
    // ID3DXBuffer
    STDMETHOD_(LPVOID, GetBufferPointer)(THIS) PURE;
    STDMETHOD_(DWORD, GetBufferSize)(THIS) PURE;
end rem
End Interface

End Extern

Global d3dx9Lib:Byte Ptr=LoadLibraryA( "d3dx9" )

If Not d3dx9Lib Return

Global D3DXAssembleShader( pSrcData:Byte Ptr,SrcDataLen,pDefines:Byte Ptr,pInclude:Byte Ptr,Flags,ppShader:ID3DXBuffer_ Var,ppErrorMsgs:ID3DXBuffer_ Var )"win32"=GetProcAddress( d3dx9Lib,"D3DXAssembleShader" )
