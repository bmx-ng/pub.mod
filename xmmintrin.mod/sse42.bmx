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
	Function _mm_cmpestra:Int(a:Int128,la:Int,b:Int128,lb:Int,imm8:Int)="int _mm_cmpestra(__m128i ,int ,__m128i ,int ,int )!"
	Function _mm_cmpestrc:Int(a:Int128,la:Int,b:Int128,lb:Int,imm8:Int)="int _mm_cmpestrc(__m128i ,int ,__m128i ,int ,int )!"
	Function _mm_cmpestri:Int(a:Int128,la:Int,b:Int128,lb:Int,imm8:Int)="int _mm_cmpestri(__m128i ,int ,__m128i ,int ,int )!"
	Function _mm_cmpestrm:Int128(a:Int128,la:Int,b:Int128,lb:Int,imm8:Int)="__m128i _mm_cmpestrm(__m128i ,int ,__m128i ,int ,int )!"
	Function _mm_cmpestro:Int(a:Int128,la:Int,b:Int128,lb:Int,imm8:Int)="int _mm_cmpestro(__m128i ,int ,__m128i ,int ,int )!"
	Function _mm_cmpestrs:Int(a:Int128,la:Int,b:Int128,lb:Int,imm8:Int)="int _mm_cmpestrs(__m128i ,int ,__m128i ,int ,int )!"
	Function _mm_cmpestrz:Int(a:Int128,la:Int,b:Int128,lb:Int,imm8:Int)="int _mm_cmpestrz(__m128i ,int ,__m128i ,int ,int )!"
	Function _mm_cmpgt_epi64:Int128(a:Int128,b:Int128)="__m128i _mm_cmpgt_epi64(__m128i ,__m128i )!"
	Function _mm_cmpistra:Int(a:Int128,b:Int128,imm8:Int)="int _mm_cmpistra(__m128i ,__m128i ,int )!"
	Function _mm_cmpistrc:Int(a:Int128,b:Int128,imm8:Int)="int _mm_cmpistrc(__m128i ,__m128i ,int )!"
	Function _mm_cmpistri:Int(a:Int128,b:Int128,imm8:Int)="int _mm_cmpistri(__m128i ,__m128i ,int )!"
	Function _mm_cmpistrm:Int128(a:Int128,b:Int128,imm8:Int)="__m128i _mm_cmpistrm(__m128i ,__m128i ,int )!"
	Function _mm_cmpistro:Int(a:Int128,b:Int128,imm8:Int)="int _mm_cmpistro(__m128i ,__m128i ,int )!"
	Function _mm_cmpistrs:Int(a:Int128,b:Int128,imm8:Int)="int _mm_cmpistrs(__m128i ,__m128i ,int )!"
	Function _mm_cmpistrz:Int(a:Int128,b:Int128,imm8:Int)="int _mm_cmpistrz(__m128i ,__m128i ,int )!"
	Function _mm_crc32_u32:UInt(crc:UInt,v:UInt)="unsigned int _mm_crc32_u32(unsigned int ,unsigned int )!"
	Function _mm_crc32_u64:ULong(crc:ULong,v:ULong)="unsigned __int64 _mm_crc32_u64(unsigned __int64 ,unsigned __int64 )!"
EndExtern
