Strict
Module Pub.FreeAudio

ModuleInfo "Version: 1.23"
ModuleInfo "Author: Simon Armstrong"
ModuleInfo "License: zlib/libpng"
ModuleInfo "Copyright: Blitz Research Ltd"
ModuleInfo "Modserver: BRL"

ModuleInfo "History: 1.23"
ModuleInfo "History: Use ALSA instead of OSS on Linux."
ModuleInfo "History: Added PulseAudio driver as default Linux sound driver."
ModuleInfo "History: ALSA and Pulse audio drivers now link at runtime."
ModuleInfo "History: 1.22 Release"
ModuleInfo "History: Fixed leak with sound recycling"
ModuleInfo "History: 1.21 Release"
ModuleInfo "History: Fixed reference counting for brl.freeaudioaudio"
ModuleInfo "History: 1.20 Release"
ModuleInfo "History: Removed duplication of sample memory"
ModuleInfo "History: 1.19 Release"
ModuleInfo "History: Added DirectSound mode"
ModuleInfo "History: 1.18 Release"
ModuleInfo "History: added fa_ChannelPosition for live sample generation"
ModuleInfo "History: 1.17 Release"
ModuleInfo "History: added check for windows playback position overflow"
ModuleInfo "History: 1.15 Release"
ModuleInfo "History: added low latency windows98 fix"
ModuleInfo "History: 1.14 Release"
ModuleInfo "History: fixed 1.13 recycling of stopped channels fix"
ModuleInfo "History: 1.13 Release"
ModuleInfo "History: fixed recycling of stopped channels"
ModuleInfo "History: 1.12 Release"
ModuleInfo "History: Uses linear interpolation for improved fidelity at low rates"
ModuleInfo "History: 1.11 Release"
ModuleInfo "History: Fixed freepool sounds Not resetting parameters - thanks To Fetze"
ModuleInfo "History: 1.10 Release"
ModuleInfo "History: Added ALSA support for Linux courtesy Craig Kiesau"
ModuleInfo "History: 1.09 Release"
ModuleInfo "History: Improved channel playback timing"
ModuleInfo "History: 1.08 Release"
ModuleInfo "History: Fixed memory leak in fa_FreeSound()"
ModuleInfo "History: 1.07 Release"
ModuleInfo "History: Removed output transitions for queued/paused sounds"
ModuleInfo "History: 1.06 Release"
ModuleInfo "History: Windows device error now silently fails"
ModuleInfo "History: 1.05 Release"
ModuleInfo "History: Linux version now opens audio device on second thread"
ModuleInfo "History: 1.04 Release"
ModuleInfo "History: Removed Linux debug output"

Import "freeaudio.cpp"
Import "freeaudioglue.cpp"

?Win32
Import "dsounddevice.cpp"
Import "mmdevice.cpp"
Extern "C"
Function OpenMultiMediaDevice:Byte Ptr()
Function OpenDirectSoundDevice:Byte Ptr()
End Extern
?osx
Import "-framework AudioUnit"
Import "-framework AudioToolbox"
Import "coreaudiodevice.cpp"
Extern
Function OpenCoreAudioDevice:Byte Ptr()
End Extern
?Linuxx86
Import "-ldl"
Import "alsadevice.cpp"
Import "pulseaudiodevice.cpp"
Extern "C"
Function OpenALSADevice:Byte Ptr()
Function OpenPulseAudioDevice:Byte Ptr()
End Extern
?Linuxx64
Import "-ldl"
Import "alsadevice.cpp"
Import "pulseaudiodevice.cpp"
Extern "C"
Function OpenALSADevice:Byte Ptr()
Function OpenPulseAudioDevice:Byte Ptr()
End Extern
?raspberrypi
Import "-ldl"
Import "alsadevice.cpp"
Import "pulseaudiodevice.cpp"
Extern "C"
Function OpenALSADevice:Byte Ptr()
Function OpenPulseAudioDevice:Byte Ptr()
End Extern
?

Extern

Const FA_CHANNELSTATUS_FREE=0
Const FA_CHANNELSTATUS_STOPPED=1
Const FA_CHANNELSTATUS_SINGLESHOT=2
Const FA_CHANNELSTATUS_LOOPING=4
Const FA_CHANNELSTATUS_STREAMING=8
Const FA_CHANNELSTATUS_PAUSED=16

Function fa_Reset( audiodevice:Byte Ptr )
Function fa_Close()
Function fa_CreateSound:Byte Ptr( length,bits,channels,hertz,samples:Byte Ptr=Null,looping=False )
Function fa_WriteSound( sound:Byte Ptr,samples:Byte Ptr,length ) 'length really neceesary?
Function fa_FreeSound( sound:Byte Ptr )
Function fa_AllocChannel()
Function fa_FreeChannel( channel )
Function fa_PlaySound( sound:Byte Ptr,paused_flag,channel )

Function fa_StopChannel( channel )
Function fa_ChannelStatus( channel )
Function fa_ChannelPosition( channel )

Function fa_SetChannelPaused( channel,paused )
Function fa_SetChannelVolume( channel,volume:Float )
Function fa_SetChannelRate( channel,pitch:Float )
Function fa_SetChannelPan( channel,pan:Float )
Function fa_SetChannelDepth( channel,depth:Float )

End Extern

Function fa_Init( deviceid )
	Local device:Byte Ptr
?Win32
	Select deviceid
		Case 0 
			device=OpenMultiMediaDevice()
		Case 1
			device=OpenDirectSoundDevice()
	EndSelect
?Linuxx86
	Select deviceid
		Case 0
			device=OpenPulseAudioDevice()
		Case 1
			device=OpenALSADevice()
	EndSelect
?Linuxx64
	Select deviceid
		Case 0
			device=OpenPulseAudioDevice()
		Case 1
			device=OpenALSADevice()
	EndSelect
?raspberrypi
	Select deviceid
		Case 0
			device=OpenPulseAudioDevice()
		Case 1
			device=OpenALSADevice()
	EndSelect
?osx
	device=OpenCoreAudioDevice()
?
	Local res=-1
	If device res=fa_Reset(device)
	Return res
End Function	
