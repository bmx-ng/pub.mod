SuperStrict

Import "shcore.cpp"

Extern "Win32"
	Function GetDpiForMonitor:Int(monitor:Byte Ptr, dpiType:Int, dpix:UInt Var, dpiy:UInt Var)="bmx_win32_GetDpiForMonitor"
End Extern


