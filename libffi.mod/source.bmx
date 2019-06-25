SuperStrict

Import "include/*.h"
?win32
Import "include/win32/*.h"
?
Import "libffi/include/*.h"

Import "libffi/src/closures.c"
Import "libffi/src/prep_cif.c"
Import "libffi/src/raw_api.c"
Import "libffi/src/types.c"


Import "libffi/src/x86/*.h"
?x86
Import "libffi/src/x86/ffi.c"
?win32x64
Import "libffi/src/x86/win64.S"
Import "libffi/src/x86/ffiw64.c"
?win32x86
Import "libffi/src/x86/win64_intel.S"
?