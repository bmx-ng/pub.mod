
Rem

Standard C library (And friends!) functions.

To simplify life, this is a 'structless' interface meaning some functions have been wrapped.

End Rem

SuperStrict

Rem
bbdoc: Standard C Library functions.
End Rem
Module Pub.StdC

ModuleInfo "Version: 1.14"
ModuleInfo "Author: Various"
ModuleInfo "License: zlib/libpng"
ModuleInfo "Modserver: BRL"
ModuleInfo "Credit: Adapted for BlitzMax by Mark Sibly"

ModuleInfo "History: 1.14"
ModuleInfo "History: Added ftruncate_"
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
Import "-lws2_32"
Import "inet_pton.c"
?haiku
Import "-lnetwork"
?

Import "stdc.c"


Type TAddrInfo

	Field infoPtr:Byte Ptr
	Field shouldFreeInfo:Int ' 
	
	Method New()
		infoPtr = bmx_stdc_addrinfo_new()
	End Method

	Method New(family:Int, sockType:Int, flags:Int = 0)
		infoPtr = bmx_stdc_addrinfo_new()
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
Function ftruncate_:Int(c_stream:Byte Ptr, size:Long)

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
Function stat_:Int( path$,st_mode:Int Var,st_size:Long Var,st_mtime:Int Var,st_ctime:Int Var,st_atime:Int Var )
Function system_:Int( cmd$ )
Function utime_:Int( path:String, ty:Int, time:Long)

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

'Function gethostbyname_:Byte Ptr Ptr( name$,addr_type:Int Var,addr_len:Int Var )
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
Function accept_:Int( socket:Long,addr:Byte Ptr,addr_len:Byte Ptr)
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
Function bmx_stdc_addrinfo_setflags(info:Byte Ptr, flags:Int)
Function bmx_stdc_addrinfo_setfamily(info:Byte Ptr, family:Int)
Function bmx_stdc_addrinfo_setsocktype(info:Byte Ptr, sockType:Int)
Function bmx_stdc_addrinfo_setprotocol(info:Byte Ptr, protocol:Int)

Function bmx_stdc_sockaddrestorage_new:Byte Ptr()
Function bmx_stdc_sockaddrestorage_address:String(handle:Byte Ptr)
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
Function bmx_stdc_accept_:Int(socket:Long, storage:Byte Ptr)
Function bmx_stdc_getsockname:Int(socket:Long, port:Int Var, address:String Var)
Function bmx_stdc_getpeername:Int(socket:Long, port:Int Var, address:String Var)
?

'time

Function time_:Int( time:Byte Ptr )
Function localtime_:Byte Ptr( time:Byte Ptr ) ' note : not thread safe
Function strftime_:Int( buf:Byte Ptr,size:Int,fmt$,time:Byte Ptr )

?Not macos
Function clock_gettime_(id:Int, spec:STimeSpec Var)
?macos
Function mach_absolute_time_ns:ULong()
?

Function errno_:Int()

Rem
bbdoc: Returns the current date and time.
End Rem
Function CurrentDateTime(dt:SDateTime Var, utc:Int = True)="bmx_current_datetime"
	

End Extern

Struct STimeSpec
	Field tv_sec:Size_T
	Field tv_nsec:Size_T
	
	Method New(tv_sec:Size_T, tv_nsec:Size_T)
		Self.tv_sec = tv_sec
		Self.tv_nsec = tv_nsec
	End Method
End Struct

Rem
bbdoc: A basic DateTime struct.
End Rem
Struct SDateTime
	Rem
	bbdoc: The year.
	End Rem
	Field year:Int
	Rem
	bbdoc: The month, 1-12.
	End Rem
    Field month:Int
	Rem
	bbdoc: The day of the month, 1-31.
	End Rem
    Field day:Int
	Rem
	bbdoc: The hour, 0-23.
	End Rem
    Field hour:Int
	Rem
	bbdoc: The minute, 0-59.
	End Rem
    Field minute:Int
	Rem
	bbdoc: The second, 0-59.
	End Rem
    Field second:Int
	Rem
	bbdoc: The millisecond, 0-999.
	End Rem
    Field millisecond:Int
	Rem
	bbdoc: #True if the date time is in UTC, #False if it is in local time.
	End Rem
	Field utc:Int
	Rem
	bbdoc: The offset from UTC, in minutes.
	End Rem
	Field offset:Int
	Rem
	bbdoc: #True if the date time is observing daylight savings time, #False otherwise.
    about: Daylight Saving Time (DST) is the practice of setting the clock ahead by one hour from standard time
	during the warmer months, and then back again in the fall, in order to extend evening daylight and reduce the
	need for artificial lighting. This can affect local time calculations, and so it's important to track whether a
	given datetime object is observing DST. Note that not all regions observe DST, and the start and end dates
	for DST can vary from one region to another.
	End Rem
	Field dst:Int

	Rem
	bbdoc: Returns a string representation of the date time in ISO 8601 format.
	about: Without millisecond precision.
	End Rem
	Method ToString:String()
		Return ToIso8601()
	End Method

	Rem
	bbdoc: Returns a string representation in ISO 8601 format.
	about: ISO 8601 is an international standard covering the exchange of date- and time-related data.
	It was issued by the International Organization for Standardization (ISO) and provides a well-defined method of representing dates and
	times in a way that avoids ambiguity. 

	An example of a date in ISO 8601 format is "2023-06-24T18:30:00Z", representing 6:30 pm on June 24, 2023, in Coordinated Universal Time (UTC).

	If @showMillis is set to #True, the output string will include millisecond precision. For instance, "2023-06-24T18:30:00.123Z"
	where "123" represents milliseconds.
	End Rem
	Method ToIso8601:String(showMillis:Int = False)
		Return bmx_datetime_iso8601(Self, showMillis)
	End Method

	Rem
	bbdoc: Returns an instance of #SDateTime representing the date and time corresponding to the given epoch timestamp.
	about: The 'epoch' refers to the Unix epoch, which is a system for describing a point in time, defined as the number of seconds
	that have elapsed since 00:00:00 Coordinated Universal Time (UTC), Thursday, 1 January 1970, minus the number of leap seconds. 

	If @fracNanoSecs is provided, it will be used to set the 'millisecond' field of the SDateTime instance.
	The nanosecond fraction is effectively divided by a million to provide millisecond precision.
	End Rem
	Function FromEpoch:SDateTime(epochSecs:Long, fracNanoSecs:Long = 0)
		Return bmx_datetime_from_epoch(epochSecs, fracNanoSecs)
	End Function

	Rem
	bbdoc: Converts the current date and time to the number of seconds that have elapsed since the Unix Epoch.
	returns: The number of seconds that have elapsed since the Unix Epoch, or -1 if the conversion failed.
	about: The 'epoch' refers to the Unix epoch, which is a system for describing a point in time, defined as the number of seconds
	that have elapsed since 00:00:00 Coordinated Universal Time (UTC), Thursday, 1 January 1970, minus the number of leap seconds. 
	End Rem
	Method ToEpochSecs:Long()
		Return bmx_datetime_to_epoch(Self)
	End Method
End Struct

Rem
bbdoc: Gets the current date string.
returns: The current date as a string
about:
By default, it returns the current date in the format: DD MON YYYY (i.e. 10 DEC 2000).
You can also specify some parameters to return the date in a format of your choice:
[ @parameter | @description
* %%a | Abbreviated day name (sun - mon).
* %%A | Long day name (Sunday - Monday).
* %%b | Abbreviated month name (jan - feb).
* %%B | Long month name (January...).
* %%c | Locale date & time.
* %%d | day - in number (1..31).
* %%H | hour - in number (0..23).
* %%I | hour - in number (1..12).
* %%j | day of the year (1..366).
* %%m | month - in number (1..12).
* %%M | minutes - in number (00..59).
* %%P | AM / PM.
* %%S | seconds - in number (00..59).
* %%U | week number
* %%w | day of the week (0..6).
* %%W | week of the year (0..53).
* %%x | locale data representation.
* %%y | year without century (2014 --> 14).
* %%Y | Year (2014).
* %%Z | Time zone name.
]
You can use these parameters together:<br/>
CurrentDate("Month: %%a Day: %%d")<br/>
End Rem
Function CurrentDate$(_format$="%d %b %Y")
	Return bmx_current_datetime_format(_format)
End Function

Rem
bbdoc: Gets the current time string.
returns: The current time as a string
about:
Returns the current time in the format: HH:MM:SS (i.e. 14:31:57).
End Rem
Function CurrentTime$()
	Return bmx_current_datetime_format("%H:%M:%S")
End Function

Private

Extern "c"
	Function bmx_datetime_iso8601:String(dt:SDateTime Var, showMillis:Int = False)
	Function Startup()="bb_stdc_Startup"
	Function bmx_datetime_from_epoch:SDateTime(epochSecs:Long, fracNanoSecs:Long)
	Function bmx_current_datetime_format:String(format:String)
	Function bmx_datetime_to_epoch:Long(dt:SDateTime Var)
End Extern

Startup

Public
