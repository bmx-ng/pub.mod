SuperStrict
Extern
	Function _mm_addsub_pd:Double128(a:Double128,b:Double128)="_mm_addsub_pd"
	Function _mm_addsub_ps:Float128(a:Float128,b:Float128)="_mm_addsub_ps"
	Function _mm_hadd_pd:Double128(a:Double128,b:Double128)="_mm_hadd_pd"
	Function _mm_hadd_ps:Float128(a:Float128,b:Float128)="_mm_hadd_ps"
	Function _mm_hsub_pd:Double128(a:Double128,b:Double128)="_mm_hsub_pd"
	Function _mm_hsub_ps:Float128(a:Float128,b:Float128)="_mm_hsub_ps"
	Function _mm_lddqu_si128:Int128(mem_addr:Int128 Ptr)="_mm_lddqu_si128"
	Function _mm_loaddup_pd:Double128(mem_addr:Double Ptr)="_mm_loaddup_pd"
	Function _mm_movedup_pd:Double128(a:Double128)="_mm_movedup_pd"
	Function _mm_movehdup_ps:Float128(a:Float128)="_mm_movehdup_ps"
	Function _mm_moveldup_ps:Float128(a:Float128)="_mm_moveldup_ps"
EndExtern
