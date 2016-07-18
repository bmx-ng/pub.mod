
SuperStrict

?Win32
Import Pub.Win32
?linux
Import "-ldl"
Extern
	Function dlopen:Byte Ptr( filename$z, flag:Int )
	Function dlsym:Byte Ptr( handle:Byte Ptr, funcName$z )
EndExtern
?

Function LoadDynamicLibrary:Byte Ptr( LibraryName:String )
?win32
	Return LoadLibraryA( LibraryName )
?linux
	Return dlopen( LibraryName, 2 )
?
EndFunction

Function GetVulkanLibraryNames:String[]()
?win32
	Return [ "vulkan-1.dll" ]
?linux
	Return [ "libvulkan.so" , "libvulkan.so.1" ]
?
EndFunction

Function GetDynamicLibraryFuncAddr:Byte Ptr( lib:Byte Ptr, FuncName:String )
?win32
	Return GetProcAddress( lib, FuncName )
?linux
	Return dlsym( lib, FuncName )
?
EndFunction

Function VK_MAKE_VERSION:Int( major:Int, minor:Int, patch:Int )
	Return major Shl 22 | minor Shl 12 | patch
EndFunction

