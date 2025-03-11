
Strict

Module Pub.FreeType

ModuleInfo "Version: 1.14"
ModuleInfo "License: FreeType License"
ModuleInfo "Modserver: BRL"

ModuleInfo "History: 1.14"
ModuleInfo "History: Updated to FreeType 2.10.0"
ModuleInfo "History: Added include path for Arch-based Linux distros."
ModuleInfo "History: 1.13"
ModuleInfo "History: Updated to FreeType 2.9.1.f686ad"
ModuleInfo "History: 1.12"
ModuleInfo "History: Updated to FreeType 2.9.0"
ModuleInfo "History: 1.11"
ModuleInfo "History: Updated to FreeType 2.8.1"
ModuleInfo "History: 1.10"
ModuleInfo "History: Updated to FreeType 2.7.1"
ModuleInfo "History: 1.09"
ModuleInfo "History: Updated to FreeType 2.5.2"
ModuleInfo "History: 1.08 Release"
ModuleInfo "History: Updated to FreeType 2.3.11"
ModuleInfo "History: 1.07 Release"
ModuleInfo "History: Linux version now uses installed freetype"
ModuleInfo "History: 1.06 Release"
ModuleInfo "History: Fixed too large fonts crashing"
ModuleInfo "History: Updated to latest FreeType lib version"
ModuleInfo "History: 1.05 Release"
ModuleInfo "History: Fixed Tiger build warnings in ftmac.c"
ModuleInfo "History: 1.04 Release"
ModuleInfo "History: Added stream hooks (new code in 'ftsystem.c')"

?linux
ModuleInfo "CC_OPTS: -I/usr/include/freetype2"
?

Rem

Changes to freetype source:

ftoption.h : Enabled FT_CONFIG_OPTION_SYSTEM_ZLIB define
ftoption.h : FT_RENDER_POOL_SIZE changed to 65536L, was 16384. This appears to be the cause of the 'big font' crashes

End Rem

?Linuxx86

ModuleInfo "CC_OPTS: `pkg-config --cflags freetype2`"

Import "-lfreetype"

?Linuxx64

ModuleInfo "CC_OPTS: `pkg-config --cflags freetype2`"

Import "-lfreetype"

?raspberrypi

ModuleInfo "CC_OPTS: `pkg-config --cflags freetype2`"

Import "-lfreetype"

?haiku

ModuleInfo "CC_OPTS: `freetype-config --cflags`"

Import "-lfreetype"

?win32
ModuleInfo "CC_OPTS: -DFT2_BUILD_LIBRARY"
Import "source.bmx"
Import "include/*.h"
?macos
ModuleInfo "CC_OPTS: -DFT2_BUILD_LIBRARY"
Import "source.bmx"
Import "include/*.h"
?android
ModuleInfo "CC_OPTS: -DFT2_BUILD_LIBRARY"
Import "source.bmx"
Import "include/*.h"
?emscripten
ModuleInfo "CC_OPTS: -DFT2_BUILD_LIBRARY"
Import "source.bmx"
Import "include/*.h"
?nx
ModuleInfo "CC_OPTS: -DFT2_BUILD_LIBRARY"
Import "source.bmx"
Import "include/*.h"
?

Import "glue.c"

Extern

Function FT_Init_FreeType( ft_lib:Byte Ptr Ptr )

Function FT_Done_FreeType( ft_lib:Byte Ptr )
Function FT_Done_Face( ft_face:Byte Ptr )
Function FT_Done_Glyph( ft_glyph:Byte Ptr )

Function FT_New_Face( ft_lib:Byte Ptr,arg$z,faceIndex,ft_face:Byte Ptr Ptr )
Function FT_New_Memory_Face( ft_lib:Byte Ptr,buf:Byte Ptr,size,faceIndex,ft_face:Byte Ptr Ptr )

Function FT_Set_Char_Size( ft_face:Byte Ptr, width:LongInt, height:LongInt, horz_resolution:UInt, vert_resolution:UInt)

Function FT_Set_Pixel_Sizes( ft_face:Byte Ptr,width,height )
Function FT_Get_Char_Index( ft_face:Byte Ptr,index )
Function FT_Set_Charmap( ft_face:Byte Ptr,charmap )

Function FT_Load_Char( ft_face:Byte Ptr,index,flags )
Function FT_Load_Glyph( ft_face:Byte Ptr,index,flags )
Function FT_Render_Glyph( ft_glyph:Byte Ptr,Mode )


Function bmx_freetype_Face_numglyphs:Int(ft_face:Byte Ptr)
Function bmx_freetype_Face_glyph:Byte Ptr(ft_face:Byte Ptr)
Function bmx_freetype_Face_size:Byte Ptr(ft_face:Byte Ptr)
Function bmx_freetype_Size_height:Int(ft_size:Byte Ptr)
Function bmx_freetype_Size_ascend:Int(ft_size:Byte Ptr)
Function bmx_freetype_Size_descend:Int(ft_size:Byte Ptr)
Function bmx_freetype_Face_family_name:String(ft_face:Byte Ptr)
Function bmx_freetype_Face_style_name:String(ft_face:Byte Ptr)

Function bmx_freetype_Slot_bitmapleft:Int(slot:Byte Ptr)
Function bmx_freetype_Slot_bitmaptop:Int(slot:Byte Ptr)
Function bmx_freetype_Slot_bitmap_width:Int(slot:Byte Ptr)
Function bmx_freetype_Slot_bitmap_rows:Int(slot:Byte Ptr)
Function bmx_freetype_Slot_bitmap_pitch:Int(slot:Byte Ptr)
Function bmx_freetype_Slot_advance_x:Int(slot:Byte Ptr)
Function bmx_freetype_Slot_bitmap_buffer:Byte Ptr(slot:Byte Ptr)
Function bmx_freetype_Slot_bitmap_numgreys:Int(slot:Byte Ptr)

End Extern

Const FT_LOAD_DEFAULT=0
Const FT_LOAD_NO_SCALE=1
Const FT_LOAD_NO_HINTING=2
Const FT_LOAD_RENDER=4
Const FT_LOAD_NO_BITMAP=8
Const FT_LOAD_VERTICAL_LAYOUT=$10
Const FT_LOAD_FORCE_AUTOHINT=$20
Const FT_LOAD_CROP_BITMAP=$40
Const FT_LOAD_PEDANTIC=$80
Const FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH=$200
Const FT_LOAD_NO_RECURSE=$400
Const FT_LOAD_IGNORE_TRANSFORM=$800
Const FT_LOAD_MONOCHROME=$1000
Const FT_LOAD_LINEAR_DESIGN=$2000

Const FT_RENDER_MODE_NORMAL=0
Const FT_RENDER_MODE_LIGHT=1
Const FT_RENDER_MODE_MONO=2
Const FT_RENDER_MODE_LCD=3
Const FT_RENDER_MODE_LCD_V=4
