
Rem

Standard C library (And friends!) functions.

To simplify life, this is a 'structless' interface meaning some functions have been wrapped.

End Rem

SuperStrict

Module Pub.StdC

ModuleInfo "Version: 1.13"
ModuleInfo "Author: Various"
ModuleInfo "License: zlib/libpng"
ModuleInfo "Modserver: BRL"
ModuleInfo "Credit: Adapted for BlitzMax by Mark Sibly"

ModuleInfo "History: 1.13 Release"
ModuleInfo "History: Added totally awesome stat_() hack for '<' and '>' in Win32 paths"
ModuleInfo "History: 1.12 Release"
ModuleInfo "History: remove_ now does a chmod 0x1b6 beforehand on Win32 - ie: will remove write protected files"
ModuleInfo "History: chmod_ now does something on Win32"
ModuleInfo "History: 1.11 Release"
ModuleInfo "History: Fixed getsockopt"
ModuleInfo "History: 1.10 Release"
ModuleInfo "History: Fixed network byte ordering for sento_ and recvfrom_"
ModuleInfo "History: 1.09 Release"
ModuleInfo "History: More socket stuff added"
ModuleInfo "History: 1.07 Release"
ModuleInfo "History: More socket stuff added"
ModuleInfo "History: 1.06 Release"
ModuleInfo "History: Cleaned up Win32 system_"
ModuleInfo "History: 1.05 Release"
ModuleInfo "History: 1.04 Release"
ModuleInfo "History: Fixed C Compiler warnings"

?linux
ModuleInfo "CC_OPTS: -D_FILE_OFFSET_BITS=64"
?win32
Import "-lWs2_32"
Import "inet_pton.c"
?

Import "stdc.c"


Type TAddrInfo

	Field infoPtr:Byte Ptr
	Field owner:Int
	
	Method New()
		infoPtr = bmx_stdc_addrinfo_new()
		owner = True
	End Method

	Method New(infoPtr:Byte Ptr, owner:Int)
		Self.infoPtr = infoPtr
		Self.owner = owner
	End Method
	
	Function _Create:TAddrInfo(infoPtr:Byte Ptr, owner:Int) { nomangle }
		Return New TAddrInfo(infoPtr, owner)
	End Function

	Function _CreateArray:TAddrInfo[](length:Int) { nomangle }
		Return New TAddrInfo[length]
	End Function
	
	Function _SetAtIndex(arr:TAddrInfo[], info:TAddrInfo, index:Int) { nomangle }
		arr[index] = info
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
		If owner Then
			freeaddrinfo_(infoPtr)
		End If
	End Method
	
End Type

Type TSockaddrStorage

	Field storagePtr:Byte Ptr
	
	Method New()
		storagePtr = bmx_stdc_sockaddrestorage_new()
	End Method

	Method family:Int()
	End Method
	
	Method address:String()
		Return bmx_stdc_sockaddrestorage_address(storagePtr)
	End Method

	Method Delete()
		If storagePtr Then
			free_(storagePtr)
			storagePtr = Null
		End If
	End Method
	
End Type

'c lib
Extern "c"

Const SEEK_SET_%=0
Const SEEK_CUR_%=1
Const SEEK_END_%=2

Const S_IFMT_%=$f000
Const S_IFIFO_%=$1000
Const S_IFCHR_%=$2000
Const S_IFBLK_%=$3000
Const S_IFDIR_%=$4000
Const S_IFREG_%=$8000

Global stdin_:Byte Ptr
Global stdout_:Byte Ptr
Global stderr_:Byte Ptr

Function getchar_%()
Function puts_%( str$ )
Function putenv_%( str$ )
Function getenv_$( env$ )

'file system

Function fopen_:Byte Ptr( file$,Mode$ )
Function fclose_%( c_stream:Byte Ptr )="int fclose( FILE* ) !"
Function fread_:Long( buf:Byte Ptr,size:Long,count:Long,c_stream:Byte Ptr )="size_t fread( void* , size_t, size_t, FILE* ) !"
Function fwrite_:Long( buf:Byte Ptr,size:Long,count:Long,c_stream:Byte Ptr )="size_t fwrite( void* ,size_t, size_t, FILE* ) !"
Function fflush_( c_stream:Byte Ptr )="int fflush( FILE* ) !"
Function fseek_:Int( c_stream:Byte Ptr,offset:Long,origin:Int )'="fseek"
Function ftell_:Long( c_stream:Byte Ptr )'="ftell"
Function feof_:Int( c_stream:Byte Ptr )="int feof( FILE* ) !"
Function fgetc_:Int( c_stream:Byte Ptr )="int fgetc( FILE* ) !"
Function ungetc_:Int( char:Int,c_stream:Byte Ptr )="int ungetc( int,FILE* ) !"
Function fputs_:Int( str$,c_stream:Byte Ptr )

'posix

Function chdir_:Int( dir$ )
Function getcwd_$()
Function chmod_:Int( path$,Mode:Int )
Function mkdir_:Int( path$,Mode:Int )
Function rmdir_:Int( path$ )
Function rename_:Int( from_path$,to_path$ )
Function remove_( path$ )
Function opendir_:Byte Ptr( path$ )
Function closedir_:Int( dir:Byte Ptr )
Function readdir_$( dir:Byte Ptr )
Function stat_:Int( path$,st_mode:Int Var,st_size:Long Var,st_mtime:Int Var,st_ctime:Int Var )
Function system_:Int( cmd$ )

'misc
Function abort_()="void abort() !"
Function malloc_:Byte Ptr( size:Size_T )="void * malloc( size_t ) !"
Function realloc_:Byte Ptr( p:Byte Ptr,size:Size_T )="void * realloc( void * , size_t ) !"
Function free_( buf:Byte Ptr )="void free( void * ) !"
Function exit_( exit_code:Int )="void exit( int ) !"
Function atexit_:Int( fun() )="int atexit(void (*)() ) !"
Function memset_:Byte Ptr( buf:Byte Ptr,val:Int,size:Size_T )="void * memset( void * , int ,size_t ) !"
Function memcmp_:Int( lhs:Byte Ptr,rhs:Byte Ptr,size:Size_T )="int memcmp( void * , void * , size_t ) !"
Function memcpy_:Byte Ptr( dst:Byte Ptr,src:Byte Ptr,size:Size_T )="void * memcpy( void * , void * , size_t ) !"
Function memmove_:Byte Ptr( dst:Byte Ptr,src:Byte Ptr,size:Size_T )="void * memmove( void * , void * , size_t ) !"
Function strlen_:Size_T( str:Byte Ptr )="size_t strlen( const char *) !"

'math

Function sin_!( n! )="sin"
Function cos_!( n! )="cos"
Function tan_!( n! )="tan"
Function sinh_!( n! )="sinh"
Function cosh_!( n! )="cosh"
Function tanh_!( n! )="tanh"
Function asin_!( n! )="asin"
Function acos_!( n! )="acos"
Function atan_!( n! )="atan"

'sockets

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
Function socket_:Int( addr_type:Int,comm_type:Int,protocol:Int=0 )
Function closesocket_( socket:Int )
Function bind_:Int( socket:Int,addr_type:Int,port:Int )
Function gethostbyaddr_:Byte Ptr( addr:Byte Ptr,addr_len:Int,addr_type:Int )

'Function gethostbyname_:Byte Ptr Ptr( name$,addr_type:Int Var,addr_len:Int Var )
Function getaddrinfo_:TAddrInfo[](name:String, service:String = "http", family:Int = AF_UNSPEC_)
Function getaddrinfo_hints:TAddrInfo[](name:String, service:String, hints:Byte Ptr)

Function connect_:Int( socket:Int, addrinfo:Byte Ptr )
Function listen_:Int( socket:Int,backlog:Int )
Function accept_:Int( socket:Int,addr:Byte Ptr,addr_len:Byte Ptr)
Function select_:Int( n_read:Int,read_socks:Int Ptr,n_write:Int,write_socks:Int Ptr,n_except:Int,except_socks:Int Ptr,millis:Int )
Function send_:Size_T( socket:Int,buf:Byte Ptr,size:Size_T,flags:Int )
Function sendto_:Int( socket:Int,buf:Byte Ptr,size:Int,flags:Int,dest_ip:Byte Ptr,dest_port:Int, addr_type:Int = AF_INET_ )
Function recv_:Size_T( socket:Int,buf:Byte Ptr,size:Size_T,flags:Int )
Function recvfrom_:Int( socket:Int,buf:Byte Ptr,size:Int,flags:Int,sender_ip:Int Var,sender_port:Int Var)
Function setsockopt_:Int( socket:Int,level:Int,optname:Int,optval:Byte Ptr,count:Int)
Function getsockopt_:Int( socket:Int,level:Int,optname:Int,optval:Byte Ptr,count:Int Var)
Function shutdown_:Int( socket:Int,how:Int )
Function getsockname_:Int( socket:Int,addr:Byte Ptr,addr_len:Int Var )
Function getpeername_:Int( socket:Int,addr:Byte Ptr,addr_len:Int Var )

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
Function bmx_stdc_addrinfo_setflags(info:Byte Ptr, flags:Int)
Function bmx_stdc_addrinfo_setfamily(info:Byte Ptr, family:Int)
Function bmx_stdc_addrinfo_setsocktype(info:Byte Ptr, sockType:Int)
Function bmx_stdc_addrinfo_setprotocol(info:Byte Ptr, protocol:Int)

Function bmx_stdc_bind_info:Int(socket:Int, info:Byte Ptr)
Function bmx_stdc_sockaddrestorage_new:Byte Ptr()
Function bmx_stdc_sockaddrestorage_address:String(handle:Byte Ptr)
Function bmx_stdc_accept_:Int(socket:Int, storage:Byte Ptr)
Function bmx_stdc_getsockname:String(socket:Int, port:Int Var)
Function bmx_stdc_getpeername:String(socket:Int, port:Int Var)

'time

Function time_:Int( time:Byte Ptr )
Function localtime_:Byte Ptr( time:Byte Ptr )
Function strftime_:Int( buf:Byte Ptr,size:Int,fmt$,time:Byte Ptr )

End Extern

Private

Extern "c"
Function Startup()="bb_stdc_Startup"
End Extern

Startup

Public
