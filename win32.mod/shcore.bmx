SuperStrict

Import "user32.bmx"

Local shcoreLib:Byte Ptr = LoadLibraryA( "Shcore.dll" )

Global GetDpiForMonitor:Int(monitor:Byte Ptr, dpiType:Int, dpix:UInt Var, dpiy:UInt Var)"Win32"

If shcoreLib Then
	GetDpiForMonitor = GetProcAddress( shcoreLib, "GetDpiForMonitor" )
End If



