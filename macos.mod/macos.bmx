
Strict

Module Pub.MacOS

ModuleInfo "Version: 1.01"
ModuleInfo "Author: Mark Sibly"
ModuleInfo "License: zlib/libpng"
ModuleInfo "Copyright: Blitz Research Ltd"
ModuleInfo "ModServer: BRL"

ModuleInfo "History: 1.01 Release"

?MacOS
Import "macos.m"
Import "NSProcessInfo_PECocoaBackports.m"

Extern

Function is_pid_native( pid )
Function bbStringFromNSString:String( ns_string:Byte Ptr )
Function NSStringFromBBString:Byte Ptr( bb_string:String )

Function NSOSVersion(major:Int Var, minor:Int Var, patch:Int Var)


End Extern
?






