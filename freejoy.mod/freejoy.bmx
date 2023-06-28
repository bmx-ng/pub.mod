SuperStrict

Rem
bbdoc: FreeJoy joystick driver
End Rem
Module Pub.FreeJoy

ModuleInfo "Version: 1.10"
ModuleInfo "Author: Simon Armstrong, Bruce A Henderson"
ModuleInfo "License: zlib/libpng"
ModuleInfo "Copyright: Blitz Research Ltd"
ModuleInfo "Modserver: BRL"

ModuleInfo "History: 1.10 Release"
ModuleInfo "History: Uses new Factory-based driver framework."
ModuleInfo "History: 1.09 Release"
ModuleInfo "History: Linux devices can be located in various places."
ModuleInfo "History: 1.08 Release"
ModuleInfo "History: Added JoyHit samplejoy fix, thanks to HamishTheHystericalHamster"
ModuleInfo "History: 1.07 Release"
ModuleInfo "History: Added MacOSX Rx,Ry,Rz (JoyR,JoyU,JoyV) and Wheel"
ModuleInfo "History: 1.06 Release"
ModuleInfo "History: Enabled Apple Gamepad and MultiAxis HID classes"
ModuleInfo "History: 1.05 Release"
ModuleInfo "History: Fixed Linux C Compiler warnings"
ModuleInfo "History: 1.04 Release"
ModuleInfo "History: Fixed C Compiler warnings"

Import Pub.Joystick

?osx
Import "freejoy.macosx.c"
Import "-framework IOKit"
?Win32
Import "freejoy.win32.c"
?Linuxx86
Import "freejoy.linux.c"
?Linuxx64
Import "freejoy.linux.c"
?raspberrypi
Import "freejoy.linux.c"
?

?Not android
Extern

	Function freejoy_JoyCount:Int() = "JoyCount"
	Function freejoy_JoyCName:Byte Ptr(port:Int) = "JoyCName"
	Function freejoy_JoyButtonCaps:Int(port:Int) = "JoyButtonCaps"
	Function freejoy_JoyAxisCaps:Int(port:Int) = "JoyAxisCaps"
	Function freejoy_ReadJoy(port:Int,buttons:Int Ptr,axis:Float Ptr) = "ReadJoy"
	Function freejoy_WriteJoy(port:Int,channel:Int,value:Float) = "WriteJoy"

End Extern



Type TFreeJoyDriver Extends TJoystickDriver

	Global joy_time:Int[16]
	Global joy_buttons:Int[16]
	Global joy_axis:Float[16*16]
	Global joy_hits:Int[16,16]
	
	Method New()
		JoyCount
	End Method
	
	Method GetName:String() Override
		Return "FreeJoy"
	End Method

	Method JoyCount:Int() Override
		Return freejoy_JoyCount()
	End Method

	Method JoyName:String(port:Int) Override
		Return String.FromCString(freejoy_JoyCName(port))
	End Method

	Method JoyButtonCaps:Int(port:Int) Override
		Return freejoy_JoyButtonCaps(port)
	End Method

	Method JoyAxisCaps:Int(port:Int) Override
		Return freejoy_JoyAxisCaps(port)
	End Method

	Method JoyDown:Int( button:Int, port:Int=0 ) Override
		SampleJoy port
		If joy_buttons[port] & (1 Shl button) Return True
	End Method

	Method JoyHit:Int( button:Int, port:Int=0 ) Override
		SampleJoy port
		Local n:Int=joy_hits[button,port]
		joy_hits[button,port]=0
		Return n
	End Method

	Method JoyX:Float( port:Int=0 ) Override
		SampleJoy port
		Return joy_axis[port*16+JOY_X]
	End Method

	Method JoyY:Float( port:Int=0 ) Override
		SampleJoy port
		Return joy_axis[port*16+JOY_Y]
	End Method

	Method JoyZ:Float( port:Int=0 ) Override
		SampleJoy port
		Return joy_axis[port*16+JOY_Z]
	End Method

	Method JoyR:Float( port:Int=0 ) Override
		SampleJoy port
		Return joy_axis[port*16+JOY_R]
	End Method

	Method JoyU:Float( port:Int=0 ) Override
		SampleJoy port
		Return joy_axis[port*16+JOY_U]
	End Method

	Method JoyV:Float( port:Int=0 ) Override
		SampleJoy port
		Return joy_axis[port*16+JOY_V]
	End Method

	Method JoyYaw:Float( port:Int=0 ) Override
		SampleJoy port
		Return joy_axis[port*16+JOY_YAW]
	End Method

	Method JoyPitch:Float( port:Int=0 ) Override
		SampleJoy port
		Return joy_axis[port*16+JOY_PITCH]
	End Method

	Method JoyRoll:Float( port:Int=0 ) Override
		SampleJoy port
		Return joy_axis[port*16+JOY_ROLL]
	End Method

	Method JoyHat:Float( port:Int=0 ) Override
		SampleJoy port
		Return joy_axis[port*16+JOY_HAT]
	End Method

	Method JoyWheel:Float( port:Int=0 ) Override
		SampleJoy port
		Return joy_axis[port*16+JOY_WHEEL]
	End Method

	Method JoyType:Int( port:Int=0 ) Override
		If port<JoyCount() Return 1
		Return 0
	End Method

	Method JoyXDir:Int( port:Int=0 ) Override
		Local t:Float=JoyX( port )
		If t<.333333 Return -1
		If t>.333333 Return 1
		Return 0
	End Method

	Method JoyYDir:Int( port:Int=0 ) Override
		Local t:Float=JoyY( port )
		If t<.333333 Return -1
		If t>.333333 Return 1
		Return 0
	End Method

	Method JoyZDir:Int( port:Int=0 ) Override
		Local t:Float=JoyZ( port )
		If t<.333333 Return -1
		If t>.333333 Return 1
		Return 0
	End Method

	Method JoyUDir:Int( port:Int=0 ) Override
		Local t:Float=JoyU( port )
		If t<.333333 Return -1
		If t>.333333 Return 1
		Return 0
	End Method

	Method JoyVDir:Int( port:Int=0 ) Override
		Local t:Float=JoyV( port )
		If t<.333333 Return -1
		If t>.333333 Return 1
		Return 0
	End Method

	Rem
	bbdoc: Flush joystick button states.
	End Rem
	Method FlushJoy( port_mask:Int=~0 ) Override
		For Local i:Int=0 Until JoyCount()
			If i & port_mask
				SampleJoy i
				joy_buttons[i]=0
				For Local j:Int=0 Until 16
					joy_hits[i,j]=0
				Next
			EndIf
		Next
	End Method

	Function SampleJoy(port:Int)
		Local	t:Int
		t=joy_time[port]-MilliSecs()
		If t<0 Or t>1
			Local old:Int=joy_buttons[port]
			freejoy_ReadJoy port,Varptr joy_buttons[port],Varptr joy_axis[port*16]
			For Local button:Int=0 Until 16'To 16
				Local b:Int=1 Shl button
				If Not(old & b) And joy_buttons[port]&b joy_hits[button, port]:+1'button and port were t'other way round.
			Next
		EndIf
	End Function

End Type

New TFreeJoyDriver

' make ourself the default
GetJoystickDriver("FreeJoy")

?
