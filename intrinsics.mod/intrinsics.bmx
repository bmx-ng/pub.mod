'  Copyright (C) 2016 Bruce A Henderson
'
'  This software is provided 'as-is', without any express or implied
'  warranty.  In no event will the authors be held liable for any damages
'  arising from the use of this software.
'
'  Permission is granted to anyone to use this software for any purpose,
'  including commercial applications, and to alter it and redistribute it
'  freely, subject to the following restrictions:
'
'  1. The origin of this software must not be misrepresented; you must not
'     claim that you wrote the original software. If you use this software
'     in a product, an acknowledgment in the product documentation would be
'     appreciated but is not required.
'  2. Altered source versions must be plainly marked as such, and must not be
'     misrepresented as being the original software.
'  3. This notice may not be removed or altered from any source distribution.
'
SuperStrict

Rem
bbdoc: x64 Intrinsics
End Rem
Module Pub.Intrinsics

ModuleInfo "Version: 1.00"
ModuleInfo "Author: Bruce A Henderson"
ModuleInfo "License: zlib/libpng"
ModuleInfo "Copyright: Bruce A Henderson"

?x64

Extern


	Function _mm_set_epi32:Int128(e3:Int, e2:Int, e1:Int, e0:Int) = "_mm_set_epi32"





	' SSE2
	Function _mm_add_pd:Double128(a:Double128, b:Double128) = "_mm_add_pd"
	Function _mm_add_sd:Double128(a:Double128, b:Double128) = "_mm_add_sd"
	Function _mm_and_pd:Double128(a:Double128, b:Double128) = "_mm_and_pd"
	Function _mm_andnot_pd:Double128(a:Double128, b:Double128) = "_mm_andnot_pd"
	Function _mm_castpd_ps:Float128(a:Double128) = "_mm_castpd_ps"
	Function _mm_castpd_si128:Int128(a:Double128) = "_mm_castpd_si128"
	Function _mm_castps_pd:Double128(a:Float128) = "_mm_castps_pd"
	Function _mm_castsi128_pd:Double128(a:Int128) = "_mm_castsi128_pd"
	Function _mm_cmpeq_pd:Double128(a:Double128, b:Double128) = "_mm_cmpeq_pd"
	Function _mm_cmpeq_sd:Double128(a:Double128, b:Double128) = "_mm_cmpeq_sd"
	Function _mm_cmpge_pd:Double128(a:Double128, b:Double128) = "_mm_cmpge_pd"
	Function _mm_cmpge_sd:Double128(a:Double128, b:Double128) = "_mm_cmpge_sd"
	Function _mm_cmpgt_pd:Double128(a:Double128, b:Double128) = "_mm_cmpgt_pd"
	Function _mm_cmpgt_sd:Double128(a:Double128, b:Double128) = "_mm_cmpgt_sd"
	Function _mm_cmple_pd:Double128(a:Double128, b:Double128) = "_mm_cmple_pd"
	Function _mm_cmple_sd:Double128(a:Double128, b:Double128) = "_mm_cmple_sd"
	Function _mm_cmplt_pd:Double128(a:Double128, b:Double128) = "_mm_cmplt_pd"
	Function _mm_cmplt_sd:Double128(a:Double128, b:Double128) = "_mm_cmplt_sd"
	Function _mm_cmpneq_pd:Double128(a:Double128, b:Double128) = "_mm_cmpneq_pd"
	Function _mm_cmpneq_sd:Double128(a:Double128, b:Double128) = "_mm_cmpneq_sd"
	Function _mm_cmpnge_pd:Double128(a:Double128, b:Double128) = "_mm_cmpnge_pd"
	Function _mm_cmpnge_sd:Double128(a:Double128, b:Double128) = "_mm_cmpnge_sd"
	Function _mm_cmpngt_pd:Double128(a:Double128, b:Double128) = "_mm_cmpngt_pd"
	Function _mm_cmpngt_sd:Double128(a:Double128, b:Double128) = "_mm_cmpngt_sd"
	Function _mm_cmpnle_pd:Double128(a:Double128, b:Double128) = "_mm_cmpnle_pd"
	Function _mm_cmpnle_sd:Double128(a:Double128, b:Double128) = "_mm_cmpnle_sd"
	Function _mm_cmpnlt_pd:Double128(a:Double128, b:Double128) = "_mm_cmpnlt_pd"
	Function _mm_cmpnlt_sd:Double128(a:Double128, b:Double128) = "_mm_cmpnlt_sd"
	Function _mm_cmpord_pd:Double128(a:Double128, b:Double128) = "_mm_cmpord_pd"
	Function _mm_cmpord_sd:Double128(a:Double128, b:Double128) = "_mm_cmpord_sd"
	Function _mm_cmpunord_pd:Double128(a:Double128, b:Double128) = "_mm_cmpunord_pd"
	Function _mm_cmpunord_sd:Double128(a:Double128, b:Double128) = "_mm_cmpunord_sd"
	Function _mm_comieq_sd:Int(a:Double128, b:Double128) = "_mm_comieq_sd"
	Function _mm_comige_sd:Int(a:Double128, b:Double128) = "_mm_comige_sd"
	Function _mm_comigt_sd:Int(a:Double128, b:Double128) = "_mm_comigt_sd"
	Function _mm_comile_sd:Int(a:Double128, b:Double128) = "_mm_comile_sd"
	Function _mm_comilt_sd:Int(a:Double128, b:Double128) = "_mm_comilt_sd"
	Function _mm_comineq_sd:Int(a:Double128, b:Double128) = "_mm_comineq_sd"
	Function _mm_cvtepi32_pd:Double128(a:Int128) = "_mm_cvtepi32_pd"
	Function _mm_cvtpd_epi32:Int128(a:Double128) = "_mm_cvtpd_epi32"
	Function _mm_cvtpd_ps:Float128(a:Double128) = "_mm_cvtpd_ps"
	Function _mm_cvtps_pd:Double128(a:Float128) = "_mm_cvtps_pd"
	Function _mm_cvtsd_f64:Double(a:Double128) = "_mm_cvtsd_f64"
	Function _mm_cvtsd_si32:Int(a:Double128) = "_mm_cvtsd_si32"
	Function _mm_cvtsd_si64:Long(a:Double128) = "_mm_cvtsd_si64"
	Function _mm_cvtsd_si64x:Long(a:Double128) = "_mm_cvtsd_si64x"
	Function _mm_cvtsd_ss:Float128(a:Float128, b:Double128) = "_mm_cvtsd_ss"
	Function _mm_cvtsi32_sd:Double128(a:Double128, b:Int) = "_mm_cvtsi32_sd"
	Function _mm_cvtsi64_sd:Double128(a:Double128, b:Long) = "_mm_cvtsi64_sd"
	Function _mm_cvtsi64x_sd:Double128(a:Double128, b:Long) = "_mm_cvtsi64x_sd"
	Function _mm_cvtss_sd:Double128(a:Double128, b:Float128) = "_mm_cvtss_sd"
	Function _mm_cvttpd_epi32:Int128(a:Double128) = "_mm_cvttpd_epi32"
	Function _mm_cvttsd_si32:Int(a:Double128) = "_mm_cvttsd_si32"
	Function _mm_cvttsd_si64:Long(a:Double128) = "_mm_cvttsd_si64"
	Function _mm_cvttsd_si64x:Long(a:Double128) = "_mm_cvttsd_si64x"
	Function _mm_div_pd:Double128(a:Double128, b:Double128) = "_mm_div_pd"
	Function _mm_div_sd:Double128(a:Double128, b:Double128) = "_mm_div_sd"
	Function _mm_load_pd:Double128(mem_addr:Double Ptr) = "_mm_load_pd"
	Function _mm_load_pd1:Double128(mem_addr:Double Ptr) = "_mm_load_pd1"
	Function _mm_load_sd:Double128(mem_addr:Double Ptr) = "_mm_load_sd"
	Function _mm_load1_pd:Double128(mem_addr:Double Ptr) = "_mm_load1_pd"
	Function _mm_loadh_pd:Double128(a:Double128, mem_addr:Double Ptr) = "_mm_loadh_pd"
	Function _mm_loadl_pd:Double128(a:Double128, mem_addr:Double Ptr) = "_mm_loadl_pd"
	Function _mm_loadr_pd:Double128(mem_addr:Double Ptr) = "_mm_loadr_pd"
	Function _mm_loadu_pd:Double128(mem_addr:Double Ptr) = "_mm_loadu_pd"
	Function _mm_max_pd:Double128(a:Double128, b:Double128) = "_mm_max_pd"
	Function _mm_max_sd:Double128(a:Double128, b:Double128) = "_mm_max_sd"
	Function _mm_min_pd:Double128(a:Double128, b:Double128) = "_mm_min_pd"
	Function _mm_min_sd:Double128(a:Double128, b:Double128) = "_mm_min_sd"
	Function _mm_move_sd:Double128(a:Double128, b:Double128) = "_mm_move_sd"
	Function _mm_movemask_pd:Int(a:Double128) = "_mm_movemask_pd"
	Function _mm_mul_pd:Double128(a:Double128, b:Double128) = "_mm_mul_pd"
	Function _mm_mul_sd:Double128(a:Double128, b:Double128) = "_mm_mul_sd"
	Function _mm_or_pd:Double128(a:Double128, b:Double128) = "_mm_or_pd"
	Function _mm_set_pd:Double128(e1:Double, e0:Double) = "_mm_set_pd"
	Function _mm_set_pd1:Double128(a:Double) = "_mm_set_pd1"
	Function _mm_set_sd:Double128(a:Double) = "_mm_set_sd"
	Function _mm_set1_pd:Double128(a:Double) = "_mm_set1_pd"
	Function _mm_setr_pd:Double128(e1:Double, e0:Double) = "_mm_setr_pd"
	Function _mm_setzero_pd:Double128() = "_mm_setzero_pd"
	Function _mm_shuffle_pd:Double128(a:Double128, b:Double128, imm8:Int) = "_mm_shuffle_pd"
	Function _mm_sqrt_pd:Double128(a:Double128) = "_mm_sqrt_pd"
	Function _mm_sqrt_sd:Double128(a:Double128, b:Double128) = "_mm_sqrt_sd"
	Function _mm_store_pd(mem_addr:Double Ptr, a:Double128) = "_mm_store_pd"
	Function _mm_store_pd1(mem_addr:Double Ptr, a:Double128) = "_mm_store_pd1"
	Function _mm_store_sd(mem_addr:Double Ptr, a:Double128) = "_mm_store_sd"
	Function _mm_store1_pd(mem_addr:Double Ptr, a:Double128) = "_mm_store1_pd"
	Function _mm_storeh_pd(mem_addr:Double Ptr, a:Double128) = "_mm_storeh_pd"
	Function _mm_storel_pd(mem_addr:Double Ptr, a:Double128) = "_mm_storel_pd"
	Function _mm_storer_pd(mem_addr:Double Ptr, a:Double128) = "_mm_storer_pd"
	Function _mm_storeu_pd(mem_addr:Double Ptr, a:Double128) = "_mm_storeu_pd"
	Function _mm_stream_pd(mem_addr:Double Ptr, a:Double128) = "_mm_stream_pd"
	Function _mm_sub_pd:Double128(a:Double128, b:Double128) = "_mm_sub_pd"
	Function _mm_sub_sd:Double128(a:Double128, b:Double128) = "_mm_sub_sd"
	Function _mm_ucomieq_sd:Int(a:Double128, b:Double128) = "_mm_ucomieq_sd"
	Function _mm_ucomige_sd:Int(a:Double128, b:Double128) = "_mm_ucomige_sd"
	Function _mm_ucomigt_sd:Int(a:Double128, b:Double128) = "_mm_ucomigt_sd"
	Function _mm_ucomile_sd:Int(a:Double128, b:Double128) = "_mm_ucomile_sd"
	Function _mm_ucomilt_sd:Int(a:Double128, b:Double128) = "_mm_ucomilt_sd"
	Function _mm_ucomineq_sd:Int(a:Double128, b:Double128) = "_mm_ucomineq_sd"
	Function _mm_unpackhi_pd:Double128(a:Double128, b:Double128) = "_mm_unpackhi_pd"
	Function _mm_unpacklo_pd:Double128(a:Double128, b:Double128) = "_mm_unpacklo_pd"
	Function _mm_xor_pd:Double128(a:Double128, b:Double128) = "_mm_xor_pd"


End Extern

?
