SuperStrict

Module Pub.NFD

ModuleInfo "Version: 1.00"
ModuleInfo "Author: Frogtoss Games"
ModuleInfo "License: ZLib/PNG License"
ModuleInfo "Credit: Adapted for BlitzMax by Bruce A Henderson"

ModuleInfo "History: 1.00 Initial Release"
ModuleInfo "History: nativefiledialog 1.1.6"

Import "nativefiledialog/src/*.h"
Import "nativefiledialog/src/include/*.h"

Import "nativefiledialog/src/nfd_common.c"
?osx
Import "nativefiledialog/src/nfd_cocoa.m"
?linux
Import "nativefiledialog/src/nfd_zenity.c"
?win32
Import "-lole32 -luuid"
Import "nativefiledialog/src/nfd_win.cpp"
?
