
SuperStrict

Import Pub.Win32

Import "dsound.cpp"

Const DIRECTSOUND_VERSION:Int=$0700

Const DSSCL_NORMAL:Int=$00000001
Const DSSCL_PRIORITY:Int=$00000002
Const DSSCL_EXCLUSIVE:Int=$00000003
Const DSSCL_WRITEPRIMARY:Int=$00000004

Const DSCAPS_PRIMARYMONO:Int=$00000001
Const DSCAPS_PRIMARYSTEREO:Int=$00000002
Const DSCAPS_PRIMARY8BIT:Int=$00000004
Const DSCAPS_PRIMARY16BIT:Int=$00000008
Const DSCAPS_CONTINUOUSRATE:Int=$00000010
Const DSCAPS_EMULDRIVER:Int=$00000020
Const DSCAPS_CERTIFIED:Int=$00000040
Const DSCAPS_SECONDARYMONO:Int=$00000100
Const DSCAPS_SECONDARYSTEREO:Int=$00000200
Const DSCAPS_SECONDARY8BIT:Int=$00000400
Const DSCAPS_SECONDARY16BIT:Int=$00000800

Const DSSPEAKER_HEADPHONE:Int=$00000001
Const DSSPEAKER_MONO:Int=$00000002
Const DSSPEAKER_QUAD:Int=$00000003
Const DSSPEAKER_STEREO:Int=$00000004
Const DSSPEAKER_SURROUND:Int=$00000005
Const DSSPEAKER_5POINT1:Int=$00000006
Const DSSPEAKER_GEOMETRY_MIN:Int=$00000005
Const DSSPEAKER_GEOMETRY_NARROW:Int=$0000000A
Const DSSPEAKER_GEOMETRY_WIDE:Int=$00000014
Const DSSPEAKER_GEOMETRY_MAX:Int=$000000B4

Const DSBCAPS_PRIMARYBUFFER:Int=$00000001
Const DSBCAPS_STATIC:Int=$00000002
Const DSBCAPS_LOCHARDWARE:Int=$00000004
Const DSBCAPS_LOCSOFTWARE:Int=$00000008
Const DSBCAPS_CTRL3D:Int=$00000010
Const DSBCAPS_CTRLFREQUENCY:Int=$00000020
Const DSBCAPS_CTRLPAN:Int=$00000040
Const DSBCAPS_CTRLVOLUME:Int=$00000080
Const DSBCAPS_CTRLPOSITIONNOTIFY:Int=$00000100
Const DSBCAPS_STICKYFOCUS:Int=$00004000
Const DSBCAPS_GLOBALFOCUS:Int=$00008000
Const DSBCAPS_GETCURRENTPOSITION2:Int=$00010000
Const DSBCAPS_MUTE3DATMAXDISTANCE:Int=$00020000
Const DSBCAPS_LOCDEFER:Int=$00040000

Const DSBPLAY_LOOPING:Int=$00000001
Const DSBPLAY_LOCHARDWARE:Int=$00000002
Const DSBPLAY_LOCSOFTWARE:Int=$00000004
Const DSBPLAY_TERMINATEBY_TIME:Int=$00000008
Const DSBPLAY_TERMINATEBY_DISTANCE:Int=$000000010
Const DSBPLAY_TERMINATEBY_PRIORITY:Int=$000000020

Const DSBSTATUS_PLAYING:Int=$00000001
Const DSBSTATUS_BUFFERLOST:Int=$00000002
Const DSBSTATUS_LOOPING:Int=$00000004
Const DSBSTATUS_LOCHARDWARE:Int=$00000008
Const DSBSTATUS_LOCSOFTWARE:Int=$00000010
Const DSBSTATUS_TERMINATED:Int=$00000020

Const DSBLOCK_FROMWRITECURSOR:Int=$00000001
Const DSBLOCK_ENTIREBUFFER:Int=$00000002
?disabled
Type DSCAPS
	Field dwSize:Int
	Field dwFlags:Int
	Field dwMinSecondarySampleRate:Int
	Field dwMaxSecondarySampleRate:Int
	Field dwPrimaryBuffers:Int
	Field dwMaxHwMixingAllBuffers:Int
	Field dwMaxHwMixingStaticBuffers:Int
	Field dwMaxHwMixingStreamingBuffers:Int
	Field dwFreeHwMixingAllBuffers:Int
	Field dwFreeHwMixingStaticBuffers:Int
	Field dwFreeHwMixingStreamingBuffers:Int
	Field dwMaxHw3DAllBuffers:Int
	Field dwMaxHw3DStaticBuffers:Int
	Field dwMaxHw3DStreamingBuffers:Int
	Field dwFreeHw3DAllBuffers:Int
	Field dwFreeHw3DStaticBuffers:Int
	Field dwFreeHw3DStreamingBuffers:Int
	Field dwTotalHwMemBytes:Int
	Field dwFreeHwMemBytes:Int
	Field dwMaxContigFreeHwMemBytes:Int
	Field dwUnlockTransferRateHwBuffers:Int
	Field dwPlayCpuOverheadSwBuffers:Int
	Field dwReserved1:Int
	Field dwReserved2:Int
End Type

Type DSBCAPS
	Field dwSize:Int
	Field dwFlags:Int
	Field dwBufferBytes:Int
	Field dwUnlockTransferRate:Int
	Field dwPlayCpuOverhead:Int
End Type

Type WAVEFORMATEX
	Field wFormatTag:Short
	Field nChannels:Short
	Field nSamplesPerSec:Int
	Field nAvgBytesPerSec:Int
	Field nBlockAlign:Short
	Field wBitsPerSample:Short
	Field cbSize:Short
End Type

Type DSBUFFERDESC
	Field dwSize:Int
	Field dwFlags:Int
	Field dwBufferBytes:Int
	Field dwReserved:Int
	Field lpwfxFormat:Byte Ptr
	Field guid3DAlgorithm0:Int
	Field guid3DAlgorithm1:Int
	Field guid3DAlgorithm2:Int
	Field guid3DAlgorithm3:Int
End Type

Extern "win32"

Type IDirectSound Extends IUnknown
	Method CreateSoundBuffer:Int( desc:Byte Ptr,buf:IDirectSoundBuffer Var,unk:Byte Ptr )
	Method GetCaps:Int( caps:Byte Ptr )
	Method DuplicateSoundBuffer:Int( in:IDirectSoundBuffer,out:IDirectSoundBuffer Var )
	Method SetCooperativeLevel:Int( hwnd:Byte Ptr,coop:Int )
	Method Compact:Int()
	Method GetSpeakerConfig:Int( config:Int Var )
	Method SetSpeakerConfig:Int( config:Int )
	Method Initialize:Int( guid:Byte Ptr )
End Type

Type IDirectSoundBuffer Extends IUnknown
	Method GetCaps:Int( caps:Byte Ptr )
	Method GetCurrentPosition:Int( pos:Int Var,writePos:Int Var )
	Method GetFormat:Int( format:WAVEFORMATEX,sizein:Int,sizeout:Int Var )
	Method GetVolume:Int( volume:Int Var )
	Method GetPan:Int( pan:Int Var )
	Method GetFrequency:Int( freq:Int Var )
	Method GetStatus:Int( status:Int Var )
	Method Initialize:Int( dsound:IDirectSound,desc:Byte Ptr )
	Method Lock:Int( writeCursor:Int,writeBytes:Int,ptr1:Byte Ptr Var,bytes1:Int Var,ptr2:Byte Ptr Var,bytes2:Int Var,flags:Int )
	Method Play:Int( reserved:Int,priority:Int,flags:Int )
	Method SetCurrentPosition:Int( pos:Int )
	Method SetFormat:Int( format:WAVEFORMATEX )
	Method SetVolume:Int( volume:Int )
	Method SetPan:Int( pan:Int )
	Method SetFrequency:Int( freq:Int )
	Method Stop:Int()
	Method Unlock:Int( ptr1:Byte Ptr,bytes1:Int,ptr2:Byte Ptr,bytes2:Int )
	Method Restore:Int()
End Type

End Extern
?

Extern
	Function bmx_directsound_IDirectSound_release:Int(handle:Byte Ptr)
	Function bmx_directsound_IDirectSound_create:Int(dsound:Byte Ptr Ptr)
	Function bmx_directsound_IDirectSound_setcooperativeLevel:Int(handle:Byte Ptr, hwnd:Byte Ptr, flags:Int)
	Function bmx_directsound_IDirectSound_duplicatesoundbuffer:Int(handle:Byte Ptr, buffer:Byte Ptr, buf:Byte Ptr Ptr)
	Function bmx_directsound_IDirectSound_createsoundbuffer:Int(handle:Byte Ptr, buf:Byte Ptr Ptr, length:Int, hertz:Int, format:Int, chans:Int, bps:Int, size:Int, flags:Int, _mode:Int)

	Function bmx_directsound_IDirectSoundBuffer_release:Int(handle:Byte Ptr)
	Function bmx_directsound_IDirectSoundBuffer_stop:Int(handle:Byte Ptr)
	Function bmx_directsound_IDirectSoundBuffer_play:Int(handle:Byte Ptr, res:Int, priority:Int, flags:Int)
	Function bmx_directsound_IDirectSoundBuffer_setvolume:Int(handle:Byte Ptr, volume:Int)
	Function bmx_directsound_IDirectSoundBuffer_setpan:Int(handle:Byte Ptr, pan:Int)
	Function bmx_directsound_IDirectSoundBuffer_setfrequency:Int(handle:Byte Ptr, freq:Int)
	Function bmx_directsound_IDirectSoundBuffer_setcurrentposition:Int(handle:Byte Ptr, pos:Int)
	Function bmx_directsound_IDirectSoundBuffer_lock:Int(handle:Byte Ptr, offset:Int, size:Int, ptr1:Byte Ptr Ptr, bytes1:Int Ptr, ptr2:Byte Ptr Ptr, bytes2:Int Ptr, flags:Int )
	Function bmx_directsound_IDirectSoundBuffer_unlock:Int(handle:Byte Ptr, ptr1:Byte Ptr,bytes1:Int,ptr2:Byte Ptr,bytes2:Int)
	Function bmx_directsound_IDirectSoundBuffer_getstatus:Int(handle:Byte Ptr, status:Int Ptr)
	
End Extern

Private

Global _ds:Byte Ptr=LoadLibraryA( "dsound" )

Public

Global DirectSoundCreate:Int( guid:Byte Ptr,dsound:Byte Ptr,unk:Byte Ptr )"win32"=GetProcAddress( _ds,"DirectSoundCreate" )
