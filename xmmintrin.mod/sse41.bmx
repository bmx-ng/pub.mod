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
	Function _mm_blend_epi16:Int128(a:Int128,b:Int128,imm8:Int)="__m128i _mm_blend_epi16(__m128i ,__m128i ,int )!"
	Function _mm_blend_pd:Double128(a:Double128,b:Double128,imm8:Int)="__m128d _mm_blend_pd(__m128d ,__m128d ,int )!"
	Function _mm_blend_ps:Float128(a:Float128,b:Float128,imm8:Int)="__m128 _mm_blend_ps(__m128 ,__m128 ,int )!"
	Function _mm_blendv_epi8:Int128(a:Int128,b:Int128,mask:Int128)="__m128i _mm_blendv_epi8(__m128i ,__m128i ,__m128i )!"
	Function _mm_blendv_pd:Double128(a:Double128,b:Double128,mask:Double128)="__m128d _mm_blendv_pd(__m128d ,__m128d ,__m128d )!"
	Function _mm_blendv_ps:Float128(a:Float128,b:Float128,mask:Float128)="__m128 _mm_blendv_ps(__m128 ,__m128 ,__m128 )!"
	Function _mm_ceil_pd:Double128(a:Double128)="__m128d _mm_ceil_pd(__m128d )!"
	Function _mm_ceil_ps:Float128(a:Float128)="__m128 _mm_ceil_ps(__m128 )!"
	Function _mm_ceil_sd:Double128(a:Double128,b:Double128)="__m128d _mm_ceil_sd(__m128d ,__m128d )!"
	Function _mm_ceil_ss:Float128(a:Float128,b:Float128)="__m128 _mm_ceil_ss(__m128 ,__m128 )!"
	Function _mm_cmpeq_epi64:Int128(a:Int128,b:Int128)="__m128i _mm_cmpeq_epi64(__m128i ,__m128i )!"
	Function _mm_cvtepi16_epi32:Int128(a:Int128)="__m128i _mm_cvtepi16_epi32(__m128i )!"
	Function _mm_cvtepi16_epi64:Int128(a:Int128)="__m128i _mm_cvtepi16_epi64(__m128i )!"
	Function _mm_cvtepi32_epi64:Int128(a:Int128)="__m128i _mm_cvtepi32_epi64(__m128i )!"
	Function _mm_cvtepi8_epi16:Int128(a:Int128)="__m128i _mm_cvtepi8_epi16(__m128i )!"
	Function _mm_cvtepi8_epi32:Int128(a:Int128)="__m128i _mm_cvtepi8_epi32(__m128i )!"
	Function _mm_cvtepi8_epi64:Int128(a:Int128)="__m128i _mm_cvtepi8_epi64(__m128i )!"
	Function _mm_cvtepu16_epi32:Int128(a:Int128)="__m128i _mm_cvtepu16_epi32(__m128i )!"
	Function _mm_cvtepu16_epi64:Int128(a:Int128)="__m128i _mm_cvtepu16_epi64(__m128i )!"
	Function _mm_cvtepu32_epi64:Int128(a:Int128)="__m128i _mm_cvtepu32_epi64(__m128i )!"
	Function _mm_cvtepu8_epi16:Int128(a:Int128)="__m128i _mm_cvtepu8_epi16(__m128i )!"
	Function _mm_cvtepu8_epi32:Int128(a:Int128)="__m128i _mm_cvtepu8_epi32(__m128i )!"
	Function _mm_cvtepu8_epi64:Int128(a:Int128)="__m128i _mm_cvtepu8_epi64(__m128i )!"
	Function _mm_dp_pd:Double128(a:Double128,b:Double128,imm8:Int)="__m128d _mm_dp_pd(__m128d ,__m128d ,int )!"
	Function _mm_dp_ps:Float128(a:Float128,b:Float128,imm8:Int)="__m128 _mm_dp_ps(__m128 ,__m128 ,int )!"
	Function _mm_extract_epi32:Int(a:Int128,imm8:Int)="int _mm_extract_epi32(__m128i ,int )!"
	Function _mm_extract_epi64:Long(a:Int128,imm8:Int)="__int64 _mm_extract_epi64(__m128i ,int )!"
	Function _mm_extract_epi8:Int(a:Int128,imm8:Int)="int _mm_extract_epi8(__m128i ,int )!"
	Function _mm_extract_ps:Int(a:Float128,imm8:Int)="int _mm_extract_ps(__m128 ,int )!"
	Function _mm_floor_pd:Double128(a:Double128)="__m128d _mm_floor_pd(__m128d )!"
	Function _mm_floor_ps:Float128(a:Float128)="__m128 _mm_floor_ps(__m128 )!"
	Function _mm_floor_sd:Double128(a:Double128,b:Double128)="__m128d _mm_floor_sd(__m128d ,__m128d )!"
	Function _mm_floor_ss:Float128(a:Float128,b:Float128)="__m128 _mm_floor_ss(__m128 ,__m128 )!"
	Function _mm_insert_epi32:Int128(a:Int128,i:Int,imm8:Int)="__m128i _mm_insert_epi32(__m128i ,int ,int )!"
	Function _mm_insert_epi64:Int128(a:Int128,i:Long,imm8:Int)="__m128i _mm_insert_epi64(__m128i ,__int64 ,int )!"
	Function _mm_insert_epi8:Int128(a:Int128,i:Int,imm8:Int)="__m128i _mm_insert_epi8(__m128i ,int ,int )!"
	Function _mm_insert_ps:Float128(a:Float128,b:Float128,imm8:Int)="__m128 _mm_insert_ps(__m128 ,__m128 ,int )!"
	Function _mm_max_epi32:Int128(a:Int128,b:Int128)="__m128i _mm_max_epi32(__m128i ,__m128i )!"
	Function _mm_max_epi8:Int128(a:Int128,b:Int128)="__m128i _mm_max_epi8(__m128i ,__m128i )!"
	Function _mm_max_epu16:Int128(a:Int128,b:Int128)="__m128i _mm_max_epu16(__m128i ,__m128i )!"
	Function _mm_max_epu32:Int128(a:Int128,b:Int128)="__m128i _mm_max_epu32(__m128i ,__m128i )!"
	Function _mm_min_epi32:Int128(a:Int128,b:Int128)="__m128i _mm_min_epi32(__m128i ,__m128i )!"
	Function _mm_min_epi8:Int128(a:Int128,b:Int128)="__m128i _mm_min_epi8(__m128i ,__m128i )!"
	Function _mm_min_epu16:Int128(a:Int128,b:Int128)="__m128i _mm_min_epu16(__m128i ,__m128i )!"
	Function _mm_min_epu32:Int128(a:Int128,b:Int128)="__m128i _mm_min_epu32(__m128i ,__m128i )!"
	Function _mm_minpos_epu16:Int128(a:Int128)="__m128i _mm_minpos_epu16(__m128i )!"
	Function _mm_mpsadbw_epu8:Int128(a:Int128,b:Int128,imm8:Int)="__m128i _mm_mpsadbw_epu8(__m128i ,__m128i ,int )!"
	Function _mm_mul_epi32:Int128(a:Int128,b:Int128)="__m128i _mm_mul_epi32(__m128i ,__m128i )!"
	Function _mm_mullo_epi32:Int128(a:Int128,b:Int128)="__m128i _mm_mullo_epi32(__m128i ,__m128i )!"
	Function _mm_packus_epi32:Int128(a:Int128,b:Int128)="__m128i _mm_packus_epi32(__m128i ,__m128i )!"
	Function _mm_round_pd:Double128(a:Double128,rounding:Int)="__m128d _mm_round_pd(__m128d ,int )!"
	Function _mm_round_ps:Float128(a:Float128,rounding:Int)="__m128 _mm_round_ps(__m128 ,int )!"
	Function _mm_round_sd:Double128(a:Double128,b:Double128,rounding:Int)="__m128d _mm_round_sd(__m128d ,__m128d ,int )!"
	Function _mm_round_ss:Float128(a:Float128,b:Float128,rounding:Int)="__m128 _mm_round_ss(__m128 ,__m128 ,int )!"
	Function _mm_stream_load_si128:Int128(mem_addr:Int128 Ptr)="__m128i _mm_stream_load_si128(__m128i* )!"
	Function _mm_test_all_ones:Int(a:Int128)="int _mm_test_all_ones(__m128i )!"
	Function _mm_test_all_zeros:Int(a:Int128,mask:Int128)="int _mm_test_all_zeros(__m128i ,__m128i )!"
	Function _mm_test_mix_ones_zeros:Int(a:Int128,mask:Int128)="int _mm_test_mix_ones_zeros(__m128i ,__m128i )!"
	Function _mm_testc_si128:Int(a:Int128,b:Int128)="int _mm_testc_si128(__m128i ,__m128i )!"
	Function _mm_testnzc_si128:Int(a:Int128,b:Int128)="int _mm_testnzc_si128(__m128i ,__m128i )!"
	Function _mm_testz_si128:Int(a:Int128,b:Int128)="int _mm_testz_si128(__m128i ,__m128i )!"
EndExtern
