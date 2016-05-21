' Copyright (c) 2016 David JJ Camp
' 
' This software is provided 'as-is', without any express or implied
' warranty. In no event will the authors be held liable for any damages
' arising from the use of this software.
'
' Permission is granted to anyone to use this software for any purpose,
' including commercial applications, and to alter it and redistribute it
' freely, subject to the following restrictions:
'
' 1. The origin of this software must not be misrepresented; you must not
'    claim that you wrote the original software. If you use this software
'    in a product, an acknowledgement in the product documentation would be
'    appreciated but is not required.
' 2. Altered source versions must be plainly marked as such, and must not be
'    misrepresented as being the original software.
' 3. This notice may not be removed or altered from any source distribution.
'
SuperStrict
Extern
	Function _mm_cmpestra:Int(a:Int128,la:Int,b:Int128,lb:Int,imm8:Int)="_mm_cmpestra"
	Function _mm_cmpestrc:Int(a:Int128,la:Int,b:Int128,lb:Int,imm8:Int)="_mm_cmpestrc"
	Function _mm_cmpestri:Int(a:Int128,la:Int,b:Int128,lb:Int,imm8:Int)="_mm_cmpestri"
	Function _mm_cmpestrm:Int128(a:Int128,la:Int,b:Int128,lb:Int,imm8:Int)="_mm_cmpestrm"
	Function _mm_cmpestro:Int(a:Int128,la:Int,b:Int128,lb:Int,imm8:Int)="_mm_cmpestro"
	Function _mm_cmpestrs:Int(a:Int128,la:Int,b:Int128,lb:Int,imm8:Int)="_mm_cmpestrs"
	Function _mm_cmpestrz:Int(a:Int128,la:Int,b:Int128,lb:Int,imm8:Int)="_mm_cmpestrz"
	Function _mm_cmpgt_epi64:Int128(a:Int128,b:Int128)="_mm_cmpgt_epi64"
	Function _mm_cmpistra:Int(a:Int128,b:Int128,imm8:Int)="_mm_cmpistra"
	Function _mm_cmpistrc:Int(a:Int128,b:Int128,imm8:Int)="_mm_cmpistrc"
	Function _mm_cmpistri:Int(a:Int128,b:Int128,imm8:Int)="_mm_cmpistri"
	Function _mm_cmpistrm:Int128(a:Int128,b:Int128,imm8:Int)="_mm_cmpistrm"
	Function _mm_cmpistro:Int(a:Int128,b:Int128,imm8:Int)="_mm_cmpistro"
	Function _mm_cmpistrs:Int(a:Int128,b:Int128,imm8:Int)="_mm_cmpistrs"
	Function _mm_cmpistrz:Int(a:Int128,b:Int128,imm8:Int)="_mm_cmpistrz"
	Function _mm_crc32_u32:UInt(crc:UInt,v:UInt)="_mm_crc32_u32"
	Function _mm_crc32_u64:ULong(crc:ULong,v:ULong)="_mm_crc32_u64"
EndExtern
