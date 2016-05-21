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
	Function _mm_abs_epi16:Int128(a:Int128)="_mm_abs_epi16"
	Function _mm_abs_epi32:Int128(a:Int128)="_mm_abs_epi32"
	Function _mm_abs_epi8:Int128(a:Int128)="_mm_abs_epi8"
	Function _mm_abs_pi16:Float64(a:Float64)="_mm_abs_pi16"
	Function _mm_abs_pi32:Float64(a:Float64)="_mm_abs_pi32"
	Function _mm_abs_pi8:Float64(a:Float64)="_mm_abs_pi8"
	Function _mm_alignr_epi8:Int128(a:Int128,b:Int128,count:Int)="_mm_alignr_epi8"
	Function _mm_alignr_pi8:Float64(a:Float64,b:Float64,count:Int)="_mm_alignr_pi8"
	Function _mm_hadd_epi16:Int128(a:Int128,b:Int128)="_mm_hadd_epi16"
	Function _mm_hadd_epi32:Int128(a:Int128,b:Int128)="_mm_hadd_epi32"
	Function _mm_hadd_pi16:Float64(a:Float64,b:Float64)="_mm_hadd_pi16"
	Function _mm_hadd_pi32:Float64(a:Float64,b:Float64)="_mm_hadd_pi32"
	Function _mm_hadds_epi16:Int128(a:Int128,b:Int128)="_mm_hadds_epi16"
	Function _mm_hadds_pi16:Float64(a:Float64,b:Float64)="_mm_hadds_pi16"
	Function _mm_hsub_epi16:Int128(a:Int128,b:Int128)="_mm_hsub_epi16"
	Function _mm_hsub_epi32:Int128(a:Int128,b:Int128)="_mm_hsub_epi32"
	Function _mm_hsub_pi16:Float64(a:Float64,b:Float64)="_mm_hsub_pi16"
	Function _mm_hsub_pi32:Float64(a:Float64,b:Float64)="_mm_hsub_pi32"
	Function _mm_hsubs_epi16:Int128(a:Int128,b:Int128)="_mm_hsubs_epi16"
	Function _mm_hsubs_pi16:Float64(a:Float64,b:Float64)="_mm_hsubs_pi16"
	Function _mm_maddubs_epi16:Int128(a:Int128,b:Int128)="_mm_maddubs_epi16"
	Function _mm_maddubs_pi16:Float64(a:Float64,b:Float64)="_mm_maddubs_pi16"
	Function _mm_mulhrs_epi16:Int128(a:Int128,b:Int128)="_mm_mulhrs_epi16"
	Function _mm_mulhrs_pi16:Float64(a:Float64,b:Float64)="_mm_mulhrs_pi16"
	Function _mm_shuffle_epi8:Int128(a:Int128,b:Int128)="_mm_shuffle_epi8"
	Function _mm_shuffle_pi8:Float64(a:Float64,b:Float64)="_mm_shuffle_pi8"
	Function _mm_sign_epi16:Int128(a:Int128,b:Int128)="_mm_sign_epi16"
	Function _mm_sign_epi32:Int128(a:Int128,b:Int128)="_mm_sign_epi32"
	Function _mm_sign_epi8:Int128(a:Int128,b:Int128)="_mm_sign_epi8"
	Function _mm_sign_pi16:Float64(a:Float64,b:Float64)="_mm_sign_pi16"
	Function _mm_sign_pi32:Float64(a:Float64,b:Float64)="_mm_sign_pi32"
	Function _mm_sign_pi8:Float64(a:Float64,b:Float64)="_mm_sign_pi8"
EndExtern
