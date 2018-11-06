SuperStrict

Rem
bbdoc: User input/Joystick
End Rem
Module Pub.Joystick

ModuleInfo "Version: 1.00"
ModuleInfo "Author: Bruce A Henderson"
ModuleInfo "License: zlib/libpng"
ModuleInfo "Copyright: Bruce A Henderson"

ModuleInfo "History: 1.00 Release"

Const JOY_X:Int = 0
Const JOY_Y:Int = 1
Const JOY_Z:Int = 2
Const JOY_R:Int = 3
Const JOY_U:Int = 4
Const JOY_V:Int = 5
Const JOY_YAW:Int = 6
Const JOY_PITCH:Int = 7
Const JOY_ROLL:Int = 8
Const JOY_HAT:Int = 9
Const JOY_WHEEL:Int = 10


Private

Global current_joystick:TJoystickDriver

Public

Function JoyCount:Int()
	Assert current_joystick
	Return current_joystick.JoyCount()
End Function

Function JoyName:String(port:Int)
	Assert current_joystick
	Return current_joystick.JoyName(port)
End Function

Rem
bbdoc: Available buttons (on/off controls) on a joystick.
returns: A bitfield representing which buttons are present.
end rem
Function JoyButtonCaps:Int(port:Int)
	Assert current_joystick
	Return current_joystick.JoyButtonCaps(port)
End Function

Rem
bbdoc: Available axis (proportional controls) on a joystick.
returns: A bitfield representing which axis are available.
about:
The bit positions of the returned value correspond to the following constants defined
in the FreeJoy module:
[ Const JOY_X=0
* Const JOY_Y=1
* Const JOY_Z=2
* Const JOY_R=3
* Const JOY_U=4
* Const JOY_V=5
* Const JOY_YAW=6
* Const JOY_PITCH=7
* Const JOY_ROLL=8
* Const JOY_HAT=9
* Const JOY_WHEEL=10
]
End Rem
Function JoyAxisCaps:Int(port:Int)
	Assert current_joystick
	Return current_joystick.JoyAxisCaps(port)
End Function

Rem
bbdoc: Test the status of a joystick button.
returns: True if the button is pressed.
end rem
Function JoyDown:Int( button:Int, port:Int=0 )
	Assert current_joystick
	Return current_joystick.JoyDown(button, port)
End Function

Rem
bbdoc: Check for a joystick button press
returns: Number of times @button has been hit.
about:
The returned value represents the number of the times @button has been hit since 
the last call to #JoyHit with the same specified @button.
End Rem
Function JoyHit:Int( button:Int, port:Int=0 )
	Assert current_joystick
	Return current_joystick.JoyHit(button, port)
End Function

Rem
bbdoc: Reports the horizontal position of the joystick.
returns: Zero if the joystick is centered, -1 if Left, 1 if Right or a value inbetween.
End Rem
Function JoyX#( port:Int=0 )
	Assert current_joystick
	Return current_joystick.JoyX(port)
End Function

Rem
bbdoc: Reports the vertical position of the joystick.
returns: Zero if the joystick is centered, -1.0 if Up, 1.0 if Down or a value inbetween.
End Rem
Function JoyY#( port:Int=0 )
	Assert current_joystick
	Return current_joystick.JoyY(port)
End Function

Rem
bbdoc: Reports the position of the joystick's Z axis if supported.
returns: Zero if the joystick is centered, -1.0 if Up, 1.0 if Down or a value inbetween.
End Rem
Function JoyZ#( port:Int=0 )
	Assert current_joystick
	Return current_joystick.JoyZ(port)
End Function

Rem
bbdoc: Reports the position of the joystick's R axis if supported.
returns: Zero if the joystick is centered, -1.0 if Up, 1.0 if Down or a value inbetween.
End Rem
Function JoyR#( port:Int=0 )
	Assert current_joystick
	Return current_joystick.JoyR(port)
End Function

Rem
bbdoc: Reports the position of the joystick's U axis if supported.
returns: Zero if the joystick is centered, -1.0 if Up, 1.0 if Down or a value inbetween.
about:
The U value of a joystick usually corresponds to a joystick's 'slider' or 'throttle' feature, although this may vary depending on the joystick, and will not be available with all joysticks.
End Rem
Function JoyU#( port:Int=0 )
	Assert current_joystick
	Return current_joystick.JoyU(port)
End Function

Rem
bbdoc: Reports the position of the joystick's V axis if supported.
returns: Zero if the joystick is centered, -1.0 if Up, 1.0 if Down or a value inbetween.
about:
The V value of a joystick usually corresponds to a joystick's 'slider' or 'throttle' feature, although this may vary depending on the joystick, and will not be available with all joysticks.
End Rem
Function JoyV#( port:Int=0 )
	Assert current_joystick
	Return current_joystick.JoyV(port)
End Function

Rem
bbdoc: Reports the position of the joystick's YAW axis if supported.
returns: Zero if the joystick is centered, -1.0 if Up, 1.0 if Down or a value inbetween.
End Rem
Function JoyYaw#( port:Int=0 )
	Assert current_joystick
	Return current_joystick.JoyYaw(port)
End Function

Rem
bbdoc: Reports the position of the joystick's PITCH axis if supported.
returns: Zero if the joystick is centered, -1.0 if Up, 1.0 if Down or a value inbetween.
End Rem
Function JoyPitch#( port:Int=0 )
	Assert current_joystick
	Return current_joystick.JoyPitch(port)
End Function

Rem
bbdoc: Reports the position of the joystick's ROLL axis if supported.
returns: Zero if the joystick is centered, -1.0 if Up, 1.0 if Down or a value inbetween.
End Rem
Function JoyRoll#( port:Int=0 )
	Assert current_joystick
	Return current_joystick.JoyRoll(port)
End Function

Rem
bbdoc: Reports the position of the joystick's HAT controller if supported.
returns: -1.0 if the joystick is centered, and values between 0.0, 0.25, 0.5 and 0.75 for the directions Up, Right, Down, Left respectively.
End Rem
Function JoyHat#( port:Int=0 )
	Assert current_joystick
	Return current_joystick.JoyHat(port)
End Function

Rem
bbdoc: Reports the position of the joystick's WHEEL controller if supported.
returns: Zero if the joystick is centered, -1.0 if Left, 1.0 if Right or a value inbetween.
End Rem
Function JoyWheel#( port:Int=0 )
	Assert current_joystick
	Return current_joystick.JoyWheel(port)
End Function

Function JoyType:Int( port:Int=0 )
	Assert current_joystick
	Return current_joystick.JoyType(port)
End Function

Function JoyXDir:Int( port:Int=0 )
	Assert current_joystick
	Return current_joystick.JoyXDir(port)
End Function

Function JoyYDir:Int( port:Int=0 )
	Assert current_joystick
	Return current_joystick.JoyYDir(port)
End Function

Function JoyZDir:Int( port:Int=0 )
	Assert current_joystick
	Return current_joystick.JoyZDir(port)
End Function

Function JoyUDir:Int( port:Int=0 )
	Assert current_joystick
	Return current_joystick.JoyUDir(port)
End Function

Function JoyVDir:Int( port:Int=0 )
	Assert current_joystick
	Return current_joystick.JoyVDir(port)
End Function

Rem
bbdoc: Flush joystick button states.
End Rem
Function FlushJoy( port_mask:Int=~0 )
	Assert current_joystick
	current_joystick.FlushJoy(port_mask)
End Function


Private

Global joystick_drivers:TJoystickDriver

Public

Rem
bbdoc: Abstract base type for joystick drivers.
about:
To create a new joystick driver, you should extend #TJoystickDriver and implement the #GetName method.

To install your joystick driver, simply create an instance of it using #New.
End Rem
Type TJoystickDriver
	Field _succ:TJoystickDriver
	
	Method New()
		_succ=joystick_drivers
		joystick_drivers=Self
	End Method
	
	Method GetName:String() Abstract

	Method JoyCount:Int() Abstract
	Method JoyName:String(port:Int) Abstract
	Method JoyButtonCaps:Int(port:Int) Abstract
	Method JoyAxisCaps:Int(port:Int) Abstract
	Method JoyDown:Int( button:Int, port:Int=0 ) Abstract
	Method JoyHit:Int( button:Int, port:Int=0 ) Abstract
	Method JoyX#( port:Int=0 ) Abstract
	Method JoyY#( port:Int=0 ) Abstract
	Method JoyZ#( port:Int=0 ) Abstract
	Method JoyR#( port:Int=0 ) Abstract
	Method JoyU#( port:Int=0 ) Abstract
	Method JoyV#( port:Int=0 ) Abstract
	Method JoyYaw#( port:Int=0 ) Abstract
	Method JoyPitch#( port:Int=0 ) Abstract
	Method JoyRoll#( port:Int=0 ) Abstract
	Method JoyHat#( port:Int=0 ) Abstract
	Method JoyWheel#( port:Int=0 ) Abstract
	Method JoyType:Int( port:Int=0 ) Abstract
	Method JoyXDir:Int( port:Int=0 ) Abstract
	Method JoyYDir:Int( port:Int=0 ) Abstract
	Method JoyZDir:Int( port:Int=0 ) Abstract
	Method JoyUDir:Int( port:Int=0 ) Abstract
	Method JoyVDir:Int( port:Int=0 ) Abstract
	Method FlushJoy( port_mask:Int=~0 ) Abstract
	
End Type

Function GetJoystickDriver:TJoystickDriver(name:String)

	Local driver:TJoystickDriver = joystick_drivers
	
	While driver
		If driver.GetName().ToLower() = name.ToLower() Then
			current_joystick = driver
			Return driver
		End If
		driver = driver._succ
	Wend

End Function
