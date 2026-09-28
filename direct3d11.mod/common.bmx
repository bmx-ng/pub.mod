SuperStrict
Import Pub.DXGI

Struct D3D11_BUFFER_DESC
 Field ByteWidth:UInt
 Field Usage:Int
 Field BindFlags:UInt
 Field CPUAccessFlags:UInt
 Field MiscFlags:UInt
 Field StructureByteStride:UInt
End Struct

Struct D3D11_TEXTURE1D_DESC
 Field Width:UInt
 Field MipLevels:UInt
 Field ArraySize:UInt
 Field Format:Int
 Field Usage:Int
 Field BindFlags:UInt
 Field CPUAccessFlags:UInt
 Field MiscFlags:UInt
End Struct

Struct D3D11_TEXTURE2D_DESC
 Field Width:UInt
 Field Height:UInt
 Field MipLevels:UInt
 Field ArraySize:UInt
 Field Format:Int
 Field SampleDesc:DXGI_SAMPLE_DESC
 Field Usage:Int
 Field BindFlags:UInt
 Field CPUAccessFlags:UInt
 Field MiscFlags:UInt
End Struct

Struct D3D11_TEXTURE3D_DESC
 Field Width:UInt
 Field Height:UInt
 Field Depth:UInt
 Field MipLevels:UInt
 Field Format:Int
 Field Usage:Int
 Field BindFlags:UInt
 Field CPUAccessFlags:UInt
 Field MiscFlags:UInt
End Struct

Struct D3D11_SUBRESOURCE_DATA
 Field pSysMem:Byte Ptr
 Field SysMemPitch:UInt
 Field SysMemSlicePitch:UInt
End Struct

Struct D3D11_MAPPED_SUBRESOURCE
 Field pData:Byte Ptr
 Field RowPitch:UInt
 Field DepthPitch:UInt
End Struct

Struct D3D11_BOX
 Field left:UInt
 Field top:UInt
 Field front:UInt
 Field right:UInt
 Field bottom:UInt
 Field back:UInt
End Struct

Struct D3D11_VIEWPORT
 Field TopLeftX:Float
 Field TopLeftY:Float
 Field Width:Float
 Field Height:Float
 Field MinDepth:Float
 Field MaxDepth:Float
End Struct

Struct D3D11_INPUT_ELEMENT_DESC
 Field SemanticName:Byte Ptr
 Field SemanticIndex:UInt
 Field Format:Int
 Field InputSlot:UInt
 Field AlignedByteOffset:UInt
 Field InputSlotClass:Int
 Field InstanceDataStepRate:UInt
End Struct

Struct D3D11_SAMPLER_DESC
 Field Filter:Int
 Field AddressU:Int
 Field AddressV:Int
 Field AddressW:Int
 Field MipLODBias:Float
 Field MaxAnisotropy:UInt
 Field ComparisonFunc:Int
 Field StaticArray BorderColor:Float[4]
 Field MinLOD:Float
 Field MaxLOD:Float
End Struct

Struct D3D11_RENDER_TARGET_BLEND_DESC
 Field BlendEnable:Int
 Field SrcBlend:Int
 Field DestBlend:Int
 Field BlendOp:Int
 Field SrcBlendAlpha:Int
 Field DestBlendAlpha:Int
 Field BlendOpAlpha:Int
 Field RenderTargetWriteMask:Byte
End Struct

Struct D3D11_BLEND_DESC
 Field AlphaToCoverageEnable:Int
 Field IndependentBlendEnable:Int
 Field StaticArray RenderTarget:D3D11_RENDER_TARGET_BLEND_DESC[8]
End Struct

Struct D3D11_DEPTH_STENCILOP_DESC
 Field StencilFailOp:Int
 Field StencilDepthFailOp:Int
 Field StencilPassOp:Int
 Field StencilFunc:Int
End Struct

Struct D3D11_DEPTH_STENCIL_DESC
 Field DepthEnable:Int
 Field DepthWriteMask:Int
 Field DepthFunc:Int
 Field StencilEnable:Int
 Field StencilReadMask:Byte
 Field StencilWriteMask:Byte
 Field FrontFace:D3D11_DEPTH_STENCILOP_DESC
 Field BackFace:D3D11_DEPTH_STENCILOP_DESC
End Struct

Struct D3D11_RASTERIZER_DESC
 Field FillMode:Int
 Field CullMode:Int
 Field FrontCounterClockwise:Int
 Field DepthBias:Int
 Field DepthBiasClamp:Float
 Field SlopeScaledDepthBias:Float
 Field DepthClipEnable:Int
 Field ScissorEnable:Int
 Field MultisampleEnable:Int
 Field AntialiasedLineEnable:Int
End Struct

Struct D3D11_QUERY_DESC
 Field Query:Int
 Field MiscFlags:UInt
End Struct

Struct D3D11_COUNTER_DESC
 Field Counter:Int
 Field MiscFlags:UInt
End Struct

Struct D3D11_CLASS_INSTANCE_DESC
 Field InstanceId:UInt
 Field InstanceIndex:UInt
 Field TypeId:UInt
 Field ConstantBuffer:UInt
 Field BaseConstantBufferOffset:UInt
 Field BaseTexture:UInt
 Field BaseSampler:UInt
 Field Created:Int
End Struct
