SuperStrict
Import "common.bmx"

Extern "Win32"

Interface ID3D11DeviceChild Extends IUnknown_
	' void GetDevice(ID3D11Device **ppDevice)
	Method GetDevice(p_ppDevice:ID3D11Device Ptr)
	' HRESULT GetPrivateData(REFGUID guid, UINT *pDataSize, void *pData)
	Method GetPrivateData:Int(p_guid:Byte Ptr, p_pDataSize:UInt Ptr, p_pData:Byte Ptr)
	' HRESULT SetPrivateData(REFGUID guid, UINT DataSize, const void *pData)
	Method SetPrivateData:Int(p_guid:Byte Ptr, p_DataSize:UInt, p_pData:Byte Ptr)
	' HRESULT SetPrivateDataInterface(REFGUID guid, const IUnknown *pData)
	Method SetPrivateDataInterface:Int(p_guid:Byte Ptr, p_pData:IUnknown_)
End Interface

Interface ID3D11Asynchronous Extends ID3D11DeviceChild
	' UINT GetDataSize()
	Method GetDataSize:UInt()
End Interface

Interface ID3D11Query Extends ID3D11Asynchronous
	' void GetDesc(D3D11_QUERY_DESC *pDesc)
	Method GetDesc(p_pDesc:D3D11_QUERY_DESC Ptr)
End Interface

Interface ID3D11Resource Extends ID3D11DeviceChild
	' void GetType(D3D11_RESOURCE_DIMENSION *pResourceDimension)
	Method GetType(p_pResourceDimension:Int Ptr)
	' void SetEvictionPriority(UINT EvictionPriority)
	Method SetEvictionPriority(p_EvictionPriority:UInt)
	' UINT GetEvictionPriority()
	Method GetEvictionPriority:UInt()
End Interface

Interface ID3D11View Extends ID3D11DeviceChild
	' void GetResource(ID3D11Resource **ppResource)
	Method GetResource(p_ppResource:ID3D11Resource Ptr)
End Interface

Interface ID3D11BlendState Extends ID3D11DeviceChild
	' void GetDesc(D3D11_BLEND_DESC *pDesc)
	Method GetDesc(p_pDesc:D3D11_BLEND_DESC Ptr)
End Interface

Interface ID3D11Buffer Extends ID3D11Resource
	' void GetDesc(D3D11_BUFFER_DESC *pDesc)
	Method GetDesc(p_pDesc:D3D11_BUFFER_DESC Ptr)
End Interface

Interface ID3D11ClassInstance Extends ID3D11DeviceChild
	' void GetClassLinkage(ID3D11ClassLinkage **ppLinkage)
	Method GetClassLinkage(p_ppLinkage:ID3D11ClassLinkage Ptr)
	' void GetDesc(D3D11_CLASS_INSTANCE_DESC *pDesc)
	Method GetDesc(p_pDesc:D3D11_CLASS_INSTANCE_DESC Ptr)
	' void GetInstanceName(LPSTR pInstanceName, SIZE_T *pBufferLength)
	Method GetInstanceName(p_pInstanceName:Byte Ptr, p_pBufferLength:Size_T Ptr)
	' void GetTypeName(LPSTR pTypeName, SIZE_T *pBufferLength)
	Method GetTypeName(p_pTypeName:Byte Ptr, p_pBufferLength:Size_T Ptr)
End Interface

Interface ID3D11ClassLinkage Extends ID3D11DeviceChild
	' HRESULT GetClassInstance(LPCSTR pClassInstanceName, UINT InstanceIndex, ID3D11ClassInstance **ppInstance)
	Method GetClassInstance:Int(p_pClassInstanceName:Byte Ptr, p_InstanceIndex:UInt, p_ppInstance:ID3D11ClassInstance Ptr)
	' HRESULT CreateClassInstance(LPCSTR pClassTypeName, UINT ConstantBufferOffset, UINT ConstantVectorOffset, UINT TextureOffset, UINT SamplerOffset, ID3D11ClassInstance **ppInstance)
	Method CreateClassInstance:Int(p_pClassTypeName:Byte Ptr, p_ConstantBufferOffset:UInt, p_ConstantVectorOffset:UInt, p_TextureOffset:UInt, p_SamplerOffset:UInt, p_ppInstance:ID3D11ClassInstance Ptr)
End Interface

Interface ID3D11CommandList Extends ID3D11DeviceChild
	' UINT GetContextFlags()
	Method GetContextFlags:UInt()
End Interface

Interface ID3D11ComputeShader Extends ID3D11DeviceChild
End Interface

Interface ID3D11Counter Extends ID3D11Asynchronous
	' void GetDesc(D3D11_COUNTER_DESC *pDesc)
	Method GetDesc(p_pDesc:D3D11_COUNTER_DESC Ptr)
End Interface

Interface ID3D11DepthStencilState Extends ID3D11DeviceChild
	' void GetDesc(D3D11_DEPTH_STENCIL_DESC *pDesc)
	Method GetDesc(p_pDesc:D3D11_DEPTH_STENCIL_DESC Ptr)
End Interface

Interface ID3D11DepthStencilView Extends ID3D11View
	' void GetDesc(D3D11_DEPTH_STENCIL_VIEW_DESC *pDesc)
	Method GetDesc(p_pDesc:Byte Ptr)
End Interface

Interface ID3D11DomainShader Extends ID3D11DeviceChild
End Interface

Interface ID3D11GeometryShader Extends ID3D11DeviceChild
End Interface

Interface ID3D11HullShader Extends ID3D11DeviceChild
End Interface

Interface ID3D11InputLayout Extends ID3D11DeviceChild
End Interface

Interface ID3D11PixelShader Extends ID3D11DeviceChild
End Interface

Interface ID3D11Predicate Extends ID3D11Query
End Interface

Interface ID3D11RasterizerState Extends ID3D11DeviceChild
	' void GetDesc(D3D11_RASTERIZER_DESC *pDesc)
	Method GetDesc(p_pDesc:D3D11_RASTERIZER_DESC Ptr)
End Interface

Interface ID3D11RenderTargetView Extends ID3D11View
	' void GetDesc(D3D11_RENDER_TARGET_VIEW_DESC *pDesc)
	Method GetDesc(p_pDesc:Byte Ptr)
End Interface

Interface ID3D11SamplerState Extends ID3D11DeviceChild
	' void GetDesc(D3D11_SAMPLER_DESC *pDesc)
	Method GetDesc(p_pDesc:D3D11_SAMPLER_DESC Ptr)
End Interface

Interface ID3D11ShaderResourceView Extends ID3D11View
	' void GetDesc(D3D11_SHADER_RESOURCE_VIEW_DESC *pDesc)
	Method GetDesc(p_pDesc:Byte Ptr)
End Interface

Interface ID3D11Texture1D Extends ID3D11Resource
	' void GetDesc(D3D11_TEXTURE1D_DESC *pDesc)
	Method GetDesc(p_pDesc:D3D11_TEXTURE1D_DESC Ptr)
End Interface

Interface ID3D11Texture2D Extends ID3D11Resource
	' void GetDesc(D3D11_TEXTURE2D_DESC *pDesc)
	Method GetDesc(p_pDesc:D3D11_TEXTURE2D_DESC Ptr)
End Interface

Interface ID3D11Texture3D Extends ID3D11Resource
	' void GetDesc(D3D11_TEXTURE3D_DESC *pDesc)
	Method GetDesc(p_pDesc:D3D11_TEXTURE3D_DESC Ptr)
End Interface

Interface ID3D11UnorderedAccessView Extends ID3D11View
	' void GetDesc(D3D11_UNORDERED_ACCESS_VIEW_DESC *pDesc)
	Method GetDesc(p_pDesc:Byte Ptr)
End Interface

Interface ID3D11VertexShader Extends ID3D11DeviceChild
End Interface

Interface ID3D11DeviceContext Extends ID3D11DeviceChild
	' void VSSetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D11Buffer *const *ppConstantBuffers)
	Method VSSetConstantBuffers(p_StartSlot:UInt, p_NumBuffers:UInt, p_ppConstantBuffers:ID3D11Buffer Ptr)
	' void PSSetShaderResources(UINT StartSlot, UINT NumViews, ID3D11ShaderResourceView *const *ppShaderResourceViews)
	Method PSSetShaderResources(p_StartSlot:UInt, p_NumViews:UInt, p_ppShaderResourceViews:ID3D11ShaderResourceView Ptr)
	' void PSSetShader(ID3D11PixelShader *pPixelShader, ID3D11ClassInstance *const *ppClassInstances, UINT NumClassInstances)
	Method PSSetShader(p_pPixelShader:ID3D11PixelShader, p_ppClassInstances:ID3D11ClassInstance Ptr, p_NumClassInstances:UInt)
	' void PSSetSamplers(UINT StartSlot, UINT NumSamplers, ID3D11SamplerState *const *ppSamplers)
	Method PSSetSamplers(p_StartSlot:UInt, p_NumSamplers:UInt, p_ppSamplers:ID3D11SamplerState Ptr)
	' void VSSetShader(ID3D11VertexShader *pVertexShader, ID3D11ClassInstance *const *ppClassInstances, UINT NumClassInstances)
	Method VSSetShader(p_pVertexShader:ID3D11VertexShader, p_ppClassInstances:ID3D11ClassInstance Ptr, p_NumClassInstances:UInt)
	' void DrawIndexed(UINT IndexCount, UINT StartIndexLocation, INT BaseVertexLocation)
	Method DrawIndexed(p_IndexCount:UInt, p_StartIndexLocation:UInt, p_BaseVertexLocation:Int)
	' void Draw(UINT VertexCount, UINT StartVertexLocation)
	Method Draw(p_VertexCount:UInt, p_StartVertexLocation:UInt)
	' HRESULT Map(ID3D11Resource *pResource, UINT Subresource, D3D11_MAP MapType, UINT MapFlags, D3D11_MAPPED_SUBRESOURCE *pMappedResource)
	Method Map:Int(p_pResource:ID3D11Resource, p_Subresource:UInt, p_MapType:Int, p_MapFlags:UInt, p_pMappedResource:D3D11_MAPPED_SUBRESOURCE Ptr)
	' void Unmap(ID3D11Resource *pResource, UINT Subresource)
	Method Unmap(p_pResource:ID3D11Resource, p_Subresource:UInt)
	' void PSSetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D11Buffer *const *ppConstantBuffers)
	Method PSSetConstantBuffers(p_StartSlot:UInt, p_NumBuffers:UInt, p_ppConstantBuffers:ID3D11Buffer Ptr)
	' void IASetInputLayout(ID3D11InputLayout *pInputLayout)
	Method IASetInputLayout(p_pInputLayout:ID3D11InputLayout)
	' void IASetVertexBuffers(UINT StartSlot, UINT NumBuffers, ID3D11Buffer *const *ppVertexBuffers, const UINT *pStrides, const UINT *pOffsets)
	Method IASetVertexBuffers(p_StartSlot:UInt, p_NumBuffers:UInt, p_ppVertexBuffers:ID3D11Buffer Ptr, p_pStrides:UInt Ptr, p_pOffsets:UInt Ptr)
	' void IASetIndexBuffer(ID3D11Buffer *pIndexBuffer, DXGI_FORMAT Format, UINT Offset)
	Method IASetIndexBuffer(p_pIndexBuffer:ID3D11Buffer, p_Format:Int, p_Offset:UInt)
	' void DrawIndexedInstanced(UINT IndexCountPerInstance, UINT InstanceCount, UINT StartIndexLocation, INT BaseVertexLocation, UINT StartInstanceLocation)
	Method DrawIndexedInstanced(p_IndexCountPerInstance:UInt, p_InstanceCount:UInt, p_StartIndexLocation:UInt, p_BaseVertexLocation:Int, p_StartInstanceLocation:UInt)
	' void DrawInstanced(UINT VertexCountPerInstance, UINT InstanceCount, UINT StartVertexLocation, UINT StartInstanceLocation)
	Method DrawInstanced(p_VertexCountPerInstance:UInt, p_InstanceCount:UInt, p_StartVertexLocation:UInt, p_StartInstanceLocation:UInt)
	' void GSSetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D11Buffer *const *ppConstantBuffers)
	Method GSSetConstantBuffers(p_StartSlot:UInt, p_NumBuffers:UInt, p_ppConstantBuffers:ID3D11Buffer Ptr)
	' void GSSetShader(ID3D11GeometryShader *pShader, ID3D11ClassInstance *const *ppClassInstances, UINT NumClassInstances)
	Method GSSetShader(p_pShader:ID3D11GeometryShader, p_ppClassInstances:ID3D11ClassInstance Ptr, p_NumClassInstances:UInt)
	' void IASetPrimitiveTopology(D3D11_PRIMITIVE_TOPOLOGY Topology)
	Method IASetPrimitiveTopology(p_Topology:Int)
	' void VSSetShaderResources(UINT StartSlot, UINT NumViews, ID3D11ShaderResourceView *const *ppShaderResourceViews)
	Method VSSetShaderResources(p_StartSlot:UInt, p_NumViews:UInt, p_ppShaderResourceViews:ID3D11ShaderResourceView Ptr)
	' void VSSetSamplers(UINT StartSlot, UINT NumSamplers, ID3D11SamplerState *const *ppSamplers)
	Method VSSetSamplers(p_StartSlot:UInt, p_NumSamplers:UInt, p_ppSamplers:ID3D11SamplerState Ptr)
	' void Begin(ID3D11Asynchronous *pAsync)
	Method Begin(p_pAsync:ID3D11Asynchronous)
	' void End(ID3D11Asynchronous *pAsync)
	Method End_(p_pAsync:ID3D11Asynchronous)="End"
	' HRESULT GetData(ID3D11Asynchronous *pAsync, void *pData, UINT DataSize, UINT GetDataFlags)
	Method GetData:Int(p_pAsync:ID3D11Asynchronous, p_pData:Byte Ptr, p_DataSize:UInt, p_GetDataFlags:UInt)
	' void SetPredication(ID3D11Predicate *pPredicate, WINBOOL PredicateValue)
	Method SetPredication(p_pPredicate:ID3D11Predicate, p_PredicateValue:Int)
	' void GSSetShaderResources(UINT StartSlot, UINT NumViews, ID3D11ShaderResourceView *const *ppShaderResourceViews)
	Method GSSetShaderResources(p_StartSlot:UInt, p_NumViews:UInt, p_ppShaderResourceViews:ID3D11ShaderResourceView Ptr)
	' void GSSetSamplers(UINT StartSlot, UINT NumSamplers, ID3D11SamplerState *const *ppSamplers)
	Method GSSetSamplers(p_StartSlot:UInt, p_NumSamplers:UInt, p_ppSamplers:ID3D11SamplerState Ptr)
	' void OMSetRenderTargets(UINT NumViews, ID3D11RenderTargetView *const *ppRenderTargetViews, ID3D11DepthStencilView *pDepthStencilView)
	Method OMSetRenderTargets(p_NumViews:UInt, p_ppRenderTargetViews:ID3D11RenderTargetView Ptr, p_pDepthStencilView:ID3D11DepthStencilView)
	' void OMSetRenderTargetsAndUnorderedAccessViews(UINT NumRTVs, ID3D11RenderTargetView *const *ppRenderTargetViews, ID3D11DepthStencilView *pDepthStencilView, UINT UAVStartSlot, UINT NumUAVs, ID3D11UnorderedAccessView *const *ppUnorderedAccessViews, const UINT *pUAVInitialCounts)
	Method OMSetRenderTargetsAndUnorderedAccessViews(p_NumRTVs:UInt, p_ppRenderTargetViews:ID3D11RenderTargetView Ptr, p_pDepthStencilView:ID3D11DepthStencilView, p_UAVStartSlot:UInt, p_NumUAVs:UInt, p_ppUnorderedAccessViews:ID3D11UnorderedAccessView Ptr, p_pUAVInitialCounts:UInt Ptr)
	' void OMSetBlendState(ID3D11BlendState *pBlendState, const FLOAT BlendFactor[4], UINT SampleMask)
	Method OMSetBlendState(p_pBlendState:ID3D11BlendState, p_BlendFactor:Float Ptr, p_SampleMask:UInt)
	' void OMSetDepthStencilState(ID3D11DepthStencilState *pDepthStencilState, UINT StencilRef)
	Method OMSetDepthStencilState(p_pDepthStencilState:ID3D11DepthStencilState, p_StencilRef:UInt)
	' void SOSetTargets(UINT NumBuffers, ID3D11Buffer *const *ppSOTargets, const UINT *pOffsets)
	Method SOSetTargets(p_NumBuffers:UInt, p_ppSOTargets:ID3D11Buffer Ptr, p_pOffsets:UInt Ptr)
	' void DrawAuto()
	Method DrawAuto()
	' void DrawIndexedInstancedIndirect(ID3D11Buffer *pBufferForArgs, UINT AlignedByteOffsetForArgs)
	Method DrawIndexedInstancedIndirect(p_pBufferForArgs:ID3D11Buffer, p_AlignedByteOffsetForArgs:UInt)
	' void DrawInstancedIndirect(ID3D11Buffer *pBufferForArgs, UINT AlignedByteOffsetForArgs)
	Method DrawInstancedIndirect(p_pBufferForArgs:ID3D11Buffer, p_AlignedByteOffsetForArgs:UInt)
	' void Dispatch(UINT ThreadGroupCountX, UINT ThreadGroupCountY, UINT ThreadGroupCountZ)
	Method Dispatch(p_ThreadGroupCountX:UInt, p_ThreadGroupCountY:UInt, p_ThreadGroupCountZ:UInt)
	' void DispatchIndirect(ID3D11Buffer *pBufferForArgs, UINT AlignedByteOffsetForArgs)
	Method DispatchIndirect(p_pBufferForArgs:ID3D11Buffer, p_AlignedByteOffsetForArgs:UInt)
	' void RSSetState(ID3D11RasterizerState *pRasterizerState)
	Method RSSetState(p_pRasterizerState:ID3D11RasterizerState)
	' void RSSetViewports(UINT NumViewports, const D3D11_VIEWPORT *pViewports)
	Method RSSetViewports(p_NumViewports:UInt, p_pViewports:D3D11_VIEWPORT Ptr)
	' void RSSetScissorRects(UINT NumRects, const D3D11_RECT *pRects)
	Method RSSetScissorRects(p_NumRects:UInt, p_pRects:DXGI_RECT Ptr)
	' void CopySubresourceRegion(ID3D11Resource *pDstResource, UINT DstSubresource, UINT DstX, UINT DstY, UINT DstZ, ID3D11Resource *pSrcResource, UINT SrcSubresource, const D3D11_BOX *pSrcBox)
	Method CopySubresourceRegion(p_pDstResource:ID3D11Resource, p_DstSubresource:UInt, p_DstX:UInt, p_DstY:UInt, p_DstZ:UInt, p_pSrcResource:ID3D11Resource, p_SrcSubresource:UInt, p_pSrcBox:D3D11_BOX Ptr)
	' void CopyResource(ID3D11Resource *pDstResource, ID3D11Resource *pSrcResource)
	Method CopyResource(p_pDstResource:ID3D11Resource, p_pSrcResource:ID3D11Resource)
	' void UpdateSubresource(ID3D11Resource *pDstResource, UINT DstSubresource, const D3D11_BOX *pDstBox, const void *pSrcData, UINT SrcRowPitch, UINT SrcDepthPitch)
	Method UpdateSubresource(p_pDstResource:ID3D11Resource, p_DstSubresource:UInt, p_pDstBox:D3D11_BOX Ptr, p_pSrcData:Byte Ptr, p_SrcRowPitch:UInt, p_SrcDepthPitch:UInt)
	' void CopyStructureCount(ID3D11Buffer *pDstBuffer, UINT DstAlignedByteOffset, ID3D11UnorderedAccessView *pSrcView)
	Method CopyStructureCount(p_pDstBuffer:ID3D11Buffer, p_DstAlignedByteOffset:UInt, p_pSrcView:ID3D11UnorderedAccessView)
	' void ClearRenderTargetView(ID3D11RenderTargetView *pRenderTargetView, const FLOAT ColorRGBA[4])
	Method ClearRenderTargetView(p_pRenderTargetView:ID3D11RenderTargetView, p_ColorRGBA:Float Ptr)
	' void ClearUnorderedAccessViewUint(ID3D11UnorderedAccessView *pUnorderedAccessView, const UINT Values[4])
	Method ClearUnorderedAccessViewUint(p_pUnorderedAccessView:ID3D11UnorderedAccessView, p_Values:UInt Ptr)
	' void ClearUnorderedAccessViewFloat(ID3D11UnorderedAccessView *pUnorderedAccessView, const FLOAT Values[4])
	Method ClearUnorderedAccessViewFloat(p_pUnorderedAccessView:ID3D11UnorderedAccessView, p_Values:Float Ptr)
	' void ClearDepthStencilView(ID3D11DepthStencilView *pDepthStencilView, UINT ClearFlags, FLOAT Depth, UINT8 Stencil)
	Method ClearDepthStencilView(p_pDepthStencilView:ID3D11DepthStencilView, p_ClearFlags:UInt, p_Depth:Float, p_Stencil:Byte)
	' void GenerateMips(ID3D11ShaderResourceView *pShaderResourceView)
	Method GenerateMips(p_pShaderResourceView:ID3D11ShaderResourceView)
	' void SetResourceMinLOD(ID3D11Resource *pResource, FLOAT MinLOD)
	Method SetResourceMinLOD(p_pResource:ID3D11Resource, p_MinLOD:Float)
	' FLOAT GetResourceMinLOD(ID3D11Resource *pResource)
	Method GetResourceMinLOD:Float(p_pResource:ID3D11Resource)
	' void ResolveSubresource(ID3D11Resource *pDstResource, UINT DstSubresource, ID3D11Resource *pSrcResource, UINT SrcSubresource, DXGI_FORMAT Format)
	Method ResolveSubresource(p_pDstResource:ID3D11Resource, p_DstSubresource:UInt, p_pSrcResource:ID3D11Resource, p_SrcSubresource:UInt, p_Format:Int)
	' void ExecuteCommandList(ID3D11CommandList *pCommandList, WINBOOL RestoreContextState)
	Method ExecuteCommandList(p_pCommandList:ID3D11CommandList, p_RestoreContextState:Int)
	' void HSSetShaderResources(UINT StartSlot, UINT NumViews, ID3D11ShaderResourceView *const *ppShaderResourceViews)
	Method HSSetShaderResources(p_StartSlot:UInt, p_NumViews:UInt, p_ppShaderResourceViews:ID3D11ShaderResourceView Ptr)
	' void HSSetShader(ID3D11HullShader *pHullShader, ID3D11ClassInstance *const *ppClassInstances, UINT NumClassInstances)
	Method HSSetShader(p_pHullShader:ID3D11HullShader, p_ppClassInstances:ID3D11ClassInstance Ptr, p_NumClassInstances:UInt)
	' void HSSetSamplers(UINT StartSlot, UINT NumSamplers, ID3D11SamplerState *const *ppSamplers)
	Method HSSetSamplers(p_StartSlot:UInt, p_NumSamplers:UInt, p_ppSamplers:ID3D11SamplerState Ptr)
	' void HSSetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D11Buffer *const *ppConstantBuffers)
	Method HSSetConstantBuffers(p_StartSlot:UInt, p_NumBuffers:UInt, p_ppConstantBuffers:ID3D11Buffer Ptr)
	' void DSSetShaderResources(UINT StartSlot, UINT NumViews, ID3D11ShaderResourceView *const *ppShaderResourceViews)
	Method DSSetShaderResources(p_StartSlot:UInt, p_NumViews:UInt, p_ppShaderResourceViews:ID3D11ShaderResourceView Ptr)
	' void DSSetShader(ID3D11DomainShader *pDomainShader, ID3D11ClassInstance *const *ppClassInstances, UINT NumClassInstances)
	Method DSSetShader(p_pDomainShader:ID3D11DomainShader, p_ppClassInstances:ID3D11ClassInstance Ptr, p_NumClassInstances:UInt)
	' void DSSetSamplers(UINT StartSlot, UINT NumSamplers, ID3D11SamplerState *const *ppSamplers)
	Method DSSetSamplers(p_StartSlot:UInt, p_NumSamplers:UInt, p_ppSamplers:ID3D11SamplerState Ptr)
	' void DSSetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D11Buffer *const *ppConstantBuffers)
	Method DSSetConstantBuffers(p_StartSlot:UInt, p_NumBuffers:UInt, p_ppConstantBuffers:ID3D11Buffer Ptr)
	' void CSSetShaderResources(UINT StartSlot, UINT NumViews, ID3D11ShaderResourceView *const *ppShaderResourceViews)
	Method CSSetShaderResources(p_StartSlot:UInt, p_NumViews:UInt, p_ppShaderResourceViews:ID3D11ShaderResourceView Ptr)
	' void CSSetUnorderedAccessViews(UINT StartSlot, UINT NumUAVs, ID3D11UnorderedAccessView *const *ppUnorderedAccessViews, const UINT *pUAVInitialCounts)
	Method CSSetUnorderedAccessViews(p_StartSlot:UInt, p_NumUAVs:UInt, p_ppUnorderedAccessViews:ID3D11UnorderedAccessView Ptr, p_pUAVInitialCounts:UInt Ptr)
	' void CSSetShader(ID3D11ComputeShader *pComputeShader, ID3D11ClassInstance *const *ppClassInstances, UINT NumClassInstances)
	Method CSSetShader(p_pComputeShader:ID3D11ComputeShader, p_ppClassInstances:ID3D11ClassInstance Ptr, p_NumClassInstances:UInt)
	' void CSSetSamplers(UINT StartSlot, UINT NumSamplers, ID3D11SamplerState *const *ppSamplers)
	Method CSSetSamplers(p_StartSlot:UInt, p_NumSamplers:UInt, p_ppSamplers:ID3D11SamplerState Ptr)
	' void CSSetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D11Buffer *const *ppConstantBuffers)
	Method CSSetConstantBuffers(p_StartSlot:UInt, p_NumBuffers:UInt, p_ppConstantBuffers:ID3D11Buffer Ptr)
	' void VSGetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D11Buffer **ppConstantBuffers)
	Method VSGetConstantBuffers(p_StartSlot:UInt, p_NumBuffers:UInt, p_ppConstantBuffers:ID3D11Buffer Ptr)
	' void PSGetShaderResources(UINT StartSlot, UINT NumViews, ID3D11ShaderResourceView **ppShaderResourceViews)
	Method PSGetShaderResources(p_StartSlot:UInt, p_NumViews:UInt, p_ppShaderResourceViews:ID3D11ShaderResourceView Ptr)
	' void PSGetShader(ID3D11PixelShader **ppPixelShader, ID3D11ClassInstance **ppClassInstances, UINT *pNumClassInstances)
	Method PSGetShader(p_ppPixelShader:ID3D11PixelShader Ptr, p_ppClassInstances:ID3D11ClassInstance Ptr, p_pNumClassInstances:UInt Ptr)
	' void PSGetSamplers(UINT StartSlot, UINT NumSamplers, ID3D11SamplerState **ppSamplers)
	Method PSGetSamplers(p_StartSlot:UInt, p_NumSamplers:UInt, p_ppSamplers:ID3D11SamplerState Ptr)
	' void VSGetShader(ID3D11VertexShader **ppVertexShader, ID3D11ClassInstance **ppClassInstances, UINT *pNumClassInstances)
	Method VSGetShader(p_ppVertexShader:ID3D11VertexShader Ptr, p_ppClassInstances:ID3D11ClassInstance Ptr, p_pNumClassInstances:UInt Ptr)
	' void PSGetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D11Buffer **ppConstantBuffers)
	Method PSGetConstantBuffers(p_StartSlot:UInt, p_NumBuffers:UInt, p_ppConstantBuffers:ID3D11Buffer Ptr)
	' void IAGetInputLayout(ID3D11InputLayout **ppInputLayout)
	Method IAGetInputLayout(p_ppInputLayout:ID3D11InputLayout Ptr)
	' void IAGetVertexBuffers(UINT StartSlot, UINT NumBuffers, ID3D11Buffer **ppVertexBuffers, UINT *pStrides, UINT *pOffsets)
	Method IAGetVertexBuffers(p_StartSlot:UInt, p_NumBuffers:UInt, p_ppVertexBuffers:ID3D11Buffer Ptr, p_pStrides:UInt Ptr, p_pOffsets:UInt Ptr)
	' void IAGetIndexBuffer(ID3D11Buffer **pIndexBuffer, DXGI_FORMAT *Format, UINT *Offset)
	Method IAGetIndexBuffer(p_pIndexBuffer:ID3D11Buffer Ptr, p_Format:Int Ptr, p_Offset:UInt Ptr)
	' void GSGetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D11Buffer **ppConstantBuffers)
	Method GSGetConstantBuffers(p_StartSlot:UInt, p_NumBuffers:UInt, p_ppConstantBuffers:ID3D11Buffer Ptr)
	' void GSGetShader(ID3D11GeometryShader **ppGeometryShader, ID3D11ClassInstance **ppClassInstances, UINT *pNumClassInstances)
	Method GSGetShader(p_ppGeometryShader:ID3D11GeometryShader Ptr, p_ppClassInstances:ID3D11ClassInstance Ptr, p_pNumClassInstances:UInt Ptr)
	' void IAGetPrimitiveTopology(D3D11_PRIMITIVE_TOPOLOGY *pTopology)
	Method IAGetPrimitiveTopology(p_pTopology:Int Ptr)
	' void VSGetShaderResources(UINT StartSlot, UINT NumViews, ID3D11ShaderResourceView **ppShaderResourceViews)
	Method VSGetShaderResources(p_StartSlot:UInt, p_NumViews:UInt, p_ppShaderResourceViews:ID3D11ShaderResourceView Ptr)
	' void VSGetSamplers(UINT StartSlot, UINT NumSamplers, ID3D11SamplerState **ppSamplers)
	Method VSGetSamplers(p_StartSlot:UInt, p_NumSamplers:UInt, p_ppSamplers:ID3D11SamplerState Ptr)
	' void GetPredication(ID3D11Predicate **ppPredicate, WINBOOL *pPredicateValue)
	Method GetPredication(p_ppPredicate:ID3D11Predicate Ptr, p_pPredicateValue:Int Ptr)
	' void GSGetShaderResources(UINT StartSlot, UINT NumViews, ID3D11ShaderResourceView **ppShaderResourceViews)
	Method GSGetShaderResources(p_StartSlot:UInt, p_NumViews:UInt, p_ppShaderResourceViews:ID3D11ShaderResourceView Ptr)
	' void GSGetSamplers(UINT StartSlot, UINT NumSamplers, ID3D11SamplerState **ppSamplers)
	Method GSGetSamplers(p_StartSlot:UInt, p_NumSamplers:UInt, p_ppSamplers:ID3D11SamplerState Ptr)
	' void OMGetRenderTargets(UINT NumViews, ID3D11RenderTargetView **ppRenderTargetViews, ID3D11DepthStencilView **ppDepthStencilView)
	Method OMGetRenderTargets(p_NumViews:UInt, p_ppRenderTargetViews:ID3D11RenderTargetView Ptr, p_ppDepthStencilView:ID3D11DepthStencilView Ptr)
	' void OMGetRenderTargetsAndUnorderedAccessViews(UINT NumRTVs, ID3D11RenderTargetView **ppRenderTargetViews, ID3D11DepthStencilView **ppDepthStencilView, UINT UAVStartSlot, UINT NumUAVs, ID3D11UnorderedAccessView **ppUnorderedAccessViews)
	Method OMGetRenderTargetsAndUnorderedAccessViews(p_NumRTVs:UInt, p_ppRenderTargetViews:ID3D11RenderTargetView Ptr, p_ppDepthStencilView:ID3D11DepthStencilView Ptr, p_UAVStartSlot:UInt, p_NumUAVs:UInt, p_ppUnorderedAccessViews:ID3D11UnorderedAccessView Ptr)
	' void OMGetBlendState(ID3D11BlendState **ppBlendState, FLOAT BlendFactor[4], UINT *pSampleMask)
	Method OMGetBlendState(p_ppBlendState:ID3D11BlendState Ptr, p_BlendFactor:Float Ptr, p_pSampleMask:UInt Ptr)
	' void OMGetDepthStencilState(ID3D11DepthStencilState **ppDepthStencilState, UINT *pStencilRef)
	Method OMGetDepthStencilState(p_ppDepthStencilState:ID3D11DepthStencilState Ptr, p_pStencilRef:UInt Ptr)
	' void SOGetTargets(UINT NumBuffers, ID3D11Buffer **ppSOTargets)
	Method SOGetTargets(p_NumBuffers:UInt, p_ppSOTargets:ID3D11Buffer Ptr)
	' void RSGetState(ID3D11RasterizerState **ppRasterizerState)
	Method RSGetState(p_ppRasterizerState:ID3D11RasterizerState Ptr)
	' void RSGetViewports(UINT *pNumViewports, D3D11_VIEWPORT *pViewports)
	Method RSGetViewports(p_pNumViewports:UInt Ptr, p_pViewports:D3D11_VIEWPORT Ptr)
	' void RSGetScissorRects(UINT *pNumRects, D3D11_RECT *pRects)
	Method RSGetScissorRects(p_pNumRects:UInt Ptr, p_pRects:DXGI_RECT Ptr)
	' void HSGetShaderResources(UINT StartSlot, UINT NumViews, ID3D11ShaderResourceView **ppShaderResourceViews)
	Method HSGetShaderResources(p_StartSlot:UInt, p_NumViews:UInt, p_ppShaderResourceViews:ID3D11ShaderResourceView Ptr)
	' void HSGetShader(ID3D11HullShader **ppHullShader, ID3D11ClassInstance **ppClassInstances, UINT *pNumClassInstances)
	Method HSGetShader(p_ppHullShader:ID3D11HullShader Ptr, p_ppClassInstances:ID3D11ClassInstance Ptr, p_pNumClassInstances:UInt Ptr)
	' void HSGetSamplers(UINT StartSlot, UINT NumSamplers, ID3D11SamplerState **ppSamplers)
	Method HSGetSamplers(p_StartSlot:UInt, p_NumSamplers:UInt, p_ppSamplers:ID3D11SamplerState Ptr)
	' void HSGetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D11Buffer **ppConstantBuffers)
	Method HSGetConstantBuffers(p_StartSlot:UInt, p_NumBuffers:UInt, p_ppConstantBuffers:ID3D11Buffer Ptr)
	' void DSGetShaderResources(UINT StartSlot, UINT NumViews, ID3D11ShaderResourceView **ppShaderResourceViews)
	Method DSGetShaderResources(p_StartSlot:UInt, p_NumViews:UInt, p_ppShaderResourceViews:ID3D11ShaderResourceView Ptr)
	' void DSGetShader(ID3D11DomainShader **ppDomainShader, ID3D11ClassInstance **ppClassInstances, UINT *pNumClassInstances)
	Method DSGetShader(p_ppDomainShader:ID3D11DomainShader Ptr, p_ppClassInstances:ID3D11ClassInstance Ptr, p_pNumClassInstances:UInt Ptr)
	' void DSGetSamplers(UINT StartSlot, UINT NumSamplers, ID3D11SamplerState **ppSamplers)
	Method DSGetSamplers(p_StartSlot:UInt, p_NumSamplers:UInt, p_ppSamplers:ID3D11SamplerState Ptr)
	' void DSGetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D11Buffer **ppConstantBuffers)
	Method DSGetConstantBuffers(p_StartSlot:UInt, p_NumBuffers:UInt, p_ppConstantBuffers:ID3D11Buffer Ptr)
	' void CSGetShaderResources(UINT StartSlot, UINT NumViews, ID3D11ShaderResourceView **ppShaderResourceViews)
	Method CSGetShaderResources(p_StartSlot:UInt, p_NumViews:UInt, p_ppShaderResourceViews:ID3D11ShaderResourceView Ptr)
	' void CSGetUnorderedAccessViews(UINT StartSlot, UINT NumUAVs, ID3D11UnorderedAccessView **ppUnorderedAccessViews)
	Method CSGetUnorderedAccessViews(p_StartSlot:UInt, p_NumUAVs:UInt, p_ppUnorderedAccessViews:ID3D11UnorderedAccessView Ptr)
	' void CSGetShader(ID3D11ComputeShader **ppComputeShader, ID3D11ClassInstance **ppClassInstances, UINT *pNumClassInstances)
	Method CSGetShader(p_ppComputeShader:ID3D11ComputeShader Ptr, p_ppClassInstances:ID3D11ClassInstance Ptr, p_pNumClassInstances:UInt Ptr)
	' void CSGetSamplers(UINT StartSlot, UINT NumSamplers, ID3D11SamplerState **ppSamplers)
	Method CSGetSamplers(p_StartSlot:UInt, p_NumSamplers:UInt, p_ppSamplers:ID3D11SamplerState Ptr)
	' void CSGetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D11Buffer **ppConstantBuffers)
	Method CSGetConstantBuffers(p_StartSlot:UInt, p_NumBuffers:UInt, p_ppConstantBuffers:ID3D11Buffer Ptr)
	' void ClearState()
	Method ClearState()
	' void Flush()
	Method Flush()
	' D3D11_DEVICE_CONTEXT_TYPE GetType()
	Method GetType:Int()
	' UINT GetContextFlags()
	Method GetContextFlags:UInt()
	' HRESULT FinishCommandList(WINBOOL RestoreDeferredContextState, ID3D11CommandList **ppCommandList)
	Method FinishCommandList:Int(p_RestoreDeferredContextState:Int, p_ppCommandList:ID3D11CommandList Ptr)
End Interface

Interface ID3D11Device Extends IUnknown_
	' HRESULT CreateBuffer(const D3D11_BUFFER_DESC *pDesc, const D3D11_SUBRESOURCE_DATA *pInitialData, ID3D11Buffer **ppBuffer)
	Method CreateBuffer:Int(p_pDesc:D3D11_BUFFER_DESC Ptr, p_pInitialData:D3D11_SUBRESOURCE_DATA Ptr, p_ppBuffer:ID3D11Buffer Ptr)
	' HRESULT CreateTexture1D(const D3D11_TEXTURE1D_DESC *pDesc, const D3D11_SUBRESOURCE_DATA *pInitialData, ID3D11Texture1D **ppTexture1D)
	Method CreateTexture1D:Int(p_pDesc:D3D11_TEXTURE1D_DESC Ptr, p_pInitialData:D3D11_SUBRESOURCE_DATA Ptr, p_ppTexture1D:ID3D11Texture1D Ptr)
	' HRESULT CreateTexture2D(const D3D11_TEXTURE2D_DESC *pDesc, const D3D11_SUBRESOURCE_DATA *pInitialData, ID3D11Texture2D **ppTexture2D)
	Method CreateTexture2D:Int(p_pDesc:D3D11_TEXTURE2D_DESC Ptr, p_pInitialData:D3D11_SUBRESOURCE_DATA Ptr, p_ppTexture2D:ID3D11Texture2D Ptr)
	' HRESULT CreateTexture3D(const D3D11_TEXTURE3D_DESC *pDesc, const D3D11_SUBRESOURCE_DATA *pInitialData, ID3D11Texture3D **ppTexture3D)
	Method CreateTexture3D:Int(p_pDesc:D3D11_TEXTURE3D_DESC Ptr, p_pInitialData:D3D11_SUBRESOURCE_DATA Ptr, p_ppTexture3D:ID3D11Texture3D Ptr)
	' HRESULT CreateShaderResourceView(ID3D11Resource *pResource, const D3D11_SHADER_RESOURCE_VIEW_DESC *pDesc, ID3D11ShaderResourceView **ppSRView)
	Method CreateShaderResourceView:Int(p_pResource:ID3D11Resource, p_pDesc:Byte Ptr, p_ppSRView:ID3D11ShaderResourceView Ptr)
	' HRESULT CreateUnorderedAccessView(ID3D11Resource *pResource, const D3D11_UNORDERED_ACCESS_VIEW_DESC *pDesc, ID3D11UnorderedAccessView **ppUAView)
	Method CreateUnorderedAccessView:Int(p_pResource:ID3D11Resource, p_pDesc:Byte Ptr, p_ppUAView:ID3D11UnorderedAccessView Ptr)
	' HRESULT CreateRenderTargetView(ID3D11Resource *pResource, const D3D11_RENDER_TARGET_VIEW_DESC *pDesc, ID3D11RenderTargetView **ppRTView)
	Method CreateRenderTargetView:Int(p_pResource:ID3D11Resource, p_pDesc:Byte Ptr, p_ppRTView:ID3D11RenderTargetView Ptr)
	' HRESULT CreateDepthStencilView(ID3D11Resource *pResource, const D3D11_DEPTH_STENCIL_VIEW_DESC *pDesc, ID3D11DepthStencilView **ppDepthStencilView)
	Method CreateDepthStencilView:Int(p_pResource:ID3D11Resource, p_pDesc:Byte Ptr, p_ppDepthStencilView:ID3D11DepthStencilView Ptr)
	' HRESULT CreateInputLayout(const D3D11_INPUT_ELEMENT_DESC *pInputElementDescs, UINT NumElements, const void *pShaderBytecodeWithInputSignature, SIZE_T BytecodeLength, ID3D11InputLayout **ppInputLayout)
	Method CreateInputLayout:Int(p_pInputElementDescs:D3D11_INPUT_ELEMENT_DESC Ptr, p_NumElements:UInt, p_pShaderBytecodeWithInputSignature:Byte Ptr, p_BytecodeLength:Size_T, p_ppInputLayout:ID3D11InputLayout Ptr)
	' HRESULT CreateVertexShader(const void *pShaderBytecode, SIZE_T BytecodeLength, ID3D11ClassLinkage *pClassLinkage, ID3D11VertexShader **ppVertexShader)
	Method CreateVertexShader:Int(p_pShaderBytecode:Byte Ptr, p_BytecodeLength:Size_T, p_pClassLinkage:ID3D11ClassLinkage, p_ppVertexShader:ID3D11VertexShader Ptr)
	' HRESULT CreateGeometryShader(const void *pShaderBytecode, SIZE_T BytecodeLength, ID3D11ClassLinkage *pClassLinkage, ID3D11GeometryShader **ppGeometryShader)
	Method CreateGeometryShader:Int(p_pShaderBytecode:Byte Ptr, p_BytecodeLength:Size_T, p_pClassLinkage:ID3D11ClassLinkage, p_ppGeometryShader:ID3D11GeometryShader Ptr)
	' HRESULT CreateGeometryShaderWithStreamOutput(const void *pShaderBytecode, SIZE_T BytecodeLength, const D3D11_SO_DECLARATION_ENTRY *pSODeclaration, UINT NumEntries, const UINT *pBufferStrides, UINT NumStrides, UINT RasterizedStream, ID3D11ClassLinkage *pClassLinkage, ID3D11GeometryShader **ppGeometryShader)
	Method CreateGeometryShaderWithStreamOutput:Int(p_pShaderBytecode:Byte Ptr, p_BytecodeLength:Size_T, p_pSODeclaration:Byte Ptr, p_NumEntries:UInt, p_pBufferStrides:UInt Ptr, p_NumStrides:UInt, p_RasterizedStream:UInt, p_pClassLinkage:ID3D11ClassLinkage, p_ppGeometryShader:ID3D11GeometryShader Ptr)
	' HRESULT CreatePixelShader(const void *pShaderBytecode, SIZE_T BytecodeLength, ID3D11ClassLinkage *pClassLinkage, ID3D11PixelShader **ppPixelShader)
	Method CreatePixelShader:Int(p_pShaderBytecode:Byte Ptr, p_BytecodeLength:Size_T, p_pClassLinkage:ID3D11ClassLinkage, p_ppPixelShader:ID3D11PixelShader Ptr)
	' HRESULT CreateHullShader(const void *pShaderBytecode, SIZE_T BytecodeLength, ID3D11ClassLinkage *pClassLinkage, ID3D11HullShader **ppHullShader)
	Method CreateHullShader:Int(p_pShaderBytecode:Byte Ptr, p_BytecodeLength:Size_T, p_pClassLinkage:ID3D11ClassLinkage, p_ppHullShader:ID3D11HullShader Ptr)
	' HRESULT CreateDomainShader(const void *pShaderBytecode, SIZE_T BytecodeLength, ID3D11ClassLinkage *pClassLinkage, ID3D11DomainShader **ppDomainShader)
	Method CreateDomainShader:Int(p_pShaderBytecode:Byte Ptr, p_BytecodeLength:Size_T, p_pClassLinkage:ID3D11ClassLinkage, p_ppDomainShader:ID3D11DomainShader Ptr)
	' HRESULT CreateComputeShader(const void *pShaderBytecode, SIZE_T BytecodeLength, ID3D11ClassLinkage *pClassLinkage, ID3D11ComputeShader **ppComputeShader)
	Method CreateComputeShader:Int(p_pShaderBytecode:Byte Ptr, p_BytecodeLength:Size_T, p_pClassLinkage:ID3D11ClassLinkage, p_ppComputeShader:ID3D11ComputeShader Ptr)
	' HRESULT CreateClassLinkage(ID3D11ClassLinkage **ppLinkage)
	Method CreateClassLinkage:Int(p_ppLinkage:ID3D11ClassLinkage Ptr)
	' HRESULT CreateBlendState(const D3D11_BLEND_DESC *pBlendStateDesc, ID3D11BlendState **ppBlendState)
	Method CreateBlendState:Int(p_pBlendStateDesc:D3D11_BLEND_DESC Ptr, p_ppBlendState:ID3D11BlendState Ptr)
	' HRESULT CreateDepthStencilState(const D3D11_DEPTH_STENCIL_DESC *pDepthStencilDesc, ID3D11DepthStencilState **ppDepthStencilState)
	Method CreateDepthStencilState:Int(p_pDepthStencilDesc:D3D11_DEPTH_STENCIL_DESC Ptr, p_ppDepthStencilState:ID3D11DepthStencilState Ptr)
	' HRESULT CreateRasterizerState(const D3D11_RASTERIZER_DESC *pRasterizerDesc, ID3D11RasterizerState **ppRasterizerState)
	Method CreateRasterizerState:Int(p_pRasterizerDesc:D3D11_RASTERIZER_DESC Ptr, p_ppRasterizerState:ID3D11RasterizerState Ptr)
	' HRESULT CreateSamplerState(const D3D11_SAMPLER_DESC *pSamplerDesc, ID3D11SamplerState **ppSamplerState)
	Method CreateSamplerState:Int(p_pSamplerDesc:D3D11_SAMPLER_DESC Ptr, p_ppSamplerState:ID3D11SamplerState Ptr)
	' HRESULT CreateQuery(const D3D11_QUERY_DESC *pQueryDesc, ID3D11Query **ppQuery)
	Method CreateQuery:Int(p_pQueryDesc:D3D11_QUERY_DESC Ptr, p_ppQuery:ID3D11Query Ptr)
	' HRESULT CreatePredicate(const D3D11_QUERY_DESC *pPredicateDesc, ID3D11Predicate **ppPredicate)
	Method CreatePredicate:Int(p_pPredicateDesc:D3D11_QUERY_DESC Ptr, p_ppPredicate:ID3D11Predicate Ptr)
	' HRESULT CreateCounter(const D3D11_COUNTER_DESC *pCounterDesc, ID3D11Counter **ppCounter)
	Method CreateCounter:Int(p_pCounterDesc:D3D11_COUNTER_DESC Ptr, p_ppCounter:ID3D11Counter Ptr)
	' HRESULT CreateDeferredContext(UINT ContextFlags, ID3D11DeviceContext **ppDeferredContext)
	Method CreateDeferredContext:Int(p_ContextFlags:UInt, p_ppDeferredContext:ID3D11DeviceContext Ptr)
	' HRESULT OpenSharedResource(HANDLE hResource, REFIID ReturnedInterface, void **ppResource)
	Method OpenSharedResource:Int(p_hResource:Byte Ptr, p_ReturnedInterface:Byte Ptr, p_ppResource:Byte Ptr Ptr)
	' HRESULT CheckFormatSupport(DXGI_FORMAT Format, UINT *pFormatSupport)
	Method CheckFormatSupport:Int(p_Format:Int, p_pFormatSupport:UInt Ptr)
	' HRESULT CheckMultisampleQualityLevels(DXGI_FORMAT Format, UINT SampleCount, UINT *pNumQualityLevels)
	Method CheckMultisampleQualityLevels:Int(p_Format:Int, p_SampleCount:UInt, p_pNumQualityLevels:UInt Ptr)
	' void CheckCounterInfo(D3D11_COUNTER_INFO *pCounterInfo)
	Method CheckCounterInfo(p_pCounterInfo:Byte Ptr)
	' HRESULT CheckCounter(const D3D11_COUNTER_DESC *pDesc, D3D11_COUNTER_TYPE *pType, UINT *pActiveCounters, LPSTR szName, UINT *pNameLength, LPSTR szUnits, UINT *pUnitsLength, LPSTR szDescription, UINT *pDescriptionLength)
	Method CheckCounter:Int(p_pDesc:D3D11_COUNTER_DESC Ptr, p_pType:Int Ptr, p_pActiveCounters:UInt Ptr, p_szName:Byte Ptr, p_pNameLength:UInt Ptr, p_szUnits:Byte Ptr, p_pUnitsLength:UInt Ptr, p_szDescription:Byte Ptr, p_pDescriptionLength:UInt Ptr)
	' HRESULT CheckFeatureSupport(D3D11_FEATURE Feature, void *pFeatureSupportData, UINT FeatureSupportDataSize)
	Method CheckFeatureSupport:Int(p_Feature:Int, p_pFeatureSupportData:Byte Ptr, p_FeatureSupportDataSize:UInt)
	' HRESULT GetPrivateData(REFGUID guid, UINT *pDataSize, void *pData)
	Method GetPrivateData:Int(p_guid:Byte Ptr, p_pDataSize:UInt Ptr, p_pData:Byte Ptr)
	' HRESULT SetPrivateData(REFGUID guid, UINT DataSize, const void *pData)
	Method SetPrivateData:Int(p_guid:Byte Ptr, p_DataSize:UInt, p_pData:Byte Ptr)
	' HRESULT SetPrivateDataInterface(REFGUID guid, const IUnknown *pData)
	Method SetPrivateDataInterface:Int(p_guid:Byte Ptr, p_pData:IUnknown_)
	' D3D_FEATURE_LEVEL GetFeatureLevel()
	Method GetFeatureLevel:Int()
	' UINT GetCreationFlags()
	Method GetCreationFlags:UInt()
	' HRESULT GetDeviceRemovedReason()
	Method GetDeviceRemovedReason:Int()
	' void GetImmediateContext(ID3D11DeviceContext **ppImmediateContext)
	Method GetImmediateContext(p_ppImmediateContext:ID3D11DeviceContext Ptr)
	' HRESULT SetExceptionMode(UINT RaiseFlags)
	Method SetExceptionMode:Int(p_RaiseFlags:UInt)
	' UINT GetExceptionMode()
	Method GetExceptionMode:UInt()
End Interface

End Extern
