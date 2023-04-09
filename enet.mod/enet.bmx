SuperStrict

Module Pub.Enet

ModuleInfo "Version: 1.03"
ModuleInfo "Author: Lee Salzman, Vladyslav Hrytsenko, Dominik Madarasz"

ModuleInfo "History: 1.03"
ModuleInfo "History: Updated to enet 2.3.6"
ModuleInfo "History: 1.02"
ModuleInfo "History: Made SuperStrict"
ModuleInfo "History: Ported to zpl-c enet : https://github.com/zpl-c/enet"
ModuleInfo "History: 1.01 Release"

Import Pub.StdC

?win32x86
Import "-lWs2_32"
?

Import "enet/include/*.h"
Import "glue.c"

Function enet_address_create:Byte Ptr( host_ip:Int,host_port:Int )
?BigEndian
	Return bmx_enet_address_create_ipv4(host_ip, host_port)
?LittleEndian
	Return bmx_enet_address_create_ipv4((host_ip Shr 24) | (host_ip Shr 8 & $ff00) | (host_ip Shl 8 & $ff0000) | (host_ip Shl 24), host_port)
?
End Function

Function enet_address_create:Byte Ptr( host_ip:String,host_port:Int )
	If host_ip = ENET_HOST_ANY Then
		Return bmx_enet_address_create_any(host_port)
	Else
		Return bmx_enet_address_create_ipv6(host_ip, host_port, host_ip.Find(".") < 0)
	End If
End Function

Function enet_address_destroy( address:Byte Ptr )
	bmx_enet_address_destroy(address)
End Function

Type ENetEvent

	Field eventPtr:Byte Ptr

	Method New()
		eventPtr = bmx_enet_enetevent_new()
	End Method

	Method Delete()
		bmx_enet_enetevent_free(eventPtr)
	End Method
	
	Method channelID:Byte()
		Return bmx_enet_enetevent_channelid(eventPtr)
	End Method

	Method data:UInt()
		Return bmx_enet_enetevent_data(eventPtr)
	End Method
	
	Method event:Int()
		Return bmx_enet_enetevent_event(eventPtr)
	End Method
	
	Method peer:Byte Ptr()
		Return bmx_enet_enetevent_peer(eventPtr)
	End Method
	
	Method packet:Byte Ptr()
		Return bmx_enet_enetevent_packet(eventPtr)
	End Method
End Type

Extern
	Function bmx_enet_address_create_ipv4:Byte Ptr(host_ip:Int, host_port:Int)
	Function bmx_enet_address_create_any:Byte Ptr(host_port:Int)
	Function bmx_enet_address_create_ipv6:Byte Ptr(host_ip:String, host_port:Int, ipv6:Int)
	Function bmx_enet_address_destroy(address:Byte Ptr)

	Function bmx_enet_enetevent_new:Byte Ptr()
	Function bmx_enet_enetevent_free(event:Byte Ptr)
	Function bmx_enet_enetevent_peer:Byte Ptr(event:Byte Ptr)
	Function bmx_enet_enetevent_event:Int(event:Byte Ptr)
	Function bmx_enet_enetevent_packet:Byte Ptr(event:Byte Ptr)
	Function bmx_enet_enetevent_channelid:Byte(event:Byte Ptr)
	Function bmx_enet_enetevent_data:UInt(event:Byte Ptr)

	Function enet_initialize:Int()
	Function enet_deinitialize()

	Function enet_peer_disconnect(peer:Byte Ptr, data:UInt)
	Function enet_peer_send:Int(peer:Byte Ptr, channelID:Byte, packet:Byte Ptr)
	
    Function enet_host_create:Byte Ptr(address:Byte Ptr, peerCount:Size_T , channelLimit:Size_T , incomingBandwidth:UInt, outgoingBandwidth:UInt)
	Function enet_host_connect:Byte Ptr(host:Byte Ptr, address:Byte Ptr, channelCount:Size_T, data:UInt)
	Function enet_host_service:Int( host:Byte Ptr, event:Byte Ptr,timeout_ms:UInt )
	Function enet_host_destroy(host:Byte Ptr)
	Function enet_host_flush(host:Byte Ptr)
	
	Function enet_packet_create:Byte Ptr(data:Byte Ptr, dataLength:Size_T, flags:UInt)
	Function enet_packet_destroy(packet:Byte Ptr)
	Function bmx_enet_packet_data:Byte Ptr(packet:Byte Ptr)
	Function bmx_enet_packet_size:Size_T(packet:Byte Ptr)
End Extern

Const ENET_HOST_ANY:String = "ENET_HOST_ANY"

Const ENET_EVENT_TYPE_NONE:Int = 0
Const ENET_EVENT_TYPE_CONNECT:Int = 1
Const ENET_EVENT_TYPE_DISCONNECT:Int = 2
Const ENET_EVENT_TYPE_RECEIVE:Int = 3
Const ENET_EVENT_TYPE_DISCONNECT_TIMEOUT:Int = 4

Const ENET_PACKET_FLAG_RELIABLE:Int = 1 Shl 0
Const ENET_PACKET_FLAG_UNSEQUENCED:Int = 1 Shl 1
Const ENET_PACKET_FLAG_NO_ALLOCATE:Int = 1 Shl 2
Const ENET_PACKET_FLAG_UNRELIABLE_FRAGMENT:Int = 1 Shl 3
Const ENET_PACKET_FLAG_SENT:Int = 1 Shl 8

enet_initialize
atexit_ enet_deinitialize
