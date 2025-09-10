' Copyright (c) 2015-2025 Bruce A Henderson
' All rights reserved.
'
' Redistribution and use in source and binary forms, with or without
' modification, are permitted provided that the following conditions are met:
'     * Redistributions of source code must retain the above copyright
'       notice, this list of conditions and the following disclaimer.
'     * Redistributions in binary form must reproduce the above copyright
'       notice, this list of conditions and the following disclaimer in the
'       documentation and/or other materials provided with the distribution.
'     * Neither the name of the author nor the
'       names of its contributors may be used to endorse or promote products
'       derived from this software without specific prior written permission.
'
' THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY
' EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
' WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
' DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
' DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
' (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
' LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
' ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
' (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
' SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
'
SuperStrict

Module Pub.LibUUID

ModuleInfo "Version: 1.04"
ModuleInfo "License: BSD"
ModuleInfo "Copyright: Wrapper - 2015-2025 Bruce A Henderson"

ModuleInfo "History: 1.04"
ModuleInfo "History: Updated to 2.41."
ModuleInfo "History: 1.03"
ModuleInfo "History: Updated for Haiku."
ModuleInfo "History: 1.02"
ModuleInfo "History: Fixed Linux build."
ModuleInfo "History: 1.01"
ModuleInfo "History: Update to util-linux 2.34"
ModuleInfo "History: 1.00"
ModuleInfo "History: Initial Release."

?linux
ModuleInfo "CC_OPTS: -DHAVE_NANOSLEEP -DHAVE_STRNDUP -DHAVE_SYS_FILE_H"
?macos
ModuleInfo "CC_OPTS: -DHAVE_NANOSLEEP"
?haiku
ModuleInfo "CC_OPTS: -DHAVE_NANOSLEEP -DHAVE_STRNDUP -DHAVE_SYS_FILE_H"
?


Import "include/*.h"
Import "libuuid/src/*.h"

Import "libuuid/src/clear.c"
Import "libuuid/src/compare.c"
Import "libuuid/src/copy.c"
Import "libuuid/src/gen_uuid.c"
Import "libuuid/src/isnull.c"
Import "libuuid/src/pack.c"
Import "libuuid/src/parse.c"
Import "libuuid/src/unpack.c"
Import "libuuid/src/unparse.c"
Import "libuuid/src/uuid_time.c"

Import "lib/sha1.c"
Import "lib/md5.c"

Import "glue.c"

?win32
Import "-ladvapi32"
?

Extern
	Function strlen:Int(out:Byte Ptr)

	Function uuid_generate(buf:Byte Ptr)
	Function uuid_unparse(buf:Byte Ptr, out:Byte Ptr)
	Function uuid_unparse_upper(buf:Byte Ptr, out:Byte Ptr)
	
End Extern
