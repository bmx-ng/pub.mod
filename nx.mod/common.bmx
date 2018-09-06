SuperStrict

Import "glue.c"

Extern

	Function _nxlinkStdio:Int()="int nxlinkStdio()!"
	
	Function bmx_nx_socketInitializeDefault:Int()
	Function socketGetDefaultInitConfig:Byte Ptr()
	Function socketInitialize(config:Byte Ptr)
	Function socketGetLastBsdResult:Int()
	Function socketGetLastSfdnsresResult:Int()
	Function socketExit()
	
	Function bmx_nx_romfsInit:Int()
	
	Function gfxInitDefault()
	Function gfxFlushBuffers()
	Function gfxSwapBuffers()
	Function gfxWaitForVsync()
	Function gfxExit()
	Function gfxGetFramebuffer:Int Ptr(width:Int Var, height:Int Var)
	
	Function consoleInit(handle:Byte Ptr)
	
	Function appletMainLoop:Int()
	Function hidScanInput()
	Function hidTouchCount:Int()
	Function hidTouchRead(pos:NxTouchPosition Var, pointId:Int)
	
	Function hidKeysDown:ULong(index:Int)

End Extern

Struct NxTouchPosition
	Field px:Int
	Field py:Int
	Field dx:Int
	Field dy:Int
	Field angle:Int
End Struct

Struct NxJoystickPosition
	Field dx:Int
	Field dy:Int
End Struct

Struct NxMousePosition
	Field x:Int
	Field y:Int
	Field velocityX:Int
	Field velocityY:Int
	Field scrollVelocityX:Int
	Field scrollVelocityY:Int
End Struct

Const CONTROLLER_PLAYER_1:Int = 0
Const CONTROLLER_PLAYER_2:Int = 1
Const CONTROLLER_PLAYER_3:Int = 2
Const CONTROLLER_PLAYER_4:Int = 3
Const CONTROLLER_PLAYER_5:Int = 4
Const CONTROLLER_PLAYER_6:Int = 5
Const CONTROLLER_PLAYER_7:Int = 6
Const CONTROLLER_PLAYER_8:Int = 7
Const CONTROLLER_HANDHELD:Int = 8
Const CONTROLLER_UNKNOWN:Int = 9
Const CONTROLLER_P1_AUTO:Int = 10


Const KEY_A:Int            = 1 Shl 0 '  A
Const KEY_B:Int            = 1 Shl 1 '  B
Const KEY_X:Int            = 1 Shl 2 '  X
Const KEY_Y:Int            = 1 Shl 3 '  Y
Const KEY_LSTICK:Int       = 1 Shl 4 '  Left Stick Button
Const KEY_RSTICK:Int       = 1 Shl 5 '  Right Stick Button
Const KEY_L:Int            = 1 Shl 6 '  L
Const KEY_R:Int            = 1 Shl 7 '  R
Const KEY_ZL:Int           = 1 Shl 8 '  ZL
Const KEY_ZR:Int           = 1 Shl 9 '  ZR
Const KEY_PLUS:Int         = 1 Shl 10 '  Plus
Const KEY_MINUS:Int        = 1 Shl 11 '  Minus
Const KEY_DLEFT:Int        = 1 Shl 12 '  D-Pad Left
Const KEY_DUP:Int          = 1 Shl 13 '  D-Pad Up
Const KEY_DRIGHT:Int       = 1 Shl 14 '  D-Pad Right
Const KEY_DDOWN:Int        = 1 Shl 15 '  D-Pad Down
Const KEY_LSTICK_LEFT:Int  = 1 Shl 16 '  Left Stick Left
Const KEY_LSTICK_UP:Int    = 1 Shl 17 '  Left Stick Up
Const KEY_LSTICK_RIGHT:Int = 1 Shl 18 '  Left Stick Right
Const KEY_LSTICK_DOWN:Int  = 1 Shl 19 '  Left Stick Down
Const KEY_RSTICK_LEFT:Int  = 1 Shl 20 '  Right Stick Left
Const KEY_RSTICK_UP:Int    = 1 Shl 21 '  Right Stick Up
Const KEY_RSTICK_RIGHT:Int = 1 Shl 22 '  Right Stick Right
Const KEY_RSTICK_DOWN:Int  = 1 Shl 23 '  Right Stick Down
Const KEY_SL:Int           = 1 Shl 24 '  SL
Const KEY_SR:Int           = 1 Shl 25 '  SR

' Pseudo-key for at least one finger on the touch screen
Const KEY_TOUCH:Int       = 1 Shl 26

' Buttons by orientation (for single Joy-Con), also works with Joy-Con pairs, Pro Controller
Const KEY_JOYCON_RIGHT:Int = 1 Shl 0
Const KEY_JOYCON_DOWN:Int  = 1 Shl 1
Const KEY_JOYCON_UP:Int    = 1 Shl 2
Const KEY_JOYCON_LEFT:Int  = 1 Shl 3

' Generic catch-all directions, also works for single Joy-Con
Const KEY_UP:Int    = KEY_DUP    | KEY_LSTICK_UP    | KEY_RSTICK_UP '  D-Pad Up or Sticks Up
Const KEY_DOWN:Int  = KEY_DDOWN  | KEY_LSTICK_DOWN  | KEY_RSTICK_DOWN '  D-Pad Down or Sticks Down
Const KEY_LEFT:Int  = KEY_DLEFT  | KEY_LSTICK_LEFT  | KEY_RSTICK_LEFT '  D-Pad Left or Sticks Left
Const KEY_RIGHT:Int = KEY_DRIGHT | KEY_LSTICK_RIGHT | KEY_RSTICK_RIGHT '  D-Pad Right or Sticks Right


Const TYPE_PROCONTROLLER:Int = 1 Shl 0
Const TYPE_HANDHELD:Int = 1 Shl 1
Const TYPE_JOYCON_PAIR:Int = 1 Shl 2
Const TYPE_JOYCON_LEFT:Int = 1 Shl 3
Const TYPE_JOYCON_RIGHT:Int = 1 Shl 4



Const KBD_NONE:Int = $00
Const KBD_ERR_OVF:Int = $01

Const KBD_A:Int = $04
Const KBD_B:Int = $05
Const KBD_C:Int = $06
Const KBD_D:Int = $07
Const KBD_E:Int = $08
Const KBD_F:Int = $09
Const KBD_G:Int = $0a
Const KBD_H:Int = $0b
Const KBD_I:Int = $0c
Const KBD_J:Int = $0d
Const KBD_K:Int = $0e
Const KBD_L:Int = $0f
Const KBD_M:Int = $10
Const KBD_N:Int = $11
Const KBD_O:Int = $12
Const KBD_P:Int = $13
Const KBD_Q:Int = $14
Const KBD_R:Int = $15
Const KBD_S:Int = $16
Const KBD_T:Int = $17
Const KBD_U:Int = $18
Const KBD_V:Int = $19
Const KBD_W:Int = $1a
Const KBD_X:Int = $1b
Const KBD_Y:Int = $1c
Const KBD_Z:Int = $1d

Const KBD_1:Int = $1e
Const KBD_2:Int = $1f
Const KBD_3:Int = $20
Const KBD_4:Int = $21
Const KBD_5:Int = $22
Const KBD_6:Int = $23
Const KBD_7:Int = $24
Const KBD_8:Int = $25
Const KBD_9:Int = $26
Const KBD_0:Int = $27

Const KBD_ENTER:Int = $28
Const KBD_ESC:Int = $29
Const KBD_BACKSPACE:Int = $2a
Const KBD_TAB:Int = $2b
Const KBD_SPACE:Int = $2c
Const KBD_MINUS:Int = $2d
Const KBD_EQUAL:Int = $2e
Const KBD_LEFTBRACE:Int = $2f
Const KBD_RIGHTBRACE:Int = $30
Const KBD_BACKSLASH:Int = $31
Const KBD_HASHTILDE:Int = $32
Const KBD_SEMICOLON:Int = $33
Const KBD_APOSTROPHE:Int = $34
Const KBD_GRAVE:Int = $35
Const KBD_COMMA:Int = $36
Const KBD_DOT:Int = $37
Const KBD_SLASH:Int = $38
Const KBD_CAPSLOCK:Int = $39

Const KBD_F1:Int = $3a
Const KBD_F2:Int = $3b
Const KBD_F3:Int = $3c
Const KBD_F4:Int = $3d
Const KBD_F5:Int = $3e
Const KBD_F6:Int = $3f
Const KBD_F7:Int = $40
Const KBD_F8:Int = $41
Const KBD_F9:Int = $42
Const KBD_F10:Int = $43
Const KBD_F11:Int = $44
Const KBD_F12:Int = $45

Const KBD_SYSRQ:Int = $46
Const KBD_SCROLLLOCK:Int = $47
Const KBD_PAUSE:Int = $48
Const KBD_INSERT:Int = $49
Const KBD_HOME:Int = $4a
Const KBD_PAGEUP:Int = $4b
Const KBD_DELETE:Int = $4c
Const KBD_END:Int = $4d
Const KBD_PAGEDOWN:Int = $4e
Const KBD_RIGHT:Int = $4f
Const KBD_LEFT:Int = $50
Const KBD_DOWN:Int = $51
Const KBD_UP:Int = $52

Const KBD_NUMLOCK:Int = $53
Const KBD_KPSLASH:Int = $54
Const KBD_KPASTERISK:Int = $55
Const KBD_KPMINUS:Int = $56
Const KBD_KPPLUS:Int = $57
Const KBD_KPENTER:Int = $58
Const KBD_KP1:Int = $59
Const KBD_KP2:Int = $5a
Const KBD_KP3:Int = $5b
Const KBD_KP4:Int = $5c
Const KBD_KP5:Int = $5d
Const KBD_KP6:Int = $5e
Const KBD_KP7:Int = $5f
Const KBD_KP8:Int = $60
Const KBD_KP9:Int = $61
Const KBD_KP0:Int = $62
Const KBD_KPDOT:Int = $63

Const KBD_102ND:Int = $64
Const KBD_COMPOSE:Int = $65
Const KBD_POWER:Int = $66
Const KBD_KPEQUAL:Int = $67

Const KBD_F13:Int = $68
Const KBD_F14:Int = $69
Const KBD_F15:Int = $6a
Const KBD_F16:Int = $6b
Const KBD_F17:Int = $6c
Const KBD_F18:Int = $6d
Const KBD_F19:Int = $6e
Const KBD_F20:Int = $6f
Const KBD_F21:Int = $70
Const KBD_F22:Int = $71
Const KBD_F23:Int = $72
Const KBD_F24:Int = $73

Const KBD_OPEN:Int = $74
Const KBD_HELP:Int = $75
Const KBD_PROPS:Int = $76
Const KBD_FRONT:Int = $77
Const KBD_STOP:Int = $78
Const KBD_AGAIN:Int = $79
Const KBD_UNDO:Int = $7a
Const KBD_CUT:Int = $7b
Const KBD_COPY:Int = $7c
Const KBD_PASTE:Int = $7d
Const KBD_FIND:Int = $7e
Const KBD_MUTE:Int = $7f
Const KBD_VOLUMEUP:Int = $80
Const KBD_VOLUMEDOWN:Int = $81
Const KBD_CAPSLOCK_ACTIVE:Int = $82
Const KBD_NUMLOCK_ACTIVE:Int = $83
Const KBD_SCROLLLOCK_ACTIVE:Int = $84
Const KBD_KPCOMMA:Int = $85

Const KBD_KPLEFTPAREN:Int = $b6
Const KBD_KPRIGHTPAREN:Int = $b7

Const KBD_LEFTCTRL:Int = $e0
Const KBD_LEFTSHIFT:Int = $e1
Const KBD_LEFTALT:Int = $e2
Const KBD_LEFTMETA:Int = $e3
Const KBD_RIGHTCTRL:Int = $e4
Const KBD_RIGHTSHIFT:Int = $e5
Const KBD_RIGHTALT:Int = $e6
Const KBD_RIGHTMETA:Int = $e7

Const KBD_MEDIA_PLAYPAUSE:Int = $e8
Const KBD_MEDIA_STOPCD:Int = $e9
Const KBD_MEDIA_PREVIOUSSONG:Int = $ea
Const KBD_MEDIA_NEXTSONG:Int = $eb
Const KBD_MEDIA_EJECTCD:Int = $ec
Const KBD_MEDIA_VOLUMEUP:Int = $ed
Const KBD_MEDIA_VOLUMEDOWN:Int = $ee
Const KBD_MEDIA_MUTE:Int = $ef
Const KBD_MEDIA_WWW:Int = $f0
Const KBD_MEDIA_BACK:Int = $f1
Const KBD_MEDIA_FORWARD:Int = $f2
Const KBD_MEDIA_STOP:Int = $f3
Const KBD_MEDIA_FIND:Int = $f4
Const KBD_MEDIA_SCROLLUP:Int = $f5
Const KBD_MEDIA_SCROLLDOWN:Int = $f6
Const KBD_MEDIA_EDIT:Int = $f7
Const KBD_MEDIA_SLEEP:Int = $f8
Const KBD_MEDIA_COFFEE:Int = $f9
Const KBD_MEDIA_REFRESH:Int = $fa
Const KBD_MEDIA_CALC:Int = $fb
