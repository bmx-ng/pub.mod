SuperStrict

Module Pub.LibPNG

ModuleInfo "Version: 1.10"
ModuleInfo "Author: Guy Eric Schalnat, Andreas Dilger, Glenn Randers-Pehrson, Others"
ModuleInfo "License: ZLib/PNG License"
ModuleInfo "Modserver: BRL"
ModuleInfo "Credit: Adapted for BlitzMax by Mark Sibly"

ModuleInfo "History: 1.10"
ModuleInfo "History: Update to libpng 1.6.37."
ModuleInfo "History: Fixed prefixes. Fixed rpi linkage."
ModuleInfo "History: 1.09"
ModuleInfo "History: Update to libpng 1.6.34."
ModuleInfo "History: Enabled SSE for x86 and x64."
ModuleInfo "History: 1.08"
ModuleInfo "History: Exposed user data."
ModuleInfo "History: 1.07"
ModuleInfo "History: Update to libpng 1.6.27"
ModuleInfo "History: 1.06"
ModuleInfo "History: Update to libpng 1.6.21"
ModuleInfo "History: 1.05"
ModuleInfo "History: Update to libpng 1.6.18"
ModuleInfo "History: Added iOS/arm support."
ModuleInfo "History: 1.04"
ModuleInfo "History: Update to libpng 1.6.7"
ModuleInfo "History: Use bmx_ prefix."
ModuleInfo "History: 1.03"
ModuleInfo "History: Fixed for Intel Macs"
ModuleInfo "History: 1.02"
ModuleInfo "History: Update to libpng 1.2.12"

?x86
ModuleInfo "CC_OPTS: -DPNG_INTEL_SSE"
?x64
ModuleInfo "CC_OPTS: -DPNG_INTEL_SSE"
?

Import Pub.ZLib

Import "png.c"
Import "pngerror.c"
Import "pngget.c"
Import "pngmem.c"
Import "pngpread.c"
Import "pngread.c"
Import "pngrio.c"
Import "pngrtran.c"
Import "pngrutil.c"
Import "pngset.c"
Import "pngtrans.c"
Import "pngwio.c"
Import "pngwrite.c"
Import "pngwtran.c"
Import "pngwutil.c"
?armv7 or arm64 or arm
Import "arm/arm_init.c"
Import "arm/filter_neon_intrinsics.c"
Import "arm/palette_neon_intrinsics.c"
?x86
Import "intel/filter_sse2_intrinsics.c"
Import "intel/intel_init.c"
?x64
Import "intel/filter_sse2_intrinsics.c"
Import "intel/intel_init.c"
?

Extern

Const PNG_COLOR_MASK_PALETTE:Int=		1
Const PNG_COLOR_MASK_COLOR:Int=			2
Const PNG_COLOR_MASK_ALPHA:Int=			4

Const PNG_COLOR_TYPE_GRAY:Int=			0
Const PNG_COLOR_TYPE_PALETTE:Int=		(PNG_COLOR_MASK_COLOR | PNG_COLOR_MASK_PALETTE)
Const PNG_COLOR_TYPE_RGB:Int=			(PNG_COLOR_MASK_COLOR)
Const PNG_COLOR_TYPE_RGB_ALPHA:Int=		(PNG_COLOR_MASK_COLOR | PNG_COLOR_MASK_ALPHA)
Const PNG_COLOR_TYPE_GRAY_ALPHA:Int=	(PNG_COLOR_MASK_ALPHA)
Const PNG_COLOR_TYPE_RGBA:Int=			PNG_COLOR_TYPE_RGB_ALPHA
Const PNG_COLOR_TYPE_GA:Int=			PNG_COLOR_TYPE_GRAY_ALPHA

Const PNG_TRANSFORM_IDENTITY:Int=		$0000		'read and write
Const PNG_TRANSFORM_STRIP_16:Int=		$0001		'read only
Const PNG_TRANSFORM_STRIP_ALPHA:Int=	$0002		'read only
Const PNG_TRANSFORM_PACKING:Int=		$0004		'read and write
Const PNG_TRANSFORM_PACKSWAP:Int=		$0008		'read and write
Const PNG_TRANSFORM_EXPAND:Int=			$0010		'read only
Const PNG_TRANSFORM_INVERT_MONO:Int=	$0020		'read and write
Const PNG_TRANSFORM_SHIFT:Int=			$0040		'read and write
Const PNG_TRANSFORM_BGR:Int=			$0080		'read and write
Const PNG_TRANSFORM_SWAP_ALPHA:Int=		$0100		'read and write
Const PNG_TRANSFORM_SWAP_ENDIAN:Int=	$0200		'read and write
Const PNG_TRANSFORM_INVERT_ALPHA:Int=   $0400		'read and write
Const PNG_TRANSFORM_STRIP_FILLER:Int=   $0800		'write only

Const PNG_COMPRESSION_TYPE_DEFAULT:Int=	0

Const PNG_FILTER_TYPE_DEFAULT:Int=		0
Const PNG_INTRAPIXEL_DIFFERENCING:Int=	64

Const PNG_INTERLACE_NONE:Int=			0
Const PNG_INTERLACE_ADAM7:Int=			1

Function png_sig_cmp:Int( buf:Byte Ptr,start:Int,count:Int ) = "bmx_png_sig_cmp"

Function png_create_read_struct:Byte Ptr( ver_string$z,user_error_ptr:Byte Ptr,user_error_fn:Byte Ptr,user_warning_fn:Byte Ptr) = "bmx_png_create_read_struct"
Function png_create_write_struct:Byte Ptr( ver_string$z,user_error_ptr:Byte Ptr,user_error_fn:Byte Ptr,user_warning_fn:Byte Ptr) = "bmx_png_create_write_struct"

Function png_destroy_read_struct( png_ptr:Byte Ptr,info_ptr1:Byte Ptr,info_ptr2:Byte Ptr ) = "bmx_png_destroy_read_struct"
Function png_destroy_write_struct( png_ptr:Byte Ptr,info_ptr1:Byte Ptr,info_ptr2:Byte Ptr ) = "bmx_png_destroy_write_struct"

Function png_create_info_struct:Byte Ptr( png_ptr:Byte Ptr ) = "bmx_png_create_info_struct"

Function png_init_io( png_ptr:Byte Ptr,c_stream:Byte Ptr ) = "bmx_png_init_io"
Function png_set_sig_bytes( png_ptr:Byte Ptr,number:Int ) = "bmx_png_set_sig_bytes"

Function png_set_read_fn( png_ptr:Byte Ptr,user:Object,read_fn(png_ptr:Byte Ptr,buf:Byte Ptr,size:Int) ) = "bmx_png_set_read_fn"
Function png_set_write_fn( png_ptr:Byte Ptr,user:Object,write_fn(png_ptr:Byte Ptr,buf:Byte Ptr,size:Int),flush_fn(png_ptr:Byte Ptr) ) = "bmx_png_set_write_fn"

Function png_set_expand( png_ptr:Byte Ptr ) = "bmx_png_set_expand"
Function png_set_strip_16( png_ptr:Byte Ptr ) = "bmx_png_set_strip_16"
Function png_set_gray_to_rgb( png_ptr:Byte Ptr ) = "bmx_png_set_gray_to_rgb"

Function png_set_compression_level( png_ptr:Byte Ptr,level:Int ) = "bmx_png_set_compression_level"
Function png_set_compression_strategy( png_ptr:Byte Ptr,strategy:Int ) = "bmx_png_set_compression_strategy"

Function png_read_png( png_ptr:Byte Ptr,info_ptr:Byte Ptr,png_transforms:Int,reserved:Byte Ptr ) = "bmx_png_read_png"
Function png_write_png( png_ptr:Byte Ptr,info_ptr:Byte Ptr,png_transforms:Int,reserved:Byte Ptr ) = "bmx_png_write_png"

Function png_get_rows:Byte Ptr Ptr( png_ptr:Byte Ptr,info_ptr:Byte Ptr ) = "bmx_png_get_rows"
Function png_set_rows( png_ptr:Byte Ptr,info_ptr:Byte Ptr,rows:Byte Ptr ) = "bmx_png_set_rows"

Function png_get_IHDR:Int( png_ptr:Byte Ptr,info_ptr:Byte Ptr,width:Int Var,height:Int Var,bit_depth:Int Var,color_type:Int Var,interlace_type:Int Var,compression_type:Int Var,filter_method:Int Var ) = "bmx_png_get_IHDR"
Function png_set_IHDR( png_ptr:Byte Ptr,info_ptr:Byte Ptr,width:Int,height:Int,bit_depth:Int,color_type:Int,interlace_type:Int,compression_type:Int,filter_method:Int ) = "bmx_png_set_IHDR"

Function png_get_io_ptr:Object(png_ptr:Byte Ptr) = "bmx_png_get_io_ptr"

End Extern
