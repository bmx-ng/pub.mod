SuperStrict

Module pub.nx

?nx

Import "common.bmx"



Function nxlinkStdio:Int()
	Return _nxlinkStdio()
End Function

Function socketInitializeDefault:Int()
	Return bmx_nx_socketInitializeDefault()
End Function


Function romfsInit:Int()
	Return bmx_nx_romfsInit()
End Function

?
