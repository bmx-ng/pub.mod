# Pub.Direct3D11

SuperStrict Windows Direct3D 11 core bindings, layered on Pub.DXGI. The module
exposes complete vtables for 31 core interfaces, including ID3D11Device and
ID3D11DeviceContext. Video/protected-content APIs and D3D11.1+ extensions are
outside this initial scope.

All exposed methods have their native parameter lists and return widths.
18 commonly used descriptors are inline Struct values with native layout tests.
Descriptors with unions, and less common descriptors not yet exposed as structs,
use opaque Byte Ptr arguments; the generated native-signature comments identify
the required SDK type. These pointers are not arbitrary byte buffers: callers
must supply a correctly sized/aligned native descriptor or a permitted Null.

COM ownership and IID handling follow Pub.DXGI. Use DXGIQueryInterface to acquire
an interface into a typed output variable; do not use managed narrowing casts.
Interface pointer outputs/arrays use Ptr, including device creation:

```blitzmax
Local device:ID3D11Device, context:ID3D11DeviceContext
Local level:Int
Local hr:Int=D3D11CreateDevice(Null,D3D_DRIVER_TYPE_HARDWARE,Null,0,Null,0,..
    D3D11_SDK_VERSION,Varptr device,Varptr level,Varptr context)
If hr<0 Then Throw "D3D11 device creation failed: "+hr
' Use device/context, then release each owned reference.
context.Release_()
device.Release_()
```

BOOL/HRESULT use Int, UINT uses UInt, SIZE_T uses Size_T and handles use Byte Ptr.
Native void methods omit a return annotation in SuperStrict, for compatibility
with both production BCC and bcc2. The native context method `End` is exposed as
`End_` because `End` is a BlitzMax keyword. Inline arrays use StaticArray. Enum constants
are SDK numeric values; they do not imply that the active device supports a
particular feature. Check feature level and format/feature capabilities.

The device-creation entry point loads D3D11 dynamically. A missing DLL or entry
point produces an HRESULT error rather than making a DXGraphics/D3D9 program
fail at load time. No shader compiler is needed by this module.

## Tests

Build and run tests/layouts.bmx and tests/device.bmx with Windows bmk. The layout
suite compares 131 sizes/offsets to the actual SDK structs. The device test
creates a hardware device and staging texture, tests mapping/unmapping and
native void methods, and checks device status. The current validation platform
is Windows 11 ARM64 in Parallels running x64 binaries; other architectures and
physical GPUs remain untested.

Regenerate declarations with:

```
python3 tools/generate.py /path/to/mingw/include
```

Generated files are checked in. Normal module builds do not require Python.
