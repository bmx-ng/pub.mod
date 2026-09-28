#!/usr/bin/env python3
"""Generate complete core D3D11 vtables from MinGW-w64 SDK headers.
Video/protected-content APIs are excluded. Unexposed descriptor types use
opaque Byte Ptr arguments (documented in the native-signature comments).
Usage: python3 tools/generate.py /path/to/mingw/include
"""
from pathlib import Path
import re,sys
root=Path(__file__).resolve().parent.parent
sdk=Path(sys.argv[1]); source=(sdk/'d3d11.h').read_text(); common=(sdk/'d3dcommon.h').read_text()
items=re.findall(r'\n(ID3D11\w+) : public (\w+)\s*\{(.*?)\n\};',source,re.S)
items=[x for x in items if not any(k in x[0] for k in ['Video','Crypto','Authenticated'])]
names={x[0] for x in items}
structs={
'D3D11_BUFFER_DESC':'ByteWidth:UInt Usage:Int BindFlags:UInt CPUAccessFlags:UInt MiscFlags:UInt StructureByteStride:UInt',
'D3D11_TEXTURE1D_DESC':'Width:UInt MipLevels:UInt ArraySize:UInt Format:Int Usage:Int BindFlags:UInt CPUAccessFlags:UInt MiscFlags:UInt',
'D3D11_TEXTURE2D_DESC':'Width:UInt Height:UInt MipLevels:UInt ArraySize:UInt Format:Int SampleDesc:DXGI_SAMPLE_DESC Usage:Int BindFlags:UInt CPUAccessFlags:UInt MiscFlags:UInt',
'D3D11_TEXTURE3D_DESC':'Width:UInt Height:UInt Depth:UInt MipLevels:UInt Format:Int Usage:Int BindFlags:UInt CPUAccessFlags:UInt MiscFlags:UInt',
'D3D11_SUBRESOURCE_DATA':'pSysMem:Byte_Ptr SysMemPitch:UInt SysMemSlicePitch:UInt',
'D3D11_MAPPED_SUBRESOURCE':'pData:Byte_Ptr RowPitch:UInt DepthPitch:UInt',
'D3D11_BOX':'left:UInt top:UInt front:UInt right:UInt bottom:UInt back:UInt',
'D3D11_VIEWPORT':'TopLeftX:Float TopLeftY:Float Width:Float Height:Float MinDepth:Float MaxDepth:Float',
'D3D11_INPUT_ELEMENT_DESC':'SemanticName:Byte_Ptr SemanticIndex:UInt Format:Int InputSlot:UInt AlignedByteOffset:UInt InputSlotClass:Int InstanceDataStepRate:UInt',
'D3D11_SAMPLER_DESC':'Filter:Int AddressU:Int AddressV:Int AddressW:Int MipLODBias:Float MaxAnisotropy:UInt ComparisonFunc:Int BorderColor:Float:4 MinLOD:Float MaxLOD:Float',
'D3D11_RENDER_TARGET_BLEND_DESC':'BlendEnable:Int SrcBlend:Int DestBlend:Int BlendOp:Int SrcBlendAlpha:Int DestBlendAlpha:Int BlendOpAlpha:Int RenderTargetWriteMask:Byte',
'D3D11_BLEND_DESC':'AlphaToCoverageEnable:Int IndependentBlendEnable:Int RenderTarget:D3D11_RENDER_TARGET_BLEND_DESC:8',
'D3D11_DEPTH_STENCILOP_DESC':'StencilFailOp:Int StencilDepthFailOp:Int StencilPassOp:Int StencilFunc:Int',
'D3D11_DEPTH_STENCIL_DESC':'DepthEnable:Int DepthWriteMask:Int DepthFunc:Int StencilEnable:Int StencilReadMask:Byte StencilWriteMask:Byte FrontFace:D3D11_DEPTH_STENCILOP_DESC BackFace:D3D11_DEPTH_STENCILOP_DESC',
'D3D11_RASTERIZER_DESC':'FillMode:Int CullMode:Int FrontCounterClockwise:Int DepthBias:Int DepthBiasClamp:Float SlopeScaledDepthBias:Float DepthClipEnable:Int ScissorEnable:Int MultisampleEnable:Int AntialiasedLineEnable:Int',
'D3D11_QUERY_DESC':'Query:Int MiscFlags:UInt',
'D3D11_COUNTER_DESC':'Counter:Int MiscFlags:UInt',
'D3D11_CLASS_INSTANCE_DESC':'InstanceId:UInt InstanceIndex:UInt TypeId:UInt ConstantBuffer:UInt BaseConstantBufferOffset:UInt BaseTexture:UInt BaseSampler:UInt Created:Int',
}
enums=set(re.findall(r'typedef enum (\w+)',source+common))|{'D3D11_PRIMITIVE_TOPOLOGY','D3D11_RESOURCE_DIMENSION'}
scalar={'HRESULT':'Int','UINT':'UInt','UINT64':'ULong','INT':'Int','WINBOOL':'Int','BOOL':'Int','FLOAT':'Float','SIZE_T':'Size_T','UINT8':'Byte','BYTE':'Byte','void':'Void','char':'Byte'}
def typ(t):
 t=re.sub(r'\bconst\b','',t).replace(' ','');d=t.count('*');b=t.replace('*','')
 if b in ('REFGUID','REFIID'):return 'Byte Ptr'
 if b in ('LPCSTR','LPSTR'):return 'Byte Ptr'+' Ptr'*d
 if b in ('HANDLE','HMODULE'):return 'Byte Ptr'+' Ptr'*d
 if b=='void' and d:return 'Byte'+' Ptr'*d
 if b in names or b=='IUnknown':
  assert d>=1,t
  return ('IUnknown_' if b=='IUnknown' else b)+' Ptr'*(d-1)
 if b in structs:return b+' Ptr'*d
 if b=='D3D11_RECT':return 'DXGI_RECT'+' Ptr'*d
 if b in scalar:return scalar[b]+' Ptr'*d
 if b in enums or b=='DXGI_FORMAT':return 'Int'+' Ptr'*d
 if b.startswith('D3D11_') and d:
  return 'Byte'+' Ptr'*d
 raise ValueError(t)
out=['SuperStrict','Import "common.bmx"','','Extern "Win32"']
for name,parent,body in items:
 out.append('\nInterface '+name+' Extends '+('IUnknown_' if parent=='IUnknown' else parent))
 methods=re.findall(r'virtual (\w+) STDMETHODCALLTYPE (\w+)\(\s*(.*?)\) = 0;',body,re.S)
 assert len(methods)==body.count('virtual '),name
 for ret,method,args in methods:
  params=[]
  for a in args.split(',') if args.strip() else []:
   m=re.fullmatch(r'\s*(.*?)\b(\w+)\s*(\[[^]]+\])?\s*',a,re.S);nt,n,array=m.groups()
   if array:nt+='*'
   params.append('p_'+n+':'+typ(nt))
  out.append("\t' "+re.sub(r'\s+',' ',ret+' '+method+'('+args+')'))
  bmx_method = method + '_' if method == 'End' else method
  native_name = '="' + method + '"' if bmx_method != method else ''
  out.append('\tMethod '+bmx_method+('' if ret=='void' else ':'+typ(ret))+'('+', '.join(params)+')'+native_name)
 out.append('End Interface')
out.append('\nEnd Extern\n');(root/'interfaces.bmx').write_text('\n'.join(out))
values={}
for n,v in re.findall(r'\b(D3D(?:11)?_\w+)\s*=\s*(0x[\da-fA-F]+|\d+)\b',source+common):values[n]=v
for n,v in re.findall(r'^#define (D3D11_\w+)\s+\(?(0x[\da-fA-F]+|\d+)[UuLl]*\)?\s*$',source,re.M):values[n]=v
(root/'constants.bmx').write_text('SuperStrict\n\n'+'\n'.join('Const '+n+':'+('UInt' if int(v,0)>0x7fffffff else 'Int')+'='+('$'+v[2:] if v.startswith('0x') else v) for n,v in sorted(values.items()))+'\n')
iids=[x[0] for x in items]
(root/'iids.bmx').write_text('SuperStrict\nImport "iids.cpp"\nExtern "C"\n Function bmx_d3d11_iid:Byte Ptr(index:Int)\nEnd Extern\n'+'\n'.join(f'Global IID_{n}:Byte Ptr=bmx_d3d11_iid({i})' for i,n in enumerate(iids))+'\n')
(root/'iids.cpp').write_text('#include <d3d11.h>\nextern "C" const void *bmx_d3d11_iid(int index){\n static const GUID *const ids[]={'+','.join('&__uuidof('+n+')' for n in iids)+'};\n return index>=0&&index<int(sizeof(ids)/sizeof(ids[0]))?ids[index]:nullptr;\n}\n')
b=['SuperStrict','Import Pub.DXGI',''];c=['#include <d3d11.h>','#include <cstddef>','extern "C" int d3d11_test_layout(int type,int field){switch(type){']
t=['SuperStrict','Framework BRL.StandardIO','Import Pub.Direct3D11','Import "layouts.cpp"','Extern "C"',' Function d3d11_test_layout:Int(kind:Int,field:Int)','End Extern','Function Check(ok:Int,label:String)',' If Not ok Then Throw label','End Function','Try'];checks=0
for i,(n,fs) in enumerate(structs.items()):
 b.append('Struct '+n);c.append(f'case {i}:switch(field){{case -1:return sizeof({n});');t += [f' Local v{i}:{n}',f' Check(SizeOf(v{i})=d3d11_test_layout({i},-1),"sizeof {n}")'];checks+=1
 for j,f in enumerate(fs.split()):
  parts=f.split(':');fn,ft=parts[:2];arr=parts[2] if len(parts)>2 else None
  b.append(' Field '+('StaticArray ' if arr else '')+fn+':'+ft.replace('_Ptr',' Ptr')+(f'[{arr}]' if arr else ''))
  c.append(f'case {j}:return offsetof({n},{fn});');t.append(f' Check(Byte Ptr(Varptr v{i}.{fn}'+('[0]' if arr else '')+f')-Byte Ptr(Varptr v{i})=d3d11_test_layout({i},{j}),"offset {n}.{fn}")');checks+=1
 b.append('End Struct\n');c.append('}break;')
(root/'common.bmx').write_text('\n'.join(b).rstrip()+'\n');c+=['}return -1;}'];(root/'tests/layouts.cpp').write_text('\n'.join(c)+'\n')
t += [f' Print "Pub.Direct3D11: {checks} layout checks passed"','Catch e:Object',' Print "FAILED: "+e.ToString()',' EndWithCode(1)','End Try'];(root/'tests/layouts.bmx').write_text('\n'.join(t)+'\n')
print(len(items),'interfaces;',len(structs),'structures;',checks,'layout checks')
