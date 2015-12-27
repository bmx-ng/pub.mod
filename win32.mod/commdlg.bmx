Strict

Import "commdlg.cpp"

Const CC_RGBINIT=1
Const CC_FULLOPEN=2
Const CC_PREVENTFULLOPEN=4
Const CC_SHOWHELP=8
Const CC_ENABLEHOOK=16
Const CC_ENABLETEMPLATE=32
Const CC_ENABLETEMPLATEHANDLE=64
Const CC_SOLIDCOLOR=128
Const CC_ANYCOLOR=256

Type CHOOSECOLOR
	Field lStructSize
	Field hwndOwner
	Field hInstance
	Field rgbResult
	Field lpCustColors:Byte Ptr
	Field Flags
	Field lCustData
	Field lpfnHook:Byte Ptr
	Field lpTemplateName:Short Ptr
End Type

Const CF_SCREENFONTS=$1
Const CF_PRINTERFONTS=$2
Const CF_SHOWHELP=$4
Const CF_ENABLEHOOK=$8
Const CF_ENABLETEMPLATE=$10
Const CF_ENABLETEMPLATEHANDLE=$20
Const CF_INITTOLOGFONTSTRUCT=$40
Const CF_USESTYLE=$80
Const CF_EFFECTS=$100
Const CF_APPLY=$200
Const CF_ANSIONLY=$400
Const CF_NOVECTORFONTS=$0800
Const CF_NOSIMULATIONS=$1000
Const CF_LIMITSIZE=$2000
Const CF_FIXEDPITCHONLY=$4000
Const CF_WYSIWYG=$8000
Const CF_FORCEFONTEXIST=$10000
Const CF_SCALABLEONLY=$20000
Const CF_TTONLY=$40000
Const CF_NOFACESEL=$80000
Const CF_NOSTYLESEL=$100000
Const CF_NOSIZESEL=$200000
Const CF_SELECTSCRIPT=$400000
Const CF_NOSCRIPTSEL=$800000
Const CF_NOVERTFONTS=$1000000

Const CF_BOTH=CF_SCREENFONTS|CF_PRINTERFONTS
Const CF_SCRIPTSONLY=CF_ANSIONLY
Const CF_NOOEMFONTS=CF_NOVECTORFONTS

Extern
	Function bmx_win32_CHOOSEFONTW_new:Byte Ptr()
	Function bmx_win32_CHOOSEFONTW_free(handle:Byte Ptr)
	Function bmx_win32_CHOOSEFONTW_SethwndOwner(handle:Byte Ptr, hwndOwner:Byte Ptr)
	Function bmx_win32_CHOOSEFONTW_SethDC(handle:Byte Ptr, hDC:Byte Ptr)
	Function bmx_win32_CHOOSEFONTW_SetlpLogFont(handle:Byte Ptr, lpLogFont:Byte Ptr)
	Function bmx_win32_CHOOSEFONTW_SetiPointSize(handle:Byte Ptr, iPointSize:Int)
	Function bmx_win32_CHOOSEFONTW_SetFlags(handle:Byte Ptr, Flags:Int)
	Function bmx_win32_CHOOSEFONTW_SetrgbColors(handle:Byte Ptr, rgbColors:Int)
	Function bmx_win32_CHOOSEFONTW_iPointSize:Int(handle:Byte Ptr)
	Function bmx_win32_CHOOSEFONTW_Flags:Int(handle:Byte Ptr)
	Function bmx_win32_CHOOSEFONTW_nFontType:Int(handle:Byte Ptr)
End Extern
Type CHOOSEFONTW
	Field fontPtr:Byte Ptr
	
	Method New()
		fontPtr = bmx_win32_CHOOSEFONTW_new()
	End Method

	Method Delete()
		Free()
	End Method
	
	Method Free()
		If fontPtr Then
			bmx_win32_CHOOSEFONTW_free(fontPtr)
			fontPtr = Null
		End If
	End Method
	
	Method SethwndOwner(hwndOwner:Byte Ptr)
		bmx_win32_CHOOSEFONTW_SethwndOwner(fontPtr, hwndOwner)
	End Method
	
	Method SethDC(hDC:Byte Ptr)
		bmx_win32_CHOOSEFONTW_SethDC(fontPtr, hDC)
	End Method
	
	Method SetlpLogFont(lpLogFont:Byte Ptr)
		bmx_win32_CHOOSEFONTW_SetlpLogFont(fontPtr, lpLogFont)
	End Method
	
	Method SetiPointSize(iPointSize:Int)
		bmx_win32_CHOOSEFONTW_SetiPointSize(fontPtr, iPointSize)
	End Method
	
	Method SetFlags(Flags:Int)
		bmx_win32_CHOOSEFONTW_SetFlags(fontPtr, Flags)
	End Method
	
	Method SetrgbColors(rgbColors:Int)
		bmx_win32_CHOOSEFONTW_SetrgbColors(fontPtr, rgbColors)
	End Method
	
	
	Method iPointSize:Int()
		Return bmx_win32_CHOOSEFONTW_iPointSize(fontPtr)
	End Method
	
	Method Flags:Int()
		Return bmx_win32_CHOOSEFONTW_Flags(fontPtr)
	End Method
	
	Method nFontType:Int()
		Return bmx_win32_CHOOSEFONTW_nFontType(fontPtr)
	End Method

'	Field lStructSize
'	Field hwndOwner
'	Field hDC
'	Field lpLogFont:Byte Ptr
'	Field iPointSize
'	Field Flags
'	Field rgbColors
'	Field lCustData
'	Field lpfnHook:Byte Ptr
'	Field lpTemplateName:Short Ptr
'	Field hInstance
'	Field lpszStyle:Short Ptr
'	Field nFontType:Short
'	Field _align_:Short
'	Field nSizeMin
'	Field nSizeMax
End Type

Extern "Win32"

Function ChooseColorW_( lpcc:Byte Ptr )="ChooseColorW"
Function ChooseFontW_( lpcc:Byte Ptr )="ChooseFontW"


End Extern
