
Rem

Standard C library (And friends!) functions.

To simplify life, this is a 'structless' interface meaning some functions have been wrapped.

End Rem

SuperStrict

Rem
bbdoc: Standard C Library functions.
End Rem
Module Pub.StdC

ModuleInfo "Version: 1.17"
ModuleInfo "Author: Various"
ModuleInfo "License: zlib/libpng"
ModuleInfo "Modserver: BRL"
ModuleInfo "Credit: Adapted for BlitzMax by Mark Sibly"

ModuleInfo "History: 1.17"
ModuleInfo "History: Moved networking and socket support to Pub.Net"
ModuleInfo "History: 1.16"
ModuleInfo "History: Added setbinarymode_ for byte-exact standard and file stream protocols"
ModuleInfo "History: 1.15"
ModuleInfo "History: Added readlink_"
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
?

Import Pub.Time
Import Pub.Net

Import "stdc.c"



'c lib
Extern "c"

Const SEEK_SET_:Int=0
Const SEEK_CUR_:Int=1
Const SEEK_END_:Int=2

Const S_IFMT_:Int=$f000
Const S_IFIFO_:Int=$1000
Const S_IFCHR_:Int=$2000
Const S_IFBLK_:Int=$3000
Const S_IFDIR_:Int=$4000
Const S_IFREG_:Int=$8000

Global stdin_:Byte Ptr
Global stdout_:Byte Ptr
Global stderr_:Byte Ptr

Function getchar_:Int()
Function puts_:Int( str:String )
Function putenv_:Int( str:String )
Function getenv_:String( env:String )

'file system

Function fopen_:Byte Ptr( file:String,Mode:String )
Function fclose_:Int( c_stream:Byte Ptr )="int fclose( FILE* ) !"
Function fread_:Size_T( buf:Byte Ptr,size:Size_T,count:Size_T,c_stream:Byte Ptr )="size_t fread( void* , size_t, size_t, FILE* ) !"
Function fwrite_:Size_T( buf:Byte Ptr,size:Size_T,count:Size_T,c_stream:Byte Ptr )="size_t fwrite( void* ,size_t, size_t, FILE* ) !"
Function fflush_( c_stream:Byte Ptr )="int fflush( FILE* ) !"
Function setbinarymode_:Int( c_stream:Byte Ptr )
Function fseek_:Int( c_stream:Byte Ptr,offset:Long,origin:Int )'="fseek"
Function ftell_:Long( c_stream:Byte Ptr )'="ftell"
Function feof_:Int( c_stream:Byte Ptr )="int feof( FILE* ) !"
Function fgetc_:Int( c_stream:Byte Ptr )="int fgetc( FILE* ) !"
Function ungetc_:Int( char:Int,c_stream:Byte Ptr )="int ungetc( int,FILE* ) !"
Function fputs_:Int( str:String,c_stream:Byte Ptr )
Function ftruncate_:Int(c_stream:Byte Ptr, size:Long)
Function readlink_:String( path:String )

'posix

Function chdir_:Int( dir:String )
Function getcwd_:String()
Function chmod_:Int( path:String,Mode:Int )
Function mkdir_:Int( path:String,Mode:Int )
Function rmdir_:Int( path:String )
Function rename_:Int( from_path:String,to_path:String )
Function remove_( path:String )
Function opendir_:Byte Ptr( path:String )
Function closedir_:Int( dir:Byte Ptr )
Function readdir_:String( dir:Byte Ptr )
Function stat_:Int( path:String,st_mode:Int Var,st_size:Long Var,st_mtime:Int Var,st_ctime:Int Var,st_atime:Int Var )
Function stat64_:Int( path:String,st_mode:Int Var,st_size:Long Var,st_mtime:Long Var,st_ctime:Long Var,st_atime:Long Var )
Function system_:Int( cmd:String )
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


Function errno_:Int()

End Extern

Private

Extern "c"
	Function Startup()="bb_stdc_Startup"
End Extern

Startup

Public
