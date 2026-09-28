# Pub.DXGI

SuperStrict, low-level Windows DXGI bindings for adapter/display discovery and
swap-chain presentation. This module is independent of Max2D, SDL and
Pub.DirectX. It reuses Pub.Win32's COM base interface and contains no renderer.

## Scope

Complete declarations, in native vtable order, for these interfaces:

- `IDXGIObject`, `IDXGIDeviceSubObject`
- `IDXGIResource`, `IDXGISurface`, `IDXGISurface1`
- `IDXGIOutput`, `IDXGIAdapter`, `IDXGIAdapter1`
- `IDXGIDevice`, `IDXGIDevice1`
- `IDXGISwapChain`, `IDXGISwapChain1`
- `IDXGIFactory`, `IDXGIFactory1`, `IDXGIFactory2`

All methods of each listed interface are declared, including inherited slots.
Desktop duplication, newer output/adapter interfaces, HDR, tearing capability
queries and newer frame-latency swap-chain interfaces are not bound yet.
Constants include SDK values beyond the exposed interfaces; a constant's
presence does **not** indicate runtime feature support.

`CreateDXGIFactory`, `CreateDXGIFactory1` and `CreateDXGIFactory2` are resolved
at runtime. Missing newer entry points return `E_NOTIMPL` without preventing
module import. A missing DXGI DLL returns an HRESULT for `ERROR_MOD_NOT_FOUND`.
Use `QueryInterface`/HRESULT results to determine available interface versions.
The module keeps the DLL loaded for the lifetime of the process.

## Basic use

```blitzmax
SuperStrict
Framework BRL.StandardIO
Import Pub.DXGI

Local factory:IDXGIFactory1
Local result:Int=CreateDXGIFactory1(IID_IDXGIFactory1,Byte Ptr Ptr(Varptr factory))
If result<0 Then Throw "DXGI factory creation failed: "+result

Local adapter:IDXGIAdapter1
result=factory.EnumAdapters1(0,adapter)
If result>=0 Then
    Local desc:DXGI_ADAPTER_DESC1
    result=adapter.GetDesc1(Varptr desc)
    If result>=0 Then Print String.FromWString(Varptr desc.Description[0])
    adapter.Release_()
End If
factory.Release_()
```

See `examples/adapters.bmx` for complete enumeration with error handling and
cleanup, including output names, desktop rectangles and adapter memory.
Enumeration ends at `DXGI_ERROR_NOT_FOUND`; other failures must be handled.

## Native types and ownership

- `HRESULT`, `BOOL`, `INT` and enum fields use 32-bit `Int`. A native Windows
  `BOOL` is not a C++ `bool` and must not be stored in a byte.
- `UINT`, `DWORD` and usage masks use `UInt`; native `SIZE_T` uses `Size_T`.
- HWND/HMONITOR/HANDLE values use `Byte Ptr` on both 32-bit and 64-bit builds.
- All descriptors are inline `Struct` values. UTF-16 names and gamma tables
  are inline `StaticArray` fields, not managed arrays or object references.
- `DXGI_RECT`, `DXGI_POINT` and `DXGI_LUID` mirror their Windows SDK namesakes,
  using prefixes to avoid conflicts with other Win32 bindings.
- Pass `Varptr descriptor` to descriptor-pointer arguments. Nullable native
  pointers can be `Null`. Arrays such as display modes are contiguous struct
  arrays; pass `Varptr modes[0]` only when the array is nonempty.
- COM output interface parameters generally use `Var`. Native interface-array
  parameters (`CreateSurface`, `QueryResourceResidency`) instead use `Ptr`.
- Generic `void **` COM outputs use `Byte Ptr Ptr`, allowing the actual output
  variable to have the requested interface type.
- `IID_*` values point to immutable SDK GUIDs. Do not modify or free them.
- Successful interface-returning calls normally transfer one COM reference to
  the caller. Release it explicitly with `Release_()`; assigning `Null` alone
  does not release it. Clear the variable after release to avoid accidental reuse.
- The inherited `IUnknown_` comes from Pub.Win32. Its reference-count return
  values are the legacy signed `Int` representation of 32-bit native ULONG.

Use the typed-output helper when querying another interface:

```blitzmax
Local newer:IDXGIFactory2
Local result:Int=DXGIQueryInterface(factory,IID_IDXGIFactory2,Byte Ptr Ptr(Varptr newer))
If result>=0 Then
    ' Use newer, then release its independent reference.
    newer.Release_()
End If
```

`DXGIQueryInterface` performs the real COM query. Do not use a managed BlitzMax
narrowing cast to obtain a COM interface: that neither performs QueryInterface
nor acquires the required reference. Release any existing output reference
before reusing its variable. The helper and factory functions clear valid
output pointers before attempting their operations.

## Checks and development

From the BlitzMax SDK root on Windows:

```
bin\bmk.exe makeapp -r mod\pub.mod\dxgi.mod\tests\layouts.bmx
bin\bmk.exe makeapp -r mod\pub.mod\dxgi.mod\tests\runtime.bmx
bin\bmk.exe makeapp -r mod\pub.mod\dxgi.mod\tests\swapchain.bmx
bin\bmk.exe makeapp -r mod\pub.mod\dxgi.mod\examples\adapters.bmx
```

Run the resulting executables and check their explicit success messages.

- `layouts`: 117 native SDK size/offset checks covering all 21 exposed structs.
- `runtime`: factory entry points, QueryInterface, inherited private-data calls,
  adapter/output descriptors, memory/handle widths and mode arrays.
- `swapchain`: a test-only native D3D11 device/window fixture, with DXGI calls
  made from BlitzMax. Checks device/parent interfaces, frame latency, HWND
  association, flip-model creation, descriptors, backbuffer surfaces, colors,
  present testing, resize and an occlusion-event registration roundtrip.
  It does not validate visible rendering or frame timing.

Verified on Windows 11 ARM64 in Parallels, running Windows x64 binaries:
all three test programs passed and the diagnostic example listed the Parallels
adapter, Microsoft Basic Render Driver and one display output. Builds were
warning-free. Windows x86, native ARM64 builds, physical GPUs and older Windows
versions remain untested. The live runtime tests expect Factory2 and the
CreateDXGIFactory2 entry point to be available.

The swap-chain test fixture is not a public D3D11 binding or application
framework. The public module itself does not link against D3D11.

Regenerate selected declarations from MinGW-w64 headers:

```
python3 tools/generate_bindings.py /path/to/mingw/include
python3 tools/generate_layouts.py
```

Generated sources are checked in; normal builds do not require Python. Review
SDK changes and rerun the native checks after regeneration. Unknown native
method types cause generation to fail rather than producing placeholder slots.

Reference: [Microsoft DXGI overview](https://learn.microsoft.com/en-us/windows/win32/direct3ddxgi/d3d10-graphics-programming-guide-dxgi).
