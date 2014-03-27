
Module Pub.LibPNG

ModuleInfo "Version: 1.04"
ModuleInfo "Author: Guy Eric Schalnat, Andreas Dilger, Glenn Randers-Pehrson, Others"
ModuleInfo "License: ZLib/PNG License"
ModuleInfo "Modserver: BRL"
ModuleInfo "Credit: Adapted for BlitzMax by Mark Sibly"

ModuleInfo "History: 1.04"
ModuleInfo "History: Update to libpng 1.6.7"
ModuleInfo "History: Use bmx_ prefix."
ModuleInfo "History: 1.03"
ModuleInfo "History: Fixed for Intel Macs"
ModuleInfo "History: 1.02"
ModuleInfo "History: Update to libpng 1.2.12"

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

Extern

Const PNG_COLOR_MASK_PALETTE=		1
Const PNG_COLOR_MASK_COLOR=			2
Const PNG_COLOR_MASK_ALPHA=			4

Const PNG_COLOR_TYPE_GRAY=			0
Const PNG_COLOR_TYPE_PALETTE=		(PNG_COLOR_MASK_COLOR | PNG_COLOR_MASK_PALETTE)
Const PNG_COLOR_TYPE_RGB=			(PNG_COLOR_MASK_COLOR)
Const PNG_COLOR_TYPE_RGB_ALPHA=		(PNG_COLOR_MASK_COLOR | PNG_COLOR_MASK_ALPHA)
Const PNG_COLOR_TYPE_GRAY_ALPHA=	(PNG_COLOR_MASK_ALPHA)
Const PNG_COLOR_TYPE_RGBA=			PNG_COLOR_TYPE_RGB_ALPHA
Const PNG_COLOR_TYPE_GA=			PNG_COLOR_TYPE_GRAY_ALPHA

Const PNG_TRANSFORM_IDENTITY=		$0000		'read and write
Const PNG_TRANSFORM_STRIP_16=		$0001		'read only
Const PNG_TRANSFORM_STRIP_ALPHA=	$0002		'read only
Const PNG_TRANSFORM_PACKING=		$0004		'read and write
Const PNG_TRANSFORM_PACKSWAP=		$0008		'read and write
Const PNG_TRANSFORM_EXPAND=			$0010		'read only
Const PNG_TRANSFORM_INVERT_MONO=	$0020		'read and write
Const PNG_TRANSFORM_SHIFT=			$0040		'read and write
Const PNG_TRANSFORM_BGR=			$0080		'read and write
Const PNG_TRANSFORM_SWAP_ALPHA=		$0100		'read and write
Const PNG_TRANSFORM_SWAP_ENDIAN=	$0200		'read and write
Const PNG_TRANSFORM_INVERT_ALPHA=   $0400		'read and write
Const PNG_TRANSFORM_STRIP_FILLER=   $0800		'write only

Const PNG_COMPRESSION_TYPE_DEFAULT=	0

Const PNG_FILTER_TYPE_DEFAULT=		0
Const PNG_INTRAPIXEL_DIFFERENCING=	64

Const PNG_INTERLACE_NONE=			0
Const PNG_INTERLACE_ADAM7=			1

Function png_sig_cmp( buf:Byte Ptr,start,count ) = "bmx_png_sig_cmp"

Function png_create_read_struct:Byte Ptr( ver_string$z,user_error_ptr:Byte Ptr,user_error_fn:Byte Ptr,user_warning_fn:Byte Ptr) = "bmx_png_create_read_struct"
Function png_create_write_struct:Byte Ptr( ver_string$z,user_error_ptr:Byte Ptr,user_error_fn:Byte Ptr,user_warning_fn:Byte Ptr) = "bmx_png_create_write_struct"

Function png_destroy_read_struct( png_ptr:Byte Ptr,info_ptr1:Byte Ptr,info_ptr2:Byte Ptr ) = "bmx_png_destroy_read_struct"
Function png_destroy_write_struct( png_ptr:Byte Ptr,info_ptr1:Byte Ptr,info_ptr2:Byte Ptr ) = "bmx_png_destroy_write_struct"

Function png_create_info_struct:Byte Ptr( png_ptr:Byte Ptr ) = "bmx_png_create_info_struct"

Function png_init_io( png_ptr:Byte Ptr,c_stream:Byte Ptr ) = "bmx_png_init_io"
Function png_set_sig_bytes( png_ptr:Byte Ptr,number ) = "bmx_png_set_sig_bytes"

Function png_set_read_fn( png_ptr:Byte Ptr,user:Byte Ptr,read_fn(png_ptr:Byte Ptr,buf:Byte Ptr,size) ) = "bmx_png_set_read_fn"
Function png_set_write_fn( png_ptr:Byte Ptr,user:Byte Ptr,write_fn(png_ptr:Byte Ptr,buf:Byte Ptr,size),flush_fn(png_ptr:Byte Ptr) ) = "bmx_png_set_write_fn"

Function png_set_expand( png_ptr:Byte Ptr ) = "bmx_png_set_expand"
Function png_set_strip_16( png_ptr:Byte Ptr ) = "bmx_png_set_strip_16"
Function png_set_gray_to_rgb( png_ptr:Byte Ptr ) = "bmx_png_set_gray_to_rgb"

Function png_set_compression_level( png_ptr:Byte Ptr,level ) = "bmx_png_set_compression_level"
Function png_set_compression_strategy( png_ptr:Byte Ptr,strategy ) = "bmx_png_set_compression_strategy"

Function png_read_png( png_ptr:Byte Ptr,info_ptr:Byte Ptr,png_transforms,reserved:Byte Ptr ) = "bmx_png_read_png"
Function png_write_png( png_ptr:Byte Ptr,info_ptr:Byte Ptr,png_transforms,reserved:Byte Ptr ) = "bmx_png_write_png"

Function png_get_rows:Byte Ptr Ptr( png_ptr:Byte Ptr,info_ptr:Byte Ptr ) = "bmx_png_get_rows"
Function png_set_rows( png_ptr:Byte Ptr,info_ptr:Byte Ptr,rows:Byte Ptr ) = "bmx_png_set_rows"

Function png_get_IHDR( png_ptr:Byte Ptr,info_ptr:Byte Ptr,width Var,height Var,bit_depth Var,color_type Var,interlace_type Var,compression_type Var,filter_method Var ) = "bmx_png_get_IHDR"
Function png_set_IHDR( png_ptr:Byte Ptr,info_ptr:Byte Ptr,width,height,bit_depth,color_type,interlace_type,compression_type,filter_method ) = "bmx_png_set_IHDR"

End Extern
