
SuperStrict

Import brl.standardio
Import Pub.Win32
Import "d3d.bmx"

Import "include/*.h"
Import "d3d9.cpp"

Const DIRECT3D_VERSION9:Int=$900

'what's up with this...?
Type D3DDEVTYPE
	Const D3DDEVTYPE_HAL:Int = 1
	Const D3DDEVTYPE_REF:Int = 2
	Const D3DDEVTYPE_SW:Int = 3
	Const D3DDEVTYPE_NULLREF:Int = 4
	Const D3DDEVTYPE_FORCE_DWORD:Int = $7fffffff
End Type

Global nullBaseTexture9:IDirect3DBaseTexture9' = New IDirect3DBaseTexture9

Extern
	Function bmx_directx_d3d9_D3DCAPS9_new:Byte Ptr()
	Function bmx_directx_d3d9_D3DCAPS9_free(handle:Byte Ptr)
End Extern

Struct D3DVSHADERCAPS2_0
	Field Caps:Int
	Field DynamicFlowControlDepth:Int
	Field NumTemps:Int
	Field StaticFlowControlDepth:Int
End Struct

Struct D3DPSHADERCAPS2_0
	Field Caps:Int
	Field DynamicFlowControlDepth:Int
	Field NumTemps:Int
	Field StaticFlowControlDepth:Int
	Field NumInstructionSlots:Int
End Struct

Struct D3DCAPS9
	Field DeviceType:Int	'D3DDEVTYPE
	Field AdapterOrdinal:Int;
	Field Caps:Int;
	Field Caps2:Int;
	Field Caps3:Int;
	Field PresentationIntervals:Int;
	Field CursorCaps:Int;
	Field DevCaps:Int;
	Field PrimitiveMiscCaps:Int;
	Field RasterCaps:Int;
	Field ZCmpCaps:Int;
	Field SrcBlendCaps:Int;
	Field DestBlendCaps:Int;
	Field AlphaCmpCaps:Int;
	Field ShadeCaps:Int;
	Field TextureCaps:Int;
	Field TextureFilterCaps:Int;
	Field CubeTextureFilterCaps:Int;
	Field VolumeTextureFilterCaps:Int;
	Field TextureAddressCaps:Int;
	Field VolumeTextureAddressCaps:Int;
	Field LineCaps:Int;
	Field MaxTextureWidth:Int;
	Field MaxTextureHeight:Int;
	Field MaxVolumeExtent:Int;
	Field MaxTextureRepeat:Int;
	Field MaxTextureAspectRatio:Int;
	Field MaxAnisotropy:Int;
	Field MaxVertexW:Float;
	Field GuardBandLeft:Float;
	Field GuardBandTop:Float;
	Field GuardBandRight:Float;
	Field GuardBandBottom:Float;
	Field ExtentsAdjust:Float;
	Field StencilCaps:Int;
	Field FVFCaps:Int;
	Field TextureOpCaps:Int;
	Field MaxTextureBlendStages:Int;
	Field MaxSimultaneousTextures:Int;
	Field VertexProcessingCaps:Int;
	Field MaxActiveLights:Int;
	Field MaxUserClipPlanes:Int;
	Field MaxVertexBlendMatrices:Int;
	Field MaxVertexBlendMatrixIndex:Int;
	Field MaxPointSize:Float;
	Field MaxPrimitiveCount:Int;
	Field MaxVertexIndex:Int;
	Field MaxStreams:Int;
	Field MaxStreamStride:Int;
	Field VertexShaderVersion:Int;
	Field MaxVertexShaderConst:Int;
	Field PixelShaderVersion:Int;
	Field PixelShader1xMaxValue:Float;
	Field DevCaps2:Int;
	Field MaxNpatchTessellationLevel:Float;
	Field Reserved5:Int;
	Field MasterAdapterOrdinal:Int;
	Field AdapterOrdinalInGroup:Int;
	Field NumberOfAdaptersInGroup:Int;
	Field DeclTypes:Int;
	Field NumSimultaneousRTs:Int;
	Field StretchRectFilterCaps:Int;
	Field VS20Caps:D3DVSHADERCAPS2_0
	Field PS20Caps:D3DPSHADERCAPS2_0
	Field VertexTextureFilterCaps:Int;
	Field MaxVShaderInstructionsExecuted:Int;
	Field MaxPShaderInstructionsExecuted:Int;
	Field MaxVertexShader30InstructionSlots:Int;
	Field MaxPixelShader30InstructionSlots:Int;
End Struct

Type D3DCLIPSTATUS9
	Field ClipUnion:Int
	Field ClipIntersection:Int
End Type

Struct D3DVIEWPORT9
	Field X:Int
	Field Y:Int
	Field Width:Int
	Field Height:Int
	Field MinZ:Float
	Field MaxZ:Float
End Struct

Type D3DMATERIAL9
	Field Diffuse_r:Float,Diffuse_g:Float,Diffuse_b:Float,Diffuse_a:Float
	Field Ambient_r:Float,Ambient_g:Float,Ambient_b:Float,Ambient_a:Float
	Field Specular_r:Float,Specular_g:Float,Specular_b:Float,Specular_a:Float
	Field Emissive_r:Float,Emissive_g:Float,Emissive_b:Float,Emissive_a:Float
	Field Power:Float
End Type

Type D3DLIGHT9
	Field Type_:Int
	Field Diffuse_r:Float,Diffuse_g:Float,Diffuse_b:Float,Diffuse_a:Float
	Field Specular_r:Float,Specular_g:Float,Specular_b:Float,Specular_a:Float
	Field Ambient_r:Float,Ambient_g:Float,Ambient_b:Float,Ambient_a:Float
	Field Position_x:Float,Position_y:Float,Position_z:Float
	Field Direction_x:Float,Direction_y:Float,Direction_z:Float
	Field Range:Float
	Field Falloff:Float
	Field Attenuation0:Float
	Field Attenuation1:Float
	Field Attenuation2:Float
	Field Theta:Float
	Field Phi:Float
End Type

Type D3DVERTEXELEMENT9
	Field Stream:Short
	Field Offset:Short
	Field Type_:Byte
	Field Method_:Byte
	Field Usage:Byte
	Field UsageIndex:Byte
End Type


Type D3DADAPTER_IDENTIFIER9
	Field Driver0:Int, Driver1:Int, Driver2:Int, Driver3:Int, Driver4:Int, Driver5:Int, Driver6:Int, Driver7:Int, Driver8:Int, Driver9:Int
	Field Driver10:Int, Driver11:Int, Driver12:Int, Driver13:Int, Driver14:Int, Driver15:Int, Driver16:Int, Driver17:Int, Driver18:Int, Driver19:Int
	Field Driver20:Int, Driver21:Int, Driver22:Int, Driver23:Int, Driver24:Int, Driver25:Int, Driver26:Int, Driver27:Int, Driver28:Int, Driver29:Int
	Field Driver30:Int, Driver31:Int, Driver32:Int, Driver33:Int, Driver34:Int, Driver35:Int, Driver36:Int, Driver37:Int, Driver38:Int, Driver39:Int
	Field Driver40:Int, Driver41:Int, Driver42:Int, Driver43:Int, Driver44:Int, Driver45:Int, Driver46:Int, Driver47:Int, Driver48:Int, Driver49:Int
	Field Driver50:Int, Driver51:Int, Driver52:Int, Driver53:Int, Driver54:Int, Driver55:Int, Driver56:Int, Driver57:Int, Driver58:Int, Driver59:Int
	Field Driver60:Int, Driver61:Int, Driver62:Int, Driver63:Int, Driver64:Int, Driver65:Int, Driver66:Int, Driver67:Int, Driver68:Int, Driver69:Int
	Field Driver70:Int, Driver71:Int, Driver72:Int, Driver73:Int, Driver74:Int, Driver75:Int, Driver76:Int, Driver77:Int, Driver78:Int, Driver79:Int
	Field Driver80:Int, Driver81:Int, Driver82:Int, Driver83:Int, Driver84:Int, Driver85:Int, Driver86:Int, Driver87:Int, Driver88:Int, Driver89:Int
	Field Driver90:Int, Driver91:Int, Driver92:Int, Driver93:Int, Driver94:Int, Driver95:Int, Driver96:Int, Driver97:Int, Driver98:Int, Driver99:Int
	Field Driver100:Int, Driver101:Int, Driver102:Int, Driver103:Int, Driver104:Int, Driver105:Int, Driver106:Int, Driver107:Int, Driver108:Int, Driver109:Int
	Field Driver110:Int, Driver111:Int, Driver112:Int, Driver113:Int, Driver114:Int, Driver115:Int, Driver116:Int, Driver117:Int, Driver118:Int, Driver119:Int
	Field Driver120:Int, Driver121:Int, Driver122:Int, Driver123:Int, Driver124:Int, Driver125:Int, Driver126:Int, Driver127:Int
	Field Description0:Int, Description1:Int, Description2:Int, Description3:Int, Description4:Int, Description5:Int, Description6:Int, Description7:Int, Description8:Int, Description9:Int
	Field Description10:Int, Description11:Int, Description12:Int, Description13:Int, Description14:Int, Description15:Int, Description16:Int, Description17:Int, Description18:Int, Description19:Int
	Field Description20:Int, Description21:Int, Description22:Int, Description23:Int, Description24:Int, Description25:Int, Description26:Int, Description27:Int, Description28:Int, Description29:Int
	Field Description30:Int, Description31:Int, Description32:Int, Description33:Int, Description34:Int, Description35:Int, Description36:Int, Description37:Int, Description38:Int, Description39:Int
	Field Description40:Int, Description41:Int, Description42:Int, Description43:Int, Description44:Int, Description45:Int, Description46:Int, Description47:Int, Description48:Int, Description49:Int
	Field Description50:Int, Description51:Int, Description52:Int, Description53:Int, Description54:Int, Description55:Int, Description56:Int, Description57:Int, Description58:Int, Description59:Int
	Field Description60:Int, Description61:Int, Description62:Int, Description63:Int, Description64:Int, Description65:Int, Description66:Int, Description67:Int, Description68:Int, Description69:Int
	Field Description70:Int, Description71:Int, Description72:Int, Description73:Int, Description74:Int, Description75:Int, Description76:Int, Description77:Int, Description78:Int, Description79:Int
	Field Description80:Int, Description81:Int, Description82:Int, Description83:Int, Description84:Int, Description85:Int, Description86:Int, Description87:Int, Description88:Int, Description89:Int
	Field Description90:Int, Description91:Int, Description92:Int, Description93:Int, Description94:Int, Description95:Int, Description96:Int, Description97:Int, Description98:Int, Description99:Int
	Field Description100:Int, Description101:Int, Description102:Int, Description103:Int, Description104:Int, Description105:Int, Description106:Int, Description107:Int, Description108:Int, Description109:Int
	Field Description110:Int, Description111:Int, Description112:Int, Description113:Int, Description114:Int, Description115:Int, Description116:Int, Description117:Int, Description118:Int, Description119:Int
	Field Description120:Int, Description121:Int, Description122:Int, Description123:Int, Description124:Int, Description125:Int, Description126:Int, Description127:Int
	Field DeviceName0:Int, DeviceName1:Int, DeviceName2:Int, DeviceName3:Int, DeviceName4:Int, DeviceName5:Int, DeviceName6:Int, DeviceName7:Int
	Field DriverVersionLowPart:Int
	Field DriverVersionHighPart:Int
	Field VendorId:Int
	Field DeviceId:Int
	Field SubSysId:Int
	Field Revision:Int
	Field DeviceIdentifier0:Int
	Field DeviceIdentifier1:Int
	Field DeviceIdentifier2:Int
	Field DeviceIdentifier3:Int
	Field WHQLLevel:Int

	Method Driver:String()
		Return String.fromCString(Varptr Driver0)
	End Method
	Method Description:String()
		Return String.fromCString(Varptr Description0)	
	End Method
	Method DeviceName:String()
		Return String.fromCString(Varptr DeviceName0)	
	End Method	
End Type

Extern "win32"
Interface  IDirect3DQuery9 Extends IUnknown_

	Method GetDevice:Int( ppDevice:IDirect3DDevice9 Var )
	Method GetType:Int()
	Method GetDataSize:Int()
	Method Issue:Int( dwIssueFlags:Int )
	Method GetData:Int( pData:Byte Ptr,dwSize:Int,dwGetDataFlags:Int )

Rem
	STDMETHOD(GetDevice)(THIS_ IDirect3DDevice9** ppDevice) PURE;
	STDMETHOD_(D3DQUERYTYPE, GetType)(THIS) PURE;
	STDMETHOD_(DWORD, GetDataSize)(THIS) PURE;
	STDMETHOD(Issue)(THIS_ DWORD dwIssueFlags) PURE;
	STDMETHOD(GetData)(THIS_ void* pData,DWORD dwSize,DWORD dwGetDataFlags) PURE;
End Rem

End Interface

Interface IDirect3DStateBlock9 Extends IUnknown_

	Method GetDevice:Int(ppDevice:IDirect3DDevice9 Var)
	Method Capture:Int()
	Method Apply:Int()

Rem
	STDMETHOD(GetDevice)(THIS_ IDirect3DDevice9** ppDevice) PURE;
	STDMETHOD(Capture)(THIS) PURE;
	STDMETHOD(Apply)(THIS) PURE;
End Rem

End Interface

Interface IDirect3DPixelShader9 Extends IUnknown_

Rem
	STDMETHOD(GetDevice)(THIS_ IDirect3DDevice9** ppDevice) PURE;
	STDMETHOD(GetFunction)(THIS_ void*,UINT* pSizeOfData) PURE;
End Rem

End Interface 

Interface IDirect3DVertexShader9 Extends IUnknown_

Rem
	STDMETHOD(GetDevice)(THIS_ IDirect3DDevice9** ppDevice) PURE;
	STDMETHOD(GetFunction)(THIS_ void*,UINT* pSizeOfData) PURE;
End Rem

End Interface 

Interface IDirect3DVertexDeclaration9 Extends IUnknown_

Rem
	STDMETHOD(GetDevice)(THIS_ IDirect3DDevice9** ppDevice) PURE;
	STDMETHOD(GetDeclaration)(THIS_ D3DVERTEXELEMENT9*,UINT* pNumElements) PURE;
End Rem

End Interface 
End Extern

Extern "win32"
Interface IDirect3D9 Extends IUnknown_

	Method RegisterSoftwareDevice:Int( pInitializeFunction:Int() )
	Method GetAdapterCount:Int()
	Method GetAdapterIdentifier:Int( Adapter:Int,Flags:Int,pIdentifier:Byte Ptr )
	Method GetAdapterModeCount:Int( Adapter:Int,Format:Int )
	Method EnumAdapterModes:Int( Adapter:Int,Format:Int,Mode:Int,pMode:D3DDISPLAYMODE Var)
	Method GetAdapterDisplayMode:Int( Adapter:Int,pMode:D3DDISPLAYMODE Var)
	Method CheckDeviceType:Int( iAdapter:Int,DevType:Int,DisplayFormat:Int,BackBufferFormat:Int,bWindowed:Int )
	Method CheckDeviceFormat:Int( Adapter:Int,DeviceType:Int,AdapterFormat:Int,Usage:Int,RType:Int,CheckFormat:Int )
	Method CheckDeviceMultiSampleType:Int( Adapter:Int,DeviceType:Int,SurfaceFormat:Int,Windowed:Int,MultiSampleType:Int,pQualityLevels:Int Ptr )
	Method CheckDepthStencilMatch:Int( Adapter:Int,DeviceType:Int,AdapterFormat:Int,RenderTargetFormat:Int,DepthStencilFormat:Int )
	Method CheckDeviceFormatConversion:Int( Adapter:Int,DeviceType:Int,SourceFormat:Int,TargetFormat:Int )
	Method GetDeviceCaps:Int( Adapter:Int,DeviceType:Int,pCaps:D3DCAPS9 Var)
	Method GetAdapterMonitor:Byte Ptr( Adapter:Int )
	Method CreateDevice:Int( Adapter:Int,DeviceType:Int,hFocusWindow:Byte Ptr,BehaviorFlags:Int, pPresentationParameters:D3DPRESENT_PARAMETERS Var,ppReturnedDeviceInterface:IDirect3DDevice9 Var)
Rem
	STDMETHOD(RegisterSoftwareDevice)(THIS_ void* pInitializeFunction) PURE;
	STDMETHOD_(UINT, GetAdapterCount)(THIS) PURE;
	STDMETHOD(GetAdapterIdentifier)(THIS_ UINT Adapter,DWORD Flags,D3DADAPTER_IDENTIFIER9* pIdentifier) PURE;
	STDMETHOD_(UINT, GetAdapterModeCount)(THIS_ UINT Adapter,D3DFORMAT Format) PURE;
	STDMETHOD(EnumAdapterModes)(THIS_ UINT Adapter,D3DFORMAT Format,UINT Mode,D3DDISPLAYMODE* pMode) PURE;
	STDMETHOD(GetAdapterDisplayMode)(THIS_ UINT Adapter,D3DDISPLAYMODE* pMode) PURE;
	STDMETHOD(CheckDeviceType)(THIS_ UINT iAdapter,D3DDEVTYPE DevType,D3DFORMAT DisplayFormat,D3DFORMAT BackBufferFormat,BOOL bWindowed) PURE;
	STDMETHOD(CheckDeviceFormat)(THIS_ UINT Adapter,D3DDEVTYPE DeviceType,D3DFORMAT AdapterFormat,DWORD Usage,D3DRESOURCETYPE RType,D3DFORMAT CheckFormat) PURE;
	STDMETHOD(CheckDeviceMultiSampleType)(THIS_ UINT Adapter,D3DDEVTYPE DeviceType,D3DFORMAT SurfaceFormat,BOOL Windowed,D3DMULTISAMPLE_TYPE MultiSampleType,DWORD* pQualityLevels) PURE;
	STDMETHOD(CheckDepthStencilMatch)(THIS_ UINT Adapter,D3DDEVTYPE DeviceType,D3DFORMAT AdapterFormat,D3DFORMAT RenderTargetFormat,D3DFORMAT DepthStencilFormat) PURE;
	STDMETHOD(CheckDeviceFormatConversion)(THIS_ UINT Adapter,D3DDEVTYPE DeviceType,D3DFORMAT SourceFormat,D3DFORMAT TargetFormat) PURE;
	STDMETHOD(GetDeviceCaps)(THIS_ UINT Adapter,D3DDEVTYPE DeviceType,D3DCAPS9* pCaps) PURE;
	STDMETHOD_(HMONITOR, GetAdapterMonitor)(THIS_ UINT Adapter) PURE;
	STDMETHOD(CreateDevice)(THIS_ UINT Adapter,D3DDEVTYPE DeviceType,HWND hFocusWindow,DWORD BehaviorFlags,D3DPRESENT_PARAMETERS* pPresentationParameters,IDirect3DDevice9** ppReturnedDeviceInterface) PURE;
End Rem

End Interface
End Extern

Extern "win32"
Interface IDirect3DDevice9 Extends IUnknown_

	Method TestCooperativeLevel:Int()
	Method GetAvailableTextureMem:Int()
	Method EvictManagedResources:Int()
	Method GetDirect3D:Int( ppD3D9:IDirect3D9 Var )
	Method GetDeviceCaps:Int( caps:Byte Ptr )
	Method GetDisplayMode:Int( iSwapChain:Int,pMode:Byte Ptr )
	Method GetCreationParameters:Int( pParameters:Byte Ptr )
	Method SetCursorProperties:Int( XHotSpot:Int,YHotSpot:Int,pCursorBitmap:IDirect3DSurface9 )
	Method SetCursorPosition( X:Int,Y:Int,Flags:Int )
	Method ShowCursor:Int( bShow:Int )
	Method CreateAdditionalSwapChain:Int( pPresentationParameters:D3DPRESENT_PARAMETERS Var,pSwapChain:IDirect3DSwapChain9 Var )
	Method GetSwapChain:Int( iSwapChain:Int,pSwapChain:IDirect3DSwapChain9 Var )
	Method GetNumberOfSwapChains:Int()
	Method Reset:Int( pPresentationParameters:D3DPRESENT_PARAMETERS Var)
	Method Present:Int( pSourceRect:Byte Ptr,pDestRect:Byte Ptr,hDestWindowOverride:Byte Ptr,pDirtyRegion:Byte Ptr )
	Method GetBackBuffer:Int( iSwapChain:Int,iBackBuffer:Int,bType:Int,ppBackBuffer:IDirect3DSurface9 Var )
	Method GetRasterStatus:Int( iSwapChain:Int,pRasterStatus:Byte Ptr )
	Method SetDialogBoxMode:Int( bEnableDialogs:Int )
	Method SetGammaRamp( iSwapChain:Int,Flags:Int,pRamp:Short Ptr )
	Method GetGammaRamp( iSwapChain:Int,pRamp:Short Ptr )
	Method CreateTexture:Int( Width:UInt,Height:UInt,Levels:Int,Usage:Int,Format:Int,Pool:Int,ppTexture:IDirect3DTexture9 Var,pSharedHandle:Byte Ptr )
	Method CreateVolumeTexture:Int( Width:UInt,Height:UInt,Depth:Int,Levels:Int,Usage:Int,Format:Int,Pool:Int,ppVolumeTexture:IDirect3DVolumeTexture9 Var,pSharedHandle:Byte Ptr )
	Method CreateCubeTexture:Int( EdgeLength:Int,Levels:Int,Usage:Int,Format:Int,Pool:Int,ppTexture:IDirect3DCubeTexture9 Var,pSharedHandle:Byte Ptr )
	Method CreateVertexBuffer:Int( Length:Int,Usage:Int,FVF:Int,Pool:Int,ppVertexBuffer:IDirect3DVertexBuffer9 Var,pSharedHandle:Byte Ptr )
	Method CreateIndexBuffer:Int( Length:Int,Usage:Int,Format:Int,Pool:Int,ppIndexBuffer:IDirect3DIndexBuffer9 Var,pSharedHandle:Byte Ptr )
	Method CreateRenderTarget:Int( Width:UInt,Height:UInt,Format:Int,MultiSample:Int,MultisampleQuality:Int,Lockable:Int,ppSurface:IDirect3DSurface9 Var,pSharedHandle:Byte Ptr )
	Method CreateDepthStencilSurface:Int( Width:UInt,Height:UInt,Format:Int,MultiSample:Int,MultisampleQuality:Int,Discard:Int,ppSurface:IDirect3DSurface9 Var,pSharedHandle:Byte Ptr )
	Method UpdateSurface:Int( pSourceSurface:IDirect3DSurface9,pSourceRect:Byte Ptr,pDestinationSurface:IDirect3DSurface9,pDestPoint:Byte Ptr )
	Method UpdateTexture:Int( pSourceTexture:IDirect3DBaseTexture9,pDestinationTexture:IDirect3DBaseTexture9 )
	Method GetRenderTargetData:Int( pRenderTarget:IDirect3DSurface9,pDestSurface:IDirect3DSurface9 )
	Method GetFrontBufferData:Int( iSwapChain:Int,pDestSurface:IDirect3DSurface9 )
	Method StretchRect:Int( pSourceSurface:IDirect3DSurface9,pSourceRect:Byte Ptr,pDestSurface:IDirect3DSurface9,pDestRect:Byte Ptr,Filter:Int )
	Method ColorFill:Int( pSurface:IDirect3DSurface9,pRect:Byte Ptr,color:Int )
	Method CreateOffscreenPlainSurface:Int( Width:UInt,Height:UInt,Format:Int,Pool:Int,ppSurface:IDirect3DSurface9 Var,pSharedHandle:Byte Ptr )
	Method SetRenderTarget:Int( RenderTargetIndex:Int,pRenderTarget:IDirect3DSurface9 )
	Method GetRenderTarget:Int( RenderTargetIndex:Int,pRenderTarget:IDirect3DSurface9 Var)
	Method SetDepthStencilSurface:Int( pNewZStencil:IDirect3DSurface9 )
	Method GetDepthStencilSurface:Int( ppZStencilSurface:IDirect3DSurface9 Var )
	Method BeginScene:Int()
	Method EndScene:Int()
	Method Clear:Int( Count:Int,pRects:Byte Ptr,Flags:Int,Color:Int,Z:Float,Stencil:Int )
	Method SetTransform:Int( State:Int,pMatrix:Float Ptr )
	Method GetTransform:Int( State:Int,pMatrix:Float Ptr )
	Method MultiplyTransform:Int( State:Int,pMatrix:Float Ptr )
	Method SetViewport:Int( pViewport:D3DVIEWPORT9 Var )
	Method GetViewport:Int( pViewport:D3DVIEWPORT9 Var )
	Method SetMaterial:Int( pMaterial:Byte Ptr )
	Method GetMaterial:Int( pMaterial:Byte Ptr )
	Method SetLight:Int( Index:Int,pLight:Byte Ptr )
	Method GetLight:Int( Index:Int,pLight:Byte Ptr )
	Method LightEnable:Int( Index:Int,Enable:Int )
	Method GetLightEnable:Int( Index:Int,Enable:Int Ptr )
	Method SetClipPlane:Int( Index:Int,pPlane:Float Ptr )
	Method GetClipPlane:Int( Index:Int,pPlane:Float Ptr )

	Method SetRenderState:Int( State:Int,Value:Int )
	Method GetRenderState:Int( State:Int,Value:Int Var )
	Method CreateStateBlock:Int( Type_:Int,ppSB:IDirect3DStateBlock9 Var )
	Method BeginStateBlock:Int()
	Method EndStateBlock:Int( ppSB:IDirect3DStateBlock9 Var )
	Method SetClipStatus:Int( pClipStatus:Byte Ptr )
	Method GetClipStatus:Int( pClipStatus:Byte Ptr )
	Method GetTexture:Int( Stage:Int,ppTexture:IDirect3DBaseTexture9 Var )

	Method SetTexture:Int( Stage:Int,pTexture:IDirect3DBaseTexture9 )
	Method GetTextureStageState:Int( Stage:Int,Type_:Int,pValue:Int Var )

	Method SetTextureStageState:Int( Stage:Int,Type_:Int,Value:Int )
	Method GetSamplerState:Int( Sampler:Int,Type_:Int,pValue:Int Var )
	Method SetSamplerState:Int( Sampler:Int,Type_:Int,Value:Int )
	Method ValidateDevice:Int( pNumPasses:Int Ptr )
	Method SetPaletteEntries:Int( PaletteNumber:Int,pEntries:Byte Ptr )
	Method GetPaletteEntries:Int( PaletteNumber:Int,pEntries:Byte Ptr )
	Method SetCurrentTexturePalette:Int( PaletteNumber:Int )
	Method GetCurrentTexturePalette:Int( PaletteNumber:Int Var )
	Method SetScissorRect:Int( pRect:Byte Ptr )
	Method GetScissorRect:Int( pRect:Byte Ptr )
	Method SetSoftwareVertexProcessing:Int( bSoftware:Int )
	Method GetSoftwareVertexProcessing:Int()
	Method SetNPatchMode:Int( nSegments:Float )
	Method GetNPatchMode:Float()
	Method DrawPrimitive:Int( PrimitiveType:Int,StartVertex:Int,PrimitiveCount:Int )
	Method DrawIndexedPrimitive:Int( PrimitiveType:Int,BaseVertexIndex:Int,MinVertexIndex:Int,NumVertices:Int,startIndex:Int,primCount:Int )

	Method DrawPrimitiveUP:Int( PrimitiveType:Int,PrimitiveCount:Int,pVertexStreamZeroData:Byte Ptr,VertexStreamZeroStride:Int )
	Method DrawIndexedPrimitiveUP:Int( PrimitiveType:Int,MinVertexIndex:Int,NumVertices:Int,PrimitiveCount:Int,pIndexData:Byte Ptr,IndexDataFormat:Int,pVertexStreamZeroData:Byte Ptr,VertexStreamZeroStride:Int )
	Method ProcessVertices:Int( SrcStartIndex:Int,DestIndex:Int,VertexCount:Int,pDestBuffer:IDirect3DVertexBuffer9,pVertexDecl:IDirect3DVertexDeclaration9,Flags:Int )
	Method CreateVertexDeclaration:Int( pVertexElements:Byte Ptr,ppDecl:IDirect3DVertexDeclaration9 Var )
	Method SetVertexDeclaration:Int( pDecl:IDirect3DVertexDeclaration9 )
	Method GetVertexDeclaration:Int( ppDecl:IDirect3DVertexDeclaration9 Var )
	Method SetFVF:Int( FVF:Int )
	Method GetFVF:Int( FVF:Int Var )
	Method CreateVertexShader:Int( pFunction:Byte Ptr,ppShader:IDirect3DVertexShader9 Var )
	Method SetVertexShader:Int( pShader:IDirect3DVertexShader9 )
	Method GetVertexShader:Int( ppShader:IDirect3DVertexShader9 Var )
	Method SetVertexShaderConstantF:Int( StartRegister:Int,pConstantData:Float Ptr,Vector4fCount:Int )
	Method GetVertexShaderConstantF:Int( StartRegister:Int,pConstantData:Float Ptr,Vector4fCount:Int )
	Method SetVertexShaderConstantI:Int( StartRegister:Int,pConstantData:Int Ptr,Vector4iCount:Int )
	Method GetVertexShaderConstantI:Int( StartRegister:Int,pConstantData:Int Ptr,Vector4iCount:Int )
	Method SetVertexShaderConstantB:Int( StartRegister:Int,pConstantData:Int Ptr,BoolCount:Int )
	Method GetVertexShaderConstantB:Int( StartRegister:Int,pConstantData:Int Ptr,BoolCount:Int )
	Method SetStreamSource:Int( StreamNumber:Int,pStreamData:IDirect3DVertexBuffer9,OffsetInBytes:Int,Stride:Int )
	Method GetStreamSource:Int( StreamNumber:Int,ppStreamData:IDirect3DVertexBuffer9 Var,OffsetInBytes:Int Var,Stride:Int Var )
	Method SetStreamSourceFreq:Int( StreamNumber:Int,Divider:Int )
	Method GetStreamSourceFreq:Int( StreamNumber:Int,Divider:Int Var )
	Method SetIndices:Int( pIndexData:IDirect3DIndexBuffer9 )
	Method GetIndices:Int( ppIndexData:IDirect3DIndexBuffer9 Var )
	Method CreatePixelShader:Int( pFunction:Byte Ptr,ppShader:IDirect3DPixelShader9 Var )
	Method SetPixelShader:Int( pShader:IDirect3DPixelShader9 )
	Method GetPixelShader:Int( ppShader:IDirect3DPixelShader9 Var )
	Method SetPixelShaderConstantF:Int( StartRegister:Int,pConstantData:Float Ptr,Vector4fCount:Int )
	Method GetPixelShaderConstantF:Int( StartRegister:Int,pConstantData:Float Ptr,Vector4fCount:Int )
	Method SetPixelShaderConstantI:Int( StartRegister:Int,pConstantData:Int Ptr,Vector4iCount:Int )
	Method GetPixelShaderConstantI:Int( StartRegister:Int,pConstantData:Int Ptr,Vector4iCount:Int )
	Method SetPixelShaderConstantB:Int( StartRegister:Int,pConstantData:Int Ptr,BoolCount:Int )
	Method GetPixelShaderConstantB:Int( StartRegister:Int,pConstantData:Int Ptr,BoolCount:Int )
	Method DrawRectPatch:Int( Handle:Int,pNumSegs:Float Ptr,pRectPathInfo:Byte Ptr )
	Method DrawTriPatch:Int( Handle:Int,pNumSegs:Float Ptr,pTriPatchInfo:Byte Ptr )
	Method DeletePatch:Int( Handle:Int )

	Method CreateQuery:Int(Type_:Int, ppQuery:IDirect3DQuery9 Var)

Rem
	STDMETHOD(TestCooperativeLevel)(THIS) PURE;
	STDMETHOD_(UINT, GetAvailableTextureMem)(THIS) PURE;
	STDMETHOD(EvictManagedResources)(THIS) PURE;
	STDMETHOD(GetDirect3D)(THIS_ IDirect3D9** ppD3D9) PURE;
	STDMETHOD(GetDeviceCaps)(THIS_ D3DCAPS9* pCaps) PURE;
	STDMETHOD(GetDisplayMode)(THIS_ UINT iSwapChain,D3DDISPLAYMODE* pMode) PURE;
	STDMETHOD(GetCreationParameters)(THIS_ D3DDEVICE_CREATION_PARAMETERS *pParameters) PURE;
	STDMETHOD(SetCursorProperties)(THIS_ UINT XHotSpot,UINT YHotSpot,IDirect3DSurface9* pCursorBitmap) PURE;
	STDMETHOD_(void, SetCursorPosition)(THIS_ Int X,Int Y,DWORD Flags) PURE;
	STDMETHOD_(BOOL, ShowCursor)(THIS_ BOOL bShow) PURE;
	STDMETHOD(CreateAdditionalSwapChain)(THIS_ D3DPRESENT_PARAMETERS* pPresentationParameters,IDirect3DSwapChain9** pSwapChain) PURE;
	STDMETHOD(GetSwapChain)(THIS_ UINT iSwapChain,IDirect3DSwapChain9** pSwapChain) PURE;
	STDMETHOD_(UINT, GetNumberOfSwapChains)(THIS) PURE;
	STDMETHOD(Reset)(THIS_ D3DPRESENT_PARAMETERS* pPresentationParameters) PURE;
	STDMETHOD(Present)(THIS_ Const RECT* pSourceRect,Const RECT* pDestRect,HWND hDestWindowOverride,Const RGNDATA* pDirtyRegion) PURE;
	STDMETHOD(GetBackBuffer)(THIS_ UINT iSwapChain,UINT iBackBuffer,D3DBACKBUFFER_TYPE Type,IDirect3DSurface9** ppBackBuffer) PURE;
	STDMETHOD(GetRasterStatus)(THIS_ UINT iSwapChain,D3DRASTER_STATUS* pRasterStatus) PURE;
	STDMETHOD(SetDialogBoxMode)(THIS_ BOOL bEnableDialogs) PURE;
	STDMETHOD_(void, SetGammaRamp)(THIS_ UINT iSwapChain,DWORD Flags,Const D3DGAMMARAMP* pRamp) PURE;
	STDMETHOD_(void, GetGammaRamp)(THIS_ UINT iSwapChain,D3DGAMMARAMP* pRamp) PURE;
	STDMETHOD(CreateTexture)(THIS_ UINT Width,UINT Height,UINT Levels,DWORD Usage,D3DFORMAT Format,D3DPOOL Pool,IDirect3DTexture9** ppTexture,HANDLE* pSharedHandle) PURE;
	STDMETHOD(CreateVolumeTexture)(THIS_ UINT Width,UINT Height,UINT Depth,UINT Levels,DWORD Usage,D3DFORMAT Format,D3DPOOL Pool,IDirect3DVolumeTexture9** ppVolumeTexture,HANDLE* pSharedHandle) PURE;
	STDMETHOD(CreateCubeTexture)(THIS_ UINT EdgeLength,UINT Levels,DWORD Usage,D3DFORMAT Format,D3DPOOL Pool,IDirect3DCubeTexture9** ppCubeTexture,HANDLE* pSharedHandle) PURE;
	STDMETHOD(CreateVertexBuffer)(THIS_ UINT Length,DWORD Usage,DWORD FVF,D3DPOOL Pool,IDirect3DVertexBuffer9** ppVertexBuffer,HANDLE* pSharedHandle) PURE;
	STDMETHOD(CreateIndexBuffer)(THIS_ UINT Length,DWORD Usage,D3DFORMAT Format,D3DPOOL Pool,IDirect3DIndexBuffer9** ppIndexBuffer,HANDLE* pSharedHandle) PURE;
	STDMETHOD(CreateRenderTarget)(THIS_ UINT Width,UINT Height,D3DFORMAT Format,D3DMULTISAMPLE_TYPE MultiSample,DWORD MultisampleQuality,BOOL Lockable,IDirect3DSurface9** ppSurface,HANDLE* pSharedHandle) PURE;
	STDMETHOD(CreateDepthStencilSurface)(THIS_ UINT Width,UINT Height,D3DFORMAT Format,D3DMULTISAMPLE_TYPE MultiSample,DWORD MultisampleQuality,BOOL Discard,IDirect3DSurface9** ppSurface,HANDLE* pSharedHandle) PURE;
	STDMETHOD(UpdateSurface)(THIS_ IDirect3DSurface9* pSourceSurface,Const RECT* pSourceRect,IDirect3DSurface9* pDestinationSurface,Const POINT* pDestPoint) PURE;
	STDMETHOD(UpdateTexture)(THIS_ IDirect3DBaseTexture9* pSourceTexture,IDirect3DBaseTexture9* pDestinationTexture) PURE;
	STDMETHOD(GetRenderTargetData)(THIS_ IDirect3DSurface9* pRenderTarget,IDirect3DSurface9* pDestSurface) PURE;
	STDMETHOD(GetFrontBufferData)(THIS_ UINT iSwapChain,IDirect3DSurface9* pDestSurface) PURE;
	STDMETHOD(StretchRect)(THIS_ IDirect3DSurface9* pSourceSurface,Const RECT* pSourceRect,IDirect3DSurface9* pDestSurface,Const RECT* pDestRect,D3DTEXTUREFILTERTYPE Filter) PURE;
	STDMETHOD(ColorFill)(THIS_ IDirect3DSurface9* pSurface,Const RECT* pRect,D3DCOLOR color) PURE;
	STDMETHOD(CreateOffscreenPlainSurface)(THIS_ UINT Width,UINT Height,D3DFORMAT Format,D3DPOOL Pool,IDirect3DSurface9** ppSurface,HANDLE* pSharedHandle) PURE;
	STDMETHOD(SetRenderTarget)(THIS_ DWORD RenderTargetIndex,IDirect3DSurface9* pRenderTarget) PURE;
	STDMETHOD(GetRenderTarget)(THIS_ DWORD RenderTargetIndex,IDirect3DSurface9** ppRenderTarget) PURE;
	STDMETHOD(SetDepthStencilSurface)(THIS_ IDirect3DSurface9* pNewZStencil) PURE;
	STDMETHOD(GetDepthStencilSurface)(THIS_ IDirect3DSurface9** ppZStencilSurface) PURE;
	STDMETHOD(BeginScene)(THIS) PURE;
	STDMETHOD(EndScene)(THIS) PURE;
	STDMETHOD(Clear)(THIS_ DWORD Count,Const D3DRECT* pRects,DWORD Flags,D3DCOLOR Color,Float Z,DWORD Stencil) PURE;
	STDMETHOD(SetTransform)(THIS_ D3DTRANSFORMSTATETYPE State,Const D3DMATRIX* pMatrix) PURE;
	STDMETHOD(GetTransform)(THIS_ D3DTRANSFORMSTATETYPE State,D3DMATRIX* pMatrix) PURE;
	STDMETHOD(MultiplyTransform)(THIS_ D3DTRANSFORMSTATETYPE,Const D3DMATRIX*) PURE;
	STDMETHOD(SetViewport)(THIS_ Const D3DVIEWPORT9* pViewport) PURE;
	STDMETHOD(GetViewport)(THIS_ D3DVIEWPORT9* pViewport) PURE;
	STDMETHOD(SetMaterial)(THIS_ Const D3DMATERIAL9* pMaterial) PURE;
	STDMETHOD(GetMaterial)(THIS_ D3DMATERIAL9* pMaterial) PURE;
	STDMETHOD(SetLight)(THIS_ DWORD Index,Const D3DLIGHT9*) PURE;
	STDMETHOD(GetLight)(THIS_ DWORD Index,D3DLIGHT9*) PURE;
	STDMETHOD(LightEnable)(THIS_ DWORD Index,BOOL Enable) PURE;
	STDMETHOD(GetLightEnable)(THIS_ DWORD Index,BOOL* pEnable) PURE;
	STDMETHOD(SetClipPlane)(THIS_ DWORD Index,Const Float* pPlane) PURE;
	STDMETHOD(GetClipPlane)(THIS_ DWORD Index,Float* pPlane) PURE;
	STDMETHOD(SetRenderState)(THIS_ D3DRENDERSTATETYPE State,DWORD Value) PURE;
	STDMETHOD(GetRenderState)(THIS_ D3DRENDERSTATETYPE State,DWORD* pValue) PURE;
	STDMETHOD(CreateStateBlock)(THIS_ D3DSTATEBLOCKTYPE Type,IDirect3DStateBlock9** ppSB) PURE;
	STDMETHOD(BeginStateBlock)(THIS) PURE;
	STDMETHOD(EndStateBlock)(THIS_ IDirect3DStateBlock9** ppSB) PURE;
	STDMETHOD(SetClipStatus)(THIS_ Const D3DCLIPSTATUS9* pClipStatus) PURE;
	STDMETHOD(GetClipStatus)(THIS_ D3DCLIPSTATUS9* pClipStatus) PURE;
	STDMETHOD(GetTexture)(THIS_ DWORD Stage,IDirect3DBaseTexture9** ppTexture) PURE;
	STDMETHOD(SetTexture)(THIS_ DWORD Stage,IDirect3DBaseTexture9* pTexture) PURE;
	STDMETHOD(GetTextureStageState)(THIS_ DWORD Stage,D3DTEXTURESTAGESTATETYPE Type,DWORD* pValue) PURE;
	STDMETHOD(SetTextureStageState)(THIS_ DWORD Stage,D3DTEXTURESTAGESTATETYPE Type,DWORD Value) PURE;
	STDMETHOD(GetSamplerState)(THIS_ DWORD Sampler,D3DSAMPLERSTATETYPE Type,DWORD* pValue) PURE;
	STDMETHOD(SetSamplerState)(THIS_ DWORD Sampler,D3DSAMPLERSTATETYPE Type,DWORD Value) PURE;
	STDMETHOD(ValidateDevice)(THIS_ DWORD* pNumPasses) PURE;
	STDMETHOD(SetPaletteEntries)(THIS_ UINT PaletteNumber,Const PALETTEENTRY* pEntries) PURE;
	STDMETHOD(GetPaletteEntries)(THIS_ UINT PaletteNumber,PALETTEENTRY* pEntries) PURE;
	STDMETHOD(SetCurrentTexturePalette)(THIS_ UINT PaletteNumber) PURE;
	STDMETHOD(GetCurrentTexturePalette)(THIS_ UINT *PaletteNumber) PURE;
	STDMETHOD(SetScissorRect)(THIS_ Const RECT* pRect) PURE;
	STDMETHOD(GetScissorRect)(THIS_ RECT* pRect) PURE;
	STDMETHOD(SetSoftwareVertexProcessing)(THIS_ BOOL bSoftware) PURE;
	STDMETHOD_(BOOL, GetSoftwareVertexProcessing)(THIS) PURE;
	STDMETHOD(SetNPatchMode)(THIS_ Float nSegments) PURE;
	STDMETHOD_(Float, GetNPatchMode)(THIS) PURE;
	STDMETHOD(DrawPrimitive)(THIS_ D3DPRIMITIVETYPE PrimitiveType,UINT StartVertex,UINT PrimitiveCount) PURE;
	STDMETHOD(DrawIndexedPrimitive)(THIS_ D3DPRIMITIVETYPE,Int BaseVertexIndex,UINT MinVertexIndex,UINT NumVertices,UINT startIndex,UINT primCount) PURE;
	STDMETHOD(DrawPrimitiveUP)(THIS_ D3DPRIMITIVETYPE PrimitiveType,UINT PrimitiveCount,Const void* pVertexStreamZeroData,UINT VertexStreamZeroStride) PURE;
	STDMETHOD(DrawIndexedPrimitiveUP)(THIS_ D3DPRIMITIVETYPE PrimitiveType,UINT MinVertexIndex,UINT NumVertices,UINT PrimitiveCount,Const void* pIndexData,D3DFORMAT IndexDataFormat,Const void* pVertexStreamZeroData,UINT VertexStreamZeroStride) PURE;
	STDMETHOD(ProcessVertices)(THIS_ UINT SrcStartIndex,UINT DestIndex,UINT VertexCount,IDirect3DVertexBuffer9* pDestBuffer,IDirect3DVertexDeclaration9* pVertexDecl,DWORD Flags) PURE;
	STDMETHOD(CreateVertexDeclaration)(THIS_ Const D3DVERTEXELEMENT9* pVertexElements,IDirect3DVertexDeclaration9** ppDecl) PURE;
	STDMETHOD(SetVertexDeclaration)(THIS_ IDirect3DVertexDeclaration9* pDecl) PURE;
	STDMETHOD(GetVertexDeclaration)(THIS_ IDirect3DVertexDeclaration9** ppDecl) PURE;
	STDMETHOD(SetFVF)(THIS_ DWORD FVF) PURE;
	STDMETHOD(GetFVF)(THIS_ DWORD* pFVF) PURE;
	STDMETHOD(CreateVertexShader)(THIS_ Const DWORD* pFunction,IDirect3DVertexShader9** ppShader) PURE;
	STDMETHOD(SetVertexShader)(THIS_ IDirect3DVertexShader9* pShader) PURE;
	STDMETHOD(GetVertexShader)(THIS_ IDirect3DVertexShader9** ppShader) PURE;
	STDMETHOD(SetVertexShaderConstantF)(THIS_ UINT StartRegister,Const Float* pConstantData,UINT Vector4fCount) PURE;
	STDMETHOD(GetVertexShaderConstantF)(THIS_ UINT StartRegister,Float* pConstantData,UINT Vector4fCount) PURE;
	STDMETHOD(SetVertexShaderConstantI)(THIS_ UINT StartRegister,Const Int* pConstantData,UINT Vector4iCount) PURE;
	STDMETHOD(GetVertexShaderConstantI)(THIS_ UINT StartRegister,Int* pConstantData,UINT Vector4iCount) PURE;
	STDMETHOD(SetVertexShaderConstantB)(THIS_ UINT StartRegister,Const BOOL* pConstantData,UINT  BoolCount) PURE;
	STDMETHOD(GetVertexShaderConstantB)(THIS_ UINT StartRegister,BOOL* pConstantData,UINT BoolCount) PURE;
	STDMETHOD(SetStreamSource)(THIS_ UINT StreamNumber,IDirect3DVertexBuffer9* pStreamData,UINT OffsetInBytes,UINT Stride) PURE;
	STDMETHOD(GetStreamSource)(THIS_ UINT StreamNumber,IDirect3DVertexBuffer9** ppStreamData,UINT* OffsetInBytes,UINT* pStride) PURE;
	STDMETHOD(SetStreamSourceFreq)(THIS_ UINT StreamNumber,UINT Divider) PURE;
	STDMETHOD(GetStreamSourceFreq)(THIS_ UINT StreamNumber,UINT* Divider) PURE;
	STDMETHOD(SetIndices)(THIS_ IDirect3DIndexBuffer9* pIndexData) PURE;
	STDMETHOD(GetIndices)(THIS_ IDirect3DIndexBuffer9** ppIndexData) PURE;
	STDMETHOD(CreatePixelShader)(THIS_ Const DWORD* pFunction,IDirect3DPixelShader9** ppShader) PURE;
	STDMETHOD(SetPixelShader)(THIS_ IDirect3DPixelShader9* pShader) PURE;
	STDMETHOD(GetPixelShader)(THIS_ IDirect3DPixelShader9** ppShader) PURE;
	STDMETHOD(SetPixelShaderConstantF)(THIS_ UINT StartRegister,Const Float* pConstantData,UINT Vector4fCount) PURE;
	STDMETHOD(GetPixelShaderConstantF)(THIS_ UINT StartRegister,Float* pConstantData,UINT Vector4fCount) PURE;
	STDMETHOD(SetPixelShaderConstantI)(THIS_ UINT StartRegister,Const Int* pConstantData,UINT Vector4iCount) PURE;
	STDMETHOD(GetPixelShaderConstantI)(THIS_ UINT StartRegister,Int* pConstantData,UINT Vector4iCount) PURE;
	STDMETHOD(SetPixelShaderConstantB)(THIS_ UINT StartRegister,Const BOOL* pConstantData,UINT  BoolCount) PURE;
	STDMETHOD(GetPixelShaderConstantB)(THIS_ UINT StartRegister,BOOL* pConstantData,UINT BoolCount) PURE;
	STDMETHOD(DrawRectPatch)(THIS_ UINT Handle,Const Float* pNumSegs,Const D3DRECTPATCH_INFO* pRectPatchInfo) PURE;
	STDMETHOD(DrawTriPatch)(THIS_ UINT Handle,Const Float* pNumSegs,Const D3DTRIPATCH_INFO* pTriPatchInfo) PURE;
	STDMETHOD(DeletePatch)(THIS_ UINT Handle) PURE;
	STDMETHOD(CreateQuery)(THIS_ D3DQUERYTYPE Type,IDirect3DQuery9** ppQuery) PURE;
'End Rem
End Rem

End Interface

Interface IDirect3DSwapChain9 Extends IUnknown_

	Method Present:Int( pSourceRect:Byte Ptr,pDestRect:Byte Ptr,hDestWindowOverride:Byte Ptr,pDirtyRegion:Byte Ptr,Flags:Int )
	Method GetFrontBufferData:Int(pDestSurface:IDirect3DSurface9)
	Method GetBackBuffer:Int(iBackBuffer:Int, Type_:Int,ppBackBuffer:IDirect3DSurface9 Var)
	Method GetRasterStatus:Int(pRasterStatus:Byte Ptr)

Rem
	STDMETHOD(Present)(THIS_ Const RECT* pSourceRect,Const RECT* pDestRect,HWND hDestWindowOverride,Const RGNDATA* pDirtyRegion,DWORD dwFlags) PURE;
	STDMETHOD(GetFrontBufferData)(THIS_ IDirect3DSurface9* pDestSurface) PURE;
	STDMETHOD(GetBackBuffer)(THIS_ UINT iBackBuffer,D3DBACKBUFFER_TYPE Type,IDirect3DSurface9** ppBackBuffer) PURE;
	STDMETHOD(GetRasterStatus)(THIS_ D3DRASTER_STATUS* pRasterStatus) PURE;
	STDMETHOD(GetDisplayMode)(THIS_ D3DDISPLAYMODE* pMode) PURE;
	STDMETHOD(GetDevice)(THIS_ IDirect3DDevice9** ppDevice) PURE;
	STDMETHOD(GetPresentParameters)(THIS_ D3DPRESENT_PARAMETERS* pPresentationParameters) PURE;
End Rem

End Interface

Interface IDirect3DResource9 Extends IUnknown_

	Method GetDevice:Int( ppDevice:IDirect3DDevice9 Var )
	Method SetPrivateData:Int( refguid:Byte Ptr,pData:Byte Ptr,SizeOfData:Int,Flags:Int )
	Method GetPrivateData:Int( refguid:Byte Ptr,pData:Byte Ptr,pSizeOfData:Int Ptr )
	Method FreePrivateData:Int( refguid:Byte Ptr )
	Method SetPriority:Int( PriorityNew:Int )
	Method GetPriority:Int()
	Method PreLoad()
	Method GetType:Int()

Rem
	STDMETHOD(GetDevice)(THIS_ IDirect3DDevice9** ppDevice) PURE;
	STDMETHOD(SetPrivateData)(THIS_ REFGUID refguid,Const void* pData,DWORD SizeOfData,DWORD Flags) PURE;
	STDMETHOD(GetPrivateData)(THIS_ REFGUID refguid,void* pData,DWORD* pSizeOfData) PURE;
	STDMETHOD(FreePrivateData)(THIS_ REFGUID refguid) PURE;
	STDMETHOD_(DWORD, SetPriority)(THIS_ DWORD PriorityNew) PURE;
	STDMETHOD_(DWORD, GetPriority)(THIS) PURE;
	STDMETHOD_(void, PreLoad)(THIS) PURE;
	STDMETHOD_(D3DRESOURCETYPE, GetType)(THIS) PURE;
End Rem

End Interface
End Extern

Extern "win32"
Interface IDirect3DSurface9 Extends IDirect3dResource9

	Method GetContainer:Int( riid:Byte Ptr,ppContainer:Byte Ptr Var )
	Method GetDesc:Int( pDesc:D3DSURFACE_DESC Var )
	Method LockRect:Int( pLockedRect:Byte Ptr,pRect:Byte Ptr,Flags:Int )
	Method UnlockRect:Int()
	Method GetDC:Int( phdc:Byte Ptr Var )
	Method ReleaseDC:Int( hdc:Byte Ptr )

Rem
	STDMETHOD(GetContainer)(THIS_ REFIID riid,void** ppContainer) PURE;
	STDMETHOD(GetDesc)(THIS_ D3DSURFACE_DESC *pDesc) PURE;
	STDMETHOD(LockRect)(THIS_ D3DLOCKED_RECT* pLockedRect,Const RECT* pRect,DWORD Flags) PURE;
	STDMETHOD(UnlockRect)(THIS) PURE;
	STDMETHOD(GetDC)(THIS_ HDC *phdc) PURE;
	STDMETHOD(ReleaseDC)(THIS_ HDC hdc) PURE;
End Rem
 
End Interface

Interface IDirect3DVertexBuffer9 Extends IDirect3DResource9

	Method Lock:Int( OffsetToLock:Int,SizeToLock:Int,ppbData:Byte Ptr Var,Flags:Int )
	Method Unlock:Int()

Rem
	STDMETHOD(Lock)(THIS_ UINT OffsetToLock,UINT SizeToLock,void** ppbData,DWORD Flags) PURE;
	STDMETHOD(Unlock)(THIS) PURE;
	STDMETHOD(GetDesc)(THIS_ D3DVERTEXBUFFER_DESC *pDesc) PURE;
End Rem

End Interface

Interface IDirect3DIndexBuffer9 Extends IDirect3DResource9

	Method Lock:Int( OffsetToLock:Int,SizeToLock:Int,ppbData:Byte Ptr Var,Flags:Int )
	Method Unlock:Int()

Rem
	STDMETHOD(Lock)(THIS_ UINT OffsetToLock,UINT SizeToLock,void** ppbData,DWORD Flags) PURE;
	STDMETHOD(Unlock)(THIS) PURE;
	STDMETHOD(GetDesc)(THIS_ D3DINDEXBUFFER_DESC *pDesc) PURE;
End Rem

End Interface

Interface IDirect3DBaseTexture9 Extends IDirect3DResource9

	Method SetLOD:Int( LODNew:Int )
	Method GetLOD:Int()
	Method GetLevelCount:Int()
	Method SetAutoGenFilterType:Int( FilterType:Int )
	Method GetAutoGenFilterType:Int()
	Method GenerateMipSubLevels()

Rem
	STDMETHOD_(DWORD, SetLOD)(THIS_ DWORD LODNew) PURE;
	STDMETHOD_(DWORD, GetLOD)(THIS) PURE;
	STDMETHOD_(DWORD, GetLevelCount)(THIS) PURE;
	STDMETHOD(SetAutoGenFilterType)(THIS_ D3DTEXTUREFILTERTYPE FilterType) PURE;
	STDMETHOD_(D3DTEXTUREFILTERTYPE, GetAutoGenFilterType)(THIS) PURE;
	STDMETHOD_(void, GenerateMipSubLevels)(THIS) PURE;
End Rem

End Interface
End Extern

Extern "win32"
Interface IDirect3DTexture9 Extends IDirect3DBaseTexture9

	Method GetLevelDesc:Int( Level:Int,pDesc:Byte Ptr )
	Method GetSurfaceLevel:Int( Level:Int,ppSurfaceLevel:IDirect3DSurface9 Var)
	Method LockRect:Int( Level:Int,pLockedRect:Byte Ptr,pRect:Byte Ptr,Flags:Int )
	Method UnlockRect:Int( Level:Int )
	Method AddDirtyRect:Int( pDirtyRect:Byte Ptr )

Rem
	STDMETHOD(GetLevelDesc)(THIS_ UINT Level,D3DSURFACE_DESC *pDesc) PURE;
	STDMETHOD(GetSurfaceLevel)(THIS_ UINT Level,IDirect3DSurface9** ppSurfaceLevel) PURE;
	STDMETHOD(LockRect)(THIS_ UINT Level,D3DLOCKED_RECT* pLockedRect,Const RECT* pRect,DWORD Flags) PURE;
	STDMETHOD(UnlockRect)(THIS_ UINT Level) PURE;
	STDMETHOD(AddDirtyRect)(THIS_ Const RECT* pDirtyRect) PURE;
End Rem

End Interface

Interface IDirect3DCubeTexture9 Extends IDirect3DBaseTexture9

	Method GetLevelDesc:Int( Level:Int,pDesc:Byte Ptr )
	Method GetCubeMapSurface:Int( FaceType:Int,Level:Int,ppCubeMapSurface:IDirect3DSurface9 Var )
	Method LockRect:Int( FaceType:Int,Level:Int,pLockedRect:Byte Ptr,pRect:Byte Ptr,Flags:Int )
	Method UnlockRect:Int( FaceType:Int,Level:Int )
	Method AddDirtyRect:Int( FaceType:Int,pDirtyRect:Byte Ptr )

Rem
	STDMETHOD(GetLevelDesc)(THIS_ UINT Level,D3DSURFACE_DESC *pDesc) PURE;
	STDMETHOD(GetCubeMapSurface)(THIS_ D3DCUBEMAP_FACES FaceType,UINT Level,IDirect3DSurface9** ppCubeMapSurface) PURE;
	STDMETHOD(LockRect)(THIS_ D3DCUBEMAP_FACES FaceType,UINT Level,D3DLOCKED_RECT* pLockedRect,Const RECT* pRect,DWORD Flags) PURE;
	STDMETHOD(UnlockRect)(THIS_ D3DCUBEMAP_FACES FaceType,UINT Level) PURE;
	STDMETHOD(AddDirtyRect)(THIS_ D3DCUBEMAP_FACES FaceType,Const RECT* pDirtyRect) PURE;
End Rem

End Interface

Interface IDirect3DVolumeTexture9 Extends IDirect3DBaseTexture9

'	Method GetLevelDesc( Level,pDesc:Byte Ptr )
'	Method GetVolumeLevel( Level,ppVolumeLevel:IDirect3DVolume9 Var )
'	Method LockBox( Level,pLockedVolume:Byte Ptr,pBox:Byte Ptr,Flags )
'	Method UnlockBox( Level )
'	Method AddDirtyBox( pDirtyBox:Byte Ptr )
Rem
	STDMETHOD(GetLevelDesc)(THIS_ UINT Level,D3DVOLUME_DESC *pDesc) PURE;
	STDMETHOD(GetVolumeLevel)(THIS_ UINT Level,IDirect3DVolume9** ppVolumeLevel) PURE;
	STDMETHOD(LockBox)(THIS_ UINT Level,D3DLOCKED_BOX* pLockedVolume,Const D3DBOX* pBox,DWORD Flags) PURE;
	STDMETHOD(UnlockBox)(THIS_ UINT Level) PURE;
	STDMETHOD(AddDirtyBox)(THIS_ Const D3DBOX* pDirtyBox) PURE;
End Rem

End Interface
End Extern

'End Extern
Extern
	Function bmx_directx_d3d9_Direct3DCreate9:IDirect3D9(SDKVersion:Int)
End Extern

Function Direct3DCreate9:IDirect3D9(SDKVersion:Int)
	Local id:IDirect3D9 = bmx_directx_d3d9_Direct3DCreate9(SDKVersion)
	If id Then
		Return id
	End If
End Function

'Global _d3d9Lib:Byte Ptr=LoadLibraryW( "d3d9.dll" )

'If Not _d3d9Lib Return

'Global Direct3DCreate9:IDirect3D9( SDKVersion )"win32" = GetProcAddress( d3d9Lib,"Direct3DCreate9" )
