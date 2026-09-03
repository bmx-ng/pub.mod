SuperStrict

Rem
bbdoc: Low-level networking and socket functions.
End Rem
Module Pub.Net

ModuleInfo "Version: 1.00"
ModuleInfo "Author: Various"
ModuleInfo "License: zlib/libpng"
ModuleInfo "Modserver: BRL"
ModuleInfo "Credit: Adapted for BlitzMax by Mark Sibly"

ModuleInfo "History: 1.00"
ModuleInfo "History: Extracted networking and socket support from Pub.StdC"

?win32
Import "-lws2_32"
Import "inet_pton.c"
?haiku
Import "-lnetwork"
?

Import "net.c"

Type TAddrInfo

	Field infoPtr:Byte Ptr
	Field shouldFreeInfo:Int
	Field allocatedInfo:Int
	Field owner:TAddrInfo

	Method New()
		infoPtr = bmx_stdc_addrinfo_new()
		allocatedInfo = True
	End Method

	Method New(family:Int, sockType:Int, flags:Int = 0)
		infoPtr = bmx_stdc_addrinfo_new()
		allocatedInfo = True
		setFamily(family)
		setSockType(sockType)
		If flags Then
			setFlags(flags)
		End If
	End Method

	Method New(infoPtr:Byte Ptr, shouldFreeInfo:Int)
		Self.infoPtr = infoPtr
		Self.shouldFreeInfo = shouldFreeInfo
	End Method

	Function _Create:TAddrInfo(infoPtr:Byte Ptr, shouldFreeInfo:Int) { nomangle }
		Return New TAddrInfo(infoPtr, shouldFreeInfo)
	End Function

	Function _CreateArray:TAddrInfo[](length:Int) { nomangle }
		Return New TAddrInfo[length]
	End Function

	Function _SetAtIndex(arr:TAddrInfo[], info:TAddrInfo, index:Int) { nomangle }
		arr[index] = info
	End Function

	Function _SetOwner(info:TAddrInfo, owner:TAddrInfo) { nomangle }
		info.owner = owner
	End Function

	Method flags:Int()
		Return bmx_stdc_addrinfo_flags(infoPtr)
	End Method

	Method setFlags(flags:Int)
		bmx_stdc_addrinfo_setflags(infoPtr, flags)
	End Method

	Method family:Int()
		Return bmx_stdc_addrinfo_family(infoPtr)
	End Method

	Method setFamily(family:Int)
		bmx_stdc_addrinfo_setfamily(infoPtr, family)
	End Method

	Method sockType:Int()
		Return bmx_stdc_addrinfo_socktype(infoPtr)
	End Method

	Method setSockType(sockType:Int)
		bmx_stdc_addrinfo_setsocktype(infoPtr, sockType)
	End Method

	Method protocol:Int()
		Return bmx_stdc_addrinfo_protocol(infoPtr)
	End Method

	Method setProtocol(protocol:Int)
		bmx_stdc_addrinfo_setprotocol(infoPtr, protocol)
	End Method

	Method addrLen:Int()
		Return bmx_stdc_addrinfo_addrlen(infoPtr)
	End Method

	Method addr:Byte Ptr()
		Return bmx_stdc_addrinfo_addr(infoPtr)
	End Method

	Method canonName:String()
		Return bmx_stdc_addrinfo_canonname(infoPtr)
	End Method

	Method HostName:String()
		Return bmx_stdc_addrinfo_hostname(infoPtr, 0)
	End Method

	Method HostIp:String()
		Return bmx_stdc_addrinfo_hostname(infoPtr, NI_NUMERICHOST)
	End Method

	Method Delete()
		If shouldFreeInfo Then
			freeaddrinfo_(infoPtr)
		Else If allocatedInfo Then
			bmx_stdc_addrinfo_delete(infoPtr)
		End If
		infoPtr = Null
		owner = Null
	End Method

End Type

Type TSockaddrStorage

	Field storagePtr:Byte Ptr

	Method New()
		storagePtr = bmx_stdc_sockaddrestorage_new()
	End Method

	Method family:Int()
		Return bmx_stdc_sockaddrestorage_family(storagePtr)
	End Method

	Method address:String()
		Return bmx_stdc_sockaddrestorage_address(storagePtr)
	End Method

	Method Delete()
		If storagePtr Then
			bmx_net_sockaddrestorage_free(storagePtr)
			storagePtr = Null
		End If
	End Method

End Type


Extern "c"

' These constants form Pub.Net's portable ABI. Native wrappers translate values
' such as IPv6 families, address-info flags and socket options where necessary.
Const AF_INET_:Int=2					'address types
Const SOCK_STREAM_:Int=1,SOCK_DGRAM_:Int=2	'communication types
Const SOCKET_ERROR_:Int=-1
Const AF_INET6_:Int=10 ' IPv6
Const AF_UNSPEC_:Int = 0

Const SO_DEBUG:Int=1			'turn on debugging info recording
Const SO_ACCEPTCONN:Int=2		'socket has had listen()
Const SO_REUSEADDR:Int=4		'allow local address reuse
Const SO_KEEPALIVE:Int=8		'keep connections alive
Const SO_DONTROUTE:Int=$10		'just use interface addresses
Const SO_BROADCAST:Int=$20		'permit sending of broadcast msgs
Const SO_USELOOPBACK:Int=$40    'bypass hardware when possible
Const SO_LINGER:Int=$80         'linger on close if data present
Const SO_OOBINLINE:Int=$100     'leave received OOB data in line

Const AI_PASSIVE:Int =     $001 ' Socket address is intended for 'bind'
Const AI_CANONNAME:Int =   $002 ' Request for canonical name
Const AI_NUMERICHOST:Int = $004 ' Don't use name resolution
Const AI_V4MAPPED:Int =    $008 ' IPv4 mapped addresses are acceptable
Const AI_ALL:Int =         $010 ' Return IPv4 mapped and IPv6 addresses
Const AI_ADDRCONFIG:Int =  $020 ' Use configuration of this host to choose returned address type
Const AI_NUMERICSERV:Int = $400 ' Don't use name resolution

'Additional options.

Const SO_SNDBUF:Int=$1001		'sendbuffersize
Const SO_RCVBUF:Int=$1002		'receivebuffersize
Const SO_SNDLOWAT:Int=$1003		'sendlow-watermark
Const SO_RCVLOWAT:Int=$1004		'receivelow-watermark
Const SO_SNDTIMEO:Int=$1005		'sendtimeout
Const SO_RCVTIMEO:Int=$1006		'receivetimeout
Const SO_ERROR:Int=$1007		'geterrorstatusandclear
Const SO_TYPE:Int=$1008			'getsockettype

'Option for opening sockets for synchronous access.
Const SO_SYNCHRONOUS_ALERT:Int=$10
Const SO_SYNCHRONOUS_NONALERT:Int=$20
?Win32
Const SO_OPENTYPE:Int=$7008
Const SO_MAXDG:Int=$7009
Const SO_MAXPATHDG:Int=$700A
Const SO_UPDATE_ACCEPT_CONTEXT:Int=$700B
Const SO_CONNECT_TIME:Int=$700C
?
Const TCP_NODELAY:Int=$0001
Const TCP_BSDURGENT:Int=$7000

Const IPPROTO_UDP:Int=17
Const IPPROTO_TCP:Int=6

Const NI_DGRAM:Int = $0001
Const NI_NAMEREQD:Int = $0002
Const NI_NOFQDN:Int = $0004
Const NI_NUMERICHOST:Int = $0008
Const NI_NUMERICSERV:Int = $0010

Const SOL_SOCKET:Int = $ffff ' options for socket level

'how params for shutdown_

Const SD_SEND:Int=1
Const SD_RECEIVE:Int=0
Const SD_BOTH:Int=2

Function htons_:Int( n:Int )
Function ntohs_:Int( n:Int )
Function htonl_:Int( n:Int )
Function ntohl_:Int( n:Int )
?win32 and ptr64
Function socket_:Long( addr_type:Int,comm_type:Int,protocol:Int=0 )
Function closesocket_( socket:Long )
Function bind_:Int( socket:Long,addr_type:Int,port:Int )
?win32 and ptr32
Function socket_:Int( addr_type:Int,comm_type:Int,protocol:Int=0 )
Function closesocket_( socket:Int )
Function bind_:Int( socket:Int,addr_type:Int,port:Int )
?not win32
Function socket_:Int( addr_type:Int,comm_type:Int,protocol:Int=0 )
Function closesocket_( socket:Int )
Function bind_:Int( socket:Int,addr_type:Int,port:Int )
?
Function gethostbyaddr_:Byte Ptr( addr:Byte Ptr,addr_len:Int,addr_type:Int )

'Function gethostbyname_:Byte Ptr Ptr( name:String,addr_type:Int Var,addr_len:Int Var )
Function getaddrinfo_:TAddrInfo[](name:String, service:String = "http", family:Int = AF_UNSPEC_)
Function getaddrinfo_hints:TAddrInfo[](name:String, service:String, hints:Byte Ptr)

?not win32
Function connect_:Int( socket:Int, addrinfo:Byte Ptr )
Function listen_:Int( socket:Int,backlog:Int )
Function accept_:Int( socket:Int,addr:Byte Ptr,addr_len:Byte Ptr)
Function select_:Int( n_read:Int,read_socks:Int Ptr,n_write:Int,write_socks:Int Ptr,n_except:Int,except_socks:Int Ptr,millis:Int )
Function sendto_:Int( socket:Int,buf:Byte Ptr,size:Int,flags:Int,dest_ip:Byte Ptr,dest_port:Int, addr_type:Int = AF_INET_ )
Function recvfrom_:Int( socket:Int,buf:Byte Ptr,size:Int,flags:Int,sender_ip:Int Var,sender_port:Int Var)
Function setsockopt_:Int( socket:Int,level:Int,optname:Int,optval:Byte Ptr,count:Int)
Function getsockopt_:Int( socket:Int,level:Int,optname:Int,optval:Byte Ptr,count:Int Var)
Function shutdown_:Int( socket:Int,how:Int )
Function getsockname_:Int( socket:Int,addr:Byte Ptr,addr_len:Int Var )
Function getpeername_:Int( socket:Int,addr:Byte Ptr,addr_len:Int Var )
?not win32 and ptr64
Function send_:Long( socket:Int,buf:Byte Ptr,size:Size_T,flags:Int )
Function recv_:Long( socket:Int,buf:Byte Ptr,size:Size_T,flags:Int )
?not win32 and Not ptr64
Function send_:Int( socket:Int,buf:Byte Ptr,size:Size_T,flags:Int )
Function recv_:Int( socket:Int,buf:Byte Ptr,size:Size_T,flags:Int )
?

?win32 and ptr32
Function connect_:Int( socket:Int, addrinfo:Byte Ptr )
Function listen_:Int( socket:Int,backlog:Int )
Function accept_:Int( socket:Int,addr:Byte Ptr,addr_len:Byte Ptr)
Function select_:Int( n_read:Int,read_socks:Int Ptr,n_write:Int,write_socks:Int Ptr,n_except:Int,except_socks:Int Ptr,millis:Int )
Function sendto_:Int( socket:Int,buf:Byte Ptr,size:Int,flags:Int,dest_ip:Byte Ptr,dest_port:Int, addr_type:Int = AF_INET_ )
Function recvfrom_:Int( socket:Int,buf:Byte Ptr,size:Int,flags:Int,sender_ip:Int Var,sender_port:Int Var)
Function setsockopt_:Int( socket:Int,level:Int,optname:Int,optval:Byte Ptr,count:Int)
Function getsockopt_:Int( socket:Int,level:Int,optname:Int,optval:Byte Ptr,count:Int Var)
Function shutdown_:Int( socket:Int,how:Int )
Function getsockname_:Int( socket:Int,addr:Byte Ptr,addr_len:Int Var )
Function getpeername_:Int( socket:Int,addr:Byte Ptr,addr_len:Int Var )
Function send_:Int( socket:Int,buf:Byte Ptr,size:Size_T,flags:Int )
Function recv_:Int( socket:Int,buf:Byte Ptr,size:Size_T,flags:Int )
?

?win32 and ptr64
Function connect_:Int( socket:Long, addrinfo:Byte Ptr )
Function listen_:Int( socket:Long,backlog:Int )
Function accept_:Long( socket:Long,addr:Byte Ptr,addr_len:Byte Ptr)
Function select_:Int( n_read:Int,read_socks:Long Ptr,n_write:Int,write_socks:Long Ptr,n_except:Int,except_socks:Long Ptr,millis:Int )
Function sendto_:Int( socket:Long,buf:Byte Ptr,size:Int,flags:Int,dest_ip:Byte Ptr,dest_port:Int, addr_type:Int = AF_INET_ )
Function recvfrom_:Int( socket:Long,buf:Byte Ptr,size:Int,flags:Int,sender_ip:Int Var,sender_port:Int Var)
Function setsockopt_:Int( socket:Long,level:Int,optname:Int,optval:Byte Ptr,count:Int)
Function getsockopt_:Int( socket:Long,level:Int,optname:Int,optval:Byte Ptr,count:Int Var)
Function shutdown_:Int( socket:Long,how:Int )
Function getsockname_:Int( socket:Long,addr:Byte Ptr,addr_len:Int Var )
Function getpeername_:Int( socket:Long,addr:Byte Ptr,addr_len:Int Var )
Function send_:Long( socket:Long,buf:Byte Ptr,size:Size_T,flags:Int )
Function recv_:Long( socket:Long,buf:Byte Ptr,size:Size_T,flags:Int )
?

Function freeaddrinfo_(res:Byte Ptr)
Function bmx_stdc_addrinfo_flags:Int(info:Byte Ptr)
Function bmx_stdc_addrinfo_family:Int(info:Byte Ptr)
Function bmx_stdc_addrinfo_socktype:Int(info:Byte Ptr)
Function bmx_stdc_addrinfo_protocol:Int(info:Byte Ptr)
Function bmx_stdc_addrinfo_addrlen:Int(info:Byte Ptr)
Function bmx_stdc_addrinfo_addr:Byte Ptr(info:Byte Ptr)
Function bmx_stdc_addrinfo_hostname:String(info:Byte Ptr, flags:Int)
Function bmx_stdc_addrinfo_canonname:String(info:Byte Ptr)
Function inet_pton_:Int(family:Int, src:String, dst:Byte Ptr)
Function bmx_stdc_addrinfo_new:Byte Ptr()
Function bmx_stdc_addrinfo_delete(info:Byte Ptr)
Function bmx_stdc_addrinfo_setflags(info:Byte Ptr, flags:Int)
Function bmx_stdc_addrinfo_setfamily(info:Byte Ptr, family:Int)
Function bmx_stdc_addrinfo_setsocktype(info:Byte Ptr, sockType:Int)
Function bmx_stdc_addrinfo_setprotocol(info:Byte Ptr, protocol:Int)

Function bmx_stdc_sockaddrestorage_new:Byte Ptr()
Function bmx_stdc_sockaddrestorage_family:Int(handle:Byte Ptr)
Function bmx_stdc_sockaddrestorage_address:String(handle:Byte Ptr)
Function bmx_net_sockaddrestorage_free(handle:Byte Ptr)
?not win32
Function bmx_stdc_bind_info:Int(socket:Int, info:Byte Ptr)
Function bmx_stdc_accept_:Int(socket:Int, storage:Byte Ptr)
Function bmx_stdc_getsockname:Int(socket:Int, port:Int Var, address:String Var)
Function bmx_stdc_getpeername:Int(socket:Int, port:Int Var, address:String Var)
?win32 and ptr32
Function bmx_stdc_bind_info:Int(socket:Int, info:Byte Ptr)
Function bmx_stdc_accept_:Int(socket:Int, storage:Byte Ptr)
Function bmx_stdc_getsockname:Int(socket:Int, port:Int Var, address:String Var)
Function bmx_stdc_getpeername:Int(socket:Int, port:Int Var, address:String Var)
?win32 and ptr64
Function bmx_stdc_bind_info:Int(socket:Long, info:Byte Ptr)
Function bmx_stdc_accept_:Long(socket:Long, storage:Byte Ptr)
Function bmx_stdc_getsockname:Int(socket:Long, port:Int Var, address:String Var)
Function bmx_stdc_getpeername:Int(socket:Long, port:Int Var, address:String Var)
?


End Extern

Private

Extern "c"
	Function Startup()="bb_net_Startup"
End Extern

Startup

Public
