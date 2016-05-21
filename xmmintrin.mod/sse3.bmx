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
