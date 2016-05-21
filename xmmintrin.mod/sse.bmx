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
	Function _mm_add_ps:Float128(a:Float128,b:Float128)="_mm_add_ps"
	Function _mm_add_ss:Float128(a:Float128,b:Float128)="_mm_add_ss"
	Function _mm_and_ps:Float128(a:Float128,b:Float128)="_mm_and_ps"
	Function _mm_andnot_ps:Float128(a:Float128,b:Float128)="_mm_andnot_ps"
	Function _mm_avg_pu16:Float64(a:Float64,b:Float64)="_mm_avg_pu16"
	Function _mm_avg_pu8:Float64(a:Float64,b:Float64)="_mm_avg_pu8"
	Function _mm_cmpeq_ps:Float128(a:Float128,b:Float128)="_mm_cmpeq_ps"
	Function _mm_cmpeq_ss:Float128(a:Float128,b:Float128)="_mm_cmpeq_ss"
	Function _mm_cmpge_ps:Float128(a:Float128,b:Float128)="_mm_cmpge_ps"
	Function _mm_cmpge_ss:Float128(a:Float128,b:Float128)="_mm_cmpge_ss"
	Function _mm_cmpgt_ps:Float128(a:Float128,b:Float128)="_mm_cmpgt_ps"
	Function _mm_cmpgt_ss:Float128(a:Float128,b:Float128)="_mm_cmpgt_ss"
	Function _mm_cmple_ps:Float128(a:Float128,b:Float128)="_mm_cmple_ps"
	Function _mm_cmple_ss:Float128(a:Float128,b:Float128)="_mm_cmple_ss"
	Function _mm_cmplt_ps:Float128(a:Float128,b:Float128)="_mm_cmplt_ps"
	Function _mm_cmplt_ss:Float128(a:Float128,b:Float128)="_mm_cmplt_ss"
	Function _mm_cmpneq_ps:Float128(a:Float128,b:Float128)="_mm_cmpneq_ps"
	Function _mm_cmpneq_ss:Float128(a:Float128,b:Float128)="_mm_cmpneq_ss"
	Function _mm_cmpnge_ps:Float128(a:Float128,b:Float128)="_mm_cmpnge_ps"
	Function _mm_cmpnge_ss:Float128(a:Float128,b:Float128)="_mm_cmpnge_ss"
	Function _mm_cmpngt_ps:Float128(a:Float128,b:Float128)="_mm_cmpngt_ps"
	Function _mm_cmpngt_ss:Float128(a:Float128,b:Float128)="_mm_cmpngt_ss"
	Function _mm_cmpnle_ps:Float128(a:Float128,b:Float128)="_mm_cmpnle_ps"
	Function _mm_cmpnle_ss:Float128(a:Float128,b:Float128)="_mm_cmpnle_ss"
	Function _mm_cmpnlt_ps:Float128(a:Float128,b:Float128)="_mm_cmpnlt_ps"
	Function _mm_cmpnlt_ss:Float128(a:Float128,b:Float128)="_mm_cmpnlt_ss"
	Function _mm_cmpord_ps:Float128(a:Float128,b:Float128)="_mm_cmpord_ps"
	Function _mm_cmpord_ss:Float128(a:Float128,b:Float128)="_mm_cmpord_ss"
	Function _mm_cmpunord_ps:Float128(a:Float128,b:Float128)="_mm_cmpunord_ps"
	Function _mm_cmpunord_ss:Float128(a:Float128,b:Float128)="_mm_cmpunord_ss"
	Function _mm_comieq_ss:Int(a:Float128,b:Float128)="_mm_comieq_ss"
	Function _mm_comige_ss:Int(a:Float128,b:Float128)="_mm_comige_ss"
	Function _mm_comigt_ss:Int(a:Float128,b:Float128)="_mm_comigt_ss"
	Function _mm_comile_ss:Int(a:Float128,b:Float128)="_mm_comile_ss"
	Function _mm_comilt_ss:Int(a:Float128,b:Float128)="_mm_comilt_ss"
	Function _mm_comineq_ss:Int(a:Float128,b:Float128)="_mm_comineq_ss"
	Function _mm_cvt_pi2ps:Float128(a:Float128,b:Float64)="_mm_cvt_pi2ps"
	Function _mm_cvt_ps2pi:Float64(a:Float128)="_mm_cvt_ps2pi"
	Function _mm_cvt_si2ss:Float128(a:Float128,b:Int)="_mm_cvt_si2ss"
	Function _mm_cvt_ss2si:Int(a:Float128)="_mm_cvt_ss2si"
	Function _mm_cvtpi16_ps:Float128(a:Float64)="_mm_cvtpi16_ps"
	Function _mm_cvtpi32_ps:Float128(a:Float128,b:Float64)="_mm_cvtpi32_ps"
	Function _mm_cvtpi32x2_ps:Float128(a:Float64,b:Float64)="_mm_cvtpi32x2_ps"
	Function _mm_cvtpi8_ps:Float128(a:Float64)="_mm_cvtpi8_ps"
	Function _mm_cvtps_pi16:Float64(a:Float128)="_mm_cvtps_pi16"
	Function _mm_cvtps_pi32:Float64(a:Float128)="_mm_cvtps_pi32"
	Function _mm_cvtps_pi8:Float64(a:Float128)="_mm_cvtps_pi8"
	Function _mm_cvtpu16_ps:Float128(a:Float64)="_mm_cvtpu16_ps"
	Function _mm_cvtpu8_ps:Float128(a:Float64)="_mm_cvtpu8_ps"
	Function _mm_cvtsi32_ss:Float128(a:Float128,b:Int)="_mm_cvtsi32_ss"
	Function _mm_cvtsi64_ss:Float128(a:Float128,b:Long)="_mm_cvtsi64_ss"
	Function _mm_cvtss_f32:Float(a:Float128)="_mm_cvtss_f32"
	Function _mm_cvtss_si32:Int(a:Float128)="_mm_cvtss_si32"
	Function _mm_cvtss_si64:Long(a:Float128)="_mm_cvtss_si64"
	Function _mm_cvtt_ps2pi:Float64(a:Float128)="_mm_cvtt_ps2pi"
	Function _mm_cvtt_ss2si:Int(a:Float128)="_mm_cvtt_ss2si"
	Function _mm_cvttps_pi32:Float64(a:Float128)="_mm_cvttps_pi32"
	Function _mm_cvttss_si32:Int(a:Float128)="_mm_cvttss_si32"
	Function _mm_cvttss_si64:Long(a:Float128)="_mm_cvttss_si64"
	Function _mm_div_ps:Float128(a:Float128,b:Float128)="_mm_div_ps"
	Function _mm_div_ss:Float128(a:Float128,b:Float128)="_mm_div_ss"
	Function _mm_extract_pi16:Int(a:Float64,imm8:Int)="_mm_extract_pi16"
	Function _MM_GET_EXCEPTION_MASK:UInt()="_MM_GET_EXCEPTION_MASK"
	Function _MM_GET_EXCEPTION_STATE:UInt()="_MM_GET_EXCEPTION_STATE"
	Function _MM_GET_FLUSH_ZERO_MODE:UInt()="_MM_GET_FLUSH_ZERO_MODE"
	Function _MM_GET_ROUNDING_MODE:UInt()="_MM_GET_ROUNDING_MODE"
	Function _mm_getcsr:UInt()="_mm_getcsr"
	Function _mm_insert_pi16:Float64(a:Float64,i:Int,imm8:Int)="_mm_insert_pi16"
	Function _mm_load_ps:Float128(mem_addr:Float Ptr)="_mm_load_ps"
	Function _mm_load_ps1:Float128(mem_addr:Float Ptr)="_mm_load_ps1"
	Function _mm_load_ss:Float128(mem_addr:Float Ptr)="_mm_load_ss"
	Function _mm_load1_ps:Float128(mem_addr:Float Ptr)="_mm_load1_ps"
	Function _mm_loadh_pi:Float128(a:Float128,mem_addr:Float64 Ptr)="_mm_loadh_pi"
	Function _mm_loadl_pi:Float128(a:Float128,mem_addr:Float64 Ptr)="_mm_loadl_pi"
	Function _mm_loadr_ps:Float128(mem_addr:Float Ptr)="_mm_loadr_ps"
	Function _mm_loadu_ps:Float128(mem_addr:Float Ptr)="_mm_loadu_ps"
	Function _mm_maskmove_si64(a:Float64,mask:Float64,mem_addr:Byte Ptr)="_mm_maskmove_si64"
	Function _m_maskmovq(a:Float64,mask:Float64,mem_addr:Byte Ptr)="_m_maskmovq"
	Function _mm_max_pi16:Float64(a:Float64,b:Float64)="_mm_max_pi16"
	Function _mm_max_ps:Float128(a:Float128,b:Float128)="_mm_max_ps"
	Function _mm_max_pu8:Float64(a:Float64,b:Float64)="_mm_max_pu8"
	Function _mm_max_ss:Float128(a:Float128,b:Float128)="_mm_max_ss"
	Function _mm_min_pi16:Float64(a:Float64,b:Float64)="_mm_min_pi16"
	Function _mm_min_ps:Float128(a:Float128,b:Float128)="_mm_min_ps"
	Function _mm_min_pu8:Float64(a:Float64,b:Float64)="_mm_min_pu8"
	Function _mm_min_ss:Float128(a:Float128,b:Float128)="_mm_min_ss"
	Function _mm_move_ss:Float128(a:Float128,b:Float128)="_mm_move_ss"
	Function _mm_movehl_ps:Float128(a:Float128,b:Float128)="_mm_movehl_ps"
	Function _mm_movelh_ps:Float128(a:Float128,b:Float128)="_mm_movelh_ps"
	Function _mm_movemask_pi8:Int(a:Float64)="_mm_movemask_pi8"
	Function _mm_movemask_ps:Int(a:Float128)="_mm_movemask_ps"
	Function _mm_mul_ps:Float128(a:Float128,b:Float128)="_mm_mul_ps"
	Function _mm_mul_ss:Float128(a:Float128,b:Float128)="_mm_mul_ss"
	Function _mm_mulhi_pu16:Float64(a:Float64,b:Float64)="_mm_mulhi_pu16"
	Function _mm_or_ps:Float128(a:Float128,b:Float128)="_mm_or_ps"
	Function _m_pavgb:Float64(a:Float64,b:Float64)="_m_pavgb"
	Function _m_pavgw:Float64(a:Float64,b:Float64)="_m_pavgw"
	Function _m_pextrw:Int(a:Float64,imm8:Int)="_m_pextrw"
	Function _m_pinsrw:Float64(a:Float64,i:Int,imm8:Int)="_m_pinsrw"
	Function _m_pmaxsw:Float64(a:Float64,b:Float64)="_m_pmaxsw"
	Function _m_pmaxub:Float64(a:Float64,b:Float64)="_m_pmaxub"
	Function _m_pminsw:Float64(a:Float64,b:Float64)="_m_pminsw"
	Function _m_pminub:Float64(a:Float64,b:Float64)="_m_pminub"
	Function _m_pmovmskb:Int(a:Float64)="_m_pmovmskb"
	Function _m_pmulhuw:Float64(a:Float64,b:Float64)="_m_pmulhuw"
	Function _mm_prefetch(p:Byte Ptr,i:Int)="_mm_prefetch"
	Function _m_psadbw:Float64(a:Float64,b:Float64)="_m_psadbw"
	Function _m_pshufw:Float64(a:Float64,imm8:Int)="_m_pshufw"
	Function _mm_rcp_ps:Float128(a:Float128)="_mm_rcp_ps"
	Function _mm_rcp_ss:Float128(a:Float128)="_mm_rcp_ss"
	Function _mm_rsqrt_ps:Float128(a:Float128)="_mm_rsqrt_ps"
	Function _mm_rsqrt_ss:Float128(a:Float128)="_mm_rsqrt_ss"
	Function _mm_sad_pu8:Float64(a:Float64,b:Float64)="_mm_sad_pu8"
	Function _MM_SET_EXCEPTION_MASK(a:UInt)="_MM_SET_EXCEPTION_MASK"
	Function _MM_SET_EXCEPTION_STATE(a:UInt)="_MM_SET_EXCEPTION_STATE"
	Function _MM_SET_FLUSH_ZERO_MODE(a:UInt)="_MM_SET_FLUSH_ZERO_MODE"
	Function _mm_set_ps:Float128(e3:Float,e2:Float,e1:Float,e0:Float)="_mm_set_ps"
	Function _mm_set_ps1:Float128(a:Float)="_mm_set_ps1"
	Function _MM_SET_ROUNDING_MODE(a:UInt)="_MM_SET_ROUNDING_MODE"
	Function _mm_set_ss:Float128(a:Float)="_mm_set_ss"
	Function _mm_set1_ps:Float128(a:Float)="_mm_set1_ps"
	Function _mm_setcsr(a:UInt)="_mm_setcsr"
	Function _mm_setr_ps:Float128(e3:Float,e2:Float,e1:Float,e0:Float)="_mm_setr_ps"
	Function _mm_setzero_ps:Float128()="_mm_setzero_ps"
	Function _mm_sfence()="_mm_sfence"
	Function _mm_shuffle_pi16:Float64(a:Float64,imm8:Int)="_mm_shuffle_pi16"
	Function _mm_shuffle_ps:Float128(a:Float128,b:Float128,imm8:UInt)="_mm_shuffle_ps"
	Function _mm_sqrt_ps:Float128(a:Float128)="_mm_sqrt_ps"
	Function _mm_sqrt_ss:Float128(a:Float128)="_mm_sqrt_ss"
	Function _mm_store_ps(mem_addr:Float Ptr,a:Float128)="_mm_store_ps"
	Function _mm_store_ps1(mem_addr:Float Ptr,a:Float128)="_mm_store_ps1"
	Function _mm_store_ss(mem_addr:Float Ptr,a:Float128)="_mm_store_ss"
	Function _mm_store1_ps(mem_addr:Float Ptr,a:Float128)="_mm_store1_ps"
	Function _mm_storeh_pi(mem_addr:Float64 Ptr,a:Float128)="_mm_storeh_pi"
	Function _mm_storel_pi(mem_addr:Float64 Ptr,a:Float128)="_mm_storel_pi"
	Function _mm_storer_ps(mem_addr:Float Ptr,a:Float128)="_mm_storer_ps"
	Function _mm_storeu_ps(mem_addr:Float Ptr,a:Float128)="_mm_storeu_ps"
	Function _mm_stream_pi(mem_addr:Float64 Ptr,a:Float64)="_mm_stream_pi"
	Function _mm_stream_ps(mem_addr:Float Ptr,a:Float128)="_mm_stream_ps"
	Function _mm_sub_ps:Float128(a:Float128,b:Float128)="_mm_sub_ps"
	Function _mm_sub_ss:Float128(a:Float128,b:Float128)="_mm_sub_ss"
	Function _mm_ucomieq_ss:Int(a:Float128,b:Float128)="_mm_ucomieq_ss"
	Function _mm_ucomige_ss:Int(a:Float128,b:Float128)="_mm_ucomige_ss"
	Function _mm_ucomigt_ss:Int(a:Float128,b:Float128)="_mm_ucomigt_ss"
	Function _mm_ucomile_ss:Int(a:Float128,b:Float128)="_mm_ucomile_ss"
	Function _mm_ucomilt_ss:Int(a:Float128,b:Float128)="_mm_ucomilt_ss"
	Function _mm_ucomineq_ss:Int(a:Float128,b:Float128)="_mm_ucomineq_ss"
	Function _mm_unpackhi_ps:Float128(a:Float128,b:Float128)="_mm_unpackhi_ps"
	Function _mm_unpacklo_ps:Float128(a:Float128,b:Float128)="_mm_unpacklo_ps"
	Function _mm_xor_ps:Float128(a:Float128,b:Float128)="_mm_xor_ps"
EndExtern
