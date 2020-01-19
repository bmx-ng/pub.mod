SuperStrict

Rem
bbdoc: Lua Core
end rem
Module Pub.Lua

ModuleInfo "Version: 1.28"
ModuleInfo "Author: Tecgraf,PUC-Rio"
ModuleInfo "License: MIT License"
ModuleInfo "Modserver: BRL"
ModuleInfo "Credit: Adapted for BlitzMax by Thomas Mayer, Noel Cower, Andreas Rozek and Simon Armstrong"

ModuleInfo "History: 1.28"
ModuleInfo "History: Updated for 64-bit."
ModuleInfo "History: 1.27"
ModuleInfo "History: Modified luaconf.h (line 14) to autodetect LUA_USE_LINUX and LUA_USE_MACOSX"
ModuleInfo "History: 1.26"
ModuleInfo "History: Removed BRL.Retro dependancy & replaced Left() with [..1]"
ModuleInfo "History: 1.25"
ModuleInfo "History: Updated to Lua 5.1.4 - Htbaa"
ModuleInfo "History: 1.24"
ModuleInfo "History: fixed int<->long discrepancies between Lua and BlitzMAX"
ModuleInfo "History: 1.23"
ModuleInfo "History: several bugfixes and extensions"
ModuleInfo "History: support for strings with embedded ~0 (and byte arrays)"
ModuleInfo "History: modifications for Lua 5.1.2"
ModuleInfo "History: source code is now 'superstrict'-compliant"
ModuleInfo "History: added some documentation"
ModuleInfo "History: 1.22"
ModuleInfo "History: added lots of definitions to support most of the official Lua 5.1.1 API"
ModuleInfo "History: 1.21"
ModuleInfo "History: removed luac.c from build list"
ModuleInfo "History: 1.20"
ModuleInfo "History: fixed missing paramters in lua_createtable definition"
ModuleInfo "History: 1.19"
ModuleInfo "History: updated with lua5.1.1 source"
ModuleInfo "History: 1.18"
ModuleInfo "History: added extra Imports and luaL_openlibs decl"
ModuleInfo "History: 1.17"
ModuleInfo "History: added luaL_loadstring fixed missing lua_dostring"
ModuleInfo "History: 1.16"
ModuleInfo "History: Added lua_newtable as a BMax function"
ModuleInfo "History: Changed extern'd lua_newtable to lua_createtable"
ModuleInfo "History: Added lua_load, lua_dostring and lua_dobuffer."
ModuleInfo "History: 1.15 Release"
ModuleInfo "History: New LUA 5.1 based build"
ModuleInfo "History: Modified constants and added new wrappers for 5.1 compatability"
ModuleInfo "History: 1.14 Release"
ModuleInfo "History: Added luaopen_debug and ldblib.c"
ModuleInfo "History: Replaced byte ptr with $z (CString) where a C string is expected"
ModuleInfo "History: 1.12 Release"
ModuleInfo "History: Removed lua.h import"

?linux
Import "-ldl"
?

Import "lua-5.1.4/src/lstate.c"
Import "lua-5.1.4/src/llex.c"
Import "lua-5.1.4/src/ltm.c"
Import "lua-5.1.4/src/lstring.c"
Import "lua-5.1.4/src/ltable.c"
Import "lua-5.1.4/src/lfunc.c"
Import "lua-5.1.4/src/ldo.c"
Import "lua-5.1.4/src/lgc.c"
Import "lua-5.1.4/src/lzio.c"
Import "lua-5.1.4/src/lobject.c"
Import "lua-5.1.4/src/lparser.c"
Import "lua-5.1.4/src/lvm.c"
Import "lua-5.1.4/src/lundump.c"
Import "lua-5.1.4/src/lmem.c"
Import "lua-5.1.4/src/lcode.c"
Import "lua-5.1.4/src/ldebug.c"
Import "lua-5.1.4/src/lopcodes.c"
Import "lua-5.1.4/src/lapi.c"
Import "lua-5.1.4/src/ldump.c"
Import "lua-5.1.4/src/lbaselib.c"
Import "lua-5.1.4/src/lauxlib.c"
Import "lua-5.1.4/src/liolib.c"
Import "lua-5.1.4/src/lmathlib.c"
Import "lua-5.1.4/src/lstrlib.c"
Import "lua-5.1.4/src/ltablib.c"
Import "lua-5.1.4/src/ldblib.c"

Import "lua-5.1.4/src/linit.c"
Import "lua-5.1.4/src/loadlib.c"
Import "lua-5.1.4/src/loslib.c"
'import "lua-5.1.4/src/lua.c"
'Import "lua-5.1.4/src/luac.c"
Import "lua-5.1.4/src/print.c"

' ******************************************************************************
' *                                                                            *
' *                            Constant Definitions                            *
' *                                                                            *
' ******************************************************************************

  Const LUA_IDSIZE:Int = 60

' **** (lua.h) some basic definitions - just to be complete ****

  Const LUA_VERSION:String   = "Lua 5.1"
  Const LUA_RELEASE:String   = "Lua 5.1.4"
  Const LUA_VERSION_NUM:Int  = 501
  Const LUA_COPYRIGHT:String = "Copyright (C) 1994-2008 Lua.org, PUC-Rio"
  Const LUA_AUTHORS:String   = "R. Ierusalimschy, L. H. de Figueiredo & W. Celes"

' **** (lua.h) option for multiple returns in `lua_pcall' and `lua_call' ****

  Const LUA_MULTRET:Int = -1

' **** (lua.h) pseudo-indices ****

  Const LUA_REGISTRYINDEX:Int = -10000
  Const LUA_ENVIRONINDEX:Int  = -10001
  Const LUA_GLOBALSINDEX:Int  = -10002

' **** (lua.h) thread status (0 is OK) ****

  Const LUA_YIELD_:Int    = 1   ' added _ after LUA_YIELD because of lua_yield function
  Const LUA_ERRRUN:Int    = 2
  Const LUA_ERRSYNTAX:Int = 3
  Const LUA_ERRMEM:Int    = 4
  Const LUA_ERRERR:Int    = 5

' **** (lua.h) basic types ****

  Const LUA_TNONE:Int          = -1
  Const LUA_TNIL:Int           =  0
  Const LUA_TBOOLEAN:Int       =  1
  Const LUA_TLIGHTUSERDATA:Int =  2
  Const LUA_TNUMBER:Int        =  3
  Const LUA_TSTRING:Int        =  4
  Const LUA_TTABLE:Int         =  5
  Const LUA_TFUNCTION:Int      =  6
  Const LUA_TUSERDATA:Int      =  7
  Const LUA_TTHREAD:Int        =  8

' **** (lua.h) garbage-collection options ****

  Const LUA_GCSTOP:Int       = 0
  Const LUA_GCRESTART:Int    = 1
  Const LUA_GCCOLLECT:Int    = 2
  Const LUA_GCCOUNT:Int      = 3
  Const LUA_GCCOUNTB:Int     = 4
  Const LUA_GCSTEP:Int       = 5
  Const LUA_GCSETPAUSE:Int   = 6
  Const LUA_GCSETSTEPMUL:Int = 7

' **** (lua.h) event codes ****

  Const LUA_HOOKCALL:Int    = 0
  Const LUA_HOOKRET:Int     = 1
  Const LUA_HOOKLINE:Int    = 2
  Const LUA_HOOKCOUNT:Int   = 3
  Const LUA_HOOKTAILRET:Int = 4

' **** (lua.h) event masks ****

  Const LUA_MASKCALL:Int  = (1 Shl LUA_HOOKCALL)
  Const LUA_MASKRET:Int   = (1 Shl LUA_HOOKRET)
  Const LUA_MASKLINE:Int  = (1 Shl LUA_HOOKLINE)
  Const LUA_MASKCOUNT:Int = (1 Shl LUA_HOOKCOUNT)

' ******************************************************************************
' *                                                                            *
' *                          The Lua API (Functions)                           *
' *                                                                            *
' ******************************************************************************

Extern
  Struct lua_Debug
    Field event:Int
    Field name:Byte Ptr                                         ' no ~0 expected
    Field namewhat:Byte Ptr                                               ' dto.
    Field what:Byte Ptr                                                   ' dto.
    Field source:Byte Ptr                                                 ' dto.
    Field currentline:Int
    Field nups:Int
    Field linedefined:Int
    Field lastlinedefined:Int
'   field short_src:byte[LUA_IDSIZE]         ' we use padding to occupy 60 bytes
    Field short_src:Byte, short_src_01:Byte, short_src_02:Byte, short_src_03:Byte
    Field short_src_04:Long, short_src_12:Long, short_src_20:Long
    Field short_src_28:Long, short_src_36:Long, short_src_44:Long
    Field short_src_52:Long
    Field i_ci:Int      ' "private" field - mentioned here to get the right size
  End Struct
End Extern

Extern
Rem
bbdoc: Sets a new panic function and returns the old one.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_atpanic)
End Rem
  Function lua_atpanic:Byte Ptr (lua_state:Byte Ptr, panicf:Int(ls:Byte Ptr))
Rem
bbdoc: Calls a function.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_call)
End Rem
  Function lua_call (lua_state:Byte Ptr, nargs:Int, nresults:Int)
Rem
bbdoc: Ensures that there are at least @extra free stack slots in the stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_checkstack)
End Rem
  Function lua_checkstack:Int (lua_state:Byte Ptr, extra:Int)
Rem
bbdoc: Destroys all objects in the given Lua state and frees all dynamic memory used by this state.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_close)
End Rem
  Function lua_close (lua_state:Byte Ptr)
Rem
bbdoc: Concatenates the @n values at the top of the stack, pops them, and leaves the result at the top.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_concat)
End Rem
  Function lua_concat (lua_state:Byte Ptr, n:Int)
Rem
bbdoc: Calls the function @func in protected mode.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_cpcall)
End Rem
  Function lua_cpcall:Int (lua_state:Byte Ptr, func:Int(ls:Byte Ptr), ud:Byte Ptr)
Rem
bbdoc:Creates a new empty table and pushes it onto the stack.
about:
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_createtable)
End Rem
  Function lua_createtable (lua_state:Byte Ptr, narr:Int, nrec:Int)
Rem
bbdoc: Dumps a function as a binary chunk.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_dump)
End Rem
?ptr64
  Function lua_dump:Int (lua_state:Byte Ptr, writer:Int(ls:Byte Ptr,p:Byte Ptr,sz:Long,ud:Byte Ptr), data:Byte Ptr)
?Not ptr64
  Function lua_dump:Int (lua_state:Byte Ptr, writer:Int(ls:Byte Ptr,p:Byte Ptr,sz:Int,ud:Byte Ptr), data:Byte Ptr)
?
Rem
bbdoc: Returns 1 if the two values in acceptable indices @index1 and @index2 are equal.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_equal)
End Rem
  Function lua_equal:Int (lua_state:Byte Ptr, index1:Int, index2:Int)
Rem
bbdoc: Generates a Lua error.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_error)
End Rem
  Function lua_error:Int (lua_state:Byte Ptr)
Rem
bbdoc: Controls the garbage collector.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_gc)
End Rem
  Function lua_gc:Int (lua_state:Byte Ptr, what:Int, data:Int)
Rem
bbdoc: Returns the memory-allocation function of a given state.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_getallocf)
End Rem
  Function lua_getallocf:Byte Ptr (lua_state:Byte Ptr, ud:Byte Ptr Ptr)
Rem
bbdoc: Pushes onto the stack the environment table of the value at the given index.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_getfenv)
End Rem
  Function lua_getfenv (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Pushes onto the stack the value `t[k]`, where @t is the value at the given valid index.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_getfield)
End Rem
  Function lua_getfield (lua_state:Byte Ptr, index:Int, k$z)              ' no ~0 expected
Rem
bbdoc: Returns the current hook function.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_gethook)
End Rem
  Function lua_gethook:Byte Ptr (lua_state:Byte Ptr)
Rem
bbdoc: Returns the current hook count.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_gethookcount)
End Rem
  Function lua_gethookcount:Int (lua_state:Byte Ptr)
Rem
bbdoc: Returns the current hook mask.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_gethookmask)
End Rem
  Function lua_gethookmask:Int (lua_state:Byte Ptr)
Rem
bbdoc: Returns information about a specific function or function invocation.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_getinfo)
End Rem
  Function lua_getinfo:Int (lua_state:Byte Ptr, what$z, ar:lua_Debug Ptr)    ' no ~0 expected
Rem
bbdoc: Gets information about a local variable of a given activation record.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_getlocal)
End Rem
  Function lua_getlocal$z (lua_state:Byte Ptr, ar:lua_Debug Ptr, n:Int)     ' no ~0 expected
Rem
bbdoc: Pushes onto the stack the metatable of the value at the given acceptable @index.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_getmetatable)
End Rem
  Function lua_getmetatable:Int (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Get information about the interpreter runtime stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_getstack)
End Rem
  Function lua_getstack:Int (lua_state:Byte Ptr, level:Int, ar:lua_Debug Ptr) ' no ~0 expected
Rem
bbdoc: Pushes onto the stack the value `t[k]`, where @t is the value at the given valid index and @k is the value at the top of the stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_gettable)
End Rem
  Function lua_gettable (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Returns the index of the top element in the stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_gettop)
End Rem
  Function lua_gettop:Int (lua_state:Byte Ptr)
Rem
bbdoc: Gets information about a closure's upvalue.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_getupvalue)
End Rem
  Function lua_getupvalue$z (lua_state:Byte Ptr, funcindex:Int, n:Int)        ' no ~0 expected
Rem
bbdoc: Moves the top element into the given valid index, shifting up the elements above this index to open space.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_insert)
End Rem
  Function lua_insert (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Returns 1 if the value at the given acceptable @index is a C function, and 0 otherwise.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_iscfunction)
End Rem
  Function lua_iscfunction:Int (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Returns 1 if the value at the given acceptable @index is a number or a string convertible to a number, and 0 otherwise.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_isnumber)
End Rem
  Function lua_isnumber:Int (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Returns 1 if the value at the given acceptable @index is a string or a number (which is always convertible to a string), and 0 otherwise.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_isstring)
End Rem
  Function lua_isstring:Int (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Returns 1 if the value at the given acceptable index is a userdata (either full or light), and 0 otherwise.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_isuserdata)
End Rem
  Function lua_isuserdata:Int (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Returns 1 if the value at acceptable index @index1 is smaller than the value at acceptable index @index2.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_lessthan)
End Rem
  Function lua_lessthan:Int (lua_state:Byte Ptr, index1:Int, index2:Int)
Rem
bbdoc: Loads a Lua chunk.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_load)
End Rem
?ptr64
  Function lua_load:Int (lua_state:Byte Ptr, reader:Byte Ptr(ls:Byte Ptr,data:Byte Ptr,sz:Long Ptr), data:Byte Ptr, chunkname$z) ' no ~0 expected
?Not ptr64
  Function lua_load:Int (lua_state:Byte Ptr, reader:Byte Ptr(ls:Byte Ptr,data:Byte Ptr,sz:Int Ptr), data:Byte Ptr, chunkname$z) ' no ~0 expected
?
Rem
bbdoc: Creates a new, independent state.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_newstate)
End Rem
?ptr64
  Function lua_newstate:Byte Ptr (f:Byte Ptr(ud:Byte Ptr, p:Byte Ptr, osize:Long, nsize:Long), ud:Byte Ptr)
?Not ptr64
  Function lua_newstate:Byte Ptr (f:Byte Ptr(ud:Byte Ptr, p:Byte Ptr, osize:Int, nsize:Int), ud:Byte Ptr)
?
Rem
bbdoc: Creates a new thread, pushes it on the stack, and returns a pointer to a lua_State that represents this new thread.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_newthread)
End Rem
  Function lua_newthread:Byte Ptr (lua_state:Byte Ptr)
Rem
bbdoc: Allocates a new block of memory with the given size, pushes onto the stack a new full userdata with the block address, and returns this address.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_newuserdata)
End Rem
?ptr64
  Function lua_newuserdata:Byte Ptr (lua_state:Byte Ptr, size:Long)
?Not ptr64
  Function lua_newuserdata:Byte Ptr (lua_state:Byte Ptr, size:Int)
?
Rem
bbdoc: Pops a key from the stack, and pushes a key-value pair from the table at the given @index.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_next)
End Rem
  Function lua_next:Int (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: 
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_objlen)
End Rem
?ptr64
  Function lua_objlen:Long(lua_state:Byte Ptr, index:Int)
?Not ptr64
  Function lua_objlen:Int (lua_state:Byte Ptr, index:Int)
?
Rem
bbdoc: Calls a function in protected mode.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_pcall)
End Rem
  Function lua_pcall:Int (lua_state:Byte Ptr, nargs:Int, nresults:Int, errfunc:Int)
Rem
bbdoc: Pushes a boolean value with value @b onto the stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_pushboolean)
End Rem
  Function lua_pushboolean (lua_state:Byte Ptr, b:Int)
Rem
bbdoc: Pushes a new C closure onto the stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_pushcclosure)
End Rem
  Function lua_pushcclosure (lua_state:Byte Ptr, fn:Int(ls:Byte Ptr), n:Int)
' function lua_pushfstring$z (lua_state:byte ptr, fmt$z, ...)
Rem
bbdoc: Pushes a number with value @n onto the stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_pushinteger)
End Rem
?ptr64
  Function lua_pushinteger (lua_state:Byte Ptr, n:Long)
?Not ptr64
  Function lua_pushinteger (lua_state:Byte Ptr, n:Int)
?
Rem
bbdoc: Pushes a light userdata onto the stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_pushlightuserdata)
End Rem
  Function lua_pushlightuserdata (lua_state:Byte Ptr, p:Byte Ptr)
Rem
bbdoc: Pushes the string pointed to by @s with size @size onto the stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_pushlstring)
End Rem
?ptr64
  Function lua_pushlstring (lua_state:Byte Ptr, s:Byte Ptr, size:Long)    ' without any conversion!
?Not ptr64
  Function lua_pushlstring (lua_state:Byte Ptr, s:Byte Ptr, size:Int)    ' without any conversion!
?
Rem
bbdoc: Pushes a nil value onto the stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_pushnil)
End Rem
  Function lua_pushnil (lua_state:Byte Ptr)
Rem
bbdoc: Pushes a number with value @n onto the stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_pushnumber)
End Rem
  Function lua_pushnumber (lua_state:Byte Ptr, n:Double)
Rem
bbdoc: Pushes the #String pointed to by @s onto the stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_pushstring)
End Rem
  Function lua_pushstring (lua_state:Byte Ptr, s$z)                         ' no ~0 expected
Rem
bbdoc: Pushes the thread onto the stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_pushthread)
End Rem
  Function lua_pushthread:Int (lua_state:Byte Ptr)
Rem
bbdoc: Pushes a copy of the element at the given valid @index onto the stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_pushvalue)
End Rem
  Function lua_pushvalue (lua_state:Byte Ptr, index:Int)
' function lua_pushvfstring$z (lua_state:byte ptr, fmt$z, argp:???)
Rem
bbdoc: Returns 1 if the two values in acceptable indices @index1 and @index2 are primitively equal.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_rawequal)
End Rem
  Function lua_rawequal:Int (lua_state:Byte Ptr, index1:Int, index2:Int)
Rem
bbdoc: Similar to #lua_gettable, but does a raw access
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_rawget)
End Rem
  Function lua_rawget (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Pushes onto the stack the value `t[n]`, where @t is the value at the given valid @index.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_rawgeti)
End Rem
  Function lua_rawgeti (lua_state:Byte Ptr, index:Int, n:Int)
Rem
bbdoc: Similar to #lua_settable, but does a raw assignment.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_rawset)
End Rem
  Function lua_rawset (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Does the equivalent of `t[n] = v`, where @t is the value at the given valid @index and v is the value at the top of the stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_rawseti)
End Rem
  Function lua_rawseti (lua_state:Byte Ptr, index:Int, n:Int)
Rem
bbdoc: Removes the element at the given valid @index, shifting down the elements above this index to fill the gap.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_remove)
End Rem
  Function lua_remove (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Moves the top element into the given position (and pops it), without shifting any element.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_replace)
End Rem
  Function lua_replace (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Starts and resumes a coroutine in a given thread.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_resume)
End Rem
  Function lua_resume:Int (lua_state:Byte Ptr, narg:Int)
Rem
bbdoc: Changes the allocator function of a given state to f with user data @ud.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_setallocf)
End Rem
?ptr64
  Function lua_setallocf (lua_state:Byte Ptr, f:Byte Ptr(ud:Byte Ptr, p:Byte Ptr, osize:Long, nsize:Long), ud:Byte Ptr)
?Not ptr64
  Function lua_setallocf (lua_state:Byte Ptr, f:Byte Ptr(ud:Byte Ptr, p:Byte Ptr, osize:Int, nsize:Int), ud:Byte Ptr)
?
Rem
bbdoc: Pops a table from the stack and sets it as the new environment for the value at the given @index.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_setfenv)
End Rem
  Function lua_setfenv:Int (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Does the equivalent to `t[k] = v`, where @t is the value at the given valid @index and v is the value at the top of the stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_setfield)
End Rem
  Function lua_setfield (lua_state:Byte Ptr, index:Int, k$z)              ' no ~0 expected
Rem
bbdoc: Sets the debugging hook function.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_sethook)
End Rem
  Function lua_sethook:Int (lua_state:Byte Ptr, f(ls:Byte Ptr,ar:lua_Debug Ptr), mask:Int, count:Int)
Rem
bbdoc: Sets the value of a local variable of a given activation record.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_setlocal)
End Rem
  Function lua_setlocal$z (lua_state:Byte Ptr, ar:lua_Debug Ptr, n:Int)     ' no ~0 expected
Rem
bbdoc: Pops a table from the stack and sets it as the new metatable for the value at the given acceptable @index.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_setmetatable)
End Rem
  Function lua_setmetatable:Int (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Does the equivalent to `t[k] = v`, where @t is the value at the given valid @index, v is the value at the top of the stack, and k is the value just below the top.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_settable)
End Rem
  Function lua_settable (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Accepts any acceptable index, or 0, and sets the stack top to this @index.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_settop)
End Rem
  Function lua_settop (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Sets the value of a closure's upvalue.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_setupvalue)
End Rem
  Function lua_setupvalue$z (lua_state:Byte Ptr, funcindex:Int, n:Int)        ' no ~0 expected
Rem
bbdoc: Returns the status of the thread @lua_state.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_status)
End Rem
  Function lua_status:Int (lua_state:Byte Ptr)
Rem
bbdoc: Converts the Lua value at the given acceptable @index to a boolean value (0 or 1).
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_toboolean)
End Rem
  Function lua_toboolean:Int (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Converts a value at the given acceptable index to a function.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_tocfunction)
End Rem
  Function lua_tocfunction:Byte Ptr (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Converts the Lua value at the given acceptable @index to the signed integral type lua_Integer.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_tointeger)
End Rem
?ptr64
  Function lua_tointeger:Long (lua_state:Byte Ptr, index:Int)
?Not ptr64
  Function lua_tointeger:Int (lua_state:Byte Ptr, index:Int)
?
Rem
bbdoc: Converts the Lua value at the given acceptable index to a C string.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_tolstring)
End Rem
Function lua_tolstring:Byte Ptr (lua_state:Byte Ptr, index:Int, size:Size_T Ptr) ' without any conversion!
Rem
bbdoc: Converts the Lua value at the given acceptable index to the C type lua_Number.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_tonumber)
End Rem
  Function lua_tonumber:Double (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Converts the value at the given acceptable index to a generic C pointer.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_topointer)
End Rem
  Function lua_topointer:Byte Ptr (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Converts the value at the given acceptable index to a Lua thread.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_tothread)
End Rem
  Function lua_tothread:Byte Ptr (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: If the value at the given acceptable index is a full userdata, returns its block address.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_touserdata)
End Rem
  Function lua_touserdata:Byte Ptr (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Returns the type of the value in the given acceptable @index, or LUA_TNONE for a non-valid index.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_type)
End Rem
  Function lua_type:Int (lua_state:Byte Ptr, index:Int)
Rem
bbdoc: Returns the name of the type encoded by the value @tp, which must be one the values returned by lua_type.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_typename)
End Rem
  Function lua_typename$z (lua_state:Byte Ptr, tp:Int)                      ' no ~0 expected
Rem
bbdoc: Exchange values between different threads of the same global state.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_xmove)
End Rem
  Function lua_xmove(fromState:Byte Ptr, toState:Byte Ptr, n:Int)
Rem
bbdoc: Yields a coroutine.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_yield)
End Rem
  Function lua_yield:Int (lua_state:Byte Ptr, nresults:Int)
End Extern

' ******************************************************************************
' *                                                                            *
' *                            The Lua API (Macros)                            *
' *                                                                            *
' ******************************************************************************

Rem
bbdoc: 
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_getglobal)
End Rem
  Function lua_getglobal (lua_state:Byte Ptr, name:String)
    lua_getfield(lua_state, LUA_GLOBALSINDEX, name)
  End Function

Rem
bbdoc: Returns 1 if the value at the given acceptable @index has type boolean, and 0 otherwise.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_isboolean)
End Rem
  Function lua_isboolean:Int (lua_state:Byte Ptr, index:Int)
    Return (lua_type(lua_state,index) = LUA_TBOOLEAN)
  End Function

Rem
bbdoc: Returns 1 if the value at the given acceptable @index is a function (either C or Lua), and 0 otherwise.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_isfunction)
End Rem
  Function lua_isfunction:Int (lua_state:Byte Ptr, index:Int)
    Return (lua_type(lua_state,index) = LUA_TFUNCTION)
  End Function

Rem
bbdoc: Returns 1 if the value at the given acceptable @index is a light userdata, and 0 otherwise.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_islightuserdata)
End Rem
  Function lua_islightuserdata:Int (lua_state:Byte Ptr, index:Int)
    Return (lua_type(lua_state,index) = LUA_TLIGHTUSERDATA)
  End Function

Rem
bbdoc: Returns 1 if the value at the given acceptable @index is nil, and 0 otherwise.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_isnil)
End Rem
  Function lua_isnil:Int (lua_state:Byte Ptr, index:Int)
    Return (lua_type(lua_state,index) = LUA_TNIL)
  End Function

Rem
bbdoc: Returns 1 if the given acceptable @index is not valid (that is, it refers to an element outside the current stack), and 0 otherwise.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_isnone)
End Rem
  Function lua_isnone:Int (lua_state:Byte Ptr, index:Int)
    Return (lua_type(lua_state,index) = LUA_TNONE)
  End Function

Rem
bbdoc: Returns 1 if the given acceptable @index is not valid (that is, it refers to an element outside the current stack) or if the value at this index is nil, and 0 otherwise.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_isnoneornil)
End Rem
  Function lua_isnoneornil:Int (lua_state:Byte Ptr, index:Int)
    Return (lua_type(lua_state,index) <= 0)
  End Function

Rem
bbdoc: Returns 1 if the value at the given acceptable index is a table, and 0 otherwise.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_istable)
End Rem
  Function lua_istable:Int (lua_state:Byte Ptr, index:Int)
    Return (lua_type(lua_state,index) = LUA_TTABLE)
  End Function

Rem
bbdoc: Returns 1 if the value at the given acceptable @index is a thread, and 0 otherwise.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_isthread)
End Rem
  Function lua_isthread:Int (lua_state:Byte Ptr, index:Int)
    Return (lua_type(lua_state,index) = LUA_TTHREAD)
  End Function

Rem
bbdoc: Creates a new empty table and pushes it onto the stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_newtable)
End Rem
  Function lua_newtable (lua_state:Byte Ptr)
    lua_createtable(lua_state,0,0)
  End Function

Rem
bbdoc: Pops @n elements from the stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_pop)
End Rem
  Function lua_pop (lua_state:Byte Ptr, n:Int)
    lua_settop(lua_state,-(n)-1)
  End Function

  Function lua_pushbytearray (lua_state:Byte Ptr, Buffer:Byte[])
    lua_pushlstring(lua_state, Varptr Buffer[0], Buffer.length)
  End Function

Rem
bbdoc: Pushes a function onto the stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_pushcfunction)
End Rem
  Function lua_pushcfunction (lua_state:Byte Ptr, fn:Int(ls:Byte Ptr))
    lua_pushcclosure(lua_state, fn, 0)
  End Function

Rem
bbdoc: Sets the function @f as the new value of global @name.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_register)
End Rem
  Function lua_register (lua_state:Byte Ptr, name:String, f:Int(ls:Byte Ptr))
    lua_pushcfunction(lua_state, f)
    lua_setglobal    (lua_state, name)
  End Function

Rem
bbdoc: Pops a value from the stack and sets it as the new value of global @name.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_setglobal)
End Rem
  Function lua_setglobal (lua_state:Byte Ptr, name:String)
    lua_setfield(lua_state, LUA_GLOBALSINDEX, name)
  End Function

  Function lua_tobytearray:Byte[] (lua_state:Byte Ptr, index:Int)
    Local Length:Size_T
    Local DataPtr:Byte Ptr = lua_tolstring(lua_state, index, Varptr Length)
    If (DataPtr = Null) Then
      Return Null
    Else
      Local Result:Byte[] = New Byte[Length]
        MemCopy(Varptr Result[0], DataPtr, Length)
      Return Result
    End If
  End Function

Rem
bbdoc: Equivalent to lua_tolstring with len equal to NULL.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#lua_tostring)
End Rem
  Function lua_tostring:String (lua_state:Byte Ptr, index:Int)
    Local Length:Size_T
    Local StringPtr:Byte Ptr = lua_tolstring(lua_state, index, Varptr Length)
    	If (StringPtr = Null) Then
      Return Null
    Else
    	  Return String.fromBytes(StringPtr,Int(Length))
    End If
  End Function

' ******************************************************************************
' *                                                                            *
' *                     The Auxiliary Library (Functions)                      *
' *                                                                            *
' ******************************************************************************

Extern
  Struct lua_Reg
    Field name:Byte Ptr                                         ' no ~0 expected
    Field func:Int(ls:Byte Ptr)
  End Struct
End Extern

Extern
Rem
bbdoc: Adds the string pointed to by @s with length @l to the buffer @B.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_addlstring)
End Rem
  Function luaL_addlstring (B:Byte Ptr, s:Byte Ptr, l:Int)
Rem
bbdoc: Adds to the buffer @B (see #luaL_Buffer) a string of length @size previously copied to the buffer area
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_addsize)
End Rem
  Function luaL_addsize (B:Byte Ptr, size:Int)
Rem
bbdoc: Adds the zero-terminated string pointed to by @s to the buffer @B.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_addstring)
End Rem
  Function luaL_addstring (B:Byte Ptr, s$z)                                 ' no ~0 allowed!
Rem
bbdoc: Adds the value at the top of the stack to the buffer @B.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_addvalue)
End Rem
  Function luaL_addvalue (B:Byte Ptr)
Rem
bbdoc: Raises an error with the following message, where func is retrieved from the call stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_argerror)
End Rem
  Function luaL_argerror:Int (lua_state:Byte Ptr, narg:Int, extramsg$z)     ' no ~0 expected
Rem
bbdoc: Initializes a buffer @B.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_buffinit)
End Rem
  Function luaL_buffinit (lua_state:Byte Ptr, B:Byte Ptr)
Rem
bbdoc: Calls a metamethod.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_callmeta)
End Rem
  Function luaL_callmeta:Int (lua_state:Byte Ptr, obj:Int, e$z)             ' no ~0 expected
Rem
bbdoc: Checks whether the function has an argument of any type (including nil) at position @narg.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_checkany)
End Rem
  Function luaL_checkany (lua_state:Byte Ptr, narg:Int)
Rem
bbdoc: Checks whether the function argument @narg is a number and returns this number cast to a lua_Integer.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_checkinteger)
End Rem
?ptr64
  Function luaL_checkinteger:Long (lua_state:Byte Ptr, narg:Int)
?Not ptr64
  Function luaL_checkinteger:Int (lua_state:Byte Ptr, narg:Int)
?
Rem
bbdoc: Checks whether the function argument @narg is a string and returns this string.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_checklstring)
End Rem
  Function luaL_checklstring:Byte Ptr (lua_state:Byte Ptr, narg:Int, size:Int Ptr)
Rem
bbdoc: Checks whether the function argument narg is a number and returns this number.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_checknumber)
End Rem
  Function luaL_checknumber:Double (lua_state:Byte Ptr, narg:Int)
' function luaL_checkoption:int (lua_state:byte ptr, narg:int, def$z, lst$z[])
Rem
bbdoc: Grows the stack size to top + @sz elements, raising an error if the stack cannot grow to that size.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_checkstack)
End Rem
  Function luaL_checkstack (lua_state:Byte Ptr, sz:Int, msg$z)                     ' no ~0 expected
Rem
bbdoc: Checks whether the function argument @narg has type @t.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_checktype)
End Rem
  Function luaL_checktype (lua_state:Byte Ptr, narg:Int, t:Int)
Rem
bbdoc: Checks whether the function argument @narg is a userdata of the type @tname.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_checkudata)
End Rem
  Function luaL_checkudata:Byte Ptr (lua_state:Byte Ptr, narg:Int, tname$z)        ' no ~0 expected
' function luaL_error:int (lua_state:byte ptr, fmt$z, ...)
Rem
bbdoc: Pushes onto the stack the field @e from the metatable of the object at index @obj.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_getmetafield)
End Rem
  Function luaL_getmetafield:Int (lua_state:Byte Ptr, obj:Int, e$z)                ' no ~0 expected
Rem
bbdoc: Creates a copy of string @s by replacing any occurrence of the string @p with the string @r.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_gsub)
End Rem
  Function luaL_gsub$z (lua_state:Byte Ptr, s$z, p$z, r$z)                         ' no ~0 expected
Rem
bbdoc: Loads a buffer as a Lua chunk.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_loadbuffer)
End Rem
  Function luaL_loadbuffer:Int (lua_state:Byte Ptr, buff:Byte Ptr, sz:Int, name$z) ' no ~0 expected
Rem
bbdoc: Loads a file as a Lua chunk.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_loadfile)
End Rem
  Function luaL_loadfile:Int (lua_state:Byte Ptr, filename$z)                      ' no ~0 expected
Rem
bbdoc: Loads a string as a Lua chunk.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_loadstring)
End Rem
  Function luaL_loadstring:Int (lua_state:Byte Ptr, s$z)                           ' no ~0 allowed!
Rem
bbdoc: If the registry already has the key @tname, returns 0.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_newmetatable)
End Rem
  Function luaL_newmetatable:Int (lua_state:Byte Ptr, tname$z)                     ' no ~0 expected
Rem
bbdoc: Creates a new Lua state.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_newstate)
End Rem
  Function luaL_newstate:Byte Ptr ()
Rem
bbdoc: Opens all standard Lua libraries into the given state.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_openlibs)
End Rem
  Function luaL_openlibs (lua_state:Byte Ptr)
Rem
bbdoc: If the function argument narg is a number, returns this number cast to a lua_Integer.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_optinteger)
End Rem
?ptr64
  Function luaL_optinteger:Long (lua_state:Byte Ptr, narg:Int, d:Long)
?Not ptr64
  Function luaL_optinteger:Int (lua_state:Byte Ptr, narg:Int, d:Int)
?
Rem
bbdoc: If the function argument @narg is a string, returns this string.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_optlstring)
End Rem
  Function luaL_optlstring:Byte Ptr (lua_state:Byte Ptr, narg:Int, d$z, size:Int Ptr) ' no ~0 expected in "d"
Rem
bbdoc: If the function argument narg is a number, returns this number.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_optnumber)
End Rem
  Function luaL_optnumber:Double (lua_state:Byte Ptr, narg:Int, d:Double)
Rem
bbdoc: Returns an address to a space of size LUAL_BUFFERSIZE where you can copy a string to be added to buffer @B.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_prepbuffer)
End Rem
  Function luaL_prepbuffer:Byte Ptr (B:Byte Ptr)
Rem
bbdoc: Finishes the use of buffer B leaving the final string on the top of the stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_pushresult)
End Rem
  Function luaL_pushresult (B:Byte Ptr)
Rem
bbdoc: Creates and returns a reference, in the table at index @t, for the object at the top of the stack (and pops the object).
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_ref)
End Rem
  Function luaL_ref:Int (lua_state:Byte Ptr, t:Int)
Rem
bbdoc: Opens a library.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_register)
End Rem
  Function luaL_register (lua_state:Byte Ptr, libname$z, l:lua_Reg Ptr)            ' no ~0 expected
Rem
bbdoc: Generates an error with a message.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_typerror)
End Rem
  Function luaL_typerror:Int (lua_state:Byte Ptr, narg:Int, tname$z)               ' no ~0 expected
Rem
bbdoc: Releases reference @ref from the table at index @t.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_unref)
End Rem
  Function luaL_unref (lua_state:Byte Ptr, t:Int, ref:Int)
Rem
bbdoc: Pushes onto the stack a string identifying the current position of the control at level @lvl in the call stack.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_where)
End Rem
  Function luaL_where (lua_state:Byte Ptr, lvl:Int)
End Extern

' ******************************************************************************
' *                                                                            *
' *                       The Auxiliary Library (Macros)                       *
' *                                                                            *
' ******************************************************************************

Rem
bbdoc: Adds the character c to the buffer B. (see #luaL_Buffer).
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_addchar)
End Rem
  Function luaL_addchar (B:Byte Ptr, c:String)
'    luaL_addstring(B,Left$(c,1))     ' not really efficient, just to be complete
	luaL_addstring( B,c[..Min(c.Length,1)] )	'functionally equivalent?
  End Function

Rem
bbdoc: Checks whether @cond is #True.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_argcheck)
End Rem
  Function luaL_argcheck (lua_state:Byte Ptr, cond:Int, narg:Int, extramsg:String)
    If (Not cond) Then luaL_argerror(lua_state, narg, extramsg)
  End Function

Rem
bbdoc: Checks whether the function argument ~narg is a number and returns this number cast to an #Int.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_checkint)
End Rem
  Function luaL_checkint:Int (lua_state:Byte Ptr, narg:Int)
    Return Int(luaL_checkinteger(lua_state, narg))   ' Lua itself does the same!
  End Function

Rem
bbdoc: Checks whether the function argument @narg is a number and returns this number cast to a #Long.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_checklong)
End Rem
  Function luaL_checklong:Long (lua_state:Byte Ptr, narg:Int)
    Return luaL_checkinteger(lua_state, narg)
  End Function

Rem
bbdoc: Checks whether the function argument @narg is a string and returns this string.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_checkstring)
End Rem
  Function luaL_checkstring:String (lua_state:Byte Ptr, narg:Int)
    Local Size:Int
    Local StringPtr:Byte Ptr = luaL_checklstring(lua_state, narg, Varptr Size)
    If (StringPtr = Null) Then
      Return Null
    Else
      Return String.fromBytes(StringPtr,Size)
    End If
  End Function

Rem
bbdoc: Loads and runs the given file.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_dofile)
End Rem
  Function luaL_dofile:Int (lua_state:Byte Ptr, filename:String)
    If (luaL_loadfile(lua_state,filename) <> 0) Then
      Return 1
    Else
      Return lua_pcall(lua_state, 0, LUA_MULTRET, 0)
    End If
  End Function

Rem
bbdoc: Loads and runs the given string.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_dostring)
End Rem
  Function luaL_dostring:Int (lua_state:Byte Ptr, str:String)
    If (luaL_loadstring(lua_state,str) <> 0) Then
      Return 1
    Else
      Return lua_pcall(lua_state, 0, LUA_MULTRET, 0)
    End If
  End Function

Rem
bbdoc: Pushes onto the stack the metatable associated with name @tname in the registry (see #luaL_newmetatable).
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_getmetatable)
End Rem
  Function luaL_getmetatable (lua_state:Byte Ptr, tname:String)
    lua_getfield(lua_state, LUA_REGISTRYINDEX, tname)
  End Function

Rem
bbdoc: If the function argument @narg is a number, returns this number cast to an #Int.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_optint)
End Rem
  Function luaL_optint:Int (lua_state:Byte Ptr, narg:Int, d:Int)
    Return luaL_optinteger(lua_state, narg, d)
  End Function

Rem
bbdoc: If the function argument @narg is a number, returns this number cast to a #Long.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_optlong)
End Rem
  Function luaL_optlong:Long (lua_state:Byte Ptr, narg:Int, d:Long)
    If ((Abs(narg) > lua_gettop(lua_state)) Or lua_isnil(lua_state,narg)) Then
      Return d
    Else
      Return luaL_checklong(lua_state,narg)
    End If
  End Function

Rem
bbdoc: If the function argument @narg is a #String, returns this #String.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_optstring)
End Rem
  Function luaL_optstring:String (lua_state:Byte Ptr, narg:Int, d:String)
    Local Size:Int
    Local StringPtr:Byte Ptr = luaL_optlstring(lua_state, narg, d, Varptr Size)
    If (StringPtr = Null) Then
      Return Null
    Else
      Return String.fromBytes(StringPtr,Size)
    End If
  End Function

Rem
bbdoc: Returns the name of the type of the value at the given index.
about: 
See [Lua Reference Manual](https://www.lua.org/manual/5.1/manual.html#luaL_typename)
End Rem
  Function luaL_typename:String (lua_state:Byte Ptr, idx:Int)
    Return lua_typename(lua_state, lua_type (lua_state,idx))
  End Function

' ******************************************************************************
' *                                                                            *
' *     compatibility extensions (not to break existing axe.lua programs)      *
' *                                                                            *
' ******************************************************************************

Extern
  Function luaopen_base:Int    (lua_state:Byte Ptr)
  Function luaopen_debug:Int   (lua_state:Byte Ptr)
  Function luaopen_io:Int      (lua_state:Byte Ptr)
  Function luaopen_math:Int    (lua_state:Byte Ptr)
  Function luaopen_os:Int      (lua_state:Byte Ptr)
  Function luaopen_package:Int (lua_state:Byte Ptr)
  Function luaopen_string:Int  (lua_state:Byte Ptr)
  Function luaopen_table:Int   (lua_state:Byte Ptr)
End Extern

  Function lua_dobuffer:Int (lua_state:Byte Ptr, buff:String, sz:Int, name:String)
    If (luaL_loadbuffer(lua_state,buff,sz,name) <> 0) Then
      Return 1
    Else
      Return lua_pcall(lua_state, 0, LUA_MULTRET, 0)
    End If
  End Function

  Function lua_dofile:Int (lua_state:Byte Ptr, filename:String)
    Return luaL_dofile(lua_state,filename)
  End Function

  Function lua_dostring:Int (lua_state:Byte Ptr, str:String)
    Return luaL_dostring(lua_state,str)
  End Function

?ptr64
  Function lua_strlen:Long(lua_state:Byte Ptr, index:Int)
    Return lua_objlen(lua_state,index)
  End Function
?Not ptr64
  Function lua_strlen:Int (lua_state:Byte Ptr, index:Int)
    Return lua_objlen(lua_state,index)
  End Function
?
