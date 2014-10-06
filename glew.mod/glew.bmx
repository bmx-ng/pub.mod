Strict

Rem
bbdoc: Graphics/Glew
End Rem
Module Pub.Glew

ModuleInfo "Version: 1.08"
ModuleInfo "Author: Milan Ikits, Marcelo Magallon"
ModuleInfo "License: SGI Free Software License B"
ModuleInfo "Copyright: Milan Ikits, Marcelo Magallon"
ModuleInfo "Modserver: BRL"

ModuleInfo "History: 1.08 Release"
ModuleInfo "History: Updated to glew 1.11.0"
ModuleInfo "History: 1.07 Release"
ModuleInfo "History: Updated to glew 1.5.1"
ModuleInfo "History: Modified glew2bmx to handle a GLint64EXT, GLuint64EXT and char - UNTESTED!"
ModuleInfo "History: 1.06 Release"
ModuleInfo "History: Rebuilt To fix MacOs ld errors"
ModuleInfo "History: 1.05 Release"
ModuleInfo "History: Removed glew2bmx.exe!"
ModuleInfo "History: 1.04 Release"
ModuleInfo "History: Updated To glew 1.3.4"
ModuleInfo "History: 1.03 Release"
ModuleInfo "History: Updated To GL2.0 compatible version 1.3.3"

?win32
Import "GL/glew.h"
?Not win32
Import Pub.OpenGL
?

Import "glew.c"

Extern "Os"
rem
bbdoc: GL Global GLEW_VERSION_1_1
endrem
Global GL_VERSION_1_1:Byte="__GLEW_VERSION_1_1"
rem
bbdoc: GL Const GL_SMOOTH_POINT_SIZE_RANGE
endrem
Const GL_SMOOTH_POINT_SIZE_RANGE=$0B12
rem
bbdoc: GL Const GL_SMOOTH_POINT_SIZE_GRANULARITY
endrem
Const GL_SMOOTH_POINT_SIZE_GRANULARITY=$0B13
rem
bbdoc: GL Const GL_SMOOTH_LINE_WIDTH_RANGE
endrem
Const GL_SMOOTH_LINE_WIDTH_RANGE=$0B22
rem
bbdoc: GL Const GL_SMOOTH_LINE_WIDTH_GRANULARITY
endrem
Const GL_SMOOTH_LINE_WIDTH_GRANULARITY=$0B23
rem
bbdoc: GL Const GL_UNSIGNED_BYTE_3_3_2
endrem
Const GL_UNSIGNED_BYTE_3_3_2=$8032
rem
bbdoc: GL Const GL_UNSIGNED_SHORT_4_4_4_4
endrem
Const GL_UNSIGNED_SHORT_4_4_4_4=$8033
rem
bbdoc: GL Const GL_UNSIGNED_SHORT_5_5_5_1
endrem
Const GL_UNSIGNED_SHORT_5_5_5_1=$8034
rem
bbdoc: GL Const GL_UNSIGNED_INT_8_8_8_8
endrem
Const GL_UNSIGNED_INT_8_8_8_8=$8035
rem
bbdoc: GL Const GL_UNSIGNED_INT_10_10_10_2
endrem
Const GL_UNSIGNED_INT_10_10_10_2=$8036
rem
bbdoc: GL Const GL_RESCALE_NORMAL
endrem
Const GL_RESCALE_NORMAL=$803A
rem
bbdoc: GL Const GL_TEXTURE_BINDING_3D
endrem
Const GL_TEXTURE_BINDING_3D=$806A
rem
bbdoc: GL Const GL_PACK_SKIP_IMAGES
endrem
Const GL_PACK_SKIP_IMAGES=$806B
rem
bbdoc: GL Const GL_PACK_IMAGE_HEIGHT
endrem
Const GL_PACK_IMAGE_HEIGHT=$806C
rem
bbdoc: GL Const GL_UNPACK_SKIP_IMAGES
endrem
Const GL_UNPACK_SKIP_IMAGES=$806D
rem
bbdoc: GL Const GL_UNPACK_IMAGE_HEIGHT
endrem
Const GL_UNPACK_IMAGE_HEIGHT=$806E
rem
bbdoc: GL Const GL_TEXTURE_3D
endrem
Const GL_TEXTURE_3D=$806F
rem
bbdoc: GL Const GL_PROXY_TEXTURE_3D
endrem
Const GL_PROXY_TEXTURE_3D=$8070
rem
bbdoc: GL Const GL_TEXTURE_DEPTH
endrem
Const GL_TEXTURE_DEPTH=$8071
rem
bbdoc: GL Const GL_TEXTURE_WRAP_R
endrem
Const GL_TEXTURE_WRAP_R=$8072
rem
bbdoc: GL Const GL_MAX_3D_TEXTURE_SIZE
endrem
Const GL_MAX_3D_TEXTURE_SIZE=$8073
rem
bbdoc: GL Const GL_BGR
endrem
Const GL_BGR=$80E0
rem
bbdoc: GL Const GL_BGRA
endrem
Const GL_BGRA=$80E1
rem
bbdoc: GL Const GL_MAX_ELEMENTS_VERTICES
endrem
Const GL_MAX_ELEMENTS_VERTICES=$80E8
rem
bbdoc: GL Const GL_MAX_ELEMENTS_INDICES
endrem
Const GL_MAX_ELEMENTS_INDICES=$80E9
rem
bbdoc: GL Const GL_CLAMP_TO_EDGE
endrem
Const GL_CLAMP_TO_EDGE=$812F
rem
bbdoc: GL Const GL_TEXTURE_MIN_LOD
endrem
Const GL_TEXTURE_MIN_LOD=$813A
rem
bbdoc: GL Const GL_TEXTURE_MAX_LOD
endrem
Const GL_TEXTURE_MAX_LOD=$813B
rem
bbdoc: GL Const GL_TEXTURE_BASE_LEVEL
endrem
Const GL_TEXTURE_BASE_LEVEL=$813C
rem
bbdoc: GL Const GL_TEXTURE_MAX_LEVEL
endrem
Const GL_TEXTURE_MAX_LEVEL=$813D
rem
bbdoc: GL Const GL_LIGHT_MODEL_COLOR_CONTROL
endrem
Const GL_LIGHT_MODEL_COLOR_CONTROL=$81F8
rem
bbdoc: GL Const GL_SINGLE_COLOR
endrem
Const GL_SINGLE_COLOR=$81F9
rem
bbdoc: GL Const GL_SEPARATE_SPECULAR_COLOR
endrem
Const GL_SEPARATE_SPECULAR_COLOR=$81FA
rem
bbdoc: GL Const GL_UNSIGNED_BYTE_2_3_3_REV
endrem
Const GL_UNSIGNED_BYTE_2_3_3_REV=$8362
rem
bbdoc: GL Const GL_UNSIGNED_SHORT_5_6_5
endrem
Const GL_UNSIGNED_SHORT_5_6_5=$8363
rem
bbdoc: GL Const GL_UNSIGNED_SHORT_5_6_5_REV
endrem
Const GL_UNSIGNED_SHORT_5_6_5_REV=$8364
rem
bbdoc: GL Const GL_UNSIGNED_SHORT_4_4_4_4_REV
endrem
Const GL_UNSIGNED_SHORT_4_4_4_4_REV=$8365
rem
bbdoc: GL Const GL_UNSIGNED_SHORT_1_5_5_5_REV
endrem
Const GL_UNSIGNED_SHORT_1_5_5_5_REV=$8366
rem
bbdoc: GL Const GL_UNSIGNED_INT_8_8_8_8_REV
endrem
Const GL_UNSIGNED_INT_8_8_8_8_REV=$8367
rem
bbdoc: GL Const GL_ALIASED_POINT_SIZE_RANGE
endrem
Const GL_ALIASED_POINT_SIZE_RANGE=$846D
rem
bbdoc: GL Const GL_ALIASED_LINE_WIDTH_RANGE
endrem
Const GL_ALIASED_LINE_WIDTH_RANGE=$846E
rem
bbdoc: GL Global glCopyTexSubImage3D(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,x_:Int,y_:Int,width_:Int,height_:Int)
endrem
Global glCopyTexSubImage3D(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,x_:Int,y_:Int,width_:Int,height_:Int)="__glewCopyTexSubImage3D"
rem
bbdoc: GL Global glDrawRangeElements(mode_:Int,start_:Int,end_:Int,count_:Int,type_:Int,indices_:Byte Ptr)
endrem
Global glDrawRangeElements(mode_:Int,start_:Int,end_:Int,count_:Int,type_:Int,indices_:Byte Ptr)="__glewDrawRangeElements"
rem
bbdoc: GL Global glTexImage3D(target_:Int,level_:Int,internalFormat_:Int,width_:Int,height_:Int,depth_:Int,border_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glTexImage3D(target_:Int,level_:Int,internalFormat_:Int,width_:Int,height_:Int,depth_:Int,border_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewTexImage3D"
rem
bbdoc: GL Global glTexSubImage3D(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glTexSubImage3D(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewTexSubImage3D"
rem
bbdoc: GL Global GLEW_VERSION_1_2
endrem
Global GL_VERSION_1_2:Byte="__GLEW_VERSION_1_2"
rem
bbdoc: GL Global GLEW_VERSION_1_2_1
endrem
Global GL_VERSION_1_2_1:Byte="__GLEW_VERSION_1_2_1"
rem
bbdoc: GL Const GL_MULTISAMPLE
endrem
Const GL_MULTISAMPLE=$809D
rem
bbdoc: GL Const GL_SAMPLE_ALPHA_TO_COVERAGE
endrem
Const GL_SAMPLE_ALPHA_TO_COVERAGE=$809E
rem
bbdoc: GL Const GL_SAMPLE_ALPHA_TO_ONE
endrem
Const GL_SAMPLE_ALPHA_TO_ONE=$809F
rem
bbdoc: GL Const GL_SAMPLE_COVERAGE
endrem
Const GL_SAMPLE_COVERAGE=$80A0
rem
bbdoc: GL Const GL_SAMPLE_BUFFERS
endrem
Const GL_SAMPLE_BUFFERS=$80A8
rem
bbdoc: GL Const GL_SAMPLES
endrem
Const GL_SAMPLES=$80A9
rem
bbdoc: GL Const GL_SAMPLE_COVERAGE_VALUE
endrem
Const GL_SAMPLE_COVERAGE_VALUE=$80AA
rem
bbdoc: GL Const GL_SAMPLE_COVERAGE_INVERT
endrem
Const GL_SAMPLE_COVERAGE_INVERT=$80AB
rem
bbdoc: GL Const GL_CLAMP_TO_BORDER
endrem
Const GL_CLAMP_TO_BORDER=$812D
rem
bbdoc: GL Const GL_TEXTURE0
endrem
Const GL_TEXTURE0=$84C0
rem
bbdoc: GL Const GL_TEXTURE1
endrem
Const GL_TEXTURE1=$84C1
rem
bbdoc: GL Const GL_TEXTURE2
endrem
Const GL_TEXTURE2=$84C2
rem
bbdoc: GL Const GL_TEXTURE3
endrem
Const GL_TEXTURE3=$84C3
rem
bbdoc: GL Const GL_TEXTURE4
endrem
Const GL_TEXTURE4=$84C4
rem
bbdoc: GL Const GL_TEXTURE5
endrem
Const GL_TEXTURE5=$84C5
rem
bbdoc: GL Const GL_TEXTURE6
endrem
Const GL_TEXTURE6=$84C6
rem
bbdoc: GL Const GL_TEXTURE7
endrem
Const GL_TEXTURE7=$84C7
rem
bbdoc: GL Const GL_TEXTURE8
endrem
Const GL_TEXTURE8=$84C8
rem
bbdoc: GL Const GL_TEXTURE9
endrem
Const GL_TEXTURE9=$84C9
rem
bbdoc: GL Const GL_TEXTURE10
endrem
Const GL_TEXTURE10=$84CA
rem
bbdoc: GL Const GL_TEXTURE11
endrem
Const GL_TEXTURE11=$84CB
rem
bbdoc: GL Const GL_TEXTURE12
endrem
Const GL_TEXTURE12=$84CC
rem
bbdoc: GL Const GL_TEXTURE13
endrem
Const GL_TEXTURE13=$84CD
rem
bbdoc: GL Const GL_TEXTURE14
endrem
Const GL_TEXTURE14=$84CE
rem
bbdoc: GL Const GL_TEXTURE15
endrem
Const GL_TEXTURE15=$84CF
rem
bbdoc: GL Const GL_TEXTURE16
endrem
Const GL_TEXTURE16=$84D0
rem
bbdoc: GL Const GL_TEXTURE17
endrem
Const GL_TEXTURE17=$84D1
rem
bbdoc: GL Const GL_TEXTURE18
endrem
Const GL_TEXTURE18=$84D2
rem
bbdoc: GL Const GL_TEXTURE19
endrem
Const GL_TEXTURE19=$84D3
rem
bbdoc: GL Const GL_TEXTURE20
endrem
Const GL_TEXTURE20=$84D4
rem
bbdoc: GL Const GL_TEXTURE21
endrem
Const GL_TEXTURE21=$84D5
rem
bbdoc: GL Const GL_TEXTURE22
endrem
Const GL_TEXTURE22=$84D6
rem
bbdoc: GL Const GL_TEXTURE23
endrem
Const GL_TEXTURE23=$84D7
rem
bbdoc: GL Const GL_TEXTURE24
endrem
Const GL_TEXTURE24=$84D8
rem
bbdoc: GL Const GL_TEXTURE25
endrem
Const GL_TEXTURE25=$84D9
rem
bbdoc: GL Const GL_TEXTURE26
endrem
Const GL_TEXTURE26=$84DA
rem
bbdoc: GL Const GL_TEXTURE27
endrem
Const GL_TEXTURE27=$84DB
rem
bbdoc: GL Const GL_TEXTURE28
endrem
Const GL_TEXTURE28=$84DC
rem
bbdoc: GL Const GL_TEXTURE29
endrem
Const GL_TEXTURE29=$84DD
rem
bbdoc: GL Const GL_TEXTURE30
endrem
Const GL_TEXTURE30=$84DE
rem
bbdoc: GL Const GL_TEXTURE31
endrem
Const GL_TEXTURE31=$84DF
rem
bbdoc: GL Const GL_ACTIVE_TEXTURE
endrem
Const GL_ACTIVE_TEXTURE=$84E0
rem
bbdoc: GL Const GL_CLIENT_ACTIVE_TEXTURE
endrem
Const GL_CLIENT_ACTIVE_TEXTURE=$84E1
rem
bbdoc: GL Const GL_MAX_TEXTURE_UNITS
endrem
Const GL_MAX_TEXTURE_UNITS=$84E2
rem
bbdoc: GL Const GL_TRANSPOSE_MODELVIEW_MATRIX
endrem
Const GL_TRANSPOSE_MODELVIEW_MATRIX=$84E3
rem
bbdoc: GL Const GL_TRANSPOSE_PROJECTION_MATRIX
endrem
Const GL_TRANSPOSE_PROJECTION_MATRIX=$84E4
rem
bbdoc: GL Const GL_TRANSPOSE_TEXTURE_MATRIX
endrem
Const GL_TRANSPOSE_TEXTURE_MATRIX=$84E5
rem
bbdoc: GL Const GL_TRANSPOSE_COLOR_MATRIX
endrem
Const GL_TRANSPOSE_COLOR_MATRIX=$84E6
rem
bbdoc: GL Const GL_SUBTRACT
endrem
Const GL_SUBTRACT=$84E7
rem
bbdoc: GL Const GL_COMPRESSED_ALPHA
endrem
Const GL_COMPRESSED_ALPHA=$84E9
rem
bbdoc: GL Const GL_COMPRESSED_LUMINANCE
endrem
Const GL_COMPRESSED_LUMINANCE=$84EA
rem
bbdoc: GL Const GL_COMPRESSED_LUMINANCE_ALPHA
endrem
Const GL_COMPRESSED_LUMINANCE_ALPHA=$84EB
rem
bbdoc: GL Const GL_COMPRESSED_INTENSITY
endrem
Const GL_COMPRESSED_INTENSITY=$84EC
rem
bbdoc: GL Const GL_COMPRESSED_RGB
endrem
Const GL_COMPRESSED_RGB=$84ED
rem
bbdoc: GL Const GL_COMPRESSED_RGBA
endrem
Const GL_COMPRESSED_RGBA=$84EE
rem
bbdoc: GL Const GL_TEXTURE_COMPRESSION_HINT
endrem
Const GL_TEXTURE_COMPRESSION_HINT=$84EF
rem
bbdoc: GL Const GL_NORMAL_MAP
endrem
Const GL_NORMAL_MAP=$8511
rem
bbdoc: GL Const GL_REFLECTION_MAP
endrem
Const GL_REFLECTION_MAP=$8512
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP
endrem
Const GL_TEXTURE_CUBE_MAP=$8513
rem
bbdoc: GL Const GL_TEXTURE_BINDING_CUBE_MAP
endrem
Const GL_TEXTURE_BINDING_CUBE_MAP=$8514
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_POSITIVE_X
endrem
Const GL_TEXTURE_CUBE_MAP_POSITIVE_X=$8515
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_NEGATIVE_X
endrem
Const GL_TEXTURE_CUBE_MAP_NEGATIVE_X=$8516
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_POSITIVE_Y
endrem
Const GL_TEXTURE_CUBE_MAP_POSITIVE_Y=$8517
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y
endrem
Const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y=$8518
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_POSITIVE_Z
endrem
Const GL_TEXTURE_CUBE_MAP_POSITIVE_Z=$8519
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z
endrem
Const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z=$851A
rem
bbdoc: GL Const GL_PROXY_TEXTURE_CUBE_MAP
endrem
Const GL_PROXY_TEXTURE_CUBE_MAP=$851B
rem
bbdoc: GL Const GL_MAX_CUBE_MAP_TEXTURE_SIZE
endrem
Const GL_MAX_CUBE_MAP_TEXTURE_SIZE=$851C
rem
bbdoc: GL Const GL_COMBINE
endrem
Const GL_COMBINE=$8570
rem
bbdoc: GL Const GL_COMBINE_RGB
endrem
Const GL_COMBINE_RGB=$8571
rem
bbdoc: GL Const GL_COMBINE_ALPHA
endrem
Const GL_COMBINE_ALPHA=$8572
rem
bbdoc: GL Const GL_RGB_SCALE
endrem
Const GL_RGB_SCALE=$8573
rem
bbdoc: GL Const GL_ADD_SIGNED
endrem
Const GL_ADD_SIGNED=$8574
rem
bbdoc: GL Const GL_INTERPOLATE
endrem
Const GL_INTERPOLATE=$8575
rem
bbdoc: GL Const GL_CONSTANT
endrem
Const GL_CONSTANT=$8576
rem
bbdoc: GL Const GL_PRIMARY_COLOR
endrem
Const GL_PRIMARY_COLOR=$8577
rem
bbdoc: GL Const GL_PREVIOUS
endrem
Const GL_PREVIOUS=$8578
rem
bbdoc: GL Const GL_SOURCE0_RGB
endrem
Const GL_SOURCE0_RGB=$8580
rem
bbdoc: GL Const GL_SOURCE1_RGB
endrem
Const GL_SOURCE1_RGB=$8581
rem
bbdoc: GL Const GL_SOURCE2_RGB
endrem
Const GL_SOURCE2_RGB=$8582
rem
bbdoc: GL Const GL_SOURCE0_ALPHA
endrem
Const GL_SOURCE0_ALPHA=$8588
rem
bbdoc: GL Const GL_SOURCE1_ALPHA
endrem
Const GL_SOURCE1_ALPHA=$8589
rem
bbdoc: GL Const GL_SOURCE2_ALPHA
endrem
Const GL_SOURCE2_ALPHA=$858A
rem
bbdoc: GL Const GL_OPERAND0_RGB
endrem
Const GL_OPERAND0_RGB=$8590
rem
bbdoc: GL Const GL_OPERAND1_RGB
endrem
Const GL_OPERAND1_RGB=$8591
rem
bbdoc: GL Const GL_OPERAND2_RGB
endrem
Const GL_OPERAND2_RGB=$8592
rem
bbdoc: GL Const GL_OPERAND0_ALPHA
endrem
Const GL_OPERAND0_ALPHA=$8598
rem
bbdoc: GL Const GL_OPERAND1_ALPHA
endrem
Const GL_OPERAND1_ALPHA=$8599
rem
bbdoc: GL Const GL_OPERAND2_ALPHA
endrem
Const GL_OPERAND2_ALPHA=$859A
rem
bbdoc: GL Const GL_TEXTURE_COMPRESSED_IMAGE_SIZE
endrem
Const GL_TEXTURE_COMPRESSED_IMAGE_SIZE=$86A0
rem
bbdoc: GL Const GL_TEXTURE_COMPRESSED
endrem
Const GL_TEXTURE_COMPRESSED=$86A1
rem
bbdoc: GL Const GL_NUM_COMPRESSED_TEXTURE_FORMATS
endrem
Const GL_NUM_COMPRESSED_TEXTURE_FORMATS=$86A2
rem
bbdoc: GL Const GL_COMPRESSED_TEXTURE_FORMATS
endrem
Const GL_COMPRESSED_TEXTURE_FORMATS=$86A3
rem
bbdoc: GL Const GL_DOT3_RGB
endrem
Const GL_DOT3_RGB=$86AE
rem
bbdoc: GL Const GL_DOT3_RGBA
endrem
Const GL_DOT3_RGBA=$86AF
rem
bbdoc: GL Const GL_MULTISAMPLE_BIT
endrem
Const GL_MULTISAMPLE_BIT=$20000000
rem
bbdoc: GL Global glActiveTexture(texture_:Int)
endrem
Global glActiveTexture(texture_:Int)="__glewActiveTexture"
rem
bbdoc: GL Global glClientActiveTexture(texture_:Int)
endrem
Global glClientActiveTexture(texture_:Int)="__glewClientActiveTexture"
rem
bbdoc: GL Global glCompressedTexImage1D(target_:Int,level_:Int,internalformat_:Int,width_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTexImage1D(target_:Int,level_:Int,internalformat_:Int,width_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTexImage1D"
rem
bbdoc: GL Global glCompressedTexImage2D(target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTexImage2D(target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTexImage2D"
rem
bbdoc: GL Global glCompressedTexImage3D(target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTexImage3D(target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTexImage3D"
rem
bbdoc: GL Global glCompressedTexSubImage1D(target_:Int,level_:Int,xoffset_:Int,width_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTexSubImage1D(target_:Int,level_:Int,xoffset_:Int,width_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTexSubImage1D"
rem
bbdoc: GL Global glCompressedTexSubImage2D(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,width_:Int,height_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTexSubImage2D(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,width_:Int,height_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTexSubImage2D"
rem
bbdoc: GL Global glCompressedTexSubImage3D(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTexSubImage3D(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTexSubImage3D"
rem
bbdoc: GL Global glGetCompressedTexImage(target_:Int,lod_:Int,img_:Byte Ptr)
endrem
Global glGetCompressedTexImage(target_:Int,lod_:Int,img_:Byte Ptr)="__glewGetCompressedTexImage"
rem
bbdoc: GL Global glLoadTransposeMatrixd(m_:Double Ptr)
endrem
Global glLoadTransposeMatrixd(m_:Double Ptr)="__glewLoadTransposeMatrixd"
rem
bbdoc: GL Global glLoadTransposeMatrixf(m_:Float Ptr)
endrem
Global glLoadTransposeMatrixf(m_:Float Ptr)="__glewLoadTransposeMatrixf"
rem
bbdoc: GL Global glMultTransposeMatrixd(m_:Double Ptr)
endrem
Global glMultTransposeMatrixd(m_:Double Ptr)="__glewMultTransposeMatrixd"
rem
bbdoc: GL Global glMultTransposeMatrixf(m_:Float Ptr)
endrem
Global glMultTransposeMatrixf(m_:Float Ptr)="__glewMultTransposeMatrixf"
rem
bbdoc: GL Global glMultiTexCoord1d(target_:Int,s_:Double)
endrem
Global glMultiTexCoord1d(target_:Int,s_:Double)="__glewMultiTexCoord1d"
rem
bbdoc: GL Global glMultiTexCoord1dv(target_:Int,v_:Double Ptr)
endrem
Global glMultiTexCoord1dv(target_:Int,v_:Double Ptr)="__glewMultiTexCoord1dv"
rem
bbdoc: GL Global glMultiTexCoord1f(target_:Int,s_:Float)
endrem
Global glMultiTexCoord1f(target_:Int,s_:Float)="__glewMultiTexCoord1f"
rem
bbdoc: GL Global glMultiTexCoord1fv(target_:Int,v_:Float Ptr)
endrem
Global glMultiTexCoord1fv(target_:Int,v_:Float Ptr)="__glewMultiTexCoord1fv"
rem
bbdoc: GL Global glMultiTexCoord1i(target_:Int,s_:Int)
endrem
Global glMultiTexCoord1i(target_:Int,s_:Int)="__glewMultiTexCoord1i"
rem
bbdoc: GL Global glMultiTexCoord1iv(target_:Int,v_:Int Ptr)
endrem
Global glMultiTexCoord1iv(target_:Int,v_:Int Ptr)="__glewMultiTexCoord1iv"
rem
bbdoc: GL Global glMultiTexCoord1s(target_:Int,s_:Short)
endrem
Global glMultiTexCoord1s(target_:Int,s_:Short)="__glewMultiTexCoord1s"
rem
bbdoc: GL Global glMultiTexCoord1sv(target_:Int,v_:Short Ptr)
endrem
Global glMultiTexCoord1sv(target_:Int,v_:Short Ptr)="__glewMultiTexCoord1sv"
rem
bbdoc: GL Global glMultiTexCoord2d(target_:Int,s_:Double,t_:Double)
endrem
Global glMultiTexCoord2d(target_:Int,s_:Double,t_:Double)="__glewMultiTexCoord2d"
rem
bbdoc: GL Global glMultiTexCoord2dv(target_:Int,v_:Double Ptr)
endrem
Global glMultiTexCoord2dv(target_:Int,v_:Double Ptr)="__glewMultiTexCoord2dv"
rem
bbdoc: GL Global glMultiTexCoord2f(target_:Int,s_:Float,t_:Float)
endrem
Global glMultiTexCoord2f(target_:Int,s_:Float,t_:Float)="__glewMultiTexCoord2f"
rem
bbdoc: GL Global glMultiTexCoord2fv(target_:Int,v_:Float Ptr)
endrem
Global glMultiTexCoord2fv(target_:Int,v_:Float Ptr)="__glewMultiTexCoord2fv"
rem
bbdoc: GL Global glMultiTexCoord2i(target_:Int,s_:Int,t_:Int)
endrem
Global glMultiTexCoord2i(target_:Int,s_:Int,t_:Int)="__glewMultiTexCoord2i"
rem
bbdoc: GL Global glMultiTexCoord2iv(target_:Int,v_:Int Ptr)
endrem
Global glMultiTexCoord2iv(target_:Int,v_:Int Ptr)="__glewMultiTexCoord2iv"
rem
bbdoc: GL Global glMultiTexCoord2s(target_:Int,s_:Short,t_:Short)
endrem
Global glMultiTexCoord2s(target_:Int,s_:Short,t_:Short)="__glewMultiTexCoord2s"
rem
bbdoc: GL Global glMultiTexCoord2sv(target_:Int,v_:Short Ptr)
endrem
Global glMultiTexCoord2sv(target_:Int,v_:Short Ptr)="__glewMultiTexCoord2sv"
rem
bbdoc: GL Global glMultiTexCoord3d(target_:Int,s_:Double,t_:Double,r_:Double)
endrem
Global glMultiTexCoord3d(target_:Int,s_:Double,t_:Double,r_:Double)="__glewMultiTexCoord3d"
rem
bbdoc: GL Global glMultiTexCoord3dv(target_:Int,v_:Double Ptr)
endrem
Global glMultiTexCoord3dv(target_:Int,v_:Double Ptr)="__glewMultiTexCoord3dv"
rem
bbdoc: GL Global glMultiTexCoord3f(target_:Int,s_:Float,t_:Float,r_:Float)
endrem
Global glMultiTexCoord3f(target_:Int,s_:Float,t_:Float,r_:Float)="__glewMultiTexCoord3f"
rem
bbdoc: GL Global glMultiTexCoord3fv(target_:Int,v_:Float Ptr)
endrem
Global glMultiTexCoord3fv(target_:Int,v_:Float Ptr)="__glewMultiTexCoord3fv"
rem
bbdoc: GL Global glMultiTexCoord3i(target_:Int,s_:Int,t_:Int,r_:Int)
endrem
Global glMultiTexCoord3i(target_:Int,s_:Int,t_:Int,r_:Int)="__glewMultiTexCoord3i"
rem
bbdoc: GL Global glMultiTexCoord3iv(target_:Int,v_:Int Ptr)
endrem
Global glMultiTexCoord3iv(target_:Int,v_:Int Ptr)="__glewMultiTexCoord3iv"
rem
bbdoc: GL Global glMultiTexCoord3s(target_:Int,s_:Short,t_:Short,r_:Short)
endrem
Global glMultiTexCoord3s(target_:Int,s_:Short,t_:Short,r_:Short)="__glewMultiTexCoord3s"
rem
bbdoc: GL Global glMultiTexCoord3sv(target_:Int,v_:Short Ptr)
endrem
Global glMultiTexCoord3sv(target_:Int,v_:Short Ptr)="__glewMultiTexCoord3sv"
rem
bbdoc: GL Global glMultiTexCoord4d(target_:Int,s_:Double,t_:Double,r_:Double,q_:Double)
endrem
Global glMultiTexCoord4d(target_:Int,s_:Double,t_:Double,r_:Double,q_:Double)="__glewMultiTexCoord4d"
rem
bbdoc: GL Global glMultiTexCoord4dv(target_:Int,v_:Double Ptr)
endrem
Global glMultiTexCoord4dv(target_:Int,v_:Double Ptr)="__glewMultiTexCoord4dv"
rem
bbdoc: GL Global glMultiTexCoord4f(target_:Int,s_:Float,t_:Float,r_:Float,q_:Float)
endrem
Global glMultiTexCoord4f(target_:Int,s_:Float,t_:Float,r_:Float,q_:Float)="__glewMultiTexCoord4f"
rem
bbdoc: GL Global glMultiTexCoord4fv(target_:Int,v_:Float Ptr)
endrem
Global glMultiTexCoord4fv(target_:Int,v_:Float Ptr)="__glewMultiTexCoord4fv"
rem
bbdoc: GL Global glMultiTexCoord4i(target_:Int,s_:Int,t_:Int,r_:Int,q_:Int)
endrem
Global glMultiTexCoord4i(target_:Int,s_:Int,t_:Int,r_:Int,q_:Int)="__glewMultiTexCoord4i"
rem
bbdoc: GL Global glMultiTexCoord4iv(target_:Int,v_:Int Ptr)
endrem
Global glMultiTexCoord4iv(target_:Int,v_:Int Ptr)="__glewMultiTexCoord4iv"
rem
bbdoc: GL Global glMultiTexCoord4s(target_:Int,s_:Short,t_:Short,r_:Short,q_:Short)
endrem
Global glMultiTexCoord4s(target_:Int,s_:Short,t_:Short,r_:Short,q_:Short)="__glewMultiTexCoord4s"
rem
bbdoc: GL Global glMultiTexCoord4sv(target_:Int,v_:Short Ptr)
endrem
Global glMultiTexCoord4sv(target_:Int,v_:Short Ptr)="__glewMultiTexCoord4sv"
rem
bbdoc: GL Global glSampleCoverage(value_:Float,invert_:Byte)
endrem
Global glSampleCoverage(value_:Float,invert_:Byte)="__glewSampleCoverage"
rem
bbdoc: GL Global GLEW_VERSION_1_3
endrem
Global GL_VERSION_1_3:Byte="__GLEW_VERSION_1_3"
rem
bbdoc: GL Const GL_BLEND_DST_RGB
endrem
Const GL_BLEND_DST_RGB=$80C8
rem
bbdoc: GL Const GL_BLEND_SRC_RGB
endrem
Const GL_BLEND_SRC_RGB=$80C9
rem
bbdoc: GL Const GL_BLEND_DST_ALPHA
endrem
Const GL_BLEND_DST_ALPHA=$80CA
rem
bbdoc: GL Const GL_BLEND_SRC_ALPHA
endrem
Const GL_BLEND_SRC_ALPHA=$80CB
rem
bbdoc: GL Const GL_POINT_SIZE_MIN
endrem
Const GL_POINT_SIZE_MIN=$8126
rem
bbdoc: GL Const GL_POINT_SIZE_MAX
endrem
Const GL_POINT_SIZE_MAX=$8127
rem
bbdoc: GL Const GL_POINT_FADE_THRESHOLD_SIZE
endrem
Const GL_POINT_FADE_THRESHOLD_SIZE=$8128
rem
bbdoc: GL Const GL_POINT_DISTANCE_ATTENUATION
endrem
Const GL_POINT_DISTANCE_ATTENUATION=$8129
rem
bbdoc: GL Const GL_GENERATE_MIPMAP
endrem
Const GL_GENERATE_MIPMAP=$8191
rem
bbdoc: GL Const GL_GENERATE_MIPMAP_HINT
endrem
Const GL_GENERATE_MIPMAP_HINT=$8192
rem
bbdoc: GL Const GL_DEPTH_COMPONENT16
endrem
Const GL_DEPTH_COMPONENT16=$81A5
rem
bbdoc: GL Const GL_DEPTH_COMPONENT24
endrem
Const GL_DEPTH_COMPONENT24=$81A6
rem
bbdoc: GL Const GL_DEPTH_COMPONENT32
endrem
Const GL_DEPTH_COMPONENT32=$81A7
rem
bbdoc: GL Const GL_MIRRORED_REPEAT
endrem
Const GL_MIRRORED_REPEAT=$8370
rem
bbdoc: GL Const GL_FOG_COORDINATE_SOURCE
endrem
Const GL_FOG_COORDINATE_SOURCE=$8450
rem
bbdoc: GL Const GL_FOG_COORDINATE
endrem
Const GL_FOG_COORDINATE=$8451
rem
bbdoc: GL Const GL_FRAGMENT_DEPTH
endrem
Const GL_FRAGMENT_DEPTH=$8452
rem
bbdoc: GL Const GL_CURRENT_FOG_COORDINATE
endrem
Const GL_CURRENT_FOG_COORDINATE=$8453
rem
bbdoc: GL Const GL_FOG_COORDINATE_ARRAY_TYPE
endrem
Const GL_FOG_COORDINATE_ARRAY_TYPE=$8454
rem
bbdoc: GL Const GL_FOG_COORDINATE_ARRAY_STRIDE
endrem
Const GL_FOG_COORDINATE_ARRAY_STRIDE=$8455
rem
bbdoc: GL Const GL_FOG_COORDINATE_ARRAY_POINTER
endrem
Const GL_FOG_COORDINATE_ARRAY_POINTER=$8456
rem
bbdoc: GL Const GL_FOG_COORDINATE_ARRAY
endrem
Const GL_FOG_COORDINATE_ARRAY=$8457
rem
bbdoc: GL Const GL_COLOR_SUM
endrem
Const GL_COLOR_SUM=$8458
rem
bbdoc: GL Const GL_CURRENT_SECONDARY_COLOR
endrem
Const GL_CURRENT_SECONDARY_COLOR=$8459
rem
bbdoc: GL Const GL_SECONDARY_COLOR_ARRAY_SIZE
endrem
Const GL_SECONDARY_COLOR_ARRAY_SIZE=$845A
rem
bbdoc: GL Const GL_SECONDARY_COLOR_ARRAY_TYPE
endrem
Const GL_SECONDARY_COLOR_ARRAY_TYPE=$845B
rem
bbdoc: GL Const GL_SECONDARY_COLOR_ARRAY_STRIDE
endrem
Const GL_SECONDARY_COLOR_ARRAY_STRIDE=$845C
rem
bbdoc: GL Const GL_SECONDARY_COLOR_ARRAY_POINTER
endrem
Const GL_SECONDARY_COLOR_ARRAY_POINTER=$845D
rem
bbdoc: GL Const GL_SECONDARY_COLOR_ARRAY
endrem
Const GL_SECONDARY_COLOR_ARRAY=$845E
rem
bbdoc: GL Const GL_MAX_TEXTURE_LOD_BIAS
endrem
Const GL_MAX_TEXTURE_LOD_BIAS=$84FD
rem
bbdoc: GL Const GL_TEXTURE_FILTER_CONTROL
endrem
Const GL_TEXTURE_FILTER_CONTROL=$8500
rem
bbdoc: GL Const GL_TEXTURE_LOD_BIAS
endrem
Const GL_TEXTURE_LOD_BIAS=$8501
rem
bbdoc: GL Const GL_INCR_WRAP
endrem
Const GL_INCR_WRAP=$8507
rem
bbdoc: GL Const GL_DECR_WRAP
endrem
Const GL_DECR_WRAP=$8508
rem
bbdoc: GL Const GL_TEXTURE_DEPTH_SIZE
endrem
Const GL_TEXTURE_DEPTH_SIZE=$884A
rem
bbdoc: GL Const GL_DEPTH_TEXTURE_MODE
endrem
Const GL_DEPTH_TEXTURE_MODE=$884B
rem
bbdoc: GL Const GL_TEXTURE_COMPARE_MODE
endrem
Const GL_TEXTURE_COMPARE_MODE=$884C
rem
bbdoc: GL Const GL_TEXTURE_COMPARE_FUNC
endrem
Const GL_TEXTURE_COMPARE_FUNC=$884D
rem
bbdoc: GL Const GL_COMPARE_R_TO_TEXTURE
endrem
Const GL_COMPARE_R_TO_TEXTURE=$884E
rem
bbdoc: GL Global glBlendColor(red_:Float,green_:Float,blue_:Float,alpha_:Float)
endrem
Global glBlendColor(red_:Float,green_:Float,blue_:Float,alpha_:Float)="__glewBlendColor"
rem
bbdoc: GL Global glBlendEquation(mode_:Int)
endrem
Global glBlendEquation(mode_:Int)="__glewBlendEquation"
rem
bbdoc: GL Global glBlendFuncSeparate(sfactorRGB_:Int,dfactorRGB_:Int,sfactorAlpha_:Int,dfactorAlpha_:Int)
endrem
Global glBlendFuncSeparate(sfactorRGB_:Int,dfactorRGB_:Int,sfactorAlpha_:Int,dfactorAlpha_:Int)="__glewBlendFuncSeparate"
rem
bbdoc: GL Global glFogCoordPointer(type_:Int,stride_:Int,pointer_:Byte Ptr)
endrem
Global glFogCoordPointer(type_:Int,stride_:Int,pointer_:Byte Ptr)="__glewFogCoordPointer"
rem
bbdoc: GL Global glFogCoordd(coord_:Double)
endrem
Global glFogCoordd(coord_:Double)="__glewFogCoordd"
rem
bbdoc: GL Global glFogCoorddv(coord_:Double Ptr)
endrem
Global glFogCoorddv(coord_:Double Ptr)="__glewFogCoorddv"
rem
bbdoc: GL Global glFogCoordf(coord_:Float)
endrem
Global glFogCoordf(coord_:Float)="__glewFogCoordf"
rem
bbdoc: GL Global glFogCoordfv(coord_:Float Ptr)
endrem
Global glFogCoordfv(coord_:Float Ptr)="__glewFogCoordfv"
rem
bbdoc: GL Global glMultiDrawArrays(mode_:Int,first_:Int Ptr,count_:Int Ptr,drawcount_:Int)
endrem
Global glMultiDrawArrays(mode_:Int,first_:Int Ptr,count_:Int Ptr,drawcount_:Int)="__glewMultiDrawArrays"
rem
bbdoc: GL Global glMultiDrawElements(mode_:Int,count_:Int Ptr,type_:Int,indices_:Byte Ptr Ptr,drawcount_:Int)
endrem
Global glMultiDrawElements(mode_:Int,count_:Int Ptr,type_:Int,indices_:Byte Ptr Ptr,drawcount_:Int)="__glewMultiDrawElements"
rem
bbdoc: GL Global glPointParameterf(pname_:Int,param_:Float)
endrem
Global glPointParameterf(pname_:Int,param_:Float)="__glewPointParameterf"
rem
bbdoc: GL Global glPointParameterfv(pname_:Int,params_:Float Ptr)
endrem
Global glPointParameterfv(pname_:Int,params_:Float Ptr)="__glewPointParameterfv"
rem
bbdoc: GL Global glPointParameteri(pname_:Int,param_:Int)
endrem
Global glPointParameteri(pname_:Int,param_:Int)="__glewPointParameteri"
rem
bbdoc: GL Global glPointParameteriv(pname_:Int,params_:Int Ptr)
endrem
Global glPointParameteriv(pname_:Int,params_:Int Ptr)="__glewPointParameteriv"
rem
bbdoc: GL Global glSecondaryColor3b(red_:Byte,green_:Byte,blue_:Byte)
endrem
Global glSecondaryColor3b(red_:Byte,green_:Byte,blue_:Byte)="__glewSecondaryColor3b"
rem
bbdoc: GL Global glSecondaryColor3bv(v_:Byte Ptr)
endrem
Global glSecondaryColor3bv(v_:Byte Ptr)="__glewSecondaryColor3bv"
rem
bbdoc: GL Global glSecondaryColor3d(red_:Double,green_:Double,blue_:Double)
endrem
Global glSecondaryColor3d(red_:Double,green_:Double,blue_:Double)="__glewSecondaryColor3d"
rem
bbdoc: GL Global glSecondaryColor3dv(v_:Double Ptr)
endrem
Global glSecondaryColor3dv(v_:Double Ptr)="__glewSecondaryColor3dv"
rem
bbdoc: GL Global glSecondaryColor3f(red_:Float,green_:Float,blue_:Float)
endrem
Global glSecondaryColor3f(red_:Float,green_:Float,blue_:Float)="__glewSecondaryColor3f"
rem
bbdoc: GL Global glSecondaryColor3fv(v_:Float Ptr)
endrem
Global glSecondaryColor3fv(v_:Float Ptr)="__glewSecondaryColor3fv"
rem
bbdoc: GL Global glSecondaryColor3i(red_:Int,green_:Int,blue_:Int)
endrem
Global glSecondaryColor3i(red_:Int,green_:Int,blue_:Int)="__glewSecondaryColor3i"
rem
bbdoc: GL Global glSecondaryColor3iv(v_:Int Ptr)
endrem
Global glSecondaryColor3iv(v_:Int Ptr)="__glewSecondaryColor3iv"
rem
bbdoc: GL Global glSecondaryColor3s(red_:Short,green_:Short,blue_:Short)
endrem
Global glSecondaryColor3s(red_:Short,green_:Short,blue_:Short)="__glewSecondaryColor3s"
rem
bbdoc: GL Global glSecondaryColor3sv(v_:Short Ptr)
endrem
Global glSecondaryColor3sv(v_:Short Ptr)="__glewSecondaryColor3sv"
rem
bbdoc: GL Global glSecondaryColor3ub(red_:Byte,green_:Byte,blue_:Byte)
endrem
Global glSecondaryColor3ub(red_:Byte,green_:Byte,blue_:Byte)="__glewSecondaryColor3ub"
rem
bbdoc: GL Global glSecondaryColor3ubv(v_:Byte Ptr)
endrem
Global glSecondaryColor3ubv(v_:Byte Ptr)="__glewSecondaryColor3ubv"
rem
bbdoc: GL Global glSecondaryColor3ui(red_:Int,green_:Int,blue_:Int)
endrem
Global glSecondaryColor3ui(red_:Int,green_:Int,blue_:Int)="__glewSecondaryColor3ui"
rem
bbdoc: GL Global glSecondaryColor3uiv(v_:Int Ptr)
endrem
Global glSecondaryColor3uiv(v_:Int Ptr)="__glewSecondaryColor3uiv"
rem
bbdoc: GL Global glSecondaryColor3us(red_:Short,green_:Short,blue_:Short)
endrem
Global glSecondaryColor3us(red_:Short,green_:Short,blue_:Short)="__glewSecondaryColor3us"
rem
bbdoc: GL Global glSecondaryColor3usv(v_:Short Ptr)
endrem
Global glSecondaryColor3usv(v_:Short Ptr)="__glewSecondaryColor3usv"
rem
bbdoc: GL Global glSecondaryColorPointer(size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)
endrem
Global glSecondaryColorPointer(size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)="__glewSecondaryColorPointer"
rem
bbdoc: GL Global glWindowPos2d(x_:Double,y_:Double)
endrem
Global glWindowPos2d(x_:Double,y_:Double)="__glewWindowPos2d"
rem
bbdoc: GL Global glWindowPos2dv(p_:Double Ptr)
endrem
Global glWindowPos2dv(p_:Double Ptr)="__glewWindowPos2dv"
rem
bbdoc: GL Global glWindowPos2f(x_:Float,y_:Float)
endrem
Global glWindowPos2f(x_:Float,y_:Float)="__glewWindowPos2f"
rem
bbdoc: GL Global glWindowPos2fv(p_:Float Ptr)
endrem
Global glWindowPos2fv(p_:Float Ptr)="__glewWindowPos2fv"
rem
bbdoc: GL Global glWindowPos2i(x_:Int,y_:Int)
endrem
Global glWindowPos2i(x_:Int,y_:Int)="__glewWindowPos2i"
rem
bbdoc: GL Global glWindowPos2iv(p_:Int Ptr)
endrem
Global glWindowPos2iv(p_:Int Ptr)="__glewWindowPos2iv"
rem
bbdoc: GL Global glWindowPos2s(x_:Short,y_:Short)
endrem
Global glWindowPos2s(x_:Short,y_:Short)="__glewWindowPos2s"
rem
bbdoc: GL Global glWindowPos2sv(p_:Short Ptr)
endrem
Global glWindowPos2sv(p_:Short Ptr)="__glewWindowPos2sv"
rem
bbdoc: GL Global glWindowPos3d(x_:Double,y_:Double,z_:Double)
endrem
Global glWindowPos3d(x_:Double,y_:Double,z_:Double)="__glewWindowPos3d"
rem
bbdoc: GL Global glWindowPos3dv(p_:Double Ptr)
endrem
Global glWindowPos3dv(p_:Double Ptr)="__glewWindowPos3dv"
rem
bbdoc: GL Global glWindowPos3f(x_:Float,y_:Float,z_:Float)
endrem
Global glWindowPos3f(x_:Float,y_:Float,z_:Float)="__glewWindowPos3f"
rem
bbdoc: GL Global glWindowPos3fv(p_:Float Ptr)
endrem
Global glWindowPos3fv(p_:Float Ptr)="__glewWindowPos3fv"
rem
bbdoc: GL Global glWindowPos3i(x_:Int,y_:Int,z_:Int)
endrem
Global glWindowPos3i(x_:Int,y_:Int,z_:Int)="__glewWindowPos3i"
rem
bbdoc: GL Global glWindowPos3iv(p_:Int Ptr)
endrem
Global glWindowPos3iv(p_:Int Ptr)="__glewWindowPos3iv"
rem
bbdoc: GL Global glWindowPos3s(x_:Short,y_:Short,z_:Short)
endrem
Global glWindowPos3s(x_:Short,y_:Short,z_:Short)="__glewWindowPos3s"
rem
bbdoc: GL Global glWindowPos3sv(p_:Short Ptr)
endrem
Global glWindowPos3sv(p_:Short Ptr)="__glewWindowPos3sv"
rem
bbdoc: GL Global GLEW_VERSION_1_4
endrem
Global GL_VERSION_1_4:Byte="__GLEW_VERSION_1_4"
rem
bbdoc: GL Const GL_BUFFER_SIZE
endrem
Const GL_BUFFER_SIZE=$8764
rem
bbdoc: GL Const GL_BUFFER_USAGE
endrem
Const GL_BUFFER_USAGE=$8765
rem
bbdoc: GL Const GL_QUERY_COUNTER_BITS
endrem
Const GL_QUERY_COUNTER_BITS=$8864
rem
bbdoc: GL Const GL_CURRENT_QUERY
endrem
Const GL_CURRENT_QUERY=$8865
rem
bbdoc: GL Const GL_QUERY_RESULT
endrem
Const GL_QUERY_RESULT=$8866
rem
bbdoc: GL Const GL_QUERY_RESULT_AVAILABLE
endrem
Const GL_QUERY_RESULT_AVAILABLE=$8867
rem
bbdoc: GL Const GL_ARRAY_BUFFER
endrem
Const GL_ARRAY_BUFFER=$8892
rem
bbdoc: GL Const GL_ELEMENT_ARRAY_BUFFER
endrem
Const GL_ELEMENT_ARRAY_BUFFER=$8893
rem
bbdoc: GL Const GL_ARRAY_BUFFER_BINDING
endrem
Const GL_ARRAY_BUFFER_BINDING=$8894
rem
bbdoc: GL Const GL_ELEMENT_ARRAY_BUFFER_BINDING
endrem
Const GL_ELEMENT_ARRAY_BUFFER_BINDING=$8895
rem
bbdoc: GL Const GL_VERTEX_ARRAY_BUFFER_BINDING
endrem
Const GL_VERTEX_ARRAY_BUFFER_BINDING=$8896
rem
bbdoc: GL Const GL_NORMAL_ARRAY_BUFFER_BINDING
endrem
Const GL_NORMAL_ARRAY_BUFFER_BINDING=$8897
rem
bbdoc: GL Const GL_COLOR_ARRAY_BUFFER_BINDING
endrem
Const GL_COLOR_ARRAY_BUFFER_BINDING=$8898
rem
bbdoc: GL Const GL_INDEX_ARRAY_BUFFER_BINDING
endrem
Const GL_INDEX_ARRAY_BUFFER_BINDING=$8899
rem
bbdoc: GL Const GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING
endrem
Const GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING=$889A
rem
bbdoc: GL Const GL_EDGE_FLAG_ARRAY_BUFFER_BINDING
endrem
Const GL_EDGE_FLAG_ARRAY_BUFFER_BINDING=$889B
rem
bbdoc: GL Const GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING
endrem
Const GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING=$889C
rem
bbdoc: GL Const GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING
endrem
Const GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING=$889D
rem
bbdoc: GL Const GL_WEIGHT_ARRAY_BUFFER_BINDING
endrem
Const GL_WEIGHT_ARRAY_BUFFER_BINDING=$889E
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING
endrem
Const GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING=$889F
rem
bbdoc: GL Const GL_READ_ONLY
endrem
Const GL_READ_ONLY=$88B8
rem
bbdoc: GL Const GL_WRITE_ONLY
endrem
Const GL_WRITE_ONLY=$88B9
rem
bbdoc: GL Const GL_READ_WRITE
endrem
Const GL_READ_WRITE=$88BA
rem
bbdoc: GL Const GL_BUFFER_ACCESS
endrem
Const GL_BUFFER_ACCESS=$88BB
rem
bbdoc: GL Const GL_BUFFER_MAPPED
endrem
Const GL_BUFFER_MAPPED=$88BC
rem
bbdoc: GL Const GL_BUFFER_MAP_POINTER
endrem
Const GL_BUFFER_MAP_POINTER=$88BD
rem
bbdoc: GL Const GL_STREAM_DRAW
endrem
Const GL_STREAM_DRAW=$88E0
rem
bbdoc: GL Const GL_STREAM_READ
endrem
Const GL_STREAM_READ=$88E1
rem
bbdoc: GL Const GL_STREAM_COPY
endrem
Const GL_STREAM_COPY=$88E2
rem
bbdoc: GL Const GL_STATIC_DRAW
endrem
Const GL_STATIC_DRAW=$88E4
rem
bbdoc: GL Const GL_STATIC_READ
endrem
Const GL_STATIC_READ=$88E5
rem
bbdoc: GL Const GL_STATIC_COPY
endrem
Const GL_STATIC_COPY=$88E6
rem
bbdoc: GL Const GL_DYNAMIC_DRAW
endrem
Const GL_DYNAMIC_DRAW=$88E8
rem
bbdoc: GL Const GL_DYNAMIC_READ
endrem
Const GL_DYNAMIC_READ=$88E9
rem
bbdoc: GL Const GL_DYNAMIC_COPY
endrem
Const GL_DYNAMIC_COPY=$88EA
rem
bbdoc: GL Const GL_SAMPLES_PASSED
endrem
Const GL_SAMPLES_PASSED=$8914
rem
bbdoc: GL Global glBeginQuery(target_:Int,id_:Int)
endrem
Global glBeginQuery(target_:Int,id_:Int)="__glewBeginQuery"
rem
bbdoc: GL Global glBindBuffer(target_:Int,buffer_:Int)
endrem
Global glBindBuffer(target_:Int,buffer_:Int)="__glewBindBuffer"
rem
bbdoc: GL Global glBufferData(target_:Int,size_:Int,data_:Byte Ptr,usage_:Int)
endrem
Global glBufferData(target_:Int,size_:Int,data_:Byte Ptr,usage_:Int)="__glewBufferData"
rem
bbdoc: GL Global glBufferSubData(target_:Int,offset_:Int,size_:Int,data_:Byte Ptr)
endrem
Global glBufferSubData(target_:Int,offset_:Int,size_:Int,data_:Byte Ptr)="__glewBufferSubData"
rem
bbdoc: GL Global glDeleteBuffers(n_:Int,buffers_:Int Ptr)
endrem
Global glDeleteBuffers(n_:Int,buffers_:Int Ptr)="__glewDeleteBuffers"
rem
bbdoc: GL Global glDeleteQueries(n_:Int,ids_:Int Ptr)
endrem
Global glDeleteQueries(n_:Int,ids_:Int Ptr)="__glewDeleteQueries"
rem
bbdoc: GL Global glEndQuery(target_:Int)
endrem
Global glEndQuery(target_:Int)="__glewEndQuery"
rem
bbdoc: GL Global glGenBuffers(n_:Int,buffers_:Int Ptr)
endrem
Global glGenBuffers(n_:Int,buffers_:Int Ptr)="__glewGenBuffers"
rem
bbdoc: GL Global glGenQueries(n_:Int,ids_:Int Ptr)
endrem
Global glGenQueries(n_:Int,ids_:Int Ptr)="__glewGenQueries"
rem
bbdoc: GL Global glGetBufferParameteriv(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetBufferParameteriv(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetBufferParameteriv"
rem
bbdoc: GL Global glGetBufferPointerv(target_:Int,pname_:Int,params_:Byte Ptr Ptr)
endrem
Global glGetBufferPointerv(target_:Int,pname_:Int,params_:Byte Ptr Ptr)="__glewGetBufferPointerv"
rem
bbdoc: GL Global glGetBufferSubData(target_:Int,offset_:Int,size_:Int,data_:Byte Ptr)
endrem
Global glGetBufferSubData(target_:Int,offset_:Int,size_:Int,data_:Byte Ptr)="__glewGetBufferSubData"
rem
bbdoc: GL Global glGetQueryObjectiv(id_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetQueryObjectiv(id_:Int,pname_:Int,params_:Int Ptr)="__glewGetQueryObjectiv"
rem
bbdoc: GL Global glGetQueryObjectuiv(id_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetQueryObjectuiv(id_:Int,pname_:Int,params_:Int Ptr)="__glewGetQueryObjectuiv"
rem
bbdoc: GL Global glGetQueryiv(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetQueryiv(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetQueryiv"
rem
bbdoc: GL Global glIsBuffer:Byte(buffer_:Int)
endrem
Global glIsBuffer:Byte(buffer_:Int)="__glewIsBuffer"
rem
bbdoc: GL Global glIsQuery:Byte(id_:Int)
endrem
Global glIsQuery:Byte(id_:Int)="__glewIsQuery"
rem
bbdoc: GL Global glMapBuffer:Byte Ptr(target_:Int,access_:Int)
endrem
Global glMapBuffer:Byte Ptr(target_:Int,access_:Int)="__glewMapBuffer"
rem
bbdoc: GL Global glUnmapBuffer:Byte(target_:Int)
endrem
Global glUnmapBuffer:Byte(target_:Int)="__glewUnmapBuffer"
rem
bbdoc: GL Global GLEW_VERSION_1_5
endrem
Global GL_VERSION_1_5:Byte="__GLEW_VERSION_1_5"
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_ENABLED
endrem
Const GL_VERTEX_ATTRIB_ARRAY_ENABLED=$8622
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_SIZE
endrem
Const GL_VERTEX_ATTRIB_ARRAY_SIZE=$8623
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_STRIDE
endrem
Const GL_VERTEX_ATTRIB_ARRAY_STRIDE=$8624
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_TYPE
endrem
Const GL_VERTEX_ATTRIB_ARRAY_TYPE=$8625
rem
bbdoc: GL Const GL_CURRENT_VERTEX_ATTRIB
endrem
Const GL_CURRENT_VERTEX_ATTRIB=$8626
rem
bbdoc: GL Const GL_VERTEX_PROGRAM_POINT_SIZE
endrem
Const GL_VERTEX_PROGRAM_POINT_SIZE=$8642
rem
bbdoc: GL Const GL_VERTEX_PROGRAM_TWO_SIDE
endrem
Const GL_VERTEX_PROGRAM_TWO_SIDE=$8643
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_POINTER
endrem
Const GL_VERTEX_ATTRIB_ARRAY_POINTER=$8645
rem
bbdoc: GL Const GL_STENCIL_BACK_FUNC
endrem
Const GL_STENCIL_BACK_FUNC=$8800
rem
bbdoc: GL Const GL_STENCIL_BACK_FAIL
endrem
Const GL_STENCIL_BACK_FAIL=$8801
rem
bbdoc: GL Const GL_STENCIL_BACK_PASS_DEPTH_FAIL
endrem
Const GL_STENCIL_BACK_PASS_DEPTH_FAIL=$8802
rem
bbdoc: GL Const GL_STENCIL_BACK_PASS_DEPTH_PASS
endrem
Const GL_STENCIL_BACK_PASS_DEPTH_PASS=$8803
rem
bbdoc: GL Const GL_MAX_DRAW_BUFFERS
endrem
Const GL_MAX_DRAW_BUFFERS=$8824
rem
bbdoc: GL Const GL_DRAW_BUFFER0
endrem
Const GL_DRAW_BUFFER0=$8825
rem
bbdoc: GL Const GL_DRAW_BUFFER1
endrem
Const GL_DRAW_BUFFER1=$8826
rem
bbdoc: GL Const GL_DRAW_BUFFER2
endrem
Const GL_DRAW_BUFFER2=$8827
rem
bbdoc: GL Const GL_DRAW_BUFFER3
endrem
Const GL_DRAW_BUFFER3=$8828
rem
bbdoc: GL Const GL_DRAW_BUFFER4
endrem
Const GL_DRAW_BUFFER4=$8829
rem
bbdoc: GL Const GL_DRAW_BUFFER5
endrem
Const GL_DRAW_BUFFER5=$882A
rem
bbdoc: GL Const GL_DRAW_BUFFER6
endrem
Const GL_DRAW_BUFFER6=$882B
rem
bbdoc: GL Const GL_DRAW_BUFFER7
endrem
Const GL_DRAW_BUFFER7=$882C
rem
bbdoc: GL Const GL_DRAW_BUFFER8
endrem
Const GL_DRAW_BUFFER8=$882D
rem
bbdoc: GL Const GL_DRAW_BUFFER9
endrem
Const GL_DRAW_BUFFER9=$882E
rem
bbdoc: GL Const GL_DRAW_BUFFER10
endrem
Const GL_DRAW_BUFFER10=$882F
rem
bbdoc: GL Const GL_DRAW_BUFFER11
endrem
Const GL_DRAW_BUFFER11=$8830
rem
bbdoc: GL Const GL_DRAW_BUFFER12
endrem
Const GL_DRAW_BUFFER12=$8831
rem
bbdoc: GL Const GL_DRAW_BUFFER13
endrem
Const GL_DRAW_BUFFER13=$8832
rem
bbdoc: GL Const GL_DRAW_BUFFER14
endrem
Const GL_DRAW_BUFFER14=$8833
rem
bbdoc: GL Const GL_DRAW_BUFFER15
endrem
Const GL_DRAW_BUFFER15=$8834
rem
bbdoc: GL Const GL_BLEND_EQUATION_ALPHA
endrem
Const GL_BLEND_EQUATION_ALPHA=$883D
rem
bbdoc: GL Const GL_POINT_SPRITE
endrem
Const GL_POINT_SPRITE=$8861
rem
bbdoc: GL Const GL_COORD_REPLACE
endrem
Const GL_COORD_REPLACE=$8862
rem
bbdoc: GL Const GL_MAX_VERTEX_ATTRIBS
endrem
Const GL_MAX_VERTEX_ATTRIBS=$8869
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_NORMALIZED
endrem
Const GL_VERTEX_ATTRIB_ARRAY_NORMALIZED=$886A
rem
bbdoc: GL Const GL_MAX_TEXTURE_COORDS
endrem
Const GL_MAX_TEXTURE_COORDS=$8871
rem
bbdoc: GL Const GL_MAX_TEXTURE_IMAGE_UNITS
endrem
Const GL_MAX_TEXTURE_IMAGE_UNITS=$8872
rem
bbdoc: GL Const GL_FRAGMENT_SHADER
endrem
Const GL_FRAGMENT_SHADER=$8B30
rem
bbdoc: GL Const GL_VERTEX_SHADER
endrem
Const GL_VERTEX_SHADER=$8B31
rem
bbdoc: GL Const GL_MAX_FRAGMENT_UNIFORM_COMPONENTS
endrem
Const GL_MAX_FRAGMENT_UNIFORM_COMPONENTS=$8B49
rem
bbdoc: GL Const GL_MAX_VERTEX_UNIFORM_COMPONENTS
endrem
Const GL_MAX_VERTEX_UNIFORM_COMPONENTS=$8B4A
rem
bbdoc: GL Const GL_MAX_VARYING_FLOATS
endrem
Const GL_MAX_VARYING_FLOATS=$8B4B
rem
bbdoc: GL Const GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS
endrem
Const GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS=$8B4C
rem
bbdoc: GL Const GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS
endrem
Const GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS=$8B4D
rem
bbdoc: GL Const GL_SHADER_TYPE
endrem
Const GL_SHADER_TYPE=$8B4F
rem
bbdoc: GL Const GL_FLOAT_VEC2
endrem
Const GL_FLOAT_VEC2=$8B50
rem
bbdoc: GL Const GL_FLOAT_VEC3
endrem
Const GL_FLOAT_VEC3=$8B51
rem
bbdoc: GL Const GL_FLOAT_VEC4
endrem
Const GL_FLOAT_VEC4=$8B52
rem
bbdoc: GL Const GL_INT_VEC2
endrem
Const GL_INT_VEC2=$8B53
rem
bbdoc: GL Const GL_INT_VEC3
endrem
Const GL_INT_VEC3=$8B54
rem
bbdoc: GL Const GL_INT_VEC4
endrem
Const GL_INT_VEC4=$8B55
rem
bbdoc: GL Const GL_BOOL
endrem
Const GL_BOOL=$8B56
rem
bbdoc: GL Const GL_BOOL_VEC2
endrem
Const GL_BOOL_VEC2=$8B57
rem
bbdoc: GL Const GL_BOOL_VEC3
endrem
Const GL_BOOL_VEC3=$8B58
rem
bbdoc: GL Const GL_BOOL_VEC4
endrem
Const GL_BOOL_VEC4=$8B59
rem
bbdoc: GL Const GL_FLOAT_MAT2
endrem
Const GL_FLOAT_MAT2=$8B5A
rem
bbdoc: GL Const GL_FLOAT_MAT3
endrem
Const GL_FLOAT_MAT3=$8B5B
rem
bbdoc: GL Const GL_FLOAT_MAT4
endrem
Const GL_FLOAT_MAT4=$8B5C
rem
bbdoc: GL Const GL_SAMPLER_1D
endrem
Const GL_SAMPLER_1D=$8B5D
rem
bbdoc: GL Const GL_SAMPLER_2D
endrem
Const GL_SAMPLER_2D=$8B5E
rem
bbdoc: GL Const GL_SAMPLER_3D
endrem
Const GL_SAMPLER_3D=$8B5F
rem
bbdoc: GL Const GL_SAMPLER_CUBE
endrem
Const GL_SAMPLER_CUBE=$8B60
rem
bbdoc: GL Const GL_SAMPLER_1D_SHADOW
endrem
Const GL_SAMPLER_1D_SHADOW=$8B61
rem
bbdoc: GL Const GL_SAMPLER_2D_SHADOW
endrem
Const GL_SAMPLER_2D_SHADOW=$8B62
rem
bbdoc: GL Const GL_DELETE_STATUS
endrem
Const GL_DELETE_STATUS=$8B80
rem
bbdoc: GL Const GL_COMPILE_STATUS
endrem
Const GL_COMPILE_STATUS=$8B81
rem
bbdoc: GL Const GL_LINK_STATUS
endrem
Const GL_LINK_STATUS=$8B82
rem
bbdoc: GL Const GL_VALIDATE_STATUS
endrem
Const GL_VALIDATE_STATUS=$8B83
rem
bbdoc: GL Const GL_INFO_LOG_LENGTH
endrem
Const GL_INFO_LOG_LENGTH=$8B84
rem
bbdoc: GL Const GL_ATTACHED_SHADERS
endrem
Const GL_ATTACHED_SHADERS=$8B85
rem
bbdoc: GL Const GL_ACTIVE_UNIFORMS
endrem
Const GL_ACTIVE_UNIFORMS=$8B86
rem
bbdoc: GL Const GL_ACTIVE_UNIFORM_MAX_LENGTH
endrem
Const GL_ACTIVE_UNIFORM_MAX_LENGTH=$8B87
rem
bbdoc: GL Const GL_SHADER_SOURCE_LENGTH
endrem
Const GL_SHADER_SOURCE_LENGTH=$8B88
rem
bbdoc: GL Const GL_ACTIVE_ATTRIBUTES
endrem
Const GL_ACTIVE_ATTRIBUTES=$8B89
rem
bbdoc: GL Const GL_ACTIVE_ATTRIBUTE_MAX_LENGTH
endrem
Const GL_ACTIVE_ATTRIBUTE_MAX_LENGTH=$8B8A
rem
bbdoc: GL Const GL_FRAGMENT_SHADER_DERIVATIVE_HINT
endrem
Const GL_FRAGMENT_SHADER_DERIVATIVE_HINT=$8B8B
rem
bbdoc: GL Const GL_SHADING_LANGUAGE_VERSION
endrem
Const GL_SHADING_LANGUAGE_VERSION=$8B8C
rem
bbdoc: GL Const GL_CURRENT_PROGRAM
endrem
Const GL_CURRENT_PROGRAM=$8B8D
rem
bbdoc: GL Const GL_POINT_SPRITE_COORD_ORIGIN
endrem
Const GL_POINT_SPRITE_COORD_ORIGIN=$8CA0
rem
bbdoc: GL Const GL_LOWER_LEFT
endrem
Const GL_LOWER_LEFT=$8CA1
rem
bbdoc: GL Const GL_UPPER_LEFT
endrem
Const GL_UPPER_LEFT=$8CA2
rem
bbdoc: GL Const GL_STENCIL_BACK_REF
endrem
Const GL_STENCIL_BACK_REF=$8CA3
rem
bbdoc: GL Const GL_STENCIL_BACK_VALUE_MASK
endrem
Const GL_STENCIL_BACK_VALUE_MASK=$8CA4
rem
bbdoc: GL Const GL_STENCIL_BACK_WRITEMASK
endrem
Const GL_STENCIL_BACK_WRITEMASK=$8CA5
rem
bbdoc: GL Global glAttachShader(program_:Int,shader_:Int)
endrem
Global glAttachShader(program_:Int,shader_:Int)="__glewAttachShader"
rem
bbdoc: GL Global glBindAttribLocation(program_:Int,index_:Int,name_:Byte Ptr)
endrem
Global glBindAttribLocation(program_:Int,index_:Int,name_:Byte Ptr)="__glewBindAttribLocation"
rem
bbdoc: GL Global glBlendEquationSeparate(modeRGB_:Int,modeAlpha_:Int)
endrem
Global glBlendEquationSeparate(modeRGB_:Int,modeAlpha_:Int)="__glewBlendEquationSeparate"
rem
bbdoc: GL Global glCompileShader(shader_:Int)
endrem
Global glCompileShader(shader_:Int)="__glewCompileShader"
rem
bbdoc: GL Global glCreateProgram:Int()
endrem
Global glCreateProgram:Int()="__glewCreateProgram"
rem
bbdoc: GL Global glCreateShader:Int(type_:Int)
endrem
Global glCreateShader:Int(type_:Int)="__glewCreateShader"
rem
bbdoc: GL Global glDeleteProgram(program_:Int)
endrem
Global glDeleteProgram(program_:Int)="__glewDeleteProgram"
rem
bbdoc: GL Global glDeleteShader(shader_:Int)
endrem
Global glDeleteShader(shader_:Int)="__glewDeleteShader"
rem
bbdoc: GL Global glDetachShader(program_:Int,shader_:Int)
endrem
Global glDetachShader(program_:Int,shader_:Int)="__glewDetachShader"
rem
bbdoc: GL Global glDisableVertexAttribArray(index_:Int)
endrem
Global glDisableVertexAttribArray(index_:Int)="__glewDisableVertexAttribArray"
rem
bbdoc: GL Global glDrawBuffers(n_:Int,bufs_:Int Ptr)
endrem
Global glDrawBuffers(n_:Int,bufs_:Int Ptr)="__glewDrawBuffers"
rem
bbdoc: GL Global glEnableVertexAttribArray(index_:Int)
endrem
Global glEnableVertexAttribArray(index_:Int)="__glewEnableVertexAttribArray"
rem
bbdoc: GL Global glGetActiveAttrib(program_:Int,index_:Int,maxLength_:Int,length_:Int Ptr,size_:Int Ptr,type_:Int Ptr,name_:Byte Ptr)
endrem
Global glGetActiveAttrib(program_:Int,index_:Int,maxLength_:Int,length_:Int Ptr,size_:Int Ptr,type_:Int Ptr,name_:Byte Ptr)="__glewGetActiveAttrib"
rem
bbdoc: GL Global glGetActiveUniform(program_:Int,index_:Int,maxLength_:Int,length_:Int Ptr,size_:Int Ptr,type_:Int Ptr,name_:Byte Ptr)
endrem
Global glGetActiveUniform(program_:Int,index_:Int,maxLength_:Int,length_:Int Ptr,size_:Int Ptr,type_:Int Ptr,name_:Byte Ptr)="__glewGetActiveUniform"
rem
bbdoc: GL Global glGetAttachedShaders(program_:Int,maxCount_:Int,count_:Int Ptr,shaders_:Int Ptr)
endrem
Global glGetAttachedShaders(program_:Int,maxCount_:Int,count_:Int Ptr,shaders_:Int Ptr)="__glewGetAttachedShaders"
rem
bbdoc: GL Global glGetAttribLocation:Int(program_:Int,name_:Byte Ptr)
endrem
Global glGetAttribLocation:Int(program_:Int,name_:Byte Ptr)="__glewGetAttribLocation"
rem
bbdoc: GL Global glGetProgramInfoLog(program_:Int,bufSize_:Int,length_:Int Ptr,infoLog_:Byte Ptr)
endrem
Global glGetProgramInfoLog(program_:Int,bufSize_:Int,length_:Int Ptr,infoLog_:Byte Ptr)="__glewGetProgramInfoLog"
rem
bbdoc: GL Global glGetProgramiv(program_:Int,pname_:Int,param_:Int Ptr)
endrem
Global glGetProgramiv(program_:Int,pname_:Int,param_:Int Ptr)="__glewGetProgramiv"
rem
bbdoc: GL Global glGetShaderInfoLog(shader_:Int,bufSize_:Int,length_:Int Ptr,infoLog_:Byte Ptr)
endrem
Global glGetShaderInfoLog(shader_:Int,bufSize_:Int,length_:Int Ptr,infoLog_:Byte Ptr)="__glewGetShaderInfoLog"
rem
bbdoc: GL Global glGetShaderSource(obj_:Int,maxLength_:Int,length_:Int Ptr,source_:Byte Ptr)
endrem
Global glGetShaderSource(obj_:Int,maxLength_:Int,length_:Int Ptr,source_:Byte Ptr)="__glewGetShaderSource"
rem
bbdoc: GL Global glGetShaderiv(shader_:Int,pname_:Int,param_:Int Ptr)
endrem
Global glGetShaderiv(shader_:Int,pname_:Int,param_:Int Ptr)="__glewGetShaderiv"
rem
bbdoc: GL Global glGetUniformLocation:Int(program_:Int,name_:Byte Ptr)
endrem
Global glGetUniformLocation:Int(program_:Int,name_:Byte Ptr)="__glewGetUniformLocation"
rem
bbdoc: GL Global glGetUniformfv(program_:Int,location_:Int,params_:Float Ptr)
endrem
Global glGetUniformfv(program_:Int,location_:Int,params_:Float Ptr)="__glewGetUniformfv"
rem
bbdoc: GL Global glGetUniformiv(program_:Int,location_:Int,params_:Int Ptr)
endrem
Global glGetUniformiv(program_:Int,location_:Int,params_:Int Ptr)="__glewGetUniformiv"
rem
bbdoc: GL Global glGetVertexAttribPointerv(index_:Int,pname_:Int,pointer_:Byte Ptr Ptr)
endrem
Global glGetVertexAttribPointerv(index_:Int,pname_:Int,pointer_:Byte Ptr Ptr)="__glewGetVertexAttribPointerv"
rem
bbdoc: GL Global glGetVertexAttribdv(index_:Int,pname_:Int,params_:Double Ptr)
endrem
Global glGetVertexAttribdv(index_:Int,pname_:Int,params_:Double Ptr)="__glewGetVertexAttribdv"
rem
bbdoc: GL Global glGetVertexAttribfv(index_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetVertexAttribfv(index_:Int,pname_:Int,params_:Float Ptr)="__glewGetVertexAttribfv"
rem
bbdoc: GL Global glGetVertexAttribiv(index_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetVertexAttribiv(index_:Int,pname_:Int,params_:Int Ptr)="__glewGetVertexAttribiv"
rem
bbdoc: GL Global glIsProgram:Byte(program_:Int)
endrem
Global glIsProgram:Byte(program_:Int)="__glewIsProgram"
rem
bbdoc: GL Global glIsShader:Byte(shader_:Int)
endrem
Global glIsShader:Byte(shader_:Int)="__glewIsShader"
rem
bbdoc: GL Global glLinkProgram(program_:Int)
endrem
Global glLinkProgram(program_:Int)="__glewLinkProgram"
rem
bbdoc: GL Global glShaderSource(shader_:Int,count_:Int,string_:Byte Ptr Ptr,length_:Int Ptr)
endrem
Global glShaderSource(shader_:Int,count_:Int,string_:Byte Ptr Ptr,length_:Int Ptr)="__glewShaderSource"
rem
bbdoc: GL Global glStencilFuncSeparate(frontfunc_:Int,backfunc_:Int,ref_:Int,mask_:Int)
endrem
Global glStencilFuncSeparate(frontfunc_:Int,backfunc_:Int,ref_:Int,mask_:Int)="__glewStencilFuncSeparate"
rem
bbdoc: GL Global glStencilMaskSeparate(face_:Int,mask_:Int)
endrem
Global glStencilMaskSeparate(face_:Int,mask_:Int)="__glewStencilMaskSeparate"
rem
bbdoc: GL Global glStencilOpSeparate(face_:Int,sfail_:Int,dpfail_:Int,dppass_:Int)
endrem
Global glStencilOpSeparate(face_:Int,sfail_:Int,dpfail_:Int,dppass_:Int)="__glewStencilOpSeparate"
rem
bbdoc: GL Global glUniform1f(location_:Int,v0_:Float)
endrem
Global glUniform1f(location_:Int,v0_:Float)="__glewUniform1f"
rem
bbdoc: GL Global glUniform1fv(location_:Int,count_:Int,value_:Float Ptr)
endrem
Global glUniform1fv(location_:Int,count_:Int,value_:Float Ptr)="__glewUniform1fv"
rem
bbdoc: GL Global glUniform1i(location_:Int,v0_:Int)
endrem
Global glUniform1i(location_:Int,v0_:Int)="__glewUniform1i"
rem
bbdoc: GL Global glUniform1iv(location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glUniform1iv(location_:Int,count_:Int,value_:Int Ptr)="__glewUniform1iv"
rem
bbdoc: GL Global glUniform2f(location_:Int,v0_:Float,v1_:Float)
endrem
Global glUniform2f(location_:Int,v0_:Float,v1_:Float)="__glewUniform2f"
rem
bbdoc: GL Global glUniform2fv(location_:Int,count_:Int,value_:Float Ptr)
endrem
Global glUniform2fv(location_:Int,count_:Int,value_:Float Ptr)="__glewUniform2fv"
rem
bbdoc: GL Global glUniform2i(location_:Int,v0_:Int,v1_:Int)
endrem
Global glUniform2i(location_:Int,v0_:Int,v1_:Int)="__glewUniform2i"
rem
bbdoc: GL Global glUniform2iv(location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glUniform2iv(location_:Int,count_:Int,value_:Int Ptr)="__glewUniform2iv"
rem
bbdoc: GL Global glUniform3f(location_:Int,v0_:Float,v1_:Float,v2_:Float)
endrem
Global glUniform3f(location_:Int,v0_:Float,v1_:Float,v2_:Float)="__glewUniform3f"
rem
bbdoc: GL Global glUniform3fv(location_:Int,count_:Int,value_:Float Ptr)
endrem
Global glUniform3fv(location_:Int,count_:Int,value_:Float Ptr)="__glewUniform3fv"
rem
bbdoc: GL Global glUniform3i(location_:Int,v0_:Int,v1_:Int,v2_:Int)
endrem
Global glUniform3i(location_:Int,v0_:Int,v1_:Int,v2_:Int)="__glewUniform3i"
rem
bbdoc: GL Global glUniform3iv(location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glUniform3iv(location_:Int,count_:Int,value_:Int Ptr)="__glewUniform3iv"
rem
bbdoc: GL Global glUniform4f(location_:Int,v0_:Float,v1_:Float,v2_:Float,v3_:Float)
endrem
Global glUniform4f(location_:Int,v0_:Float,v1_:Float,v2_:Float,v3_:Float)="__glewUniform4f"
rem
bbdoc: GL Global glUniform4fv(location_:Int,count_:Int,value_:Float Ptr)
endrem
Global glUniform4fv(location_:Int,count_:Int,value_:Float Ptr)="__glewUniform4fv"
rem
bbdoc: GL Global glUniform4i(location_:Int,v0_:Int,v1_:Int,v2_:Int,v3_:Int)
endrem
Global glUniform4i(location_:Int,v0_:Int,v1_:Int,v2_:Int,v3_:Int)="__glewUniform4i"
rem
bbdoc: GL Global glUniform4iv(location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glUniform4iv(location_:Int,count_:Int,value_:Int Ptr)="__glewUniform4iv"
rem
bbdoc: GL Global glUniformMatrix2fv(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glUniformMatrix2fv(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewUniformMatrix2fv"
rem
bbdoc: GL Global glUniformMatrix3fv(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glUniformMatrix3fv(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewUniformMatrix3fv"
rem
bbdoc: GL Global glUniformMatrix4fv(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glUniformMatrix4fv(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewUniformMatrix4fv"
rem
bbdoc: GL Global glUseProgram(program_:Int)
endrem
Global glUseProgram(program_:Int)="__glewUseProgram"
rem
bbdoc: GL Global glValidateProgram(program_:Int)
endrem
Global glValidateProgram(program_:Int)="__glewValidateProgram"
rem
bbdoc: GL Global glVertexAttrib1d(index_:Int,x_:Double)
endrem
Global glVertexAttrib1d(index_:Int,x_:Double)="__glewVertexAttrib1d"
rem
bbdoc: GL Global glVertexAttrib1dv(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttrib1dv(index_:Int,v_:Double Ptr)="__glewVertexAttrib1dv"
rem
bbdoc: GL Global glVertexAttrib1f(index_:Int,x_:Float)
endrem
Global glVertexAttrib1f(index_:Int,x_:Float)="__glewVertexAttrib1f"
rem
bbdoc: GL Global glVertexAttrib1fv(index_:Int,v_:Float Ptr)
endrem
Global glVertexAttrib1fv(index_:Int,v_:Float Ptr)="__glewVertexAttrib1fv"
rem
bbdoc: GL Global glVertexAttrib1s(index_:Int,x_:Short)
endrem
Global glVertexAttrib1s(index_:Int,x_:Short)="__glewVertexAttrib1s"
rem
bbdoc: GL Global glVertexAttrib1sv(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib1sv(index_:Int,v_:Short Ptr)="__glewVertexAttrib1sv"
rem
bbdoc: GL Global glVertexAttrib2d(index_:Int,x_:Double,y_:Double)
endrem
Global glVertexAttrib2d(index_:Int,x_:Double,y_:Double)="__glewVertexAttrib2d"
rem
bbdoc: GL Global glVertexAttrib2dv(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttrib2dv(index_:Int,v_:Double Ptr)="__glewVertexAttrib2dv"
rem
bbdoc: GL Global glVertexAttrib2f(index_:Int,x_:Float,y_:Float)
endrem
Global glVertexAttrib2f(index_:Int,x_:Float,y_:Float)="__glewVertexAttrib2f"
rem
bbdoc: GL Global glVertexAttrib2fv(index_:Int,v_:Float Ptr)
endrem
Global glVertexAttrib2fv(index_:Int,v_:Float Ptr)="__glewVertexAttrib2fv"
rem
bbdoc: GL Global glVertexAttrib2s(index_:Int,x_:Short,y_:Short)
endrem
Global glVertexAttrib2s(index_:Int,x_:Short,y_:Short)="__glewVertexAttrib2s"
rem
bbdoc: GL Global glVertexAttrib2sv(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib2sv(index_:Int,v_:Short Ptr)="__glewVertexAttrib2sv"
rem
bbdoc: GL Global glVertexAttrib3d(index_:Int,x_:Double,y_:Double,z_:Double)
endrem
Global glVertexAttrib3d(index_:Int,x_:Double,y_:Double,z_:Double)="__glewVertexAttrib3d"
rem
bbdoc: GL Global glVertexAttrib3dv(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttrib3dv(index_:Int,v_:Double Ptr)="__glewVertexAttrib3dv"
rem
bbdoc: GL Global glVertexAttrib3f(index_:Int,x_:Float,y_:Float,z_:Float)
endrem
Global glVertexAttrib3f(index_:Int,x_:Float,y_:Float,z_:Float)="__glewVertexAttrib3f"
rem
bbdoc: GL Global glVertexAttrib3fv(index_:Int,v_:Float Ptr)
endrem
Global glVertexAttrib3fv(index_:Int,v_:Float Ptr)="__glewVertexAttrib3fv"
rem
bbdoc: GL Global glVertexAttrib3s(index_:Int,x_:Short,y_:Short,z_:Short)
endrem
Global glVertexAttrib3s(index_:Int,x_:Short,y_:Short,z_:Short)="__glewVertexAttrib3s"
rem
bbdoc: GL Global glVertexAttrib3sv(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib3sv(index_:Int,v_:Short Ptr)="__glewVertexAttrib3sv"
rem
bbdoc: GL Global glVertexAttrib4Nbv(index_:Int,v_:Byte Ptr)
endrem
Global glVertexAttrib4Nbv(index_:Int,v_:Byte Ptr)="__glewVertexAttrib4Nbv"
rem
bbdoc: GL Global glVertexAttrib4Niv(index_:Int,v_:Int Ptr)
endrem
Global glVertexAttrib4Niv(index_:Int,v_:Int Ptr)="__glewVertexAttrib4Niv"
rem
bbdoc: GL Global glVertexAttrib4Nsv(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib4Nsv(index_:Int,v_:Short Ptr)="__glewVertexAttrib4Nsv"
rem
bbdoc: GL Global glVertexAttrib4Nub(index_:Int,x_:Byte,y_:Byte,z_:Byte,w_:Byte)
endrem
Global glVertexAttrib4Nub(index_:Int,x_:Byte,y_:Byte,z_:Byte,w_:Byte)="__glewVertexAttrib4Nub"
rem
bbdoc: GL Global glVertexAttrib4Nubv(index_:Int,v_:Byte Ptr)
endrem
Global glVertexAttrib4Nubv(index_:Int,v_:Byte Ptr)="__glewVertexAttrib4Nubv"
rem
bbdoc: GL Global glVertexAttrib4Nuiv(index_:Int,v_:Int Ptr)
endrem
Global glVertexAttrib4Nuiv(index_:Int,v_:Int Ptr)="__glewVertexAttrib4Nuiv"
rem
bbdoc: GL Global glVertexAttrib4Nusv(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib4Nusv(index_:Int,v_:Short Ptr)="__glewVertexAttrib4Nusv"
rem
bbdoc: GL Global glVertexAttrib4bv(index_:Int,v_:Byte Ptr)
endrem
Global glVertexAttrib4bv(index_:Int,v_:Byte Ptr)="__glewVertexAttrib4bv"
rem
bbdoc: GL Global glVertexAttrib4d(index_:Int,x_:Double,y_:Double,z_:Double,w_:Double)
endrem
Global glVertexAttrib4d(index_:Int,x_:Double,y_:Double,z_:Double,w_:Double)="__glewVertexAttrib4d"
rem
bbdoc: GL Global glVertexAttrib4dv(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttrib4dv(index_:Int,v_:Double Ptr)="__glewVertexAttrib4dv"
rem
bbdoc: GL Global glVertexAttrib4f(index_:Int,x_:Float,y_:Float,z_:Float,w_:Float)
endrem
Global glVertexAttrib4f(index_:Int,x_:Float,y_:Float,z_:Float,w_:Float)="__glewVertexAttrib4f"
rem
bbdoc: GL Global glVertexAttrib4fv(index_:Int,v_:Float Ptr)
endrem
Global glVertexAttrib4fv(index_:Int,v_:Float Ptr)="__glewVertexAttrib4fv"
rem
bbdoc: GL Global glVertexAttrib4iv(index_:Int,v_:Int Ptr)
endrem
Global glVertexAttrib4iv(index_:Int,v_:Int Ptr)="__glewVertexAttrib4iv"
rem
bbdoc: GL Global glVertexAttrib4s(index_:Int,x_:Short,y_:Short,z_:Short,w_:Short)
endrem
Global glVertexAttrib4s(index_:Int,x_:Short,y_:Short,z_:Short,w_:Short)="__glewVertexAttrib4s"
rem
bbdoc: GL Global glVertexAttrib4sv(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib4sv(index_:Int,v_:Short Ptr)="__glewVertexAttrib4sv"
rem
bbdoc: GL Global glVertexAttrib4ubv(index_:Int,v_:Byte Ptr)
endrem
Global glVertexAttrib4ubv(index_:Int,v_:Byte Ptr)="__glewVertexAttrib4ubv"
rem
bbdoc: GL Global glVertexAttrib4uiv(index_:Int,v_:Int Ptr)
endrem
Global glVertexAttrib4uiv(index_:Int,v_:Int Ptr)="__glewVertexAttrib4uiv"
rem
bbdoc: GL Global glVertexAttrib4usv(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib4usv(index_:Int,v_:Short Ptr)="__glewVertexAttrib4usv"
rem
bbdoc: GL Global glVertexAttribPointer(index_:Int,size_:Int,type_:Int,normalized_:Byte,stride_:Int,pointer_:Byte Ptr)
endrem
Global glVertexAttribPointer(index_:Int,size_:Int,type_:Int,normalized_:Byte,stride_:Int,pointer_:Byte Ptr)="__glewVertexAttribPointer"
rem
bbdoc: GL Global GLEW_VERSION_2_0
endrem
Global GL_VERSION_2_0:Byte="__GLEW_VERSION_2_0"
rem
bbdoc: GL Const GL_CURRENT_RASTER_SECONDARY_COLOR
endrem
Const GL_CURRENT_RASTER_SECONDARY_COLOR=$845F
rem
bbdoc: GL Const GL_PIXEL_PACK_BUFFER
endrem
Const GL_PIXEL_PACK_BUFFER=$88EB
rem
bbdoc: GL Const GL_PIXEL_UNPACK_BUFFER
endrem
Const GL_PIXEL_UNPACK_BUFFER=$88EC
rem
bbdoc: GL Const GL_PIXEL_PACK_BUFFER_BINDING
endrem
Const GL_PIXEL_PACK_BUFFER_BINDING=$88ED
rem
bbdoc: GL Const GL_PIXEL_UNPACK_BUFFER_BINDING
endrem
Const GL_PIXEL_UNPACK_BUFFER_BINDING=$88EF
rem
bbdoc: GL Const GL_FLOAT_MAT2x3
endrem
Const GL_FLOAT_MAT2x3=$8B65
rem
bbdoc: GL Const GL_FLOAT_MAT2x4
endrem
Const GL_FLOAT_MAT2x4=$8B66
rem
bbdoc: GL Const GL_FLOAT_MAT3x2
endrem
Const GL_FLOAT_MAT3x2=$8B67
rem
bbdoc: GL Const GL_FLOAT_MAT3x4
endrem
Const GL_FLOAT_MAT3x4=$8B68
rem
bbdoc: GL Const GL_FLOAT_MAT4x2
endrem
Const GL_FLOAT_MAT4x2=$8B69
rem
bbdoc: GL Const GL_FLOAT_MAT4x3
endrem
Const GL_FLOAT_MAT4x3=$8B6A
rem
bbdoc: GL Const GL_SRGB
endrem
Const GL_SRGB=$8C40
rem
bbdoc: GL Const GL_SRGB8
endrem
Const GL_SRGB8=$8C41
rem
bbdoc: GL Const GL_SRGB_ALPHA
endrem
Const GL_SRGB_ALPHA=$8C42
rem
bbdoc: GL Const GL_SRGB8_ALPHA8
endrem
Const GL_SRGB8_ALPHA8=$8C43
rem
bbdoc: GL Const GL_SLUMINANCE_ALPHA
endrem
Const GL_SLUMINANCE_ALPHA=$8C44
rem
bbdoc: GL Const GL_SLUMINANCE8_ALPHA8
endrem
Const GL_SLUMINANCE8_ALPHA8=$8C45
rem
bbdoc: GL Const GL_SLUMINANCE
endrem
Const GL_SLUMINANCE=$8C46
rem
bbdoc: GL Const GL_SLUMINANCE8
endrem
Const GL_SLUMINANCE8=$8C47
rem
bbdoc: GL Const GL_COMPRESSED_SRGB
endrem
Const GL_COMPRESSED_SRGB=$8C48
rem
bbdoc: GL Const GL_COMPRESSED_SRGB_ALPHA
endrem
Const GL_COMPRESSED_SRGB_ALPHA=$8C49
rem
bbdoc: GL Const GL_COMPRESSED_SLUMINANCE
endrem
Const GL_COMPRESSED_SLUMINANCE=$8C4A
rem
bbdoc: GL Const GL_COMPRESSED_SLUMINANCE_ALPHA
endrem
Const GL_COMPRESSED_SLUMINANCE_ALPHA=$8C4B
rem
bbdoc: GL Global glUniformMatrix2x3fv(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glUniformMatrix2x3fv(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewUniformMatrix2x3fv"
rem
bbdoc: GL Global glUniformMatrix2x4fv(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glUniformMatrix2x4fv(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewUniformMatrix2x4fv"
rem
bbdoc: GL Global glUniformMatrix3x2fv(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glUniformMatrix3x2fv(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewUniformMatrix3x2fv"
rem
bbdoc: GL Global glUniformMatrix3x4fv(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glUniformMatrix3x4fv(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewUniformMatrix3x4fv"
rem
bbdoc: GL Global glUniformMatrix4x2fv(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glUniformMatrix4x2fv(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewUniformMatrix4x2fv"
rem
bbdoc: GL Global glUniformMatrix4x3fv(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glUniformMatrix4x3fv(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewUniformMatrix4x3fv"
rem
bbdoc: GL Global GLEW_VERSION_2_1
endrem
Global GL_VERSION_2_1:Byte="__GLEW_VERSION_2_1"
rem
bbdoc: GL Const GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT
endrem
Const GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT=$0001
rem
bbdoc: GL Const GL_MAJOR_VERSION
endrem
Const GL_MAJOR_VERSION=$821B
rem
bbdoc: GL Const GL_MINOR_VERSION
endrem
Const GL_MINOR_VERSION=$821C
rem
bbdoc: GL Const GL_NUM_EXTENSIONS
endrem
Const GL_NUM_EXTENSIONS=$821D
rem
bbdoc: GL Const GL_CONTEXT_FLAGS
endrem
Const GL_CONTEXT_FLAGS=$821E
rem
bbdoc: GL Const GL_DEPTH_BUFFER
endrem
Const GL_DEPTH_BUFFER=$8223
rem
bbdoc: GL Const GL_STENCIL_BUFFER
endrem
Const GL_STENCIL_BUFFER=$8224
rem
bbdoc: GL Const GL_RGBA32F
endrem
Const GL_RGBA32F=$8814
rem
bbdoc: GL Const GL_RGB32F
endrem
Const GL_RGB32F=$8815
rem
bbdoc: GL Const GL_RGBA16F
endrem
Const GL_RGBA16F=$881A
rem
bbdoc: GL Const GL_RGB16F
endrem
Const GL_RGB16F=$881B
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_INTEGER
endrem
Const GL_VERTEX_ATTRIB_ARRAY_INTEGER=$88FD
rem
bbdoc: GL Const GL_MAX_ARRAY_TEXTURE_LAYERS
endrem
Const GL_MAX_ARRAY_TEXTURE_LAYERS=$88FF
rem
bbdoc: GL Const GL_MIN_PROGRAM_TEXEL_OFFSET
endrem
Const GL_MIN_PROGRAM_TEXEL_OFFSET=$8904
rem
bbdoc: GL Const GL_MAX_PROGRAM_TEXEL_OFFSET
endrem
Const GL_MAX_PROGRAM_TEXEL_OFFSET=$8905
rem
bbdoc: GL Const GL_CLAMP_VERTEX_COLOR
endrem
Const GL_CLAMP_VERTEX_COLOR=$891A
rem
bbdoc: GL Const GL_CLAMP_FRAGMENT_COLOR
endrem
Const GL_CLAMP_FRAGMENT_COLOR=$891B
rem
bbdoc: GL Const GL_CLAMP_READ_COLOR
endrem
Const GL_CLAMP_READ_COLOR=$891C
rem
bbdoc: GL Const GL_FIXED_ONLY
endrem
Const GL_FIXED_ONLY=$891D
rem
bbdoc: GL Const GL_TEXTURE_RED_TYPE
endrem
Const GL_TEXTURE_RED_TYPE=$8C10
rem
bbdoc: GL Const GL_TEXTURE_GREEN_TYPE
endrem
Const GL_TEXTURE_GREEN_TYPE=$8C11
rem
bbdoc: GL Const GL_TEXTURE_BLUE_TYPE
endrem
Const GL_TEXTURE_BLUE_TYPE=$8C12
rem
bbdoc: GL Const GL_TEXTURE_ALPHA_TYPE
endrem
Const GL_TEXTURE_ALPHA_TYPE=$8C13
rem
bbdoc: GL Const GL_TEXTURE_LUMINANCE_TYPE
endrem
Const GL_TEXTURE_LUMINANCE_TYPE=$8C14
rem
bbdoc: GL Const GL_TEXTURE_INTENSITY_TYPE
endrem
Const GL_TEXTURE_INTENSITY_TYPE=$8C15
rem
bbdoc: GL Const GL_TEXTURE_DEPTH_TYPE
endrem
Const GL_TEXTURE_DEPTH_TYPE=$8C16
rem
bbdoc: GL Const GL_TEXTURE_1D_ARRAY
endrem
Const GL_TEXTURE_1D_ARRAY=$8C18
rem
bbdoc: GL Const GL_PROXY_TEXTURE_1D_ARRAY
endrem
Const GL_PROXY_TEXTURE_1D_ARRAY=$8C19
rem
bbdoc: GL Const GL_TEXTURE_2D_ARRAY
endrem
Const GL_TEXTURE_2D_ARRAY=$8C1A
rem
bbdoc: GL Const GL_PROXY_TEXTURE_2D_ARRAY
endrem
Const GL_PROXY_TEXTURE_2D_ARRAY=$8C1B
rem
bbdoc: GL Const GL_TEXTURE_BINDING_1D_ARRAY
endrem
Const GL_TEXTURE_BINDING_1D_ARRAY=$8C1C
rem
bbdoc: GL Const GL_TEXTURE_BINDING_2D_ARRAY
endrem
Const GL_TEXTURE_BINDING_2D_ARRAY=$8C1D
rem
bbdoc: GL Const GL_R11F_G11F_B10F
endrem
Const GL_R11F_G11F_B10F=$8C3A
rem
bbdoc: GL Const GL_UNSIGNED_INT_10F_11F_11F_REV
endrem
Const GL_UNSIGNED_INT_10F_11F_11F_REV=$8C3B
rem
bbdoc: GL Const GL_RGB9_E5
endrem
Const GL_RGB9_E5=$8C3D
rem
bbdoc: GL Const GL_UNSIGNED_INT_5_9_9_9_REV
endrem
Const GL_UNSIGNED_INT_5_9_9_9_REV=$8C3E
rem
bbdoc: GL Const GL_TEXTURE_SHARED_SIZE
endrem
Const GL_TEXTURE_SHARED_SIZE=$8C3F
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH
endrem
Const GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH=$8C76
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_MODE
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_MODE=$8C7F
rem
bbdoc: GL Const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS
endrem
Const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS=$8C80
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_VARYINGS
endrem
Const GL_TRANSFORM_FEEDBACK_VARYINGS=$8C83
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_START
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_START=$8C84
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_SIZE
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_SIZE=$8C85
rem
bbdoc: GL Const GL_PRIMITIVES_GENERATED
endrem
Const GL_PRIMITIVES_GENERATED=$8C87
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN
endrem
Const GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN=$8C88
rem
bbdoc: GL Const GL_RASTERIZER_DISCARD
endrem
Const GL_RASTERIZER_DISCARD=$8C89
rem
bbdoc: GL Const GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS
endrem
Const GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS=$8C8A
rem
bbdoc: GL Const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS
endrem
Const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS=$8C8B
rem
bbdoc: GL Const GL_INTERLEAVED_ATTRIBS
endrem
Const GL_INTERLEAVED_ATTRIBS=$8C8C
rem
bbdoc: GL Const GL_SEPARATE_ATTRIBS
endrem
Const GL_SEPARATE_ATTRIBS=$8C8D
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER=$8C8E
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_BINDING
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_BINDING=$8C8F
rem
bbdoc: GL Const GL_RGBA32UI
endrem
Const GL_RGBA32UI=$8D70
rem
bbdoc: GL Const GL_RGB32UI
endrem
Const GL_RGB32UI=$8D71
rem
bbdoc: GL Const GL_RGBA16UI
endrem
Const GL_RGBA16UI=$8D76
rem
bbdoc: GL Const GL_RGB16UI
endrem
Const GL_RGB16UI=$8D77
rem
bbdoc: GL Const GL_RGBA8UI
endrem
Const GL_RGBA8UI=$8D7C
rem
bbdoc: GL Const GL_RGB8UI
endrem
Const GL_RGB8UI=$8D7D
rem
bbdoc: GL Const GL_RGBA32I
endrem
Const GL_RGBA32I=$8D82
rem
bbdoc: GL Const GL_RGB32I
endrem
Const GL_RGB32I=$8D83
rem
bbdoc: GL Const GL_RGBA16I
endrem
Const GL_RGBA16I=$8D88
rem
bbdoc: GL Const GL_RGB16I
endrem
Const GL_RGB16I=$8D89
rem
bbdoc: GL Const GL_RGBA8I
endrem
Const GL_RGBA8I=$8D8E
rem
bbdoc: GL Const GL_RGB8I
endrem
Const GL_RGB8I=$8D8F
rem
bbdoc: GL Const GL_RED_INTEGER
endrem
Const GL_RED_INTEGER=$8D94
rem
bbdoc: GL Const GL_GREEN_INTEGER
endrem
Const GL_GREEN_INTEGER=$8D95
rem
bbdoc: GL Const GL_BLUE_INTEGER
endrem
Const GL_BLUE_INTEGER=$8D96
rem
bbdoc: GL Const GL_ALPHA_INTEGER
endrem
Const GL_ALPHA_INTEGER=$8D97
rem
bbdoc: GL Const GL_RGB_INTEGER
endrem
Const GL_RGB_INTEGER=$8D98
rem
bbdoc: GL Const GL_RGBA_INTEGER
endrem
Const GL_RGBA_INTEGER=$8D99
rem
bbdoc: GL Const GL_BGR_INTEGER
endrem
Const GL_BGR_INTEGER=$8D9A
rem
bbdoc: GL Const GL_BGRA_INTEGER
endrem
Const GL_BGRA_INTEGER=$8D9B
rem
bbdoc: GL Const GL_SAMPLER_1D_ARRAY
endrem
Const GL_SAMPLER_1D_ARRAY=$8DC0
rem
bbdoc: GL Const GL_SAMPLER_2D_ARRAY
endrem
Const GL_SAMPLER_2D_ARRAY=$8DC1
rem
bbdoc: GL Const GL_SAMPLER_1D_ARRAY_SHADOW
endrem
Const GL_SAMPLER_1D_ARRAY_SHADOW=$8DC3
rem
bbdoc: GL Const GL_SAMPLER_2D_ARRAY_SHADOW
endrem
Const GL_SAMPLER_2D_ARRAY_SHADOW=$8DC4
rem
bbdoc: GL Const GL_SAMPLER_CUBE_SHADOW
endrem
Const GL_SAMPLER_CUBE_SHADOW=$8DC5
rem
bbdoc: GL Const GL_UNSIGNED_INT_VEC2
endrem
Const GL_UNSIGNED_INT_VEC2=$8DC6
rem
bbdoc: GL Const GL_UNSIGNED_INT_VEC3
endrem
Const GL_UNSIGNED_INT_VEC3=$8DC7
rem
bbdoc: GL Const GL_UNSIGNED_INT_VEC4
endrem
Const GL_UNSIGNED_INT_VEC4=$8DC8
rem
bbdoc: GL Const GL_INT_SAMPLER_1D
endrem
Const GL_INT_SAMPLER_1D=$8DC9
rem
bbdoc: GL Const GL_INT_SAMPLER_2D
endrem
Const GL_INT_SAMPLER_2D=$8DCA
rem
bbdoc: GL Const GL_INT_SAMPLER_3D
endrem
Const GL_INT_SAMPLER_3D=$8DCB
rem
bbdoc: GL Const GL_INT_SAMPLER_CUBE
endrem
Const GL_INT_SAMPLER_CUBE=$8DCC
rem
bbdoc: GL Const GL_INT_SAMPLER_1D_ARRAY
endrem
Const GL_INT_SAMPLER_1D_ARRAY=$8DCE
rem
bbdoc: GL Const GL_INT_SAMPLER_2D_ARRAY
endrem
Const GL_INT_SAMPLER_2D_ARRAY=$8DCF
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_1D
endrem
Const GL_UNSIGNED_INT_SAMPLER_1D=$8DD1
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_2D
endrem
Const GL_UNSIGNED_INT_SAMPLER_2D=$8DD2
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_3D
endrem
Const GL_UNSIGNED_INT_SAMPLER_3D=$8DD3
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_CUBE
endrem
Const GL_UNSIGNED_INT_SAMPLER_CUBE=$8DD4
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_1D_ARRAY
endrem
Const GL_UNSIGNED_INT_SAMPLER_1D_ARRAY=$8DD6
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_2D_ARRAY
endrem
Const GL_UNSIGNED_INT_SAMPLER_2D_ARRAY=$8DD7
rem
bbdoc: GL Const GL_QUERY_WAIT
endrem
Const GL_QUERY_WAIT=$8E13
rem
bbdoc: GL Const GL_QUERY_NO_WAIT
endrem
Const GL_QUERY_NO_WAIT=$8E14
rem
bbdoc: GL Const GL_QUERY_BY_REGION_WAIT
endrem
Const GL_QUERY_BY_REGION_WAIT=$8E15
rem
bbdoc: GL Const GL_QUERY_BY_REGION_NO_WAIT
endrem
Const GL_QUERY_BY_REGION_NO_WAIT=$8E16
rem
bbdoc: GL Global glBeginConditionalRender(id_:Int,mode_:Int)
endrem
Global glBeginConditionalRender(id_:Int,mode_:Int)="__glewBeginConditionalRender"
rem
bbdoc: GL Global glBeginTransformFeedback(primitiveMode_:Int)
endrem
Global glBeginTransformFeedback(primitiveMode_:Int)="__glewBeginTransformFeedback"
rem
bbdoc: GL Global glBindFragDataLocation(program_:Int,colorNumber_:Int,name_:Byte Ptr)
endrem
Global glBindFragDataLocation(program_:Int,colorNumber_:Int,name_:Byte Ptr)="__glewBindFragDataLocation"
rem
bbdoc: GL Global glClampColor(target_:Int,clamp_:Int)
endrem
Global glClampColor(target_:Int,clamp_:Int)="__glewClampColor"
rem
bbdoc: GL Global glClearBufferfi(buffer_:Int,drawBuffer_:Int,depth_:Float,stencil_:Int)
endrem
Global glClearBufferfi(buffer_:Int,drawBuffer_:Int,depth_:Float,stencil_:Int)="__glewClearBufferfi"
rem
bbdoc: GL Global glClearBufferfv(buffer_:Int,drawBuffer_:Int,value_:Float Ptr)
endrem
Global glClearBufferfv(buffer_:Int,drawBuffer_:Int,value_:Float Ptr)="__glewClearBufferfv"
rem
bbdoc: GL Global glClearBufferiv(buffer_:Int,drawBuffer_:Int,value_:Int Ptr)
endrem
Global glClearBufferiv(buffer_:Int,drawBuffer_:Int,value_:Int Ptr)="__glewClearBufferiv"
rem
bbdoc: GL Global glClearBufferuiv(buffer_:Int,drawBuffer_:Int,value_:Int Ptr)
endrem
Global glClearBufferuiv(buffer_:Int,drawBuffer_:Int,value_:Int Ptr)="__glewClearBufferuiv"
rem
bbdoc: GL Global glColorMaski(buf_:Int,red_:Byte,green_:Byte,blue_:Byte,alpha_:Byte)
endrem
Global glColorMaski(buf_:Int,red_:Byte,green_:Byte,blue_:Byte,alpha_:Byte)="__glewColorMaski"
rem
bbdoc: GL Global glDisablei(cap_:Int,index_:Int)
endrem
Global glDisablei(cap_:Int,index_:Int)="__glewDisablei"
rem
bbdoc: GL Global glEnablei(cap_:Int,index_:Int)
endrem
Global glEnablei(cap_:Int,index_:Int)="__glewEnablei"
rem
bbdoc: GL Global glEndConditionalRender()
endrem
Global glEndConditionalRender()="__glewEndConditionalRender"
rem
bbdoc: GL Global glEndTransformFeedback()
endrem
Global glEndTransformFeedback()="__glewEndTransformFeedback"
rem
bbdoc: GL Global glGetBooleani_v(pname_:Int,index_:Int,data_:Byte Ptr)
endrem
Global glGetBooleani_v(pname_:Int,index_:Int,data_:Byte Ptr)="__glewGetBooleani_v"
rem
bbdoc: GL Global glGetFragDataLocation:Int(program_:Int,name_:Byte Ptr)
endrem
Global glGetFragDataLocation:Int(program_:Int,name_:Byte Ptr)="__glewGetFragDataLocation"
rem
bbdoc: GL Global glGetStringi:Byte Ptr(name_:Int,index_:Int)
endrem
Global glGetStringi:Byte Ptr(name_:Int,index_:Int)="__glewGetStringi"
rem
bbdoc: GL Global glGetTexParameterIiv(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetTexParameterIiv(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetTexParameterIiv"
rem
bbdoc: GL Global glGetTexParameterIuiv(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetTexParameterIuiv(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetTexParameterIuiv"
rem
bbdoc: GL Global glGetTransformFeedbackVarying(program_:Int,index_:Int,bufSize_:Int,length_:Int Ptr,size_:Int Ptr,type_:Int Ptr,name_:Byte Ptr)
endrem
Global glGetTransformFeedbackVarying(program_:Int,index_:Int,bufSize_:Int,length_:Int Ptr,size_:Int Ptr,type_:Int Ptr,name_:Byte Ptr)="__glewGetTransformFeedbackVarying"
rem
bbdoc: GL Global glGetUniformuiv(program_:Int,location_:Int,params_:Int Ptr)
endrem
Global glGetUniformuiv(program_:Int,location_:Int,params_:Int Ptr)="__glewGetUniformuiv"
rem
bbdoc: GL Global glGetVertexAttribIiv(index_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetVertexAttribIiv(index_:Int,pname_:Int,params_:Int Ptr)="__glewGetVertexAttribIiv"
rem
bbdoc: GL Global glGetVertexAttribIuiv(index_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetVertexAttribIuiv(index_:Int,pname_:Int,params_:Int Ptr)="__glewGetVertexAttribIuiv"
rem
bbdoc: GL Global glIsEnabledi:Byte(cap_:Int,index_:Int)
endrem
Global glIsEnabledi:Byte(cap_:Int,index_:Int)="__glewIsEnabledi"
rem
bbdoc: GL Global glTexParameterIiv(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glTexParameterIiv(target_:Int,pname_:Int,params_:Int Ptr)="__glewTexParameterIiv"
rem
bbdoc: GL Global glTexParameterIuiv(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glTexParameterIuiv(target_:Int,pname_:Int,params_:Int Ptr)="__glewTexParameterIuiv"
rem
bbdoc: GL Global glTransformFeedbackVaryings(program_:Int,count_:Int,varyings_:Byte Ptr Ptr,bufferMode_:Int)
endrem
Global glTransformFeedbackVaryings(program_:Int,count_:Int,varyings_:Byte Ptr Ptr,bufferMode_:Int)="__glewTransformFeedbackVaryings"
rem
bbdoc: GL Global glUniform1ui(location_:Int,v0_:Int)
endrem
Global glUniform1ui(location_:Int,v0_:Int)="__glewUniform1ui"
rem
bbdoc: GL Global glUniform1uiv(location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glUniform1uiv(location_:Int,count_:Int,value_:Int Ptr)="__glewUniform1uiv"
rem
bbdoc: GL Global glUniform2ui(location_:Int,v0_:Int,v1_:Int)
endrem
Global glUniform2ui(location_:Int,v0_:Int,v1_:Int)="__glewUniform2ui"
rem
bbdoc: GL Global glUniform2uiv(location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glUniform2uiv(location_:Int,count_:Int,value_:Int Ptr)="__glewUniform2uiv"
rem
bbdoc: GL Global glUniform3ui(location_:Int,v0_:Int,v1_:Int,v2_:Int)
endrem
Global glUniform3ui(location_:Int,v0_:Int,v1_:Int,v2_:Int)="__glewUniform3ui"
rem
bbdoc: GL Global glUniform3uiv(location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glUniform3uiv(location_:Int,count_:Int,value_:Int Ptr)="__glewUniform3uiv"
rem
bbdoc: GL Global glUniform4ui(location_:Int,v0_:Int,v1_:Int,v2_:Int,v3_:Int)
endrem
Global glUniform4ui(location_:Int,v0_:Int,v1_:Int,v2_:Int,v3_:Int)="__glewUniform4ui"
rem
bbdoc: GL Global glUniform4uiv(location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glUniform4uiv(location_:Int,count_:Int,value_:Int Ptr)="__glewUniform4uiv"
rem
bbdoc: GL Global glVertexAttribI1i(index_:Int,v0_:Int)
endrem
Global glVertexAttribI1i(index_:Int,v0_:Int)="__glewVertexAttribI1i"
rem
bbdoc: GL Global glVertexAttribI1iv(index_:Int,v0_:Int Ptr)
endrem
Global glVertexAttribI1iv(index_:Int,v0_:Int Ptr)="__glewVertexAttribI1iv"
rem
bbdoc: GL Global glVertexAttribI1ui(index_:Int,v0_:Int)
endrem
Global glVertexAttribI1ui(index_:Int,v0_:Int)="__glewVertexAttribI1ui"
rem
bbdoc: GL Global glVertexAttribI1uiv(index_:Int,v0_:Int Ptr)
endrem
Global glVertexAttribI1uiv(index_:Int,v0_:Int Ptr)="__glewVertexAttribI1uiv"
rem
bbdoc: GL Global glVertexAttribI2i(index_:Int,v0_:Int,v1_:Int)
endrem
Global glVertexAttribI2i(index_:Int,v0_:Int,v1_:Int)="__glewVertexAttribI2i"
rem
bbdoc: GL Global glVertexAttribI2iv(index_:Int,v0_:Int Ptr)
endrem
Global glVertexAttribI2iv(index_:Int,v0_:Int Ptr)="__glewVertexAttribI2iv"
rem
bbdoc: GL Global glVertexAttribI2ui(index_:Int,v0_:Int,v1_:Int)
endrem
Global glVertexAttribI2ui(index_:Int,v0_:Int,v1_:Int)="__glewVertexAttribI2ui"
rem
bbdoc: GL Global glVertexAttribI2uiv(index_:Int,v0_:Int Ptr)
endrem
Global glVertexAttribI2uiv(index_:Int,v0_:Int Ptr)="__glewVertexAttribI2uiv"
rem
bbdoc: GL Global glVertexAttribI3i(index_:Int,v0_:Int,v1_:Int,v2_:Int)
endrem
Global glVertexAttribI3i(index_:Int,v0_:Int,v1_:Int,v2_:Int)="__glewVertexAttribI3i"
rem
bbdoc: GL Global glVertexAttribI3iv(index_:Int,v0_:Int Ptr)
endrem
Global glVertexAttribI3iv(index_:Int,v0_:Int Ptr)="__glewVertexAttribI3iv"
rem
bbdoc: GL Global glVertexAttribI3ui(index_:Int,v0_:Int,v1_:Int,v2_:Int)
endrem
Global glVertexAttribI3ui(index_:Int,v0_:Int,v1_:Int,v2_:Int)="__glewVertexAttribI3ui"
rem
bbdoc: GL Global glVertexAttribI3uiv(index_:Int,v0_:Int Ptr)
endrem
Global glVertexAttribI3uiv(index_:Int,v0_:Int Ptr)="__glewVertexAttribI3uiv"
rem
bbdoc: GL Global glVertexAttribI4bv(index_:Int,v0_:Byte Ptr)
endrem
Global glVertexAttribI4bv(index_:Int,v0_:Byte Ptr)="__glewVertexAttribI4bv"
rem
bbdoc: GL Global glVertexAttribI4i(index_:Int,v0_:Int,v1_:Int,v2_:Int,v3_:Int)
endrem
Global glVertexAttribI4i(index_:Int,v0_:Int,v1_:Int,v2_:Int,v3_:Int)="__glewVertexAttribI4i"
rem
bbdoc: GL Global glVertexAttribI4iv(index_:Int,v0_:Int Ptr)
endrem
Global glVertexAttribI4iv(index_:Int,v0_:Int Ptr)="__glewVertexAttribI4iv"
rem
bbdoc: GL Global glVertexAttribI4sv(index_:Int,v0_:Short Ptr)
endrem
Global glVertexAttribI4sv(index_:Int,v0_:Short Ptr)="__glewVertexAttribI4sv"
rem
bbdoc: GL Global glVertexAttribI4ubv(index_:Int,v0_:Byte Ptr)
endrem
Global glVertexAttribI4ubv(index_:Int,v0_:Byte Ptr)="__glewVertexAttribI4ubv"
rem
bbdoc: GL Global glVertexAttribI4ui(index_:Int,v0_:Int,v1_:Int,v2_:Int,v3_:Int)
endrem
Global glVertexAttribI4ui(index_:Int,v0_:Int,v1_:Int,v2_:Int,v3_:Int)="__glewVertexAttribI4ui"
rem
bbdoc: GL Global glVertexAttribI4uiv(index_:Int,v0_:Int Ptr)
endrem
Global glVertexAttribI4uiv(index_:Int,v0_:Int Ptr)="__glewVertexAttribI4uiv"
rem
bbdoc: GL Global glVertexAttribI4usv(index_:Int,v0_:Short Ptr)
endrem
Global glVertexAttribI4usv(index_:Int,v0_:Short Ptr)="__glewVertexAttribI4usv"
rem
bbdoc: GL Global glVertexAttribIPointer(index_:Int,size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)
endrem
Global glVertexAttribIPointer(index_:Int,size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)="__glewVertexAttribIPointer"
rem
bbdoc: GL Global GLEW_VERSION_3_0
endrem
Global GL_VERSION_3_0:Byte="__GLEW_VERSION_3_0"
rem
bbdoc: GL Const GL_TEXTURE_RECTANGLE
endrem
Const GL_TEXTURE_RECTANGLE=$84F5
rem
bbdoc: GL Const GL_TEXTURE_BINDING_RECTANGLE
endrem
Const GL_TEXTURE_BINDING_RECTANGLE=$84F6
rem
bbdoc: GL Const GL_PROXY_TEXTURE_RECTANGLE
endrem
Const GL_PROXY_TEXTURE_RECTANGLE=$84F7
rem
bbdoc: GL Const GL_MAX_RECTANGLE_TEXTURE_SIZE
endrem
Const GL_MAX_RECTANGLE_TEXTURE_SIZE=$84F8
rem
bbdoc: GL Const GL_SAMPLER_2D_RECT
endrem
Const GL_SAMPLER_2D_RECT=$8B63
rem
bbdoc: GL Const GL_SAMPLER_2D_RECT_SHADOW
endrem
Const GL_SAMPLER_2D_RECT_SHADOW=$8B64
rem
bbdoc: GL Const GL_TEXTURE_BUFFER
endrem
Const GL_TEXTURE_BUFFER=$8C2A
rem
bbdoc: GL Const GL_MAX_TEXTURE_BUFFER_SIZE
endrem
Const GL_MAX_TEXTURE_BUFFER_SIZE=$8C2B
rem
bbdoc: GL Const GL_TEXTURE_BINDING_BUFFER
endrem
Const GL_TEXTURE_BINDING_BUFFER=$8C2C
rem
bbdoc: GL Const GL_TEXTURE_BUFFER_DATA_STORE_BINDING
endrem
Const GL_TEXTURE_BUFFER_DATA_STORE_BINDING=$8C2D
rem
bbdoc: GL Const GL_TEXTURE_BUFFER_FORMAT
endrem
Const GL_TEXTURE_BUFFER_FORMAT=$8C2E
rem
bbdoc: GL Const GL_SAMPLER_BUFFER
endrem
Const GL_SAMPLER_BUFFER=$8DC2
rem
bbdoc: GL Const GL_INT_SAMPLER_2D_RECT
endrem
Const GL_INT_SAMPLER_2D_RECT=$8DCD
rem
bbdoc: GL Const GL_INT_SAMPLER_BUFFER
endrem
Const GL_INT_SAMPLER_BUFFER=$8DD0
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_2D_RECT
endrem
Const GL_UNSIGNED_INT_SAMPLER_2D_RECT=$8DD5
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_BUFFER
endrem
Const GL_UNSIGNED_INT_SAMPLER_BUFFER=$8DD8
rem
bbdoc: GL Const GL_RED_SNORM
endrem
Const GL_RED_SNORM=$8F90
rem
bbdoc: GL Const GL_RG_SNORM
endrem
Const GL_RG_SNORM=$8F91
rem
bbdoc: GL Const GL_RGB_SNORM
endrem
Const GL_RGB_SNORM=$8F92
rem
bbdoc: GL Const GL_RGBA_SNORM
endrem
Const GL_RGBA_SNORM=$8F93
rem
bbdoc: GL Const GL_R8_SNORM
endrem
Const GL_R8_SNORM=$8F94
rem
bbdoc: GL Const GL_RG8_SNORM
endrem
Const GL_RG8_SNORM=$8F95
rem
bbdoc: GL Const GL_RGB8_SNORM
endrem
Const GL_RGB8_SNORM=$8F96
rem
bbdoc: GL Const GL_RGBA8_SNORM
endrem
Const GL_RGBA8_SNORM=$8F97
rem
bbdoc: GL Const GL_R16_SNORM
endrem
Const GL_R16_SNORM=$8F98
rem
bbdoc: GL Const GL_RG16_SNORM
endrem
Const GL_RG16_SNORM=$8F99
rem
bbdoc: GL Const GL_RGB16_SNORM
endrem
Const GL_RGB16_SNORM=$8F9A
rem
bbdoc: GL Const GL_RGBA16_SNORM
endrem
Const GL_RGBA16_SNORM=$8F9B
rem
bbdoc: GL Const GL_SIGNED_NORMALIZED
endrem
Const GL_SIGNED_NORMALIZED=$8F9C
rem
bbdoc: GL Const GL_PRIMITIVE_RESTART
endrem
Const GL_PRIMITIVE_RESTART=$8F9D
rem
bbdoc: GL Const GL_PRIMITIVE_RESTART_INDEX
endrem
Const GL_PRIMITIVE_RESTART_INDEX=$8F9E
rem
bbdoc: GL Const GL_BUFFER_ACCESS_FLAGS
endrem
Const GL_BUFFER_ACCESS_FLAGS=$911F
rem
bbdoc: GL Const GL_BUFFER_MAP_LENGTH
endrem
Const GL_BUFFER_MAP_LENGTH=$9120
rem
bbdoc: GL Const GL_BUFFER_MAP_OFFSET
endrem
Const GL_BUFFER_MAP_OFFSET=$9121
rem
bbdoc: GL Global glDrawArraysInstanced(mode_:Int,first_:Int,count_:Int,primcount_:Int)
endrem
Global glDrawArraysInstanced(mode_:Int,first_:Int,count_:Int,primcount_:Int)="__glewDrawArraysInstanced"
rem
bbdoc: GL Global glDrawElementsInstanced(mode_:Int,count_:Int,type_:Int,indices_:Byte Ptr,primcount_:Int)
endrem
Global glDrawElementsInstanced(mode_:Int,count_:Int,type_:Int,indices_:Byte Ptr,primcount_:Int)="__glewDrawElementsInstanced"
rem
bbdoc: GL Global glPrimitiveRestartIndex(buffer_:Int)
endrem
Global glPrimitiveRestartIndex(buffer_:Int)="__glewPrimitiveRestartIndex"
rem
bbdoc: GL Global glTexBuffer(target_:Int,internalFormat_:Int,buffer_:Int)
endrem
Global glTexBuffer(target_:Int,internalFormat_:Int,buffer_:Int)="__glewTexBuffer"
rem
bbdoc: GL Global GLEW_VERSION_3_1
endrem
Global GL_VERSION_3_1:Byte="__GLEW_VERSION_3_1"
rem
bbdoc: GL Const GL_CONTEXT_CORE_PROFILE_BIT
endrem
Const GL_CONTEXT_CORE_PROFILE_BIT=$00000001
rem
bbdoc: GL Const GL_CONTEXT_COMPATIBILITY_PROFILE_BIT
endrem
Const GL_CONTEXT_COMPATIBILITY_PROFILE_BIT=$00000002
rem
bbdoc: GL Const GL_LINES_ADJACENCY
endrem
Const GL_LINES_ADJACENCY=$000A
rem
bbdoc: GL Const GL_LINE_STRIP_ADJACENCY
endrem
Const GL_LINE_STRIP_ADJACENCY=$000B
rem
bbdoc: GL Const GL_TRIANGLES_ADJACENCY
endrem
Const GL_TRIANGLES_ADJACENCY=$000C
rem
bbdoc: GL Const GL_TRIANGLE_STRIP_ADJACENCY
endrem
Const GL_TRIANGLE_STRIP_ADJACENCY=$000D
rem
bbdoc: GL Const GL_PROGRAM_POINT_SIZE
endrem
Const GL_PROGRAM_POINT_SIZE=$8642
rem
bbdoc: GL Const GL_GEOMETRY_VERTICES_OUT
endrem
Const GL_GEOMETRY_VERTICES_OUT=$8916
rem
bbdoc: GL Const GL_GEOMETRY_INPUT_TYPE
endrem
Const GL_GEOMETRY_INPUT_TYPE=$8917
rem
bbdoc: GL Const GL_GEOMETRY_OUTPUT_TYPE
endrem
Const GL_GEOMETRY_OUTPUT_TYPE=$8918
rem
bbdoc: GL Const GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS
endrem
Const GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS=$8C29
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_LAYERED
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_LAYERED=$8DA7
rem
bbdoc: GL Const GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS
endrem
Const GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS=$8DA8
rem
bbdoc: GL Const GL_GEOMETRY_SHADER
endrem
Const GL_GEOMETRY_SHADER=$8DD9
rem
bbdoc: GL Const GL_MAX_GEOMETRY_UNIFORM_COMPONENTS
endrem
Const GL_MAX_GEOMETRY_UNIFORM_COMPONENTS=$8DDF
rem
bbdoc: GL Const GL_MAX_GEOMETRY_OUTPUT_VERTICES
endrem
Const GL_MAX_GEOMETRY_OUTPUT_VERTICES=$8DE0
rem
bbdoc: GL Const GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS
endrem
Const GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS=$8DE1
rem
bbdoc: GL Const GL_MAX_VERTEX_OUTPUT_COMPONENTS
endrem
Const GL_MAX_VERTEX_OUTPUT_COMPONENTS=$9122
rem
bbdoc: GL Const GL_MAX_GEOMETRY_INPUT_COMPONENTS
endrem
Const GL_MAX_GEOMETRY_INPUT_COMPONENTS=$9123
rem
bbdoc: GL Const GL_MAX_GEOMETRY_OUTPUT_COMPONENTS
endrem
Const GL_MAX_GEOMETRY_OUTPUT_COMPONENTS=$9124
rem
bbdoc: GL Const GL_MAX_FRAGMENT_INPUT_COMPONENTS
endrem
Const GL_MAX_FRAGMENT_INPUT_COMPONENTS=$9125
rem
bbdoc: GL Const GL_CONTEXT_PROFILE_MASK
endrem
Const GL_CONTEXT_PROFILE_MASK=$9126
rem
bbdoc: GL Global glFramebufferTexture(target_:Int,attachment_:Int,texture_:Int,level_:Int)
endrem
Global glFramebufferTexture(target_:Int,attachment_:Int,texture_:Int,level_:Int)="__glewFramebufferTexture"
rem
bbdoc: GL Global glGetBufferParameteri64v(target_:Int,value_:Int,data_:Long Ptr)
endrem
Global glGetBufferParameteri64v(target_:Int,value_:Int,data_:Long Ptr)="__glewGetBufferParameteri64v"
rem
bbdoc: GL Global glGetInteger64i_v(pname_:Int,index_:Int,data_:Long Ptr)
endrem
Global glGetInteger64i_v(pname_:Int,index_:Int,data_:Long Ptr)="__glewGetInteger64i_v"
rem
bbdoc: GL Global GLEW_VERSION_3_2
endrem
Global GL_VERSION_3_2:Byte="__GLEW_VERSION_3_2"
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_DIVISOR
endrem
Const GL_VERTEX_ATTRIB_ARRAY_DIVISOR=$88FE
rem
bbdoc: GL Const GL_RGB10_A2UI
endrem
Const GL_RGB10_A2UI=$906F
rem
bbdoc: GL Global glVertexAttribDivisor(index_:Int,divisor_:Int)
endrem
Global glVertexAttribDivisor(index_:Int,divisor_:Int)="__glewVertexAttribDivisor"
rem
bbdoc: GL Global GLEW_VERSION_3_3
endrem
Global GL_VERSION_3_3:Byte="__GLEW_VERSION_3_3"
rem
bbdoc: GL Const GL_SAMPLE_SHADING
endrem
Const GL_SAMPLE_SHADING=$8C36
rem
bbdoc: GL Const GL_MIN_SAMPLE_SHADING_VALUE
endrem
Const GL_MIN_SAMPLE_SHADING_VALUE=$8C37
rem
bbdoc: GL Const GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET
endrem
Const GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET=$8E5E
rem
bbdoc: GL Const GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET
endrem
Const GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET=$8E5F
rem
bbdoc: GL Const GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS
endrem
Const GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS=$8F9F
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_ARRAY
endrem
Const GL_TEXTURE_CUBE_MAP_ARRAY=$9009
rem
bbdoc: GL Const GL_TEXTURE_BINDING_CUBE_MAP_ARRAY
endrem
Const GL_TEXTURE_BINDING_CUBE_MAP_ARRAY=$900A
rem
bbdoc: GL Const GL_PROXY_TEXTURE_CUBE_MAP_ARRAY
endrem
Const GL_PROXY_TEXTURE_CUBE_MAP_ARRAY=$900B
rem
bbdoc: GL Const GL_SAMPLER_CUBE_MAP_ARRAY
endrem
Const GL_SAMPLER_CUBE_MAP_ARRAY=$900C
rem
bbdoc: GL Const GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW
endrem
Const GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW=$900D
rem
bbdoc: GL Const GL_INT_SAMPLER_CUBE_MAP_ARRAY
endrem
Const GL_INT_SAMPLER_CUBE_MAP_ARRAY=$900E
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY
endrem
Const GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY=$900F
rem
bbdoc: GL Global glBlendEquationSeparatei(buf_:Int,modeRGB_:Int,modeAlpha_:Int)
endrem
Global glBlendEquationSeparatei(buf_:Int,modeRGB_:Int,modeAlpha_:Int)="__glewBlendEquationSeparatei"
rem
bbdoc: GL Global glBlendEquationi(buf_:Int,mode_:Int)
endrem
Global glBlendEquationi(buf_:Int,mode_:Int)="__glewBlendEquationi"
rem
bbdoc: GL Global glBlendFuncSeparatei(buf_:Int,srcRGB_:Int,dstRGB_:Int,srcAlpha_:Int,dstAlpha_:Int)
endrem
Global glBlendFuncSeparatei(buf_:Int,srcRGB_:Int,dstRGB_:Int,srcAlpha_:Int,dstAlpha_:Int)="__glewBlendFuncSeparatei"
rem
bbdoc: GL Global glBlendFunci(buf_:Int,src_:Int,dst_:Int)
endrem
Global glBlendFunci(buf_:Int,src_:Int,dst_:Int)="__glewBlendFunci"
rem
bbdoc: GL Global glMinSampleShading(value_:Float)
endrem
Global glMinSampleShading(value_:Float)="__glewMinSampleShading"
rem
bbdoc: GL Global GLEW_VERSION_4_0
endrem
Global GL_VERSION_4_0:Byte="__GLEW_VERSION_4_0"
rem
bbdoc: GL Global GLEW_VERSION_4_1
endrem
Global GL_VERSION_4_1:Byte="__GLEW_VERSION_4_1"
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_BPTC_UNORM
endrem
Const GL_COMPRESSED_RGBA_BPTC_UNORM=$8E8C
rem
bbdoc: GL Const GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM
endrem
Const GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM=$8E8D
rem
bbdoc: GL Const GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT
endrem
Const GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT=$8E8E
rem
bbdoc: GL Const GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT
endrem
Const GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT=$8E8F
rem
bbdoc: GL Global GLEW_VERSION_4_2
endrem
Global GL_VERSION_4_2:Byte="__GLEW_VERSION_4_2"
rem
bbdoc: GL Const GL_NUM_SHADING_LANGUAGE_VERSIONS
endrem
Const GL_NUM_SHADING_LANGUAGE_VERSIONS=$82E9
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_LONG
endrem
Const GL_VERTEX_ATTRIB_ARRAY_LONG=$874E
rem
bbdoc: GL Global GLEW_VERSION_4_3
endrem
Global GL_VERSION_4_3:Byte="__GLEW_VERSION_4_3"
rem
bbdoc: GL Const GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED
endrem
Const GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED=$8221
rem
bbdoc: GL Const GL_MAX_VERTEX_ATTRIB_STRIDE
endrem
Const GL_MAX_VERTEX_ATTRIB_STRIDE=$82E5
rem
bbdoc: GL Const GL_TEXTURE_BUFFER_BINDING
endrem
Const GL_TEXTURE_BUFFER_BINDING=$8C2A
rem
bbdoc: GL Global GLEW_VERSION_4_4
endrem
Global GL_VERSION_4_4:Byte="__GLEW_VERSION_4_4"
rem
bbdoc: GL Global GLEW_VERSION_4_5
endrem
Global GL_VERSION_4_5:Byte="__GLEW_VERSION_4_5"
rem
bbdoc: GL Const GL_3DFX_multisample
endrem
Const GL_3DFX_multisample=1
rem
bbdoc: GL Const GL_MULTISAMPLE_3DFX
endrem
Const GL_MULTISAMPLE_3DFX=$86B2
rem
bbdoc: GL Const GL_SAMPLE_BUFFERS_3DFX
endrem
Const GL_SAMPLE_BUFFERS_3DFX=$86B3
rem
bbdoc: GL Const GL_SAMPLES_3DFX
endrem
Const GL_SAMPLES_3DFX=$86B4
rem
bbdoc: GL Const GL_MULTISAMPLE_BIT_3DFX
endrem
Const GL_MULTISAMPLE_BIT_3DFX=$20000000
rem
bbdoc: GL Const GL_3DFX_tbuffer
endrem
Const GL_3DFX_tbuffer=1
rem
bbdoc: GL Global glTbufferMask3DFX(mask_:Int)
endrem
Global glTbufferMask3DFX(mask_:Int)="__glewTbufferMask3DFX"
rem
bbdoc: GL Const GL_3DFX_texture_compression_FXT1
endrem
Const GL_3DFX_texture_compression_FXT1=1
rem
bbdoc: GL Const GL_COMPRESSED_RGB_FXT1_3DFX
endrem
Const GL_COMPRESSED_RGB_FXT1_3DFX=$86B0
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_FXT1_3DFX
endrem
Const GL_COMPRESSED_RGBA_FXT1_3DFX=$86B1
rem
bbdoc: GL Const GL_AMD_blend_minmax_factor
endrem
Const GL_AMD_blend_minmax_factor=1
rem
bbdoc: GL Const GL_FACTOR_MIN_AMD
endrem
Const GL_FACTOR_MIN_AMD=$901C
rem
bbdoc: GL Const GL_FACTOR_MAX_AMD
endrem
Const GL_FACTOR_MAX_AMD=$901D
rem
bbdoc: GL Const GL_AMD_conservative_depth
endrem
Const GL_AMD_conservative_depth=1
rem
bbdoc: GL Const GL_AMD_debug_output
endrem
Const GL_AMD_debug_output=1
rem
bbdoc: GL Const GL_MAX_DEBUG_MESSAGE_LENGTH_AMD
endrem
Const GL_MAX_DEBUG_MESSAGE_LENGTH_AMD=$9143
rem
bbdoc: GL Const GL_MAX_DEBUG_LOGGED_MESSAGES_AMD
endrem
Const GL_MAX_DEBUG_LOGGED_MESSAGES_AMD=$9144
rem
bbdoc: GL Const GL_DEBUG_LOGGED_MESSAGES_AMD
endrem
Const GL_DEBUG_LOGGED_MESSAGES_AMD=$9145
rem
bbdoc: GL Const GL_DEBUG_SEVERITY_HIGH_AMD
endrem
Const GL_DEBUG_SEVERITY_HIGH_AMD=$9146
rem
bbdoc: GL Const GL_DEBUG_SEVERITY_MEDIUM_AMD
endrem
Const GL_DEBUG_SEVERITY_MEDIUM_AMD=$9147
rem
bbdoc: GL Const GL_DEBUG_SEVERITY_LOW_AMD
endrem
Const GL_DEBUG_SEVERITY_LOW_AMD=$9148
rem
bbdoc: GL Const GL_DEBUG_CATEGORY_API_ERROR_AMD
endrem
Const GL_DEBUG_CATEGORY_API_ERROR_AMD=$9149
rem
bbdoc: GL Const GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD
endrem
Const GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD=$914A
rem
bbdoc: GL Const GL_DEBUG_CATEGORY_DEPRECATION_AMD
endrem
Const GL_DEBUG_CATEGORY_DEPRECATION_AMD=$914B
rem
bbdoc: GL Const GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD
endrem
Const GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD=$914C
rem
bbdoc: GL Const GL_DEBUG_CATEGORY_PERFORMANCE_AMD
endrem
Const GL_DEBUG_CATEGORY_PERFORMANCE_AMD=$914D
rem
bbdoc: GL Const GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD
endrem
Const GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD=$914E
rem
bbdoc: GL Const GL_DEBUG_CATEGORY_APPLICATION_AMD
endrem
Const GL_DEBUG_CATEGORY_APPLICATION_AMD=$914F
rem
bbdoc: GL Const GL_DEBUG_CATEGORY_OTHER_AMD
endrem
Const GL_DEBUG_CATEGORY_OTHER_AMD=$9150
rem
bbdoc: GL Global glDebugMessageEnableAMD(category_:Int,severity_:Int,count_:Int,ids_:Int Ptr,enabled_:Byte)
endrem
Global glDebugMessageEnableAMD(category_:Int,severity_:Int,count_:Int,ids_:Int Ptr,enabled_:Byte)="__glewDebugMessageEnableAMD"
rem
bbdoc: GL Global glDebugMessageInsertAMD(category_:Int,severity_:Int,id_:Int,length_:Int,buf_:Byte Ptr)
endrem
Global glDebugMessageInsertAMD(category_:Int,severity_:Int,id_:Int,length_:Int,buf_:Byte Ptr)="__glewDebugMessageInsertAMD"
rem
bbdoc: GL Global glGetDebugMessageLogAMD:Int(count_:Int,bufsize_:Int,categories_:Int Ptr,severities_:Int Ptr,ids_:Int Ptr,lengths_:Int Ptr,message_:Byte Ptr)
endrem
Global glGetDebugMessageLogAMD:Int(count_:Int,bufsize_:Int,categories_:Int Ptr,severities_:Int Ptr,ids_:Int Ptr,lengths_:Int Ptr,message_:Byte Ptr)="__glewGetDebugMessageLogAMD"
rem
bbdoc: GL Const GL_AMD_depth_clamp_separate
endrem
Const GL_AMD_depth_clamp_separate=1
rem
bbdoc: GL Const GL_DEPTH_CLAMP_NEAR_AMD
endrem
Const GL_DEPTH_CLAMP_NEAR_AMD=$901E
rem
bbdoc: GL Const GL_DEPTH_CLAMP_FAR_AMD
endrem
Const GL_DEPTH_CLAMP_FAR_AMD=$901F
rem
bbdoc: GL Const GL_AMD_draw_buffers_blend
endrem
Const GL_AMD_draw_buffers_blend=1
rem
bbdoc: GL Global glBlendEquationIndexedAMD(buf_:Int,mode_:Int)
endrem
Global glBlendEquationIndexedAMD(buf_:Int,mode_:Int)="__glewBlendEquationIndexedAMD"
rem
bbdoc: GL Global glBlendEquationSeparateIndexedAMD(buf_:Int,modeRGB_:Int,modeAlpha_:Int)
endrem
Global glBlendEquationSeparateIndexedAMD(buf_:Int,modeRGB_:Int,modeAlpha_:Int)="__glewBlendEquationSeparateIndexedAMD"
rem
bbdoc: GL Global glBlendFuncIndexedAMD(buf_:Int,src_:Int,dst_:Int)
endrem
Global glBlendFuncIndexedAMD(buf_:Int,src_:Int,dst_:Int)="__glewBlendFuncIndexedAMD"
rem
bbdoc: GL Global glBlendFuncSeparateIndexedAMD(buf_:Int,srcRGB_:Int,dstRGB_:Int,srcAlpha_:Int,dstAlpha_:Int)
endrem
Global glBlendFuncSeparateIndexedAMD(buf_:Int,srcRGB_:Int,dstRGB_:Int,srcAlpha_:Int,dstAlpha_:Int)="__glewBlendFuncSeparateIndexedAMD"
rem
bbdoc: GL Const GL_AMD_gcn_shader
endrem
Const GL_AMD_gcn_shader=1
rem
bbdoc: GL Const GL_AMD_gpu_shader_int64
endrem
Const GL_AMD_gpu_shader_int64=1
rem
bbdoc: GL Const GL_AMD_interleaved_elements
endrem
Const GL_AMD_interleaved_elements=1
rem
bbdoc: GL Const GL_RG8UI
endrem
Const GL_RG8UI=$8238
rem
bbdoc: GL Const GL_RG16UI
endrem
Const GL_RG16UI=$823A
rem
bbdoc: GL Const GL_VERTEX_ELEMENT_SWIZZLE_AMD
endrem
Const GL_VERTEX_ELEMENT_SWIZZLE_AMD=$91A4
rem
bbdoc: GL Const GL_VERTEX_ID_SWIZZLE_AMD
endrem
Const GL_VERTEX_ID_SWIZZLE_AMD=$91A5
rem
bbdoc: GL Global glVertexAttribParameteriAMD(index_:Int,pname_:Int,param_:Int)
endrem
Global glVertexAttribParameteriAMD(index_:Int,pname_:Int,param_:Int)="__glewVertexAttribParameteriAMD"
rem
bbdoc: GL Const GL_AMD_multi_draw_indirect
endrem
Const GL_AMD_multi_draw_indirect=1
rem
bbdoc: GL Global glMultiDrawArraysIndirectAMD(mode_:Int,indirect_:Byte Ptr,primcount_:Int,stride_:Int)
endrem
Global glMultiDrawArraysIndirectAMD(mode_:Int,indirect_:Byte Ptr,primcount_:Int,stride_:Int)="__glewMultiDrawArraysIndirectAMD"
rem
bbdoc: GL Global glMultiDrawElementsIndirectAMD(mode_:Int,type_:Int,indirect_:Byte Ptr,primcount_:Int,stride_:Int)
endrem
Global glMultiDrawElementsIndirectAMD(mode_:Int,type_:Int,indirect_:Byte Ptr,primcount_:Int,stride_:Int)="__glewMultiDrawElementsIndirectAMD"
rem
bbdoc: GL Const GL_AMD_name_gen_delete
endrem
Const GL_AMD_name_gen_delete=1
rem
bbdoc: GL Const GL_DATA_BUFFER_AMD
endrem
Const GL_DATA_BUFFER_AMD=$9151
rem
bbdoc: GL Const GL_PERFORMANCE_MONITOR_AMD
endrem
Const GL_PERFORMANCE_MONITOR_AMD=$9152
rem
bbdoc: GL Const GL_QUERY_OBJECT_AMD
endrem
Const GL_QUERY_OBJECT_AMD=$9153
rem
bbdoc: GL Const GL_VERTEX_ARRAY_OBJECT_AMD
endrem
Const GL_VERTEX_ARRAY_OBJECT_AMD=$9154
rem
bbdoc: GL Const GL_SAMPLER_OBJECT_AMD
endrem
Const GL_SAMPLER_OBJECT_AMD=$9155
rem
bbdoc: GL Global glDeleteNamesAMD(identifier_:Int,num_:Int,names_:Int Ptr)
endrem
Global glDeleteNamesAMD(identifier_:Int,num_:Int,names_:Int Ptr)="__glewDeleteNamesAMD"
rem
bbdoc: GL Global glGenNamesAMD(identifier_:Int,num_:Int,names_:Int Ptr)
endrem
Global glGenNamesAMD(identifier_:Int,num_:Int,names_:Int Ptr)="__glewGenNamesAMD"
rem
bbdoc: GL Global glIsNameAMD:Byte(identifier_:Int,name_:Int)
endrem
Global glIsNameAMD:Byte(identifier_:Int,name_:Int)="__glewIsNameAMD"
rem
bbdoc: GL Const GL_AMD_occlusion_query_event
endrem
Const GL_AMD_occlusion_query_event=1
rem
bbdoc: GL Const GL_QUERY_DEPTH_PASS_EVENT_BIT_AMD
endrem
Const GL_QUERY_DEPTH_PASS_EVENT_BIT_AMD=$00000001
rem
bbdoc: GL Const GL_QUERY_DEPTH_FAIL_EVENT_BIT_AMD
endrem
Const GL_QUERY_DEPTH_FAIL_EVENT_BIT_AMD=$00000002
rem
bbdoc: GL Const GL_QUERY_STENCIL_FAIL_EVENT_BIT_AMD
endrem
Const GL_QUERY_STENCIL_FAIL_EVENT_BIT_AMD=$00000004
rem
bbdoc: GL Const GL_QUERY_DEPTH_BOUNDS_FAIL_EVENT_BIT_AMD
endrem
Const GL_QUERY_DEPTH_BOUNDS_FAIL_EVENT_BIT_AMD=$00000008
rem
bbdoc: GL Const GL_OCCLUSION_QUERY_EVENT_MASK_AMD
endrem
Const GL_OCCLUSION_QUERY_EVENT_MASK_AMD=$874F
rem
bbdoc: GL Const GL_QUERY_ALL_EVENT_BITS_AMD
endrem
Const GL_QUERY_ALL_EVENT_BITS_AMD=$FFFFFFFF
rem
bbdoc: GL Global glQueryObjectParameteruiAMD(target_:Int,id_:Int,pname_:Int,param_:Int)
endrem
Global glQueryObjectParameteruiAMD(target_:Int,id_:Int,pname_:Int,param_:Int)="__glewQueryObjectParameteruiAMD"
rem
bbdoc: GL Const GL_AMD_performance_monitor
endrem
Const GL_AMD_performance_monitor=1
rem
bbdoc: GL Const GL_COUNTER_TYPE_AMD
endrem
Const GL_COUNTER_TYPE_AMD=$8BC0
rem
bbdoc: GL Const GL_COUNTER_RANGE_AMD
endrem
Const GL_COUNTER_RANGE_AMD=$8BC1
rem
bbdoc: GL Const GL_UNSIGNED_INT64_AMD
endrem
Const GL_UNSIGNED_INT64_AMD=$8BC2
rem
bbdoc: GL Const GL_PERCENTAGE_AMD
endrem
Const GL_PERCENTAGE_AMD=$8BC3
rem
bbdoc: GL Const GL_PERFMON_RESULT_AVAILABLE_AMD
endrem
Const GL_PERFMON_RESULT_AVAILABLE_AMD=$8BC4
rem
bbdoc: GL Const GL_PERFMON_RESULT_SIZE_AMD
endrem
Const GL_PERFMON_RESULT_SIZE_AMD=$8BC5
rem
bbdoc: GL Const GL_PERFMON_RESULT_AMD
endrem
Const GL_PERFMON_RESULT_AMD=$8BC6
rem
bbdoc: GL Global glBeginPerfMonitorAMD(monitor_:Int)
endrem
Global glBeginPerfMonitorAMD(monitor_:Int)="__glewBeginPerfMonitorAMD"
rem
bbdoc: GL Global glDeletePerfMonitorsAMD(n_:Int,monitors_:Int Ptr)
endrem
Global glDeletePerfMonitorsAMD(n_:Int,monitors_:Int Ptr)="__glewDeletePerfMonitorsAMD"
rem
bbdoc: GL Global glEndPerfMonitorAMD(monitor_:Int)
endrem
Global glEndPerfMonitorAMD(monitor_:Int)="__glewEndPerfMonitorAMD"
rem
bbdoc: GL Global glGenPerfMonitorsAMD(n_:Int,monitors_:Int Ptr)
endrem
Global glGenPerfMonitorsAMD(n_:Int,monitors_:Int Ptr)="__glewGenPerfMonitorsAMD"
rem
bbdoc: GL Global glGetPerfMonitorCounterDataAMD(monitor_:Int,pname_:Int,dataSize_:Int,data_:Int Ptr,bytesWritten_:Int Ptr)
endrem
Global glGetPerfMonitorCounterDataAMD(monitor_:Int,pname_:Int,dataSize_:Int,data_:Int Ptr,bytesWritten_:Int Ptr)="__glewGetPerfMonitorCounterDataAMD"
rem
bbdoc: GL Global glGetPerfMonitorCounterInfoAMD(group_:Int,counter_:Int,pname_:Int,data_:Byte Ptr)
endrem
Global glGetPerfMonitorCounterInfoAMD(group_:Int,counter_:Int,pname_:Int,data_:Byte Ptr)="__glewGetPerfMonitorCounterInfoAMD"
rem
bbdoc: GL Global glGetPerfMonitorCounterStringAMD(group_:Int,counter_:Int,bufSize_:Int,length_:Int Ptr,counterString_:Byte Ptr)
endrem
Global glGetPerfMonitorCounterStringAMD(group_:Int,counter_:Int,bufSize_:Int,length_:Int Ptr,counterString_:Byte Ptr)="__glewGetPerfMonitorCounterStringAMD"
rem
bbdoc: GL Global glGetPerfMonitorCountersAMD(group_:Int,numCounters_:Int Ptr,maxActiveCounters_:Int Ptr,countersSize_:Int,counters_:Int Ptr)
endrem
Global glGetPerfMonitorCountersAMD(group_:Int,numCounters_:Int Ptr,maxActiveCounters_:Int Ptr,countersSize_:Int,counters_:Int Ptr)="__glewGetPerfMonitorCountersAMD"
rem
bbdoc: GL Global glGetPerfMonitorGroupStringAMD(group_:Int,bufSize_:Int,length_:Int Ptr,groupString_:Byte Ptr)
endrem
Global glGetPerfMonitorGroupStringAMD(group_:Int,bufSize_:Int,length_:Int Ptr,groupString_:Byte Ptr)="__glewGetPerfMonitorGroupStringAMD"
rem
bbdoc: GL Global glGetPerfMonitorGroupsAMD(numGroups_:Int Ptr,groupsSize_:Int,groups_:Int Ptr)
endrem
Global glGetPerfMonitorGroupsAMD(numGroups_:Int Ptr,groupsSize_:Int,groups_:Int Ptr)="__glewGetPerfMonitorGroupsAMD"
rem
bbdoc: GL Global glSelectPerfMonitorCountersAMD(monitor_:Int,enable_:Byte,group_:Int,numCounters_:Int,counterList_:Int Ptr)
endrem
Global glSelectPerfMonitorCountersAMD(monitor_:Int,enable_:Byte,group_:Int,numCounters_:Int,counterList_:Int Ptr)="__glewSelectPerfMonitorCountersAMD"
rem
bbdoc: GL Const GL_AMD_pinned_memory
endrem
Const GL_AMD_pinned_memory=1
rem
bbdoc: GL Const GL_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD
endrem
Const GL_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD=$9160
rem
bbdoc: GL Const GL_AMD_query_buffer_object
endrem
Const GL_AMD_query_buffer_object=1
rem
bbdoc: GL Const GL_QUERY_BUFFER_AMD
endrem
Const GL_QUERY_BUFFER_AMD=$9192
rem
bbdoc: GL Const GL_QUERY_BUFFER_BINDING_AMD
endrem
Const GL_QUERY_BUFFER_BINDING_AMD=$9193
rem
bbdoc: GL Const GL_QUERY_RESULT_NO_WAIT_AMD
endrem
Const GL_QUERY_RESULT_NO_WAIT_AMD=$9194
rem
bbdoc: GL Const GL_AMD_sample_positions
endrem
Const GL_AMD_sample_positions=1
rem
bbdoc: GL Const GL_SUBSAMPLE_DISTANCE_AMD
endrem
Const GL_SUBSAMPLE_DISTANCE_AMD=$883F
rem
bbdoc: GL Global glSetMultisamplefvAMD(pname_:Int,index_:Int,val_:Float Ptr)
endrem
Global glSetMultisamplefvAMD(pname_:Int,index_:Int,val_:Float Ptr)="__glewSetMultisamplefvAMD"
rem
bbdoc: GL Const GL_AMD_seamless_cubemap_per_texture
endrem
Const GL_AMD_seamless_cubemap_per_texture=1
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_SEAMLESS_ARB
endrem
Const GL_TEXTURE_CUBE_MAP_SEAMLESS_ARB=$884F
rem
bbdoc: GL Const GL_AMD_shader_atomic_counter_ops
endrem
Const GL_AMD_shader_atomic_counter_ops=1
rem
bbdoc: GL Const GL_AMD_shader_stencil_export
endrem
Const GL_AMD_shader_stencil_export=1
rem
bbdoc: GL Const GL_AMD_shader_stencil_value_export
endrem
Const GL_AMD_shader_stencil_value_export=1
rem
bbdoc: GL Const GL_AMD_shader_trinary_minmax
endrem
Const GL_AMD_shader_trinary_minmax=1
rem
bbdoc: GL Const GL_AMD_sparse_texture
endrem
Const GL_AMD_sparse_texture=1
rem
bbdoc: GL Const GL_TEXTURE_STORAGE_SPARSE_BIT_AMD
endrem
Const GL_TEXTURE_STORAGE_SPARSE_BIT_AMD=$00000001
rem
bbdoc: GL Const GL_VIRTUAL_PAGE_SIZE_X_AMD
endrem
Const GL_VIRTUAL_PAGE_SIZE_X_AMD=$9195
rem
bbdoc: GL Const GL_VIRTUAL_PAGE_SIZE_Y_AMD
endrem
Const GL_VIRTUAL_PAGE_SIZE_Y_AMD=$9196
rem
bbdoc: GL Const GL_VIRTUAL_PAGE_SIZE_Z_AMD
endrem
Const GL_VIRTUAL_PAGE_SIZE_Z_AMD=$9197
rem
bbdoc: GL Const GL_MAX_SPARSE_TEXTURE_SIZE_AMD
endrem
Const GL_MAX_SPARSE_TEXTURE_SIZE_AMD=$9198
rem
bbdoc: GL Const GL_MAX_SPARSE_3D_TEXTURE_SIZE_AMD
endrem
Const GL_MAX_SPARSE_3D_TEXTURE_SIZE_AMD=$9199
rem
bbdoc: GL Const GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS
endrem
Const GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS=$919A
rem
bbdoc: GL Const GL_MIN_SPARSE_LEVEL_AMD
endrem
Const GL_MIN_SPARSE_LEVEL_AMD=$919B
rem
bbdoc: GL Const GL_MIN_LOD_WARNING_AMD
endrem
Const GL_MIN_LOD_WARNING_AMD=$919C
rem
bbdoc: GL Global glTexStorageSparseAMD(target_:Int,internalFormat_:Int,width_:Int,height_:Int,depth_:Int,layers_:Int,flags_:Int)
endrem
Global glTexStorageSparseAMD(target_:Int,internalFormat_:Int,width_:Int,height_:Int,depth_:Int,layers_:Int,flags_:Int)="__glewTexStorageSparseAMD"
rem
bbdoc: GL Global glTextureStorageSparseAMD(texture_:Int,target_:Int,internalFormat_:Int,width_:Int,height_:Int,depth_:Int,layers_:Int,flags_:Int)
endrem
Global glTextureStorageSparseAMD(texture_:Int,target_:Int,internalFormat_:Int,width_:Int,height_:Int,depth_:Int,layers_:Int,flags_:Int)="__glewTextureStorageSparseAMD"
rem
bbdoc: GL Const GL_AMD_stencil_operation_extended
endrem
Const GL_AMD_stencil_operation_extended=1
rem
bbdoc: GL Const GL_SET_AMD
endrem
Const GL_SET_AMD=$874A
rem
bbdoc: GL Const GL_REPLACE_VALUE_AMD
endrem
Const GL_REPLACE_VALUE_AMD=$874B
rem
bbdoc: GL Const GL_STENCIL_OP_VALUE_AMD
endrem
Const GL_STENCIL_OP_VALUE_AMD=$874C
rem
bbdoc: GL Const GL_STENCIL_BACK_OP_VALUE_AMD
endrem
Const GL_STENCIL_BACK_OP_VALUE_AMD=$874D
rem
bbdoc: GL Global glStencilOpValueAMD(face_:Int,value_:Int)
endrem
Global glStencilOpValueAMD(face_:Int,value_:Int)="__glewStencilOpValueAMD"
rem
bbdoc: GL Const GL_AMD_texture_texture4
endrem
Const GL_AMD_texture_texture4=1
rem
bbdoc: GL Const GL_AMD_transform_feedback3_lines_triangles
endrem
Const GL_AMD_transform_feedback3_lines_triangles=1
rem
bbdoc: GL Const GL_AMD_transform_feedback4
endrem
Const GL_AMD_transform_feedback4=1
rem
bbdoc: GL Const GL_STREAM_RASTERIZATION_AMD
endrem
Const GL_STREAM_RASTERIZATION_AMD=$91A0
rem
bbdoc: GL Const GL_AMD_vertex_shader_layer
endrem
Const GL_AMD_vertex_shader_layer=1
rem
bbdoc: GL Const GL_AMD_vertex_shader_tessellator
endrem
Const GL_AMD_vertex_shader_tessellator=1
rem
bbdoc: GL Const GL_SAMPLER_BUFFER_AMD
endrem
Const GL_SAMPLER_BUFFER_AMD=$9001
rem
bbdoc: GL Const GL_INT_SAMPLER_BUFFER_AMD
endrem
Const GL_INT_SAMPLER_BUFFER_AMD=$9002
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD
endrem
Const GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD=$9003
rem
bbdoc: GL Const GL_TESSELLATION_MODE_AMD
endrem
Const GL_TESSELLATION_MODE_AMD=$9004
rem
bbdoc: GL Const GL_TESSELLATION_FACTOR_AMD
endrem
Const GL_TESSELLATION_FACTOR_AMD=$9005
rem
bbdoc: GL Const GL_DISCRETE_AMD
endrem
Const GL_DISCRETE_AMD=$9006
rem
bbdoc: GL Const GL_CONTINUOUS_AMD
endrem
Const GL_CONTINUOUS_AMD=$9007
rem
bbdoc: GL Global glTessellationFactorAMD(factor_:Float)
endrem
Global glTessellationFactorAMD(factor_:Float)="__glewTessellationFactorAMD"
rem
bbdoc: GL Global glTessellationModeAMD(mode_:Int)
endrem
Global glTessellationModeAMD(mode_:Int)="__glewTessellationModeAMD"
rem
bbdoc: GL Const GL_AMD_vertex_shader_viewport_index
endrem
Const GL_AMD_vertex_shader_viewport_index=1
rem
bbdoc: GL Const GL_ANGLE_depth_texture
endrem
Const GL_ANGLE_depth_texture=1
rem
bbdoc: GL Const GL_ANGLE_framebuffer_blit
endrem
Const GL_ANGLE_framebuffer_blit=1
rem
bbdoc: GL Const GL_DRAW_FRAMEBUFFER_BINDING_ANGLE
endrem
Const GL_DRAW_FRAMEBUFFER_BINDING_ANGLE=$8CA6
rem
bbdoc: GL Const GL_READ_FRAMEBUFFER_ANGLE
endrem
Const GL_READ_FRAMEBUFFER_ANGLE=$8CA8
rem
bbdoc: GL Const GL_DRAW_FRAMEBUFFER_ANGLE
endrem
Const GL_DRAW_FRAMEBUFFER_ANGLE=$8CA9
rem
bbdoc: GL Const GL_READ_FRAMEBUFFER_BINDING_ANGLE
endrem
Const GL_READ_FRAMEBUFFER_BINDING_ANGLE=$8CAA
rem
bbdoc: GL Global glBlitFramebufferANGLE(srcX0_:Int,srcY0_:Int,srcX1_:Int,srcY1_:Int,dstX0_:Int,dstY0_:Int,dstX1_:Int,dstY1_:Int,mask_:Int,filter_:Int)
endrem
Global glBlitFramebufferANGLE(srcX0_:Int,srcY0_:Int,srcX1_:Int,srcY1_:Int,dstX0_:Int,dstY0_:Int,dstX1_:Int,dstY1_:Int,mask_:Int,filter_:Int)="__glewBlitFramebufferANGLE"
rem
bbdoc: GL Const GL_ANGLE_framebuffer_multisample
endrem
Const GL_ANGLE_framebuffer_multisample=1
rem
bbdoc: GL Const GL_RENDERBUFFER_SAMPLES_ANGLE
endrem
Const GL_RENDERBUFFER_SAMPLES_ANGLE=$8CAB
rem
bbdoc: GL Const GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_ANGLE
endrem
Const GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_ANGLE=$8D56
rem
bbdoc: GL Const GL_MAX_SAMPLES_ANGLE
endrem
Const GL_MAX_SAMPLES_ANGLE=$8D57
rem
bbdoc: GL Global glRenderbufferStorageMultisampleANGLE(target_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int)
endrem
Global glRenderbufferStorageMultisampleANGLE(target_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int)="__glewRenderbufferStorageMultisampleANGLE"
rem
bbdoc: GL Const GL_ANGLE_instanced_arrays
endrem
Const GL_ANGLE_instanced_arrays=1
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE
endrem
Const GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE=$88FE
rem
bbdoc: GL Global glDrawArraysInstancedANGLE(mode_:Int,first_:Int,count_:Int,primcount_:Int)
endrem
Global glDrawArraysInstancedANGLE(mode_:Int,first_:Int,count_:Int,primcount_:Int)="__glewDrawArraysInstancedANGLE"
rem
bbdoc: GL Global glDrawElementsInstancedANGLE(mode_:Int,count_:Int,type_:Int,indices_:Byte Ptr,primcount_:Int)
endrem
Global glDrawElementsInstancedANGLE(mode_:Int,count_:Int,type_:Int,indices_:Byte Ptr,primcount_:Int)="__glewDrawElementsInstancedANGLE"
rem
bbdoc: GL Global glVertexAttribDivisorANGLE(index_:Int,divisor_:Int)
endrem
Global glVertexAttribDivisorANGLE(index_:Int,divisor_:Int)="__glewVertexAttribDivisorANGLE"
rem
bbdoc: GL Const GL_ANGLE_pack_reverse_row_order
endrem
Const GL_ANGLE_pack_reverse_row_order=1
rem
bbdoc: GL Const GL_PACK_REVERSE_ROW_ORDER_ANGLE
endrem
Const GL_PACK_REVERSE_ROW_ORDER_ANGLE=$93A4
rem
bbdoc: GL Const GL_ANGLE_program_binary
endrem
Const GL_ANGLE_program_binary=1
rem
bbdoc: GL Const GL_PROGRAM_BINARY_ANGLE
endrem
Const GL_PROGRAM_BINARY_ANGLE=$93A6
rem
bbdoc: GL Const GL_ANGLE_texture_compression_dxt1
endrem
Const GL_ANGLE_texture_compression_dxt1=1
rem
bbdoc: GL Const GL_COMPRESSED_RGB_S3TC_DXT1_ANGLE
endrem
Const GL_COMPRESSED_RGB_S3TC_DXT1_ANGLE=$83F0
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_S3TC_DXT1_ANGLE
endrem
Const GL_COMPRESSED_RGBA_S3TC_DXT1_ANGLE=$83F1
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_S3TC_DXT3_ANGLE
endrem
Const GL_COMPRESSED_RGBA_S3TC_DXT3_ANGLE=$83F2
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_S3TC_DXT5_ANGLE
endrem
Const GL_COMPRESSED_RGBA_S3TC_DXT5_ANGLE=$83F3
rem
bbdoc: GL Const GL_ANGLE_texture_compression_dxt3
endrem
Const GL_ANGLE_texture_compression_dxt3=1
rem
bbdoc: GL Const GL_ANGLE_texture_compression_dxt5
endrem
Const GL_ANGLE_texture_compression_dxt5=1
rem
bbdoc: GL Const GL_ANGLE_texture_usage
endrem
Const GL_ANGLE_texture_usage=1
rem
bbdoc: GL Const GL_TEXTURE_USAGE_ANGLE
endrem
Const GL_TEXTURE_USAGE_ANGLE=$93A2
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_ANGLE
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_ANGLE=$93A3
rem
bbdoc: GL Const GL_ANGLE_timer_query
endrem
Const GL_ANGLE_timer_query=1
rem
bbdoc: GL Const GL_QUERY_COUNTER_BITS_ANGLE
endrem
Const GL_QUERY_COUNTER_BITS_ANGLE=$8864
rem
bbdoc: GL Const GL_CURRENT_QUERY_ANGLE
endrem
Const GL_CURRENT_QUERY_ANGLE=$8865
rem
bbdoc: GL Const GL_QUERY_RESULT_ANGLE
endrem
Const GL_QUERY_RESULT_ANGLE=$8866
rem
bbdoc: GL Const GL_QUERY_RESULT_AVAILABLE_ANGLE
endrem
Const GL_QUERY_RESULT_AVAILABLE_ANGLE=$8867
rem
bbdoc: GL Const GL_TIME_ELAPSED_ANGLE
endrem
Const GL_TIME_ELAPSED_ANGLE=$88BF
rem
bbdoc: GL Const GL_TIMESTAMP_ANGLE
endrem
Const GL_TIMESTAMP_ANGLE=$8E28
rem
bbdoc: GL Global glBeginQueryANGLE(target_:Int,id_:Int)
endrem
Global glBeginQueryANGLE(target_:Int,id_:Int)="__glewBeginQueryANGLE"
rem
bbdoc: GL Global glDeleteQueriesANGLE(n_:Int,ids_:Int Ptr)
endrem
Global glDeleteQueriesANGLE(n_:Int,ids_:Int Ptr)="__glewDeleteQueriesANGLE"
rem
bbdoc: GL Global glEndQueryANGLE(target_:Int)
endrem
Global glEndQueryANGLE(target_:Int)="__glewEndQueryANGLE"
rem
bbdoc: GL Global glGenQueriesANGLE(n_:Int,ids_:Int Ptr)
endrem
Global glGenQueriesANGLE(n_:Int,ids_:Int Ptr)="__glewGenQueriesANGLE"
rem
bbdoc: GL Global glGetQueryObjecti64vANGLE(id_:Int,pname_:Int,params_:Long Ptr)
endrem
Global glGetQueryObjecti64vANGLE(id_:Int,pname_:Int,params_:Long Ptr)="__glewGetQueryObjecti64vANGLE"
rem
bbdoc: GL Global glGetQueryObjectivANGLE(id_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetQueryObjectivANGLE(id_:Int,pname_:Int,params_:Int Ptr)="__glewGetQueryObjectivANGLE"
rem
bbdoc: GL Global glGetQueryObjectui64vANGLE(id_:Int,pname_:Int,params_:Long Ptr)
endrem
Global glGetQueryObjectui64vANGLE(id_:Int,pname_:Int,params_:Long Ptr)="__glewGetQueryObjectui64vANGLE"
rem
bbdoc: GL Global glGetQueryObjectuivANGLE(id_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetQueryObjectuivANGLE(id_:Int,pname_:Int,params_:Int Ptr)="__glewGetQueryObjectuivANGLE"
rem
bbdoc: GL Global glGetQueryivANGLE(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetQueryivANGLE(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetQueryivANGLE"
rem
bbdoc: GL Global glIsQueryANGLE:Byte(id_:Int)
endrem
Global glIsQueryANGLE:Byte(id_:Int)="__glewIsQueryANGLE"
rem
bbdoc: GL Global glQueryCounterANGLE(id_:Int,target_:Int)
endrem
Global glQueryCounterANGLE(id_:Int,target_:Int)="__glewQueryCounterANGLE"
rem
bbdoc: GL Const GL_ANGLE_translated_shader_source
endrem
Const GL_ANGLE_translated_shader_source=1
rem
bbdoc: GL Const GL_TRANSLATED_SHADER_SOURCE_LENGTH_ANGLE
endrem
Const GL_TRANSLATED_SHADER_SOURCE_LENGTH_ANGLE=$93A0
rem
bbdoc: GL Global glGetTranslatedShaderSourceANGLE(shader_:Int,bufsize_:Int,length_:Int Ptr,source_:Byte Ptr)
endrem
Global glGetTranslatedShaderSourceANGLE(shader_:Int,bufsize_:Int,length_:Int Ptr,source_:Byte Ptr)="__glewGetTranslatedShaderSourceANGLE"
rem
bbdoc: GL Const GL_APPLE_aux_depth_stencil
endrem
Const GL_APPLE_aux_depth_stencil=1
rem
bbdoc: GL Const GL_AUX_DEPTH_STENCIL_APPLE
endrem
Const GL_AUX_DEPTH_STENCIL_APPLE=$8A14
rem
bbdoc: GL Const GL_APPLE_client_storage
endrem
Const GL_APPLE_client_storage=1
rem
bbdoc: GL Const GL_UNPACK_CLIENT_STORAGE_APPLE
endrem
Const GL_UNPACK_CLIENT_STORAGE_APPLE=$85B2
rem
bbdoc: GL Const GL_APPLE_element_array
endrem
Const GL_APPLE_element_array=1
rem
bbdoc: GL Const GL_ELEMENT_ARRAY_APPLE
endrem
Const GL_ELEMENT_ARRAY_APPLE=$8A0C
rem
bbdoc: GL Const GL_ELEMENT_ARRAY_TYPE_APPLE
endrem
Const GL_ELEMENT_ARRAY_TYPE_APPLE=$8A0D
rem
bbdoc: GL Const GL_ELEMENT_ARRAY_POINTER_APPLE
endrem
Const GL_ELEMENT_ARRAY_POINTER_APPLE=$8A0E
rem
bbdoc: GL Global glDrawElementArrayAPPLE(mode_:Int,first_:Int,count_:Int)
endrem
Global glDrawElementArrayAPPLE(mode_:Int,first_:Int,count_:Int)="__glewDrawElementArrayAPPLE"
rem
bbdoc: GL Global glDrawRangeElementArrayAPPLE(mode_:Int,start_:Int,end_:Int,first_:Int,count_:Int)
endrem
Global glDrawRangeElementArrayAPPLE(mode_:Int,start_:Int,end_:Int,first_:Int,count_:Int)="__glewDrawRangeElementArrayAPPLE"
rem
bbdoc: GL Global glElementPointerAPPLE(type_:Int,pointer_:Byte Ptr)
endrem
Global glElementPointerAPPLE(type_:Int,pointer_:Byte Ptr)="__glewElementPointerAPPLE"
rem
bbdoc: GL Global glMultiDrawElementArrayAPPLE(mode_:Int,first_:Int Ptr,count_:Int Ptr,primcount_:Int)
endrem
Global glMultiDrawElementArrayAPPLE(mode_:Int,first_:Int Ptr,count_:Int Ptr,primcount_:Int)="__glewMultiDrawElementArrayAPPLE"
rem
bbdoc: GL Global glMultiDrawRangeElementArrayAPPLE(mode_:Int,start_:Int,end_:Int,first_:Int Ptr,count_:Int Ptr,primcount_:Int)
endrem
Global glMultiDrawRangeElementArrayAPPLE(mode_:Int,start_:Int,end_:Int,first_:Int Ptr,count_:Int Ptr,primcount_:Int)="__glewMultiDrawRangeElementArrayAPPLE"
rem
bbdoc: GL Const GL_APPLE_fence
endrem
Const GL_APPLE_fence=1
rem
bbdoc: GL Const GL_DRAW_PIXELS_APPLE
endrem
Const GL_DRAW_PIXELS_APPLE=$8A0A
rem
bbdoc: GL Const GL_FENCE_APPLE
endrem
Const GL_FENCE_APPLE=$8A0B
rem
bbdoc: GL Global glDeleteFencesAPPLE(n_:Int,fences_:Int Ptr)
endrem
Global glDeleteFencesAPPLE(n_:Int,fences_:Int Ptr)="__glewDeleteFencesAPPLE"
rem
bbdoc: GL Global glFinishFenceAPPLE(fence_:Int)
endrem
Global glFinishFenceAPPLE(fence_:Int)="__glewFinishFenceAPPLE"
rem
bbdoc: GL Global glFinishObjectAPPLE(object_:Int,name_:Int)
endrem
Global glFinishObjectAPPLE(object_:Int,name_:Int)="__glewFinishObjectAPPLE"
rem
bbdoc: GL Global glGenFencesAPPLE(n_:Int,fences_:Int Ptr)
endrem
Global glGenFencesAPPLE(n_:Int,fences_:Int Ptr)="__glewGenFencesAPPLE"
rem
bbdoc: GL Global glIsFenceAPPLE:Byte(fence_:Int)
endrem
Global glIsFenceAPPLE:Byte(fence_:Int)="__glewIsFenceAPPLE"
rem
bbdoc: GL Global glSetFenceAPPLE(fence_:Int)
endrem
Global glSetFenceAPPLE(fence_:Int)="__glewSetFenceAPPLE"
rem
bbdoc: GL Global glTestFenceAPPLE:Byte(fence_:Int)
endrem
Global glTestFenceAPPLE:Byte(fence_:Int)="__glewTestFenceAPPLE"
rem
bbdoc: GL Global glTestObjectAPPLE:Byte(object_:Int,name_:Int)
endrem
Global glTestObjectAPPLE:Byte(object_:Int,name_:Int)="__glewTestObjectAPPLE"
rem
bbdoc: GL Const GL_APPLE_float_pixels
endrem
Const GL_APPLE_float_pixels=1
rem
bbdoc: GL Const GL_HALF_APPLE
endrem
Const GL_HALF_APPLE=$140B
rem
bbdoc: GL Const GL_RGBA_FLOAT32_APPLE
endrem
Const GL_RGBA_FLOAT32_APPLE=$8814
rem
bbdoc: GL Const GL_RGB_FLOAT32_APPLE
endrem
Const GL_RGB_FLOAT32_APPLE=$8815
rem
bbdoc: GL Const GL_ALPHA_FLOAT32_APPLE
endrem
Const GL_ALPHA_FLOAT32_APPLE=$8816
rem
bbdoc: GL Const GL_INTENSITY_FLOAT32_APPLE
endrem
Const GL_INTENSITY_FLOAT32_APPLE=$8817
rem
bbdoc: GL Const GL_LUMINANCE_FLOAT32_APPLE
endrem
Const GL_LUMINANCE_FLOAT32_APPLE=$8818
rem
bbdoc: GL Const GL_LUMINANCE_ALPHA_FLOAT32_APPLE
endrem
Const GL_LUMINANCE_ALPHA_FLOAT32_APPLE=$8819
rem
bbdoc: GL Const GL_RGBA_FLOAT16_APPLE
endrem
Const GL_RGBA_FLOAT16_APPLE=$881A
rem
bbdoc: GL Const GL_RGB_FLOAT16_APPLE
endrem
Const GL_RGB_FLOAT16_APPLE=$881B
rem
bbdoc: GL Const GL_ALPHA_FLOAT16_APPLE
endrem
Const GL_ALPHA_FLOAT16_APPLE=$881C
rem
bbdoc: GL Const GL_INTENSITY_FLOAT16_APPLE
endrem
Const GL_INTENSITY_FLOAT16_APPLE=$881D
rem
bbdoc: GL Const GL_LUMINANCE_FLOAT16_APPLE
endrem
Const GL_LUMINANCE_FLOAT16_APPLE=$881E
rem
bbdoc: GL Const GL_LUMINANCE_ALPHA_FLOAT16_APPLE
endrem
Const GL_LUMINANCE_ALPHA_FLOAT16_APPLE=$881F
rem
bbdoc: GL Const GL_COLOR_FLOAT_APPLE
endrem
Const GL_COLOR_FLOAT_APPLE=$8A0F
rem
bbdoc: GL Const GL_APPLE_flush_buffer_range
endrem
Const GL_APPLE_flush_buffer_range=1
rem
bbdoc: GL Const GL_BUFFER_SERIALIZED_MODIFY_APPLE
endrem
Const GL_BUFFER_SERIALIZED_MODIFY_APPLE=$8A12
rem
bbdoc: GL Const GL_BUFFER_FLUSHING_UNMAP_APPLE
endrem
Const GL_BUFFER_FLUSHING_UNMAP_APPLE=$8A13
rem
bbdoc: GL Global glBufferParameteriAPPLE(target_:Int,pname_:Int,param_:Int)
endrem
Global glBufferParameteriAPPLE(target_:Int,pname_:Int,param_:Int)="__glewBufferParameteriAPPLE"
rem
bbdoc: GL Global glFlushMappedBufferRangeAPPLE(target_:Int,offset_:Int,size_:Int)
endrem
Global glFlushMappedBufferRangeAPPLE(target_:Int,offset_:Int,size_:Int)="__glewFlushMappedBufferRangeAPPLE"
rem
bbdoc: GL Const GL_APPLE_object_purgeable
endrem
Const GL_APPLE_object_purgeable=1
rem
bbdoc: GL Const GL_BUFFER_OBJECT_APPLE
endrem
Const GL_BUFFER_OBJECT_APPLE=$85B3
rem
bbdoc: GL Const GL_RELEASED_APPLE
endrem
Const GL_RELEASED_APPLE=$8A19
rem
bbdoc: GL Const GL_VOLATILE_APPLE
endrem
Const GL_VOLATILE_APPLE=$8A1A
rem
bbdoc: GL Const GL_RETAINED_APPLE
endrem
Const GL_RETAINED_APPLE=$8A1B
rem
bbdoc: GL Const GL_UNDEFINED_APPLE
endrem
Const GL_UNDEFINED_APPLE=$8A1C
rem
bbdoc: GL Const GL_PURGEABLE_APPLE
endrem
Const GL_PURGEABLE_APPLE=$8A1D
rem
bbdoc: GL Global glGetObjectParameterivAPPLE(objectType_:Int,name_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetObjectParameterivAPPLE(objectType_:Int,name_:Int,pname_:Int,params_:Int Ptr)="__glewGetObjectParameterivAPPLE"
rem
bbdoc: GL Global glObjectPurgeableAPPLE:Int(objectType_:Int,name_:Int,option_:Int)
endrem
Global glObjectPurgeableAPPLE:Int(objectType_:Int,name_:Int,option_:Int)="__glewObjectPurgeableAPPLE"
rem
bbdoc: GL Global glObjectUnpurgeableAPPLE:Int(objectType_:Int,name_:Int,option_:Int)
endrem
Global glObjectUnpurgeableAPPLE:Int(objectType_:Int,name_:Int,option_:Int)="__glewObjectUnpurgeableAPPLE"
rem
bbdoc: GL Const GL_APPLE_pixel_buffer
endrem
Const GL_APPLE_pixel_buffer=1
rem
bbdoc: GL Const GL_MIN_PBUFFER_VIEWPORT_DIMS_APPLE
endrem
Const GL_MIN_PBUFFER_VIEWPORT_DIMS_APPLE=$8A10
rem
bbdoc: GL Const GL_APPLE_rgb_422
endrem
Const GL_APPLE_rgb_422=1
rem
bbdoc: GL Const GL_UNSIGNED_SHORT_8_8_APPLE
endrem
Const GL_UNSIGNED_SHORT_8_8_APPLE=$85BA
rem
bbdoc: GL Const GL_UNSIGNED_SHORT_8_8_REV_APPLE
endrem
Const GL_UNSIGNED_SHORT_8_8_REV_APPLE=$85BB
rem
bbdoc: GL Const GL_RGB_422_APPLE
endrem
Const GL_RGB_422_APPLE=$8A1F
rem
bbdoc: GL Const GL_RGB_RAW_422_APPLE
endrem
Const GL_RGB_RAW_422_APPLE=$8A51
rem
bbdoc: GL Const GL_APPLE_row_bytes
endrem
Const GL_APPLE_row_bytes=1
rem
bbdoc: GL Const GL_PACK_ROW_BYTES_APPLE
endrem
Const GL_PACK_ROW_BYTES_APPLE=$8A15
rem
bbdoc: GL Const GL_UNPACK_ROW_BYTES_APPLE
endrem
Const GL_UNPACK_ROW_BYTES_APPLE=$8A16
rem
bbdoc: GL Const GL_APPLE_specular_vector
endrem
Const GL_APPLE_specular_vector=1
rem
bbdoc: GL Const GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE
endrem
Const GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE=$85B0
rem
bbdoc: GL Const GL_APPLE_texture_range
endrem
Const GL_APPLE_texture_range=1
rem
bbdoc: GL Const GL_TEXTURE_RANGE_LENGTH_APPLE
endrem
Const GL_TEXTURE_RANGE_LENGTH_APPLE=$85B7
rem
bbdoc: GL Const GL_TEXTURE_RANGE_POINTER_APPLE
endrem
Const GL_TEXTURE_RANGE_POINTER_APPLE=$85B8
rem
bbdoc: GL Const GL_TEXTURE_STORAGE_HINT_APPLE
endrem
Const GL_TEXTURE_STORAGE_HINT_APPLE=$85BC
rem
bbdoc: GL Const GL_STORAGE_PRIVATE_APPLE
endrem
Const GL_STORAGE_PRIVATE_APPLE=$85BD
rem
bbdoc: GL Const GL_STORAGE_CACHED_APPLE
endrem
Const GL_STORAGE_CACHED_APPLE=$85BE
rem
bbdoc: GL Const GL_STORAGE_SHARED_APPLE
endrem
Const GL_STORAGE_SHARED_APPLE=$85BF
rem
bbdoc: GL Global glGetTexParameterPointervAPPLE(target_:Int,pname_:Int,params_:Byte Ptr Ptr)
endrem
Global glGetTexParameterPointervAPPLE(target_:Int,pname_:Int,params_:Byte Ptr Ptr)="__glewGetTexParameterPointervAPPLE"
rem
bbdoc: GL Global glTextureRangeAPPLE(target_:Int,length_:Int,pointer_:Byte Ptr)
endrem
Global glTextureRangeAPPLE(target_:Int,length_:Int,pointer_:Byte Ptr)="__glewTextureRangeAPPLE"
rem
bbdoc: GL Const GL_APPLE_transform_hint
endrem
Const GL_APPLE_transform_hint=1
rem
bbdoc: GL Const GL_TRANSFORM_HINT_APPLE
endrem
Const GL_TRANSFORM_HINT_APPLE=$85B1
rem
bbdoc: GL Const GL_APPLE_vertex_array_object
endrem
Const GL_APPLE_vertex_array_object=1
rem
bbdoc: GL Const GL_VERTEX_ARRAY_BINDING_APPLE
endrem
Const GL_VERTEX_ARRAY_BINDING_APPLE=$85B5
rem
bbdoc: GL Global glBindVertexArrayAPPLE(array_:Int)
endrem
Global glBindVertexArrayAPPLE(array_:Int)="__glewBindVertexArrayAPPLE"
rem
bbdoc: GL Global glDeleteVertexArraysAPPLE(n_:Int,arrays_:Int Ptr)
endrem
Global glDeleteVertexArraysAPPLE(n_:Int,arrays_:Int Ptr)="__glewDeleteVertexArraysAPPLE"
rem
bbdoc: GL Global glGenVertexArraysAPPLE(n_:Int,arrays_:Int Ptr)
endrem
Global glGenVertexArraysAPPLE(n_:Int,arrays_:Int Ptr)="__glewGenVertexArraysAPPLE"
rem
bbdoc: GL Global glIsVertexArrayAPPLE:Byte(array_:Int)
endrem
Global glIsVertexArrayAPPLE:Byte(array_:Int)="__glewIsVertexArrayAPPLE"
rem
bbdoc: GL Const GL_APPLE_vertex_array_range
endrem
Const GL_APPLE_vertex_array_range=1
rem
bbdoc: GL Const GL_VERTEX_ARRAY_RANGE_APPLE
endrem
Const GL_VERTEX_ARRAY_RANGE_APPLE=$851D
rem
bbdoc: GL Const GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE
endrem
Const GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE=$851E
rem
bbdoc: GL Const GL_VERTEX_ARRAY_STORAGE_HINT_APPLE
endrem
Const GL_VERTEX_ARRAY_STORAGE_HINT_APPLE=$851F
rem
bbdoc: GL Const GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_APPLE
endrem
Const GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_APPLE=$8520
rem
bbdoc: GL Const GL_VERTEX_ARRAY_RANGE_POINTER_APPLE
endrem
Const GL_VERTEX_ARRAY_RANGE_POINTER_APPLE=$8521
rem
bbdoc: GL Const GL_STORAGE_CLIENT_APPLE
endrem
Const GL_STORAGE_CLIENT_APPLE=$85B4
rem
bbdoc: GL Global glFlushVertexArrayRangeAPPLE(length_:Int,pointer_:Byte Ptr)
endrem
Global glFlushVertexArrayRangeAPPLE(length_:Int,pointer_:Byte Ptr)="__glewFlushVertexArrayRangeAPPLE"
rem
bbdoc: GL Global glVertexArrayParameteriAPPLE(pname_:Int,param_:Int)
endrem
Global glVertexArrayParameteriAPPLE(pname_:Int,param_:Int)="__glewVertexArrayParameteriAPPLE"
rem
bbdoc: GL Global glVertexArrayRangeAPPLE(length_:Int,pointer_:Byte Ptr)
endrem
Global glVertexArrayRangeAPPLE(length_:Int,pointer_:Byte Ptr)="__glewVertexArrayRangeAPPLE"
rem
bbdoc: GL Const GL_APPLE_vertex_program_evaluators
endrem
Const GL_APPLE_vertex_program_evaluators=1
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_MAP1_APPLE
endrem
Const GL_VERTEX_ATTRIB_MAP1_APPLE=$8A00
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_MAP2_APPLE
endrem
Const GL_VERTEX_ATTRIB_MAP2_APPLE=$8A01
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE
endrem
Const GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE=$8A02
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE
endrem
Const GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE=$8A03
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE
endrem
Const GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE=$8A04
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE
endrem
Const GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE=$8A05
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE
endrem
Const GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE=$8A06
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE
endrem
Const GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE=$8A07
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE
endrem
Const GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE=$8A08
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE
endrem
Const GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE=$8A09
rem
bbdoc: GL Global glDisableVertexAttribAPPLE(index_:Int,pname_:Int)
endrem
Global glDisableVertexAttribAPPLE(index_:Int,pname_:Int)="__glewDisableVertexAttribAPPLE"
rem
bbdoc: GL Global glEnableVertexAttribAPPLE(index_:Int,pname_:Int)
endrem
Global glEnableVertexAttribAPPLE(index_:Int,pname_:Int)="__glewEnableVertexAttribAPPLE"
rem
bbdoc: GL Global glIsVertexAttribEnabledAPPLE:Byte(index_:Int,pname_:Int)
endrem
Global glIsVertexAttribEnabledAPPLE:Byte(index_:Int,pname_:Int)="__glewIsVertexAttribEnabledAPPLE"
rem
bbdoc: GL Global glMapVertexAttrib1dAPPLE(index_:Int,size_:Int,u1_:Double,u2_:Double,stride_:Int,order_:Int,points_:Double Ptr)
endrem
Global glMapVertexAttrib1dAPPLE(index_:Int,size_:Int,u1_:Double,u2_:Double,stride_:Int,order_:Int,points_:Double Ptr)="__glewMapVertexAttrib1dAPPLE"
rem
bbdoc: GL Global glMapVertexAttrib1fAPPLE(index_:Int,size_:Int,u1_:Float,u2_:Float,stride_:Int,order_:Int,points_:Float Ptr)
endrem
Global glMapVertexAttrib1fAPPLE(index_:Int,size_:Int,u1_:Float,u2_:Float,stride_:Int,order_:Int,points_:Float Ptr)="__glewMapVertexAttrib1fAPPLE"
rem
bbdoc: GL Global glMapVertexAttrib2dAPPLE(index_:Int,size_:Int,u1_:Double,u2_:Double,ustride_:Int,uorder_:Int,v1_:Double,v2_:Double,vstride_:Int,vorder_:Int,points_:Double Ptr)
endrem
Global glMapVertexAttrib2dAPPLE(index_:Int,size_:Int,u1_:Double,u2_:Double,ustride_:Int,uorder_:Int,v1_:Double,v2_:Double,vstride_:Int,vorder_:Int,points_:Double Ptr)="__glewMapVertexAttrib2dAPPLE"
rem
bbdoc: GL Global glMapVertexAttrib2fAPPLE(index_:Int,size_:Int,u1_:Float,u2_:Float,ustride_:Int,uorder_:Int,v1_:Float,v2_:Float,vstride_:Int,vorder_:Int,points_:Float Ptr)
endrem
Global glMapVertexAttrib2fAPPLE(index_:Int,size_:Int,u1_:Float,u2_:Float,ustride_:Int,uorder_:Int,v1_:Float,v2_:Float,vstride_:Int,vorder_:Int,points_:Float Ptr)="__glewMapVertexAttrib2fAPPLE"
rem
bbdoc: GL Const GL_APPLE_ycbcr_422
endrem
Const GL_APPLE_ycbcr_422=1
rem
bbdoc: GL Const GL_YCBCR_422_APPLE
endrem
Const GL_YCBCR_422_APPLE=$85B9
rem
bbdoc: GL Const GL_ARB_ES2_compatibility
endrem
Const GL_ARB_ES2_compatibility=1
rem
bbdoc: GL Const GL_FIXED
endrem
Const GL_FIXED=$140C
rem
bbdoc: GL Const GL_IMPLEMENTATION_COLOR_READ_TYPE
endrem
Const GL_IMPLEMENTATION_COLOR_READ_TYPE=$8B9A
rem
bbdoc: GL Const GL_IMPLEMENTATION_COLOR_READ_FORMAT
endrem
Const GL_IMPLEMENTATION_COLOR_READ_FORMAT=$8B9B
rem
bbdoc: GL Const GL_RGB565
endrem
Const GL_RGB565=$8D62
rem
bbdoc: GL Const GL_LOW_FLOAT
endrem
Const GL_LOW_FLOAT=$8DF0
rem
bbdoc: GL Const GL_MEDIUM_FLOAT
endrem
Const GL_MEDIUM_FLOAT=$8DF1
rem
bbdoc: GL Const GL_HIGH_FLOAT
endrem
Const GL_HIGH_FLOAT=$8DF2
rem
bbdoc: GL Const GL_LOW_INT
endrem
Const GL_LOW_INT=$8DF3
rem
bbdoc: GL Const GL_MEDIUM_INT
endrem
Const GL_MEDIUM_INT=$8DF4
rem
bbdoc: GL Const GL_HIGH_INT
endrem
Const GL_HIGH_INT=$8DF5
rem
bbdoc: GL Const GL_SHADER_BINARY_FORMATS
endrem
Const GL_SHADER_BINARY_FORMATS=$8DF8
rem
bbdoc: GL Const GL_NUM_SHADER_BINARY_FORMATS
endrem
Const GL_NUM_SHADER_BINARY_FORMATS=$8DF9
rem
bbdoc: GL Const GL_SHADER_COMPILER
endrem
Const GL_SHADER_COMPILER=$8DFA
rem
bbdoc: GL Const GL_MAX_VERTEX_UNIFORM_VECTORS
endrem
Const GL_MAX_VERTEX_UNIFORM_VECTORS=$8DFB
rem
bbdoc: GL Const GL_MAX_VARYING_VECTORS
endrem
Const GL_MAX_VARYING_VECTORS=$8DFC
rem
bbdoc: GL Const GL_MAX_FRAGMENT_UNIFORM_VECTORS
endrem
Const GL_MAX_FRAGMENT_UNIFORM_VECTORS=$8DFD
rem
bbdoc: GL Global glClearDepthf(d_:Float)
endrem
Global glClearDepthf(d_:Float)="__glewClearDepthf"
rem
bbdoc: GL Global glDepthRangef(n_:Float,f_:Float)
endrem
Global glDepthRangef(n_:Float,f_:Float)="__glewDepthRangef"
rem
bbdoc: GL Global glGetShaderPrecisionFormat(shadertype_:Int,precisiontype_:Int,range_:Int Ptr,precision_:Int Ptr)
endrem
Global glGetShaderPrecisionFormat(shadertype_:Int,precisiontype_:Int,range_:Int Ptr,precision_:Int Ptr)="__glewGetShaderPrecisionFormat"
rem
bbdoc: GL Global glReleaseShaderCompiler()
endrem
Global glReleaseShaderCompiler()="__glewReleaseShaderCompiler"
rem
bbdoc: GL Global glShaderBinary(count_:Int,shaders_:Int Ptr,binaryformat_:Int,binary_:Byte Ptr,length_:Int)
endrem
Global glShaderBinary(count_:Int,shaders_:Int Ptr,binaryformat_:Int,binary_:Byte Ptr,length_:Int)="__glewShaderBinary"
rem
bbdoc: GL Const GL_ARB_ES3_1_compatibility
endrem
Const GL_ARB_ES3_1_compatibility=1
rem
bbdoc: GL Global glMemoryBarrierByRegion(barriers_:Int)
endrem
Global glMemoryBarrierByRegion(barriers_:Int)="__glewMemoryBarrierByRegion"
rem
bbdoc: GL Const GL_ARB_ES3_compatibility
endrem
Const GL_ARB_ES3_compatibility=1
rem
bbdoc: GL Const GL_TEXTURE_IMMUTABLE_LEVELS
endrem
Const GL_TEXTURE_IMMUTABLE_LEVELS=$82DF
rem
bbdoc: GL Const GL_PRIMITIVE_RESTART_FIXED_INDEX
endrem
Const GL_PRIMITIVE_RESTART_FIXED_INDEX=$8D69
rem
bbdoc: GL Const GL_ANY_SAMPLES_PASSED_CONSERVATIVE
endrem
Const GL_ANY_SAMPLES_PASSED_CONSERVATIVE=$8D6A
rem
bbdoc: GL Const GL_MAX_ELEMENT_INDEX
endrem
Const GL_MAX_ELEMENT_INDEX=$8D6B
rem
bbdoc: GL Const GL_COMPRESSED_R11_EAC
endrem
Const GL_COMPRESSED_R11_EAC=$9270
rem
bbdoc: GL Const GL_COMPRESSED_SIGNED_R11_EAC
endrem
Const GL_COMPRESSED_SIGNED_R11_EAC=$9271
rem
bbdoc: GL Const GL_COMPRESSED_RG11_EAC
endrem
Const GL_COMPRESSED_RG11_EAC=$9272
rem
bbdoc: GL Const GL_COMPRESSED_SIGNED_RG11_EAC
endrem
Const GL_COMPRESSED_SIGNED_RG11_EAC=$9273
rem
bbdoc: GL Const GL_COMPRESSED_RGB8_ETC2
endrem
Const GL_COMPRESSED_RGB8_ETC2=$9274
rem
bbdoc: GL Const GL_COMPRESSED_SRGB8_ETC2
endrem
Const GL_COMPRESSED_SRGB8_ETC2=$9275
rem
bbdoc: GL Const GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2
endrem
Const GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2=$9276
rem
bbdoc: GL Const GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2
endrem
Const GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2=$9277
rem
bbdoc: GL Const GL_COMPRESSED_RGBA8_ETC2_EAC
endrem
Const GL_COMPRESSED_RGBA8_ETC2_EAC=$9278
rem
bbdoc: GL Const GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC
endrem
Const GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC=$9279
rem
bbdoc: GL Const GL_ARB_arrays_of_arrays
endrem
Const GL_ARB_arrays_of_arrays=1
rem
bbdoc: GL Const GL_ARB_base_instance
endrem
Const GL_ARB_base_instance=1
rem
bbdoc: GL Global glDrawArraysInstancedBaseInstance(mode_:Int,first_:Int,count_:Int,primcount_:Int,baseinstance_:Int)
endrem
Global glDrawArraysInstancedBaseInstance(mode_:Int,first_:Int,count_:Int,primcount_:Int,baseinstance_:Int)="__glewDrawArraysInstancedBaseInstance"
rem
bbdoc: GL Global glDrawElementsInstancedBaseInstance(mode_:Int,count_:Int,type_:Int,indices_:Byte Ptr,primcount_:Int,baseinstance_:Int)
endrem
Global glDrawElementsInstancedBaseInstance(mode_:Int,count_:Int,type_:Int,indices_:Byte Ptr,primcount_:Int,baseinstance_:Int)="__glewDrawElementsInstancedBaseInstance"
rem
bbdoc: GL Global glDrawElementsInstancedBaseVertexBaseInstance(mode_:Int,count_:Int,type_:Int,indices_:Byte Ptr,primcount_:Int,basevertex_:Int,baseinstance_:Int)
endrem
Global glDrawElementsInstancedBaseVertexBaseInstance(mode_:Int,count_:Int,type_:Int,indices_:Byte Ptr,primcount_:Int,basevertex_:Int,baseinstance_:Int)="__glewDrawElementsInstancedBaseVertexBaseInstance"
rem
bbdoc: GL Const GL_ARB_bindless_texture
endrem
Const GL_ARB_bindless_texture=1
rem
bbdoc: GL Const GL_UNSIGNED_INT64_ARB
endrem
Const GL_UNSIGNED_INT64_ARB=$140F
rem
bbdoc: GL Global glGetImageHandleARB:Long(texture_:Int,level_:Int,layered_:Byte,layer_:Int,format_:Int)
endrem
Global glGetImageHandleARB:Long(texture_:Int,level_:Int,layered_:Byte,layer_:Int,format_:Int)="__glewGetImageHandleARB"
rem
bbdoc: GL Global glGetTextureHandleARB:Long(texture_:Int)
endrem
Global glGetTextureHandleARB:Long(texture_:Int)="__glewGetTextureHandleARB"
rem
bbdoc: GL Global glGetTextureSamplerHandleARB:Long(texture_:Int,sampler_:Int)
endrem
Global glGetTextureSamplerHandleARB:Long(texture_:Int,sampler_:Int)="__glewGetTextureSamplerHandleARB"
rem
bbdoc: GL Global glGetVertexAttribLui64vARB(index_:Int,pname_:Int,params_:Long Ptr)
endrem
Global glGetVertexAttribLui64vARB(index_:Int,pname_:Int,params_:Long Ptr)="__glewGetVertexAttribLui64vARB"
rem
bbdoc: GL Global glIsImageHandleResidentARB:Byte(handle_:Long)
endrem
Global glIsImageHandleResidentARB:Byte(handle_:Long)="__glewIsImageHandleResidentARB"
rem
bbdoc: GL Global glIsTextureHandleResidentARB:Byte(handle_:Long)
endrem
Global glIsTextureHandleResidentARB:Byte(handle_:Long)="__glewIsTextureHandleResidentARB"
rem
bbdoc: GL Global glMakeImageHandleNonResidentARB(handle_:Long)
endrem
Global glMakeImageHandleNonResidentARB(handle_:Long)="__glewMakeImageHandleNonResidentARB"
rem
bbdoc: GL Global glMakeImageHandleResidentARB(handle_:Long,access_:Int)
endrem
Global glMakeImageHandleResidentARB(handle_:Long,access_:Int)="__glewMakeImageHandleResidentARB"
rem
bbdoc: GL Global glMakeTextureHandleNonResidentARB(handle_:Long)
endrem
Global glMakeTextureHandleNonResidentARB(handle_:Long)="__glewMakeTextureHandleNonResidentARB"
rem
bbdoc: GL Global glMakeTextureHandleResidentARB(handle_:Long)
endrem
Global glMakeTextureHandleResidentARB(handle_:Long)="__glewMakeTextureHandleResidentARB"
rem
bbdoc: GL Global glProgramUniformHandleui64ARB(program_:Int,location_:Int,value_:Long)
endrem
Global glProgramUniformHandleui64ARB(program_:Int,location_:Int,value_:Long)="__glewProgramUniformHandleui64ARB"
rem
bbdoc: GL Global glProgramUniformHandleui64vARB(program_:Int,location_:Int,count_:Int,values_:Long Ptr)
endrem
Global glProgramUniformHandleui64vARB(program_:Int,location_:Int,count_:Int,values_:Long Ptr)="__glewProgramUniformHandleui64vARB"
rem
bbdoc: GL Global glUniformHandleui64ARB(location_:Int,value_:Long)
endrem
Global glUniformHandleui64ARB(location_:Int,value_:Long)="__glewUniformHandleui64ARB"
rem
bbdoc: GL Global glUniformHandleui64vARB(location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glUniformHandleui64vARB(location_:Int,count_:Int,value_:Long Ptr)="__glewUniformHandleui64vARB"
rem
bbdoc: GL Global glVertexAttribL1ui64ARB(index_:Int,x_:Long)
endrem
Global glVertexAttribL1ui64ARB(index_:Int,x_:Long)="__glewVertexAttribL1ui64ARB"
rem
bbdoc: GL Global glVertexAttribL1ui64vARB(index_:Int,v_:Long Ptr)
endrem
Global glVertexAttribL1ui64vARB(index_:Int,v_:Long Ptr)="__glewVertexAttribL1ui64vARB"
rem
bbdoc: GL Const GL_ARB_blend_func_extended
endrem
Const GL_ARB_blend_func_extended=1
rem
bbdoc: GL Const GL_SRC1_COLOR
endrem
Const GL_SRC1_COLOR=$88F9
rem
bbdoc: GL Const GL_ONE_MINUS_SRC1_COLOR
endrem
Const GL_ONE_MINUS_SRC1_COLOR=$88FA
rem
bbdoc: GL Const GL_ONE_MINUS_SRC1_ALPHA
endrem
Const GL_ONE_MINUS_SRC1_ALPHA=$88FB
rem
bbdoc: GL Const GL_MAX_DUAL_SOURCE_DRAW_BUFFERS
endrem
Const GL_MAX_DUAL_SOURCE_DRAW_BUFFERS=$88FC
rem
bbdoc: GL Global glBindFragDataLocationIndexed(program_:Int,colorNumber_:Int,index_:Int,name_:Byte Ptr)
endrem
Global glBindFragDataLocationIndexed(program_:Int,colorNumber_:Int,index_:Int,name_:Byte Ptr)="__glewBindFragDataLocationIndexed"
rem
bbdoc: GL Global glGetFragDataIndex:Int(program_:Int,name_:Byte Ptr)
endrem
Global glGetFragDataIndex:Int(program_:Int,name_:Byte Ptr)="__glewGetFragDataIndex"
rem
bbdoc: GL Const GL_ARB_buffer_storage
endrem
Const GL_ARB_buffer_storage=1
rem
bbdoc: GL Const GL_MAP_READ_BIT
endrem
Const GL_MAP_READ_BIT=$0001
rem
bbdoc: GL Const GL_MAP_WRITE_BIT
endrem
Const GL_MAP_WRITE_BIT=$0002
rem
bbdoc: GL Const GL_MAP_PERSISTENT_BIT
endrem
Const GL_MAP_PERSISTENT_BIT=$00000040
rem
bbdoc: GL Const GL_MAP_COHERENT_BIT
endrem
Const GL_MAP_COHERENT_BIT=$00000080
rem
bbdoc: GL Const GL_DYNAMIC_STORAGE_BIT
endrem
Const GL_DYNAMIC_STORAGE_BIT=$0100
rem
bbdoc: GL Const GL_CLIENT_STORAGE_BIT
endrem
Const GL_CLIENT_STORAGE_BIT=$0200
rem
bbdoc: GL Const GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT
endrem
Const GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT=$00004000
rem
bbdoc: GL Const GL_BUFFER_IMMUTABLE_STORAGE
endrem
Const GL_BUFFER_IMMUTABLE_STORAGE=$821F
rem
bbdoc: GL Const GL_BUFFER_STORAGE_FLAGS
endrem
Const GL_BUFFER_STORAGE_FLAGS=$8220
rem
bbdoc: GL Global glBufferStorage(target_:Int,size_:Int,data_:Byte Ptr,flags_:Int)
endrem
Global glBufferStorage(target_:Int,size_:Int,data_:Byte Ptr,flags_:Int)="__glewBufferStorage"
rem
bbdoc: GL Global glNamedBufferStorageEXT(buffer_:Int,size_:Int,data_:Byte Ptr,flags_:Int)
endrem
Global glNamedBufferStorageEXT(buffer_:Int,size_:Int,data_:Byte Ptr,flags_:Int)="__glewNamedBufferStorageEXT"
rem
bbdoc: GL Const GL_ARB_cl_event
endrem
Const GL_ARB_cl_event=1
rem
bbdoc: GL Const GL_SYNC_CL_EVENT_ARB
endrem
Const GL_SYNC_CL_EVENT_ARB=$8240
rem
bbdoc: GL Const GL_SYNC_CL_EVENT_COMPLETE_ARB
endrem
Const GL_SYNC_CL_EVENT_COMPLETE_ARB=$8241
rem
bbdoc: GL Const GL_ARB_clear_buffer_object
endrem
Const GL_ARB_clear_buffer_object=1
rem
bbdoc: GL Global glClearBufferData(target_:Int,internalformat_:Int,format_:Int,type_:Int,data_:Byte Ptr)
endrem
Global glClearBufferData(target_:Int,internalformat_:Int,format_:Int,type_:Int,data_:Byte Ptr)="__glewClearBufferData"
rem
bbdoc: GL Global glClearBufferSubData(target_:Int,internalformat_:Int,offset_:Int,size_:Int,format_:Int,type_:Int,data_:Byte Ptr)
endrem
Global glClearBufferSubData(target_:Int,internalformat_:Int,offset_:Int,size_:Int,format_:Int,type_:Int,data_:Byte Ptr)="__glewClearBufferSubData"
rem
bbdoc: GL Global glClearNamedBufferDataEXT(buffer_:Int,internalformat_:Int,format_:Int,type_:Int,data_:Byte Ptr)
endrem
Global glClearNamedBufferDataEXT(buffer_:Int,internalformat_:Int,format_:Int,type_:Int,data_:Byte Ptr)="__glewClearNamedBufferDataEXT"
rem
bbdoc: GL Global glClearNamedBufferSubDataEXT(buffer_:Int,internalformat_:Int,offset_:Int,size_:Int,format_:Int,type_:Int,data_:Byte Ptr)
endrem
Global glClearNamedBufferSubDataEXT(buffer_:Int,internalformat_:Int,offset_:Int,size_:Int,format_:Int,type_:Int,data_:Byte Ptr)="__glewClearNamedBufferSubDataEXT"
rem
bbdoc: GL Const GL_ARB_clear_texture
endrem
Const GL_ARB_clear_texture=1
rem
bbdoc: GL Const GL_CLEAR_TEXTURE
endrem
Const GL_CLEAR_TEXTURE=$9365
rem
bbdoc: GL Global glClearTexImage(texture_:Int,level_:Int,format_:Int,type_:Int,data_:Byte Ptr)
endrem
Global glClearTexImage(texture_:Int,level_:Int,format_:Int,type_:Int,data_:Byte Ptr)="__glewClearTexImage"
rem
bbdoc: GL Global glClearTexSubImage(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,type_:Int,data_:Byte Ptr)
endrem
Global glClearTexSubImage(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,type_:Int,data_:Byte Ptr)="__glewClearTexSubImage"
rem
bbdoc: GL Const GL_ARB_clip_control
endrem
Const GL_ARB_clip_control=1
rem
bbdoc: GL Const GL_CLIP_ORIGIN
endrem
Const GL_CLIP_ORIGIN=$935C
rem
bbdoc: GL Const GL_CLIP_DEPTH_MODE
endrem
Const GL_CLIP_DEPTH_MODE=$935D
rem
bbdoc: GL Const GL_NEGATIVE_ONE_TO_ONE
endrem
Const GL_NEGATIVE_ONE_TO_ONE=$935E
rem
bbdoc: GL Const GL_ZERO_TO_ONE
endrem
Const GL_ZERO_TO_ONE=$935F
rem
bbdoc: GL Global glClipControl(origin_:Int,depth_:Int)
endrem
Global glClipControl(origin_:Int,depth_:Int)="__glewClipControl"
rem
bbdoc: GL Const GL_ARB_color_buffer_float
endrem
Const GL_ARB_color_buffer_float=1
rem
bbdoc: GL Const GL_RGBA_FLOAT_MODE_ARB
endrem
Const GL_RGBA_FLOAT_MODE_ARB=$8820
rem
bbdoc: GL Const GL_CLAMP_VERTEX_COLOR_ARB
endrem
Const GL_CLAMP_VERTEX_COLOR_ARB=$891A
rem
bbdoc: GL Const GL_CLAMP_FRAGMENT_COLOR_ARB
endrem
Const GL_CLAMP_FRAGMENT_COLOR_ARB=$891B
rem
bbdoc: GL Const GL_CLAMP_READ_COLOR_ARB
endrem
Const GL_CLAMP_READ_COLOR_ARB=$891C
rem
bbdoc: GL Const GL_FIXED_ONLY_ARB
endrem
Const GL_FIXED_ONLY_ARB=$891D
rem
bbdoc: GL Global glClampColorARB(target_:Int,clamp_:Int)
endrem
Global glClampColorARB(target_:Int,clamp_:Int)="__glewClampColorARB"
rem
bbdoc: GL Const GL_ARB_compatibility
endrem
Const GL_ARB_compatibility=1
rem
bbdoc: GL Const GL_ARB_compressed_texture_pixel_storage
endrem
Const GL_ARB_compressed_texture_pixel_storage=1
rem
bbdoc: GL Const GL_UNPACK_COMPRESSED_BLOCK_WIDTH
endrem
Const GL_UNPACK_COMPRESSED_BLOCK_WIDTH=$9127
rem
bbdoc: GL Const GL_UNPACK_COMPRESSED_BLOCK_HEIGHT
endrem
Const GL_UNPACK_COMPRESSED_BLOCK_HEIGHT=$9128
rem
bbdoc: GL Const GL_UNPACK_COMPRESSED_BLOCK_DEPTH
endrem
Const GL_UNPACK_COMPRESSED_BLOCK_DEPTH=$9129
rem
bbdoc: GL Const GL_UNPACK_COMPRESSED_BLOCK_SIZE
endrem
Const GL_UNPACK_COMPRESSED_BLOCK_SIZE=$912A
rem
bbdoc: GL Const GL_PACK_COMPRESSED_BLOCK_WIDTH
endrem
Const GL_PACK_COMPRESSED_BLOCK_WIDTH=$912B
rem
bbdoc: GL Const GL_PACK_COMPRESSED_BLOCK_HEIGHT
endrem
Const GL_PACK_COMPRESSED_BLOCK_HEIGHT=$912C
rem
bbdoc: GL Const GL_PACK_COMPRESSED_BLOCK_DEPTH
endrem
Const GL_PACK_COMPRESSED_BLOCK_DEPTH=$912D
rem
bbdoc: GL Const GL_PACK_COMPRESSED_BLOCK_SIZE
endrem
Const GL_PACK_COMPRESSED_BLOCK_SIZE=$912E
rem
bbdoc: GL Const GL_ARB_compute_shader
endrem
Const GL_ARB_compute_shader=1
rem
bbdoc: GL Const GL_COMPUTE_SHADER_BIT
endrem
Const GL_COMPUTE_SHADER_BIT=$00000020
rem
bbdoc: GL Const GL_MAX_COMPUTE_SHARED_MEMORY_SIZE
endrem
Const GL_MAX_COMPUTE_SHARED_MEMORY_SIZE=$8262
rem
bbdoc: GL Const GL_MAX_COMPUTE_UNIFORM_COMPONENTS
endrem
Const GL_MAX_COMPUTE_UNIFORM_COMPONENTS=$8263
rem
bbdoc: GL Const GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS
endrem
Const GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS=$8264
rem
bbdoc: GL Const GL_MAX_COMPUTE_ATOMIC_COUNTERS
endrem
Const GL_MAX_COMPUTE_ATOMIC_COUNTERS=$8265
rem
bbdoc: GL Const GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS
endrem
Const GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS=$8266
rem
bbdoc: GL Const GL_COMPUTE_WORK_GROUP_SIZE
endrem
Const GL_COMPUTE_WORK_GROUP_SIZE=$8267
rem
bbdoc: GL Const GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS
endrem
Const GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS=$90EB
rem
bbdoc: GL Const GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER
endrem
Const GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER=$90EC
rem
bbdoc: GL Const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER
endrem
Const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER=$90ED
rem
bbdoc: GL Const GL_DISPATCH_INDIRECT_BUFFER
endrem
Const GL_DISPATCH_INDIRECT_BUFFER=$90EE
rem
bbdoc: GL Const GL_DISPATCH_INDIRECT_BUFFER_BINDING
endrem
Const GL_DISPATCH_INDIRECT_BUFFER_BINDING=$90EF
rem
bbdoc: GL Const GL_COMPUTE_SHADER
endrem
Const GL_COMPUTE_SHADER=$91B9
rem
bbdoc: GL Const GL_MAX_COMPUTE_UNIFORM_BLOCKS
endrem
Const GL_MAX_COMPUTE_UNIFORM_BLOCKS=$91BB
rem
bbdoc: GL Const GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS
endrem
Const GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS=$91BC
rem
bbdoc: GL Const GL_MAX_COMPUTE_IMAGE_UNIFORMS
endrem
Const GL_MAX_COMPUTE_IMAGE_UNIFORMS=$91BD
rem
bbdoc: GL Const GL_MAX_COMPUTE_WORK_GROUP_COUNT
endrem
Const GL_MAX_COMPUTE_WORK_GROUP_COUNT=$91BE
rem
bbdoc: GL Const GL_MAX_COMPUTE_WORK_GROUP_SIZE
endrem
Const GL_MAX_COMPUTE_WORK_GROUP_SIZE=$91BF
rem
bbdoc: GL Global glDispatchCompute(num_groups_x_:Int,num_groups_y_:Int,num_groups_z_:Int)
endrem
Global glDispatchCompute(num_groups_x_:Int,num_groups_y_:Int,num_groups_z_:Int)="__glewDispatchCompute"
rem
bbdoc: GL Global glDispatchComputeIndirect(indirect_:Int)
endrem
Global glDispatchComputeIndirect(indirect_:Int)="__glewDispatchComputeIndirect"
rem
bbdoc: GL Const GL_ARB_compute_variable_group_size
endrem
Const GL_ARB_compute_variable_group_size=1
rem
bbdoc: GL Const GL_MAX_COMPUTE_FIXED_GROUP_INVOCATIONS_ARB
endrem
Const GL_MAX_COMPUTE_FIXED_GROUP_INVOCATIONS_ARB=$90EB
rem
bbdoc: GL Const GL_MAX_COMPUTE_FIXED_GROUP_SIZE_ARB
endrem
Const GL_MAX_COMPUTE_FIXED_GROUP_SIZE_ARB=$91BF
rem
bbdoc: GL Const GL_MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB
endrem
Const GL_MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB=$9344
rem
bbdoc: GL Const GL_MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB
endrem
Const GL_MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB=$9345
rem
bbdoc: GL Global glDispatchComputeGroupSizeARB(num_groups_x_:Int,num_groups_y_:Int,num_groups_z_:Int,group_size_x_:Int,group_size_y_:Int,group_size_z_:Int)
endrem
Global glDispatchComputeGroupSizeARB(num_groups_x_:Int,num_groups_y_:Int,num_groups_z_:Int,group_size_x_:Int,group_size_y_:Int,group_size_z_:Int)="__glewDispatchComputeGroupSizeARB"
rem
bbdoc: GL Const GL_ARB_conditional_render_inverted
endrem
Const GL_ARB_conditional_render_inverted=1
rem
bbdoc: GL Const GL_QUERY_WAIT_INVERTED
endrem
Const GL_QUERY_WAIT_INVERTED=$8E17
rem
bbdoc: GL Const GL_QUERY_NO_WAIT_INVERTED
endrem
Const GL_QUERY_NO_WAIT_INVERTED=$8E18
rem
bbdoc: GL Const GL_QUERY_BY_REGION_WAIT_INVERTED
endrem
Const GL_QUERY_BY_REGION_WAIT_INVERTED=$8E19
rem
bbdoc: GL Const GL_QUERY_BY_REGION_NO_WAIT_INVERTED
endrem
Const GL_QUERY_BY_REGION_NO_WAIT_INVERTED=$8E1A
rem
bbdoc: GL Const GL_ARB_conservative_depth
endrem
Const GL_ARB_conservative_depth=1
rem
bbdoc: GL Const GL_ARB_copy_buffer
endrem
Const GL_ARB_copy_buffer=1
rem
bbdoc: GL Const GL_COPY_READ_BUFFER
endrem
Const GL_COPY_READ_BUFFER=$8F36
rem
bbdoc: GL Const GL_COPY_WRITE_BUFFER
endrem
Const GL_COPY_WRITE_BUFFER=$8F37
rem
bbdoc: GL Global glCopyBufferSubData(readtarget_:Int,writetarget_:Int,readoffset_:Int,writeoffset_:Int,size_:Int)
endrem
Global glCopyBufferSubData(readtarget_:Int,writetarget_:Int,readoffset_:Int,writeoffset_:Int,size_:Int)="__glewCopyBufferSubData"
rem
bbdoc: GL Const GL_ARB_copy_image
endrem
Const GL_ARB_copy_image=1
rem
bbdoc: GL Global glCopyImageSubData(srcName_:Int,srcTarget_:Int,srcLevel_:Int,srcX_:Int,srcY_:Int,srcZ_:Int,dstName_:Int,dstTarget_:Int,dstLevel_:Int,dstX_:Int,dstY_:Int,dstZ_:Int,srcWidth_:Int,srcHeight_:Int,srcDepth_:Int)
endrem
Global glCopyImageSubData(srcName_:Int,srcTarget_:Int,srcLevel_:Int,srcX_:Int,srcY_:Int,srcZ_:Int,dstName_:Int,dstTarget_:Int,dstLevel_:Int,dstX_:Int,dstY_:Int,dstZ_:Int,srcWidth_:Int,srcHeight_:Int,srcDepth_:Int)="__glewCopyImageSubData"
rem
bbdoc: GL Const GL_ARB_cull_distance
endrem
Const GL_ARB_cull_distance=1
rem
bbdoc: GL Const GL_MAX_CULL_DISTANCES
endrem
Const GL_MAX_CULL_DISTANCES=$82F9
rem
bbdoc: GL Const GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES
endrem
Const GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES=$82FA
rem
bbdoc: GL Const GL_ARB_debug_output
endrem
Const GL_ARB_debug_output=1
rem
bbdoc: GL Const GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB
endrem
Const GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB=$8242
rem
bbdoc: GL Const GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB
endrem
Const GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB=$8243
rem
bbdoc: GL Const GL_DEBUG_CALLBACK_FUNCTION_ARB
endrem
Const GL_DEBUG_CALLBACK_FUNCTION_ARB=$8244
rem
bbdoc: GL Const GL_DEBUG_CALLBACK_USER_PARAM_ARB
endrem
Const GL_DEBUG_CALLBACK_USER_PARAM_ARB=$8245
rem
bbdoc: GL Const GL_DEBUG_SOURCE_API_ARB
endrem
Const GL_DEBUG_SOURCE_API_ARB=$8246
rem
bbdoc: GL Const GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB
endrem
Const GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB=$8247
rem
bbdoc: GL Const GL_DEBUG_SOURCE_SHADER_COMPILER_ARB
endrem
Const GL_DEBUG_SOURCE_SHADER_COMPILER_ARB=$8248
rem
bbdoc: GL Const GL_DEBUG_SOURCE_THIRD_PARTY_ARB
endrem
Const GL_DEBUG_SOURCE_THIRD_PARTY_ARB=$8249
rem
bbdoc: GL Const GL_DEBUG_SOURCE_APPLICATION_ARB
endrem
Const GL_DEBUG_SOURCE_APPLICATION_ARB=$824A
rem
bbdoc: GL Const GL_DEBUG_SOURCE_OTHER_ARB
endrem
Const GL_DEBUG_SOURCE_OTHER_ARB=$824B
rem
bbdoc: GL Const GL_DEBUG_TYPE_ERROR_ARB
endrem
Const GL_DEBUG_TYPE_ERROR_ARB=$824C
rem
bbdoc: GL Const GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB
endrem
Const GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB=$824D
rem
bbdoc: GL Const GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB
endrem
Const GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB=$824E
rem
bbdoc: GL Const GL_DEBUG_TYPE_PORTABILITY_ARB
endrem
Const GL_DEBUG_TYPE_PORTABILITY_ARB=$824F
rem
bbdoc: GL Const GL_DEBUG_TYPE_PERFORMANCE_ARB
endrem
Const GL_DEBUG_TYPE_PERFORMANCE_ARB=$8250
rem
bbdoc: GL Const GL_DEBUG_TYPE_OTHER_ARB
endrem
Const GL_DEBUG_TYPE_OTHER_ARB=$8251
rem
bbdoc: GL Const GL_MAX_DEBUG_MESSAGE_LENGTH_ARB
endrem
Const GL_MAX_DEBUG_MESSAGE_LENGTH_ARB=$9143
rem
bbdoc: GL Const GL_MAX_DEBUG_LOGGED_MESSAGES_ARB
endrem
Const GL_MAX_DEBUG_LOGGED_MESSAGES_ARB=$9144
rem
bbdoc: GL Const GL_DEBUG_LOGGED_MESSAGES_ARB
endrem
Const GL_DEBUG_LOGGED_MESSAGES_ARB=$9145
rem
bbdoc: GL Const GL_DEBUG_SEVERITY_HIGH_ARB
endrem
Const GL_DEBUG_SEVERITY_HIGH_ARB=$9146
rem
bbdoc: GL Const GL_DEBUG_SEVERITY_MEDIUM_ARB
endrem
Const GL_DEBUG_SEVERITY_MEDIUM_ARB=$9147
rem
bbdoc: GL Const GL_DEBUG_SEVERITY_LOW_ARB
endrem
Const GL_DEBUG_SEVERITY_LOW_ARB=$9148
rem
bbdoc: GL Global glDebugMessageControlARB(source_:Int,type_:Int,severity_:Int,count_:Int,ids_:Int Ptr,enabled_:Byte)
endrem
Global glDebugMessageControlARB(source_:Int,type_:Int,severity_:Int,count_:Int,ids_:Int Ptr,enabled_:Byte)="__glewDebugMessageControlARB"
rem
bbdoc: GL Global glDebugMessageInsertARB(source_:Int,type_:Int,id_:Int,severity_:Int,length_:Int,buf_:Byte Ptr)
endrem
Global glDebugMessageInsertARB(source_:Int,type_:Int,id_:Int,severity_:Int,length_:Int,buf_:Byte Ptr)="__glewDebugMessageInsertARB"
rem
bbdoc: GL Global glGetDebugMessageLogARB:Int(count_:Int,bufSize_:Int,sources_:Int Ptr,types_:Int Ptr,ids_:Int Ptr,severities_:Int Ptr,lengths_:Int Ptr,messageLog_:Byte Ptr)
endrem
Global glGetDebugMessageLogARB:Int(count_:Int,bufSize_:Int,sources_:Int Ptr,types_:Int Ptr,ids_:Int Ptr,severities_:Int Ptr,lengths_:Int Ptr,messageLog_:Byte Ptr)="__glewGetDebugMessageLogARB"
rem
bbdoc: GL Const GL_ARB_depth_buffer_float
endrem
Const GL_ARB_depth_buffer_float=1
rem
bbdoc: GL Const GL_DEPTH_COMPONENT32F
endrem
Const GL_DEPTH_COMPONENT32F=$8CAC
rem
bbdoc: GL Const GL_DEPTH32F_STENCIL8
endrem
Const GL_DEPTH32F_STENCIL8=$8CAD
rem
bbdoc: GL Const GL_FLOAT_32_UNSIGNED_INT_24_8_REV
endrem
Const GL_FLOAT_32_UNSIGNED_INT_24_8_REV=$8DAD
rem
bbdoc: GL Const GL_ARB_depth_clamp
endrem
Const GL_ARB_depth_clamp=1
rem
bbdoc: GL Const GL_DEPTH_CLAMP
endrem
Const GL_DEPTH_CLAMP=$864F
rem
bbdoc: GL Const GL_ARB_depth_texture
endrem
Const GL_ARB_depth_texture=1
rem
bbdoc: GL Const GL_DEPTH_COMPONENT16_ARB
endrem
Const GL_DEPTH_COMPONENT16_ARB=$81A5
rem
bbdoc: GL Const GL_DEPTH_COMPONENT24_ARB
endrem
Const GL_DEPTH_COMPONENT24_ARB=$81A6
rem
bbdoc: GL Const GL_DEPTH_COMPONENT32_ARB
endrem
Const GL_DEPTH_COMPONENT32_ARB=$81A7
rem
bbdoc: GL Const GL_TEXTURE_DEPTH_SIZE_ARB
endrem
Const GL_TEXTURE_DEPTH_SIZE_ARB=$884A
rem
bbdoc: GL Const GL_DEPTH_TEXTURE_MODE_ARB
endrem
Const GL_DEPTH_TEXTURE_MODE_ARB=$884B
rem
bbdoc: GL Const GL_ARB_derivative_control
endrem
Const GL_ARB_derivative_control=1
rem
bbdoc: GL Const GL_ARB_direct_state_access
endrem
Const GL_ARB_direct_state_access=1
rem
bbdoc: GL Const GL_TEXTURE_TARGET
endrem
Const GL_TEXTURE_TARGET=$1006
rem
bbdoc: GL Const GL_QUERY_TARGET
endrem
Const GL_QUERY_TARGET=$82EA
rem
bbdoc: GL Const GL_TEXTURE_BINDING
endrem
Const GL_TEXTURE_BINDING=$82EB
rem
bbdoc: GL Global glBindTextureUnit(unit_:Int,texture_:Int)
endrem
Global glBindTextureUnit(unit_:Int,texture_:Int)="__glewBindTextureUnit"
rem
bbdoc: GL Global glBlitNamedFramebuffer(readFramebuffer_:Int,drawFramebuffer_:Int,srcX0_:Int,srcY0_:Int,srcX1_:Int,srcY1_:Int,dstX0_:Int,dstY0_:Int,dstX1_:Int,dstY1_:Int,mask_:Int,filter_:Int)
endrem
Global glBlitNamedFramebuffer(readFramebuffer_:Int,drawFramebuffer_:Int,srcX0_:Int,srcY0_:Int,srcX1_:Int,srcY1_:Int,dstX0_:Int,dstY0_:Int,dstX1_:Int,dstY1_:Int,mask_:Int,filter_:Int)="__glewBlitNamedFramebuffer"
rem
bbdoc: GL Global glCheckNamedFramebufferStatus:Int(framebuffer_:Int,target_:Int)
endrem
Global glCheckNamedFramebufferStatus:Int(framebuffer_:Int,target_:Int)="__glewCheckNamedFramebufferStatus"
rem
bbdoc: GL Global glClearNamedBufferData(buffer_:Int,internalformat_:Int,format_:Int,type_:Int,data_:Byte Ptr)
endrem
Global glClearNamedBufferData(buffer_:Int,internalformat_:Int,format_:Int,type_:Int,data_:Byte Ptr)="__glewClearNamedBufferData"
rem
bbdoc: GL Global glClearNamedBufferSubData(buffer_:Int,internalformat_:Int,offset_:Int,size_:Int,format_:Int,type_:Int,data_:Byte Ptr)
endrem
Global glClearNamedBufferSubData(buffer_:Int,internalformat_:Int,offset_:Int,size_:Int,format_:Int,type_:Int,data_:Byte Ptr)="__glewClearNamedBufferSubData"
rem
bbdoc: GL Global glClearNamedFramebufferfi(framebuffer_:Int,buffer_:Int,depth_:Float,stencil_:Int)
endrem
Global glClearNamedFramebufferfi(framebuffer_:Int,buffer_:Int,depth_:Float,stencil_:Int)="__glewClearNamedFramebufferfi"
rem
bbdoc: GL Global glClearNamedFramebufferfv(framebuffer_:Int,buffer_:Int,drawbuffer_:Int,value_:Float Ptr)
endrem
Global glClearNamedFramebufferfv(framebuffer_:Int,buffer_:Int,drawbuffer_:Int,value_:Float Ptr)="__glewClearNamedFramebufferfv"
rem
bbdoc: GL Global glClearNamedFramebufferiv(framebuffer_:Int,buffer_:Int,drawbuffer_:Int,value_:Int Ptr)
endrem
Global glClearNamedFramebufferiv(framebuffer_:Int,buffer_:Int,drawbuffer_:Int,value_:Int Ptr)="__glewClearNamedFramebufferiv"
rem
bbdoc: GL Global glClearNamedFramebufferuiv(framebuffer_:Int,buffer_:Int,drawbuffer_:Int,value_:Int Ptr)
endrem
Global glClearNamedFramebufferuiv(framebuffer_:Int,buffer_:Int,drawbuffer_:Int,value_:Int Ptr)="__glewClearNamedFramebufferuiv"
rem
bbdoc: GL Global glCompressedTextureSubImage1D(texture_:Int,level_:Int,xoffset_:Int,width_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTextureSubImage1D(texture_:Int,level_:Int,xoffset_:Int,width_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTextureSubImage1D"
rem
bbdoc: GL Global glCompressedTextureSubImage2D(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,width_:Int,height_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTextureSubImage2D(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,width_:Int,height_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTextureSubImage2D"
rem
bbdoc: GL Global glCompressedTextureSubImage3D(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTextureSubImage3D(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTextureSubImage3D"
rem
bbdoc: GL Global glCopyNamedBufferSubData(readBuffer_:Int,writeBuffer_:Int,readOffset_:Int,writeOffset_:Int,size_:Int)
endrem
Global glCopyNamedBufferSubData(readBuffer_:Int,writeBuffer_:Int,readOffset_:Int,writeOffset_:Int,size_:Int)="__glewCopyNamedBufferSubData"
rem
bbdoc: GL Global glCopyTextureSubImage1D(texture_:Int,level_:Int,xoffset_:Int,x_:Int,y_:Int,width_:Int)
endrem
Global glCopyTextureSubImage1D(texture_:Int,level_:Int,xoffset_:Int,x_:Int,y_:Int,width_:Int)="__glewCopyTextureSubImage1D"
rem
bbdoc: GL Global glCopyTextureSubImage2D(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,x_:Int,y_:Int,width_:Int,height_:Int)
endrem
Global glCopyTextureSubImage2D(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,x_:Int,y_:Int,width_:Int,height_:Int)="__glewCopyTextureSubImage2D"
rem
bbdoc: GL Global glCopyTextureSubImage3D(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,x_:Int,y_:Int,width_:Int,height_:Int)
endrem
Global glCopyTextureSubImage3D(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,x_:Int,y_:Int,width_:Int,height_:Int)="__glewCopyTextureSubImage3D"
rem
bbdoc: GL Global glCreateBuffers(n_:Int,buffers_:Int Ptr)
endrem
Global glCreateBuffers(n_:Int,buffers_:Int Ptr)="__glewCreateBuffers"
rem
bbdoc: GL Global glCreateFramebuffers(n_:Int,framebuffers_:Int Ptr)
endrem
Global glCreateFramebuffers(n_:Int,framebuffers_:Int Ptr)="__glewCreateFramebuffers"
rem
bbdoc: GL Global glCreateProgramPipelines(n_:Int,pipelines_:Int Ptr)
endrem
Global glCreateProgramPipelines(n_:Int,pipelines_:Int Ptr)="__glewCreateProgramPipelines"
rem
bbdoc: GL Global glCreateQueries(target_:Int,n_:Int,ids_:Int Ptr)
endrem
Global glCreateQueries(target_:Int,n_:Int,ids_:Int Ptr)="__glewCreateQueries"
rem
bbdoc: GL Global glCreateRenderbuffers(n_:Int,renderbuffers_:Int Ptr)
endrem
Global glCreateRenderbuffers(n_:Int,renderbuffers_:Int Ptr)="__glewCreateRenderbuffers"
rem
bbdoc: GL Global glCreateSamplers(n_:Int,samplers_:Int Ptr)
endrem
Global glCreateSamplers(n_:Int,samplers_:Int Ptr)="__glewCreateSamplers"
rem
bbdoc: GL Global glCreateTextures(target_:Int,n_:Int,textures_:Int Ptr)
endrem
Global glCreateTextures(target_:Int,n_:Int,textures_:Int Ptr)="__glewCreateTextures"
rem
bbdoc: GL Global glCreateTransformFeedbacks(n_:Int,ids_:Int Ptr)
endrem
Global glCreateTransformFeedbacks(n_:Int,ids_:Int Ptr)="__glewCreateTransformFeedbacks"
rem
bbdoc: GL Global glCreateVertexArrays(n_:Int,arrays_:Int Ptr)
endrem
Global glCreateVertexArrays(n_:Int,arrays_:Int Ptr)="__glewCreateVertexArrays"
rem
bbdoc: GL Global glDisableVertexArrayAttrib(vaobj_:Int,index_:Int)
endrem
Global glDisableVertexArrayAttrib(vaobj_:Int,index_:Int)="__glewDisableVertexArrayAttrib"
rem
bbdoc: GL Global glEnableVertexArrayAttrib(vaobj_:Int,index_:Int)
endrem
Global glEnableVertexArrayAttrib(vaobj_:Int,index_:Int)="__glewEnableVertexArrayAttrib"
rem
bbdoc: GL Global glFlushMappedNamedBufferRange(buffer_:Int,offset_:Int,length_:Int)
endrem
Global glFlushMappedNamedBufferRange(buffer_:Int,offset_:Int,length_:Int)="__glewFlushMappedNamedBufferRange"
rem
bbdoc: GL Global glGenerateTextureMipmap(texture_:Int)
endrem
Global glGenerateTextureMipmap(texture_:Int)="__glewGenerateTextureMipmap"
rem
bbdoc: GL Global glGetCompressedTextureImage(texture_:Int,level_:Int,bufSize_:Int,pixels_:Byte Ptr)
endrem
Global glGetCompressedTextureImage(texture_:Int,level_:Int,bufSize_:Int,pixels_:Byte Ptr)="__glewGetCompressedTextureImage"
rem
bbdoc: GL Global glGetNamedBufferParameteri64v(buffer_:Int,pname_:Int,params_:Long Ptr)
endrem
Global glGetNamedBufferParameteri64v(buffer_:Int,pname_:Int,params_:Long Ptr)="__glewGetNamedBufferParameteri64v"
rem
bbdoc: GL Global glGetNamedBufferParameteriv(buffer_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetNamedBufferParameteriv(buffer_:Int,pname_:Int,params_:Int Ptr)="__glewGetNamedBufferParameteriv"
rem
bbdoc: GL Global glGetNamedBufferPointerv(buffer_:Int,pname_:Int,params_:Byte Ptr Ptr)
endrem
Global glGetNamedBufferPointerv(buffer_:Int,pname_:Int,params_:Byte Ptr Ptr)="__glewGetNamedBufferPointerv"
rem
bbdoc: GL Global glGetNamedBufferSubData(buffer_:Int,offset_:Int,size_:Int,data_:Byte Ptr)
endrem
Global glGetNamedBufferSubData(buffer_:Int,offset_:Int,size_:Int,data_:Byte Ptr)="__glewGetNamedBufferSubData"
rem
bbdoc: GL Global glGetNamedFramebufferAttachmentParameteriv(framebuffer_:Int,attachment_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetNamedFramebufferAttachmentParameteriv(framebuffer_:Int,attachment_:Int,pname_:Int,params_:Int Ptr)="__glewGetNamedFramebufferAttachmentParameteriv"
rem
bbdoc: GL Global glGetNamedFramebufferParameteriv(framebuffer_:Int,pname_:Int,param_:Int Ptr)
endrem
Global glGetNamedFramebufferParameteriv(framebuffer_:Int,pname_:Int,param_:Int Ptr)="__glewGetNamedFramebufferParameteriv"
rem
bbdoc: GL Global glGetNamedRenderbufferParameteriv(renderbuffer_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetNamedRenderbufferParameteriv(renderbuffer_:Int,pname_:Int,params_:Int Ptr)="__glewGetNamedRenderbufferParameteriv"
rem
bbdoc: GL Global glGetTextureImage(texture_:Int,level_:Int,format_:Int,type_:Int,bufSize_:Int,pixels_:Byte Ptr)
endrem
Global glGetTextureImage(texture_:Int,level_:Int,format_:Int,type_:Int,bufSize_:Int,pixels_:Byte Ptr)="__glewGetTextureImage"
rem
bbdoc: GL Global glGetTextureLevelParameterfv(texture_:Int,level_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetTextureLevelParameterfv(texture_:Int,level_:Int,pname_:Int,params_:Float Ptr)="__glewGetTextureLevelParameterfv"
rem
bbdoc: GL Global glGetTextureLevelParameteriv(texture_:Int,level_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetTextureLevelParameteriv(texture_:Int,level_:Int,pname_:Int,params_:Int Ptr)="__glewGetTextureLevelParameteriv"
rem
bbdoc: GL Global glGetTextureParameterIiv(texture_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetTextureParameterIiv(texture_:Int,pname_:Int,params_:Int Ptr)="__glewGetTextureParameterIiv"
rem
bbdoc: GL Global glGetTextureParameterIuiv(texture_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetTextureParameterIuiv(texture_:Int,pname_:Int,params_:Int Ptr)="__glewGetTextureParameterIuiv"
rem
bbdoc: GL Global glGetTextureParameterfv(texture_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetTextureParameterfv(texture_:Int,pname_:Int,params_:Float Ptr)="__glewGetTextureParameterfv"
rem
bbdoc: GL Global glGetTextureParameteriv(texture_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetTextureParameteriv(texture_:Int,pname_:Int,params_:Int Ptr)="__glewGetTextureParameteriv"
rem
bbdoc: GL Global glGetTransformFeedbacki64_v(xfb_:Int,pname_:Int,index_:Int,param_:Long Ptr)
endrem
Global glGetTransformFeedbacki64_v(xfb_:Int,pname_:Int,index_:Int,param_:Long Ptr)="__glewGetTransformFeedbacki64_v"
rem
bbdoc: GL Global glGetTransformFeedbacki_v(xfb_:Int,pname_:Int,index_:Int,param_:Int Ptr)
endrem
Global glGetTransformFeedbacki_v(xfb_:Int,pname_:Int,index_:Int,param_:Int Ptr)="__glewGetTransformFeedbacki_v"
rem
bbdoc: GL Global glGetTransformFeedbackiv(xfb_:Int,pname_:Int,param_:Int Ptr)
endrem
Global glGetTransformFeedbackiv(xfb_:Int,pname_:Int,param_:Int Ptr)="__glewGetTransformFeedbackiv"
rem
bbdoc: GL Global glGetVertexArrayIndexed64iv(vaobj_:Int,index_:Int,pname_:Int,param_:Long Ptr)
endrem
Global glGetVertexArrayIndexed64iv(vaobj_:Int,index_:Int,pname_:Int,param_:Long Ptr)="__glewGetVertexArrayIndexed64iv"
rem
bbdoc: GL Global glGetVertexArrayIndexediv(vaobj_:Int,index_:Int,pname_:Int,param_:Int Ptr)
endrem
Global glGetVertexArrayIndexediv(vaobj_:Int,index_:Int,pname_:Int,param_:Int Ptr)="__glewGetVertexArrayIndexediv"
rem
bbdoc: GL Global glGetVertexArrayiv(vaobj_:Int,pname_:Int,param_:Int Ptr)
endrem
Global glGetVertexArrayiv(vaobj_:Int,pname_:Int,param_:Int Ptr)="__glewGetVertexArrayiv"
rem
bbdoc: GL Global glInvalidateNamedFramebufferData(framebuffer_:Int,numAttachments_:Int,attachments_:Int Ptr)
endrem
Global glInvalidateNamedFramebufferData(framebuffer_:Int,numAttachments_:Int,attachments_:Int Ptr)="__glewInvalidateNamedFramebufferData"
rem
bbdoc: GL Global glInvalidateNamedFramebufferSubData(framebuffer_:Int,numAttachments_:Int,attachments_:Int Ptr,x_:Int,y_:Int,width_:Int,height_:Int)
endrem
Global glInvalidateNamedFramebufferSubData(framebuffer_:Int,numAttachments_:Int,attachments_:Int Ptr,x_:Int,y_:Int,width_:Int,height_:Int)="__glewInvalidateNamedFramebufferSubData"
rem
bbdoc: GL Global glMapNamedBuffer:Byte Ptr(buffer_:Int,access_:Int)
endrem
Global glMapNamedBuffer:Byte Ptr(buffer_:Int,access_:Int)="__glewMapNamedBuffer"
rem
bbdoc: GL Global glMapNamedBufferRange:Byte Ptr(buffer_:Int,offset_:Int,length_:Int,access_:Int)
endrem
Global glMapNamedBufferRange:Byte Ptr(buffer_:Int,offset_:Int,length_:Int,access_:Int)="__glewMapNamedBufferRange"
rem
bbdoc: GL Global glNamedBufferData(buffer_:Int,size_:Int,data_:Byte Ptr,usage_:Int)
endrem
Global glNamedBufferData(buffer_:Int,size_:Int,data_:Byte Ptr,usage_:Int)="__glewNamedBufferData"
rem
bbdoc: GL Global glNamedBufferStorage(buffer_:Int,size_:Int,data_:Byte Ptr,flags_:Int)
endrem
Global glNamedBufferStorage(buffer_:Int,size_:Int,data_:Byte Ptr,flags_:Int)="__glewNamedBufferStorage"
rem
bbdoc: GL Global glNamedBufferSubData(buffer_:Int,offset_:Int,size_:Int,data_:Byte Ptr)
endrem
Global glNamedBufferSubData(buffer_:Int,offset_:Int,size_:Int,data_:Byte Ptr)="__glewNamedBufferSubData"
rem
bbdoc: GL Global glNamedFramebufferDrawBuffer(framebuffer_:Int,mode_:Int)
endrem
Global glNamedFramebufferDrawBuffer(framebuffer_:Int,mode_:Int)="__glewNamedFramebufferDrawBuffer"
rem
bbdoc: GL Global glNamedFramebufferDrawBuffers(framebuffer_:Int,n_:Int,bufs_:Int Ptr)
endrem
Global glNamedFramebufferDrawBuffers(framebuffer_:Int,n_:Int,bufs_:Int Ptr)="__glewNamedFramebufferDrawBuffers"
rem
bbdoc: GL Global glNamedFramebufferParameteri(framebuffer_:Int,pname_:Int,param_:Int)
endrem
Global glNamedFramebufferParameteri(framebuffer_:Int,pname_:Int,param_:Int)="__glewNamedFramebufferParameteri"
rem
bbdoc: GL Global glNamedFramebufferReadBuffer(framebuffer_:Int,mode_:Int)
endrem
Global glNamedFramebufferReadBuffer(framebuffer_:Int,mode_:Int)="__glewNamedFramebufferReadBuffer"
rem
bbdoc: GL Global glNamedFramebufferRenderbuffer(framebuffer_:Int,attachment_:Int,renderbuffertarget_:Int,renderbuffer_:Int)
endrem
Global glNamedFramebufferRenderbuffer(framebuffer_:Int,attachment_:Int,renderbuffertarget_:Int,renderbuffer_:Int)="__glewNamedFramebufferRenderbuffer"
rem
bbdoc: GL Global glNamedFramebufferTexture(framebuffer_:Int,attachment_:Int,texture_:Int,level_:Int)
endrem
Global glNamedFramebufferTexture(framebuffer_:Int,attachment_:Int,texture_:Int,level_:Int)="__glewNamedFramebufferTexture"
rem
bbdoc: GL Global glNamedFramebufferTextureLayer(framebuffer_:Int,attachment_:Int,texture_:Int,level_:Int,layer_:Int)
endrem
Global glNamedFramebufferTextureLayer(framebuffer_:Int,attachment_:Int,texture_:Int,level_:Int,layer_:Int)="__glewNamedFramebufferTextureLayer"
rem
bbdoc: GL Global glNamedRenderbufferStorage(renderbuffer_:Int,internalformat_:Int,width_:Int,height_:Int)
endrem
Global glNamedRenderbufferStorage(renderbuffer_:Int,internalformat_:Int,width_:Int,height_:Int)="__glewNamedRenderbufferStorage"
rem
bbdoc: GL Global glNamedRenderbufferStorageMultisample(renderbuffer_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int)
endrem
Global glNamedRenderbufferStorageMultisample(renderbuffer_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int)="__glewNamedRenderbufferStorageMultisample"
rem
bbdoc: GL Global glTextureBuffer(texture_:Int,internalformat_:Int,buffer_:Int)
endrem
Global glTextureBuffer(texture_:Int,internalformat_:Int,buffer_:Int)="__glewTextureBuffer"
rem
bbdoc: GL Global glTextureBufferRange(texture_:Int,internalformat_:Int,buffer_:Int,offset_:Int,size_:Int)
endrem
Global glTextureBufferRange(texture_:Int,internalformat_:Int,buffer_:Int,offset_:Int,size_:Int)="__glewTextureBufferRange"
rem
bbdoc: GL Global glTextureParameterIiv(texture_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glTextureParameterIiv(texture_:Int,pname_:Int,params_:Int Ptr)="__glewTextureParameterIiv"
rem
bbdoc: GL Global glTextureParameterIuiv(texture_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glTextureParameterIuiv(texture_:Int,pname_:Int,params_:Int Ptr)="__glewTextureParameterIuiv"
rem
bbdoc: GL Global glTextureParameterf(texture_:Int,pname_:Int,param_:Float)
endrem
Global glTextureParameterf(texture_:Int,pname_:Int,param_:Float)="__glewTextureParameterf"
rem
bbdoc: GL Global glTextureParameterfv(texture_:Int,pname_:Int,param_:Float Ptr)
endrem
Global glTextureParameterfv(texture_:Int,pname_:Int,param_:Float Ptr)="__glewTextureParameterfv"
rem
bbdoc: GL Global glTextureParameteri(texture_:Int,pname_:Int,param_:Int)
endrem
Global glTextureParameteri(texture_:Int,pname_:Int,param_:Int)="__glewTextureParameteri"
rem
bbdoc: GL Global glTextureParameteriv(texture_:Int,pname_:Int,param_:Int Ptr)
endrem
Global glTextureParameteriv(texture_:Int,pname_:Int,param_:Int Ptr)="__glewTextureParameteriv"
rem
bbdoc: GL Global glTextureStorage1D(texture_:Int,levels_:Int,internalformat_:Int,width_:Int)
endrem
Global glTextureStorage1D(texture_:Int,levels_:Int,internalformat_:Int,width_:Int)="__glewTextureStorage1D"
rem
bbdoc: GL Global glTextureStorage2D(texture_:Int,levels_:Int,internalformat_:Int,width_:Int,height_:Int)
endrem
Global glTextureStorage2D(texture_:Int,levels_:Int,internalformat_:Int,width_:Int,height_:Int)="__glewTextureStorage2D"
rem
bbdoc: GL Global glTextureStorage2DMultisample(texture_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int,fixedsamplelocations_:Byte)
endrem
Global glTextureStorage2DMultisample(texture_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int,fixedsamplelocations_:Byte)="__glewTextureStorage2DMultisample"
rem
bbdoc: GL Global glTextureStorage3D(texture_:Int,levels_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int)
endrem
Global glTextureStorage3D(texture_:Int,levels_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int)="__glewTextureStorage3D"
rem
bbdoc: GL Global glTextureStorage3DMultisample(texture_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,fixedsamplelocations_:Byte)
endrem
Global glTextureStorage3DMultisample(texture_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,fixedsamplelocations_:Byte)="__glewTextureStorage3DMultisample"
rem
bbdoc: GL Global glTextureSubImage1D(texture_:Int,level_:Int,xoffset_:Int,width_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glTextureSubImage1D(texture_:Int,level_:Int,xoffset_:Int,width_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewTextureSubImage1D"
rem
bbdoc: GL Global glTextureSubImage2D(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,width_:Int,height_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glTextureSubImage2D(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,width_:Int,height_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewTextureSubImage2D"
rem
bbdoc: GL Global glTextureSubImage3D(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glTextureSubImage3D(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewTextureSubImage3D"
rem
bbdoc: GL Global glTransformFeedbackBufferBase(xfb_:Int,index_:Int,buffer_:Int)
endrem
Global glTransformFeedbackBufferBase(xfb_:Int,index_:Int,buffer_:Int)="__glewTransformFeedbackBufferBase"
rem
bbdoc: GL Global glTransformFeedbackBufferRange(xfb_:Int,index_:Int,buffer_:Int,offset_:Int,size_:Int)
endrem
Global glTransformFeedbackBufferRange(xfb_:Int,index_:Int,buffer_:Int,offset_:Int,size_:Int)="__glewTransformFeedbackBufferRange"
rem
bbdoc: GL Global glUnmapNamedBuffer:Byte(buffer_:Int)
endrem
Global glUnmapNamedBuffer:Byte(buffer_:Int)="__glewUnmapNamedBuffer"
rem
bbdoc: GL Global glVertexArrayAttribBinding(vaobj_:Int,attribindex_:Int,bindingindex_:Int)
endrem
Global glVertexArrayAttribBinding(vaobj_:Int,attribindex_:Int,bindingindex_:Int)="__glewVertexArrayAttribBinding"
rem
bbdoc: GL Global glVertexArrayAttribFormat(vaobj_:Int,attribindex_:Int,size_:Int,type_:Int,normalized_:Byte,relativeoffset_:Int)
endrem
Global glVertexArrayAttribFormat(vaobj_:Int,attribindex_:Int,size_:Int,type_:Int,normalized_:Byte,relativeoffset_:Int)="__glewVertexArrayAttribFormat"
rem
bbdoc: GL Global glVertexArrayAttribIFormat(vaobj_:Int,attribindex_:Int,size_:Int,type_:Int,relativeoffset_:Int)
endrem
Global glVertexArrayAttribIFormat(vaobj_:Int,attribindex_:Int,size_:Int,type_:Int,relativeoffset_:Int)="__glewVertexArrayAttribIFormat"
rem
bbdoc: GL Global glVertexArrayAttribLFormat(vaobj_:Int,attribindex_:Int,size_:Int,type_:Int,relativeoffset_:Int)
endrem
Global glVertexArrayAttribLFormat(vaobj_:Int,attribindex_:Int,size_:Int,type_:Int,relativeoffset_:Int)="__glewVertexArrayAttribLFormat"
rem
bbdoc: GL Global glVertexArrayBindingDivisor(vaobj_:Int,bindingindex_:Int,divisor_:Int)
endrem
Global glVertexArrayBindingDivisor(vaobj_:Int,bindingindex_:Int,divisor_:Int)="__glewVertexArrayBindingDivisor"
rem
bbdoc: GL Global glVertexArrayElementBuffer(vaobj_:Int,buffer_:Int)
endrem
Global glVertexArrayElementBuffer(vaobj_:Int,buffer_:Int)="__glewVertexArrayElementBuffer"
rem
bbdoc: GL Global glVertexArrayVertexBuffer(vaobj_:Int,bindingindex_:Int,buffer_:Int,offset_:Int,stride_:Int)
endrem
Global glVertexArrayVertexBuffer(vaobj_:Int,bindingindex_:Int,buffer_:Int,offset_:Int,stride_:Int)="__glewVertexArrayVertexBuffer"
rem
bbdoc: GL Global glVertexArrayVertexBuffers(vaobj_:Int,first_:Int,count_:Int,buffers_:Int Ptr,offsets_:Int Ptr,strides_:Int Ptr)
endrem
Global glVertexArrayVertexBuffers(vaobj_:Int,first_:Int,count_:Int,buffers_:Int Ptr,offsets_:Int Ptr,strides_:Int Ptr)="__glewVertexArrayVertexBuffers"
rem
bbdoc: GL Const GL_ARB_draw_buffers
endrem
Const GL_ARB_draw_buffers=1
rem
bbdoc: GL Const GL_MAX_DRAW_BUFFERS_ARB
endrem
Const GL_MAX_DRAW_BUFFERS_ARB=$8824
rem
bbdoc: GL Const GL_DRAW_BUFFER0_ARB
endrem
Const GL_DRAW_BUFFER0_ARB=$8825
rem
bbdoc: GL Const GL_DRAW_BUFFER1_ARB
endrem
Const GL_DRAW_BUFFER1_ARB=$8826
rem
bbdoc: GL Const GL_DRAW_BUFFER2_ARB
endrem
Const GL_DRAW_BUFFER2_ARB=$8827
rem
bbdoc: GL Const GL_DRAW_BUFFER3_ARB
endrem
Const GL_DRAW_BUFFER3_ARB=$8828
rem
bbdoc: GL Const GL_DRAW_BUFFER4_ARB
endrem
Const GL_DRAW_BUFFER4_ARB=$8829
rem
bbdoc: GL Const GL_DRAW_BUFFER5_ARB
endrem
Const GL_DRAW_BUFFER5_ARB=$882A
rem
bbdoc: GL Const GL_DRAW_BUFFER6_ARB
endrem
Const GL_DRAW_BUFFER6_ARB=$882B
rem
bbdoc: GL Const GL_DRAW_BUFFER7_ARB
endrem
Const GL_DRAW_BUFFER7_ARB=$882C
rem
bbdoc: GL Const GL_DRAW_BUFFER8_ARB
endrem
Const GL_DRAW_BUFFER8_ARB=$882D
rem
bbdoc: GL Const GL_DRAW_BUFFER9_ARB
endrem
Const GL_DRAW_BUFFER9_ARB=$882E
rem
bbdoc: GL Const GL_DRAW_BUFFER10_ARB
endrem
Const GL_DRAW_BUFFER10_ARB=$882F
rem
bbdoc: GL Const GL_DRAW_BUFFER11_ARB
endrem
Const GL_DRAW_BUFFER11_ARB=$8830
rem
bbdoc: GL Const GL_DRAW_BUFFER12_ARB
endrem
Const GL_DRAW_BUFFER12_ARB=$8831
rem
bbdoc: GL Const GL_DRAW_BUFFER13_ARB
endrem
Const GL_DRAW_BUFFER13_ARB=$8832
rem
bbdoc: GL Const GL_DRAW_BUFFER14_ARB
endrem
Const GL_DRAW_BUFFER14_ARB=$8833
rem
bbdoc: GL Const GL_DRAW_BUFFER15_ARB
endrem
Const GL_DRAW_BUFFER15_ARB=$8834
rem
bbdoc: GL Global glDrawBuffersARB(n_:Int,bufs_:Int Ptr)
endrem
Global glDrawBuffersARB(n_:Int,bufs_:Int Ptr)="__glewDrawBuffersARB"
rem
bbdoc: GL Const GL_ARB_draw_buffers_blend
endrem
Const GL_ARB_draw_buffers_blend=1
rem
bbdoc: GL Global glBlendEquationSeparateiARB(buf_:Int,modeRGB_:Int,modeAlpha_:Int)
endrem
Global glBlendEquationSeparateiARB(buf_:Int,modeRGB_:Int,modeAlpha_:Int)="__glewBlendEquationSeparateiARB"
rem
bbdoc: GL Global glBlendEquationiARB(buf_:Int,mode_:Int)
endrem
Global glBlendEquationiARB(buf_:Int,mode_:Int)="__glewBlendEquationiARB"
rem
bbdoc: GL Global glBlendFuncSeparateiARB(buf_:Int,srcRGB_:Int,dstRGB_:Int,srcAlpha_:Int,dstAlpha_:Int)
endrem
Global glBlendFuncSeparateiARB(buf_:Int,srcRGB_:Int,dstRGB_:Int,srcAlpha_:Int,dstAlpha_:Int)="__glewBlendFuncSeparateiARB"
rem
bbdoc: GL Global glBlendFunciARB(buf_:Int,src_:Int,dst_:Int)
endrem
Global glBlendFunciARB(buf_:Int,src_:Int,dst_:Int)="__glewBlendFunciARB"
rem
bbdoc: GL Const GL_ARB_draw_elements_base_vertex
endrem
Const GL_ARB_draw_elements_base_vertex=1
rem
bbdoc: GL Global glDrawElementsBaseVertex(mode_:Int,count_:Int,type_:Int,indices_:Byte Ptr,basevertex_:Int)
endrem
Global glDrawElementsBaseVertex(mode_:Int,count_:Int,type_:Int,indices_:Byte Ptr,basevertex_:Int)="__glewDrawElementsBaseVertex"
rem
bbdoc: GL Global glDrawElementsInstancedBaseVertex(mode_:Int,count_:Int,type_:Int,indices_:Byte Ptr,primcount_:Int,basevertex_:Int)
endrem
Global glDrawElementsInstancedBaseVertex(mode_:Int,count_:Int,type_:Int,indices_:Byte Ptr,primcount_:Int,basevertex_:Int)="__glewDrawElementsInstancedBaseVertex"
rem
bbdoc: GL Global glDrawRangeElementsBaseVertex(mode_:Int,start_:Int,end_:Int,count_:Int,type_:Int,indices_:Byte Ptr,basevertex_:Int)
endrem
Global glDrawRangeElementsBaseVertex(mode_:Int,start_:Int,end_:Int,count_:Int,type_:Int,indices_:Byte Ptr,basevertex_:Int)="__glewDrawRangeElementsBaseVertex"
rem
bbdoc: GL Global glMultiDrawElementsBaseVertex(mode_:Int,count_:Int Ptr,type_:Int,indices_:Byte Ptr Ptr,primcount_:Int,basevertex_:Int Ptr)
endrem
Global glMultiDrawElementsBaseVertex(mode_:Int,count_:Int Ptr,type_:Int,indices_:Byte Ptr Ptr,primcount_:Int,basevertex_:Int Ptr)="__glewMultiDrawElementsBaseVertex"
rem
bbdoc: GL Const GL_ARB_draw_indirect
endrem
Const GL_ARB_draw_indirect=1
rem
bbdoc: GL Const GL_DRAW_INDIRECT_BUFFER
endrem
Const GL_DRAW_INDIRECT_BUFFER=$8F3F
rem
bbdoc: GL Const GL_DRAW_INDIRECT_BUFFER_BINDING
endrem
Const GL_DRAW_INDIRECT_BUFFER_BINDING=$8F43
rem
bbdoc: GL Global glDrawArraysIndirect(mode_:Int,indirect_:Byte Ptr)
endrem
Global glDrawArraysIndirect(mode_:Int,indirect_:Byte Ptr)="__glewDrawArraysIndirect"
rem
bbdoc: GL Global glDrawElementsIndirect(mode_:Int,type_:Int,indirect_:Byte Ptr)
endrem
Global glDrawElementsIndirect(mode_:Int,type_:Int,indirect_:Byte Ptr)="__glewDrawElementsIndirect"
rem
bbdoc: GL Const GL_ARB_draw_instanced
endrem
Const GL_ARB_draw_instanced=1
rem
bbdoc: GL Const GL_ARB_enhanced_layouts
endrem
Const GL_ARB_enhanced_layouts=1
rem
bbdoc: GL Const GL_LOCATION_COMPONENT
endrem
Const GL_LOCATION_COMPONENT=$934A
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_INDEX
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_INDEX=$934B
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE=$934C
rem
bbdoc: GL Const GL_ARB_explicit_attrib_location
endrem
Const GL_ARB_explicit_attrib_location=1
rem
bbdoc: GL Const GL_ARB_explicit_uniform_location
endrem
Const GL_ARB_explicit_uniform_location=1
rem
bbdoc: GL Const GL_MAX_UNIFORM_LOCATIONS
endrem
Const GL_MAX_UNIFORM_LOCATIONS=$826E
rem
bbdoc: GL Const GL_ARB_fragment_coord_conventions
endrem
Const GL_ARB_fragment_coord_conventions=1
rem
bbdoc: GL Const GL_ARB_fragment_layer_viewport
endrem
Const GL_ARB_fragment_layer_viewport=1
rem
bbdoc: GL Const GL_ARB_fragment_program
endrem
Const GL_ARB_fragment_program=1
rem
bbdoc: GL Const GL_FRAGMENT_PROGRAM_ARB
endrem
Const GL_FRAGMENT_PROGRAM_ARB=$8804
rem
bbdoc: GL Const GL_PROGRAM_ALU_INSTRUCTIONS_ARB
endrem
Const GL_PROGRAM_ALU_INSTRUCTIONS_ARB=$8805
rem
bbdoc: GL Const GL_PROGRAM_TEX_INSTRUCTIONS_ARB
endrem
Const GL_PROGRAM_TEX_INSTRUCTIONS_ARB=$8806
rem
bbdoc: GL Const GL_PROGRAM_TEX_INDIRECTIONS_ARB
endrem
Const GL_PROGRAM_TEX_INDIRECTIONS_ARB=$8807
rem
bbdoc: GL Const GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB
endrem
Const GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB=$8808
rem
bbdoc: GL Const GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB
endrem
Const GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB=$8809
rem
bbdoc: GL Const GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB
endrem
Const GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB=$880A
rem
bbdoc: GL Const GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB
endrem
Const GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB=$880B
rem
bbdoc: GL Const GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB
endrem
Const GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB=$880C
rem
bbdoc: GL Const GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB
endrem
Const GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB=$880D
rem
bbdoc: GL Const GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB
endrem
Const GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB=$880E
rem
bbdoc: GL Const GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB
endrem
Const GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB=$880F
rem
bbdoc: GL Const GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB
endrem
Const GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB=$8810
rem
bbdoc: GL Const GL_MAX_TEXTURE_COORDS_ARB
endrem
Const GL_MAX_TEXTURE_COORDS_ARB=$8871
rem
bbdoc: GL Const GL_MAX_TEXTURE_IMAGE_UNITS_ARB
endrem
Const GL_MAX_TEXTURE_IMAGE_UNITS_ARB=$8872
rem
bbdoc: GL Const GL_ARB_fragment_program_shadow
endrem
Const GL_ARB_fragment_program_shadow=1
rem
bbdoc: GL Const GL_ARB_fragment_shader
endrem
Const GL_ARB_fragment_shader=1
rem
bbdoc: GL Const GL_FRAGMENT_SHADER_ARB
endrem
Const GL_FRAGMENT_SHADER_ARB=$8B30
rem
bbdoc: GL Const GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB
endrem
Const GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB=$8B49
rem
bbdoc: GL Const GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB
endrem
Const GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB=$8B8B
rem
bbdoc: GL Const GL_ARB_framebuffer_no_attachments
endrem
Const GL_ARB_framebuffer_no_attachments=1
rem
bbdoc: GL Const GL_FRAMEBUFFER_DEFAULT_WIDTH
endrem
Const GL_FRAMEBUFFER_DEFAULT_WIDTH=$9310
rem
bbdoc: GL Const GL_FRAMEBUFFER_DEFAULT_HEIGHT
endrem
Const GL_FRAMEBUFFER_DEFAULT_HEIGHT=$9311
rem
bbdoc: GL Const GL_FRAMEBUFFER_DEFAULT_LAYERS
endrem
Const GL_FRAMEBUFFER_DEFAULT_LAYERS=$9312
rem
bbdoc: GL Const GL_FRAMEBUFFER_DEFAULT_SAMPLES
endrem
Const GL_FRAMEBUFFER_DEFAULT_SAMPLES=$9313
rem
bbdoc: GL Const GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS
endrem
Const GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS=$9314
rem
bbdoc: GL Const GL_MAX_FRAMEBUFFER_WIDTH
endrem
Const GL_MAX_FRAMEBUFFER_WIDTH=$9315
rem
bbdoc: GL Const GL_MAX_FRAMEBUFFER_HEIGHT
endrem
Const GL_MAX_FRAMEBUFFER_HEIGHT=$9316
rem
bbdoc: GL Const GL_MAX_FRAMEBUFFER_LAYERS
endrem
Const GL_MAX_FRAMEBUFFER_LAYERS=$9317
rem
bbdoc: GL Const GL_MAX_FRAMEBUFFER_SAMPLES
endrem
Const GL_MAX_FRAMEBUFFER_SAMPLES=$9318
rem
bbdoc: GL Global glFramebufferParameteri(target_:Int,pname_:Int,param_:Int)
endrem
Global glFramebufferParameteri(target_:Int,pname_:Int,param_:Int)="__glewFramebufferParameteri"
rem
bbdoc: GL Global glGetFramebufferParameteriv(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetFramebufferParameteriv(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetFramebufferParameteriv"
rem
bbdoc: GL Global glGetNamedFramebufferParameterivEXT(framebuffer_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetNamedFramebufferParameterivEXT(framebuffer_:Int,pname_:Int,params_:Int Ptr)="__glewGetNamedFramebufferParameterivEXT"
rem
bbdoc: GL Global glNamedFramebufferParameteriEXT(framebuffer_:Int,pname_:Int,param_:Int)
endrem
Global glNamedFramebufferParameteriEXT(framebuffer_:Int,pname_:Int,param_:Int)="__glewNamedFramebufferParameteriEXT"
rem
bbdoc: GL Const GL_ARB_framebuffer_object
endrem
Const GL_ARB_framebuffer_object=1
rem
bbdoc: GL Const GL_INVALID_FRAMEBUFFER_OPERATION
endrem
Const GL_INVALID_FRAMEBUFFER_OPERATION=$0506
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING=$8210
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE=$8211
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE=$8212
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE=$8213
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE=$8214
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE=$8215
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE=$8216
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE=$8217
rem
bbdoc: GL Const GL_FRAMEBUFFER_DEFAULT
endrem
Const GL_FRAMEBUFFER_DEFAULT=$8218
rem
bbdoc: GL Const GL_FRAMEBUFFER_UNDEFINED
endrem
Const GL_FRAMEBUFFER_UNDEFINED=$8219
rem
bbdoc: GL Const GL_DEPTH_STENCIL_ATTACHMENT
endrem
Const GL_DEPTH_STENCIL_ATTACHMENT=$821A
rem
bbdoc: GL Const GL_INDEX
endrem
Const GL_INDEX=$8222
rem
bbdoc: GL Const GL_MAX_RENDERBUFFER_SIZE
endrem
Const GL_MAX_RENDERBUFFER_SIZE=$84E8
rem
bbdoc: GL Const GL_DEPTH_STENCIL
endrem
Const GL_DEPTH_STENCIL=$84F9
rem
bbdoc: GL Const GL_UNSIGNED_INT_24_8
endrem
Const GL_UNSIGNED_INT_24_8=$84FA
rem
bbdoc: GL Const GL_DEPTH24_STENCIL8
endrem
Const GL_DEPTH24_STENCIL8=$88F0
rem
bbdoc: GL Const GL_TEXTURE_STENCIL_SIZE
endrem
Const GL_TEXTURE_STENCIL_SIZE=$88F1
rem
bbdoc: GL Const GL_UNSIGNED_NORMALIZED
endrem
Const GL_UNSIGNED_NORMALIZED=$8C17
rem
bbdoc: GL Const GL_DRAW_FRAMEBUFFER_BINDING
endrem
Const GL_DRAW_FRAMEBUFFER_BINDING=$8CA6
rem
bbdoc: GL Const GL_FRAMEBUFFER_BINDING
endrem
Const GL_FRAMEBUFFER_BINDING=$8CA6
rem
bbdoc: GL Const GL_RENDERBUFFER_BINDING
endrem
Const GL_RENDERBUFFER_BINDING=$8CA7
rem
bbdoc: GL Const GL_READ_FRAMEBUFFER
endrem
Const GL_READ_FRAMEBUFFER=$8CA8
rem
bbdoc: GL Const GL_DRAW_FRAMEBUFFER
endrem
Const GL_DRAW_FRAMEBUFFER=$8CA9
rem
bbdoc: GL Const GL_READ_FRAMEBUFFER_BINDING
endrem
Const GL_READ_FRAMEBUFFER_BINDING=$8CAA
rem
bbdoc: GL Const GL_RENDERBUFFER_SAMPLES
endrem
Const GL_RENDERBUFFER_SAMPLES=$8CAB
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE=$8CD0
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME=$8CD1
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL=$8CD2
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE=$8CD3
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER=$8CD4
rem
bbdoc: GL Const GL_FRAMEBUFFER_COMPLETE
endrem
Const GL_FRAMEBUFFER_COMPLETE=$8CD5
rem
bbdoc: GL Const GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT
endrem
Const GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT=$8CD6
rem
bbdoc: GL Const GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT
endrem
Const GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT=$8CD7
rem
bbdoc: GL Const GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER
endrem
Const GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER=$8CDB
rem
bbdoc: GL Const GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER
endrem
Const GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER=$8CDC
rem
bbdoc: GL Const GL_FRAMEBUFFER_UNSUPPORTED
endrem
Const GL_FRAMEBUFFER_UNSUPPORTED=$8CDD
rem
bbdoc: GL Const GL_MAX_COLOR_ATTACHMENTS
endrem
Const GL_MAX_COLOR_ATTACHMENTS=$8CDF
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT0
endrem
Const GL_COLOR_ATTACHMENT0=$8CE0
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT1
endrem
Const GL_COLOR_ATTACHMENT1=$8CE1
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT2
endrem
Const GL_COLOR_ATTACHMENT2=$8CE2
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT3
endrem
Const GL_COLOR_ATTACHMENT3=$8CE3
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT4
endrem
Const GL_COLOR_ATTACHMENT4=$8CE4
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT5
endrem
Const GL_COLOR_ATTACHMENT5=$8CE5
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT6
endrem
Const GL_COLOR_ATTACHMENT6=$8CE6
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT7
endrem
Const GL_COLOR_ATTACHMENT7=$8CE7
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT8
endrem
Const GL_COLOR_ATTACHMENT8=$8CE8
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT9
endrem
Const GL_COLOR_ATTACHMENT9=$8CE9
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT10
endrem
Const GL_COLOR_ATTACHMENT10=$8CEA
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT11
endrem
Const GL_COLOR_ATTACHMENT11=$8CEB
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT12
endrem
Const GL_COLOR_ATTACHMENT12=$8CEC
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT13
endrem
Const GL_COLOR_ATTACHMENT13=$8CED
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT14
endrem
Const GL_COLOR_ATTACHMENT14=$8CEE
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT15
endrem
Const GL_COLOR_ATTACHMENT15=$8CEF
rem
bbdoc: GL Const GL_DEPTH_ATTACHMENT
endrem
Const GL_DEPTH_ATTACHMENT=$8D00
rem
bbdoc: GL Const GL_STENCIL_ATTACHMENT
endrem
Const GL_STENCIL_ATTACHMENT=$8D20
rem
bbdoc: GL Const GL_FRAMEBUFFER
endrem
Const GL_FRAMEBUFFER=$8D40
rem
bbdoc: GL Const GL_RENDERBUFFER
endrem
Const GL_RENDERBUFFER=$8D41
rem
bbdoc: GL Const GL_RENDERBUFFER_WIDTH
endrem
Const GL_RENDERBUFFER_WIDTH=$8D42
rem
bbdoc: GL Const GL_RENDERBUFFER_HEIGHT
endrem
Const GL_RENDERBUFFER_HEIGHT=$8D43
rem
bbdoc: GL Const GL_RENDERBUFFER_INTERNAL_FORMAT
endrem
Const GL_RENDERBUFFER_INTERNAL_FORMAT=$8D44
rem
bbdoc: GL Const GL_STENCIL_INDEX1
endrem
Const GL_STENCIL_INDEX1=$8D46
rem
bbdoc: GL Const GL_STENCIL_INDEX4
endrem
Const GL_STENCIL_INDEX4=$8D47
rem
bbdoc: GL Const GL_STENCIL_INDEX8
endrem
Const GL_STENCIL_INDEX8=$8D48
rem
bbdoc: GL Const GL_STENCIL_INDEX16
endrem
Const GL_STENCIL_INDEX16=$8D49
rem
bbdoc: GL Const GL_RENDERBUFFER_RED_SIZE
endrem
Const GL_RENDERBUFFER_RED_SIZE=$8D50
rem
bbdoc: GL Const GL_RENDERBUFFER_GREEN_SIZE
endrem
Const GL_RENDERBUFFER_GREEN_SIZE=$8D51
rem
bbdoc: GL Const GL_RENDERBUFFER_BLUE_SIZE
endrem
Const GL_RENDERBUFFER_BLUE_SIZE=$8D52
rem
bbdoc: GL Const GL_RENDERBUFFER_ALPHA_SIZE
endrem
Const GL_RENDERBUFFER_ALPHA_SIZE=$8D53
rem
bbdoc: GL Const GL_RENDERBUFFER_DEPTH_SIZE
endrem
Const GL_RENDERBUFFER_DEPTH_SIZE=$8D54
rem
bbdoc: GL Const GL_RENDERBUFFER_STENCIL_SIZE
endrem
Const GL_RENDERBUFFER_STENCIL_SIZE=$8D55
rem
bbdoc: GL Const GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE
endrem
Const GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE=$8D56
rem
bbdoc: GL Const GL_MAX_SAMPLES
endrem
Const GL_MAX_SAMPLES=$8D57
rem
bbdoc: GL Global glBindFramebuffer(target_:Int,framebuffer_:Int)
endrem
Global glBindFramebuffer(target_:Int,framebuffer_:Int)="__glewBindFramebuffer"
rem
bbdoc: GL Global glBindRenderbuffer(target_:Int,renderbuffer_:Int)
endrem
Global glBindRenderbuffer(target_:Int,renderbuffer_:Int)="__glewBindRenderbuffer"
rem
bbdoc: GL Global glBlitFramebuffer(srcX0_:Int,srcY0_:Int,srcX1_:Int,srcY1_:Int,dstX0_:Int,dstY0_:Int,dstX1_:Int,dstY1_:Int,mask_:Int,filter_:Int)
endrem
Global glBlitFramebuffer(srcX0_:Int,srcY0_:Int,srcX1_:Int,srcY1_:Int,dstX0_:Int,dstY0_:Int,dstX1_:Int,dstY1_:Int,mask_:Int,filter_:Int)="__glewBlitFramebuffer"
rem
bbdoc: GL Global glCheckFramebufferStatus:Int(target_:Int)
endrem
Global glCheckFramebufferStatus:Int(target_:Int)="__glewCheckFramebufferStatus"
rem
bbdoc: GL Global glDeleteFramebuffers(n_:Int,framebuffers_:Int Ptr)
endrem
Global glDeleteFramebuffers(n_:Int,framebuffers_:Int Ptr)="__glewDeleteFramebuffers"
rem
bbdoc: GL Global glDeleteRenderbuffers(n_:Int,renderbuffers_:Int Ptr)
endrem
Global glDeleteRenderbuffers(n_:Int,renderbuffers_:Int Ptr)="__glewDeleteRenderbuffers"
rem
bbdoc: GL Global glFramebufferRenderbuffer(target_:Int,attachment_:Int,renderbuffertarget_:Int,renderbuffer_:Int)
endrem
Global glFramebufferRenderbuffer(target_:Int,attachment_:Int,renderbuffertarget_:Int,renderbuffer_:Int)="__glewFramebufferRenderbuffer"
rem
bbdoc: GL Global glFramebufferTexture1D(target_:Int,attachment_:Int,textarget_:Int,texture_:Int,level_:Int)
endrem
Global glFramebufferTexture1D(target_:Int,attachment_:Int,textarget_:Int,texture_:Int,level_:Int)="__glewFramebufferTexture1D"
rem
bbdoc: GL Global glFramebufferTexture2D(target_:Int,attachment_:Int,textarget_:Int,texture_:Int,level_:Int)
endrem
Global glFramebufferTexture2D(target_:Int,attachment_:Int,textarget_:Int,texture_:Int,level_:Int)="__glewFramebufferTexture2D"
rem
bbdoc: GL Global glFramebufferTexture3D(target_:Int,attachment_:Int,textarget_:Int,texture_:Int,level_:Int,layer_:Int)
endrem
Global glFramebufferTexture3D(target_:Int,attachment_:Int,textarget_:Int,texture_:Int,level_:Int,layer_:Int)="__glewFramebufferTexture3D"
rem
bbdoc: GL Global glFramebufferTextureLayer(target_:Int,attachment_:Int,texture_:Int,level_:Int,layer_:Int)
endrem
Global glFramebufferTextureLayer(target_:Int,attachment_:Int,texture_:Int,level_:Int,layer_:Int)="__glewFramebufferTextureLayer"
rem
bbdoc: GL Global glGenFramebuffers(n_:Int,framebuffers_:Int Ptr)
endrem
Global glGenFramebuffers(n_:Int,framebuffers_:Int Ptr)="__glewGenFramebuffers"
rem
bbdoc: GL Global glGenRenderbuffers(n_:Int,renderbuffers_:Int Ptr)
endrem
Global glGenRenderbuffers(n_:Int,renderbuffers_:Int Ptr)="__glewGenRenderbuffers"
rem
bbdoc: GL Global glGenerateMipmap(target_:Int)
endrem
Global glGenerateMipmap(target_:Int)="__glewGenerateMipmap"
rem
bbdoc: GL Global glGetFramebufferAttachmentParameteriv(target_:Int,attachment_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetFramebufferAttachmentParameteriv(target_:Int,attachment_:Int,pname_:Int,params_:Int Ptr)="__glewGetFramebufferAttachmentParameteriv"
rem
bbdoc: GL Global glGetRenderbufferParameteriv(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetRenderbufferParameteriv(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetRenderbufferParameteriv"
rem
bbdoc: GL Global glIsFramebuffer:Byte(framebuffer_:Int)
endrem
Global glIsFramebuffer:Byte(framebuffer_:Int)="__glewIsFramebuffer"
rem
bbdoc: GL Global glIsRenderbuffer:Byte(renderbuffer_:Int)
endrem
Global glIsRenderbuffer:Byte(renderbuffer_:Int)="__glewIsRenderbuffer"
rem
bbdoc: GL Global glRenderbufferStorage(target_:Int,internalformat_:Int,width_:Int,height_:Int)
endrem
Global glRenderbufferStorage(target_:Int,internalformat_:Int,width_:Int,height_:Int)="__glewRenderbufferStorage"
rem
bbdoc: GL Global glRenderbufferStorageMultisample(target_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int)
endrem
Global glRenderbufferStorageMultisample(target_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int)="__glewRenderbufferStorageMultisample"
rem
bbdoc: GL Const GL_ARB_framebuffer_sRGB
endrem
Const GL_ARB_framebuffer_sRGB=1
rem
bbdoc: GL Const GL_FRAMEBUFFER_SRGB
endrem
Const GL_FRAMEBUFFER_SRGB=$8DB9
rem
bbdoc: GL Const GL_ARB_geometry_shader4
endrem
Const GL_ARB_geometry_shader4=1
rem
bbdoc: GL Const GL_LINES_ADJACENCY_ARB
endrem
Const GL_LINES_ADJACENCY_ARB=$A
rem
bbdoc: GL Const GL_LINE_STRIP_ADJACENCY_ARB
endrem
Const GL_LINE_STRIP_ADJACENCY_ARB=$B
rem
bbdoc: GL Const GL_TRIANGLES_ADJACENCY_ARB
endrem
Const GL_TRIANGLES_ADJACENCY_ARB=$C
rem
bbdoc: GL Const GL_TRIANGLE_STRIP_ADJACENCY_ARB
endrem
Const GL_TRIANGLE_STRIP_ADJACENCY_ARB=$D
rem
bbdoc: GL Const GL_PROGRAM_POINT_SIZE_ARB
endrem
Const GL_PROGRAM_POINT_SIZE_ARB=$8642
rem
bbdoc: GL Const GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB
endrem
Const GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB=$8C29
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB=$8DA7
rem
bbdoc: GL Const GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB
endrem
Const GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB=$8DA8
rem
bbdoc: GL Const GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB
endrem
Const GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB=$8DA9
rem
bbdoc: GL Const GL_GEOMETRY_SHADER_ARB
endrem
Const GL_GEOMETRY_SHADER_ARB=$8DD9
rem
bbdoc: GL Const GL_GEOMETRY_VERTICES_OUT_ARB
endrem
Const GL_GEOMETRY_VERTICES_OUT_ARB=$8DDA
rem
bbdoc: GL Const GL_GEOMETRY_INPUT_TYPE_ARB
endrem
Const GL_GEOMETRY_INPUT_TYPE_ARB=$8DDB
rem
bbdoc: GL Const GL_GEOMETRY_OUTPUT_TYPE_ARB
endrem
Const GL_GEOMETRY_OUTPUT_TYPE_ARB=$8DDC
rem
bbdoc: GL Const GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB
endrem
Const GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB=$8DDD
rem
bbdoc: GL Const GL_MAX_VERTEX_VARYING_COMPONENTS_ARB
endrem
Const GL_MAX_VERTEX_VARYING_COMPONENTS_ARB=$8DDE
rem
bbdoc: GL Const GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB
endrem
Const GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB=$8DDF
rem
bbdoc: GL Const GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB
endrem
Const GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB=$8DE0
rem
bbdoc: GL Const GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB
endrem
Const GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB=$8DE1
rem
bbdoc: GL Global glFramebufferTextureARB(target_:Int,attachment_:Int,texture_:Int,level_:Int)
endrem
Global glFramebufferTextureARB(target_:Int,attachment_:Int,texture_:Int,level_:Int)="__glewFramebufferTextureARB"
rem
bbdoc: GL Global glFramebufferTextureFaceARB(target_:Int,attachment_:Int,texture_:Int,level_:Int,face_:Int)
endrem
Global glFramebufferTextureFaceARB(target_:Int,attachment_:Int,texture_:Int,level_:Int,face_:Int)="__glewFramebufferTextureFaceARB"
rem
bbdoc: GL Global glFramebufferTextureLayerARB(target_:Int,attachment_:Int,texture_:Int,level_:Int,layer_:Int)
endrem
Global glFramebufferTextureLayerARB(target_:Int,attachment_:Int,texture_:Int,level_:Int,layer_:Int)="__glewFramebufferTextureLayerARB"
rem
bbdoc: GL Global glProgramParameteriARB(program_:Int,pname_:Int,value_:Int)
endrem
Global glProgramParameteriARB(program_:Int,pname_:Int,value_:Int)="__glewProgramParameteriARB"
rem
bbdoc: GL Const GL_ARB_get_program_binary
endrem
Const GL_ARB_get_program_binary=1
rem
bbdoc: GL Const GL_PROGRAM_BINARY_RETRIEVABLE_HINT
endrem
Const GL_PROGRAM_BINARY_RETRIEVABLE_HINT=$8257
rem
bbdoc: GL Const GL_PROGRAM_BINARY_LENGTH
endrem
Const GL_PROGRAM_BINARY_LENGTH=$8741
rem
bbdoc: GL Const GL_NUM_PROGRAM_BINARY_FORMATS
endrem
Const GL_NUM_PROGRAM_BINARY_FORMATS=$87FE
rem
bbdoc: GL Const GL_PROGRAM_BINARY_FORMATS
endrem
Const GL_PROGRAM_BINARY_FORMATS=$87FF
rem
bbdoc: GL Global glGetProgramBinary(program_:Int,bufSize_:Int,length_:Int Ptr,binaryFormat_:Int Ptr,binary_:Byte Ptr)
endrem
Global glGetProgramBinary(program_:Int,bufSize_:Int,length_:Int Ptr,binaryFormat_:Int Ptr,binary_:Byte Ptr)="__glewGetProgramBinary"
rem
bbdoc: GL Global glProgramBinary(program_:Int,binaryFormat_:Int,binary_:Byte Ptr,length_:Int)
endrem
Global glProgramBinary(program_:Int,binaryFormat_:Int,binary_:Byte Ptr,length_:Int)="__glewProgramBinary"
rem
bbdoc: GL Global glProgramParameteri(program_:Int,pname_:Int,value_:Int)
endrem
Global glProgramParameteri(program_:Int,pname_:Int,value_:Int)="__glewProgramParameteri"
rem
bbdoc: GL Const GL_ARB_get_texture_sub_image
endrem
Const GL_ARB_get_texture_sub_image=1
rem
bbdoc: GL Global glGetCompressedTextureSubImage(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,bufSize_:Int,pixels_:Byte Ptr)
endrem
Global glGetCompressedTextureSubImage(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,bufSize_:Int,pixels_:Byte Ptr)="__glewGetCompressedTextureSubImage"
rem
bbdoc: GL Global glGetTextureSubImage(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,type_:Int,bufSize_:Int,pixels_:Byte Ptr)
endrem
Global glGetTextureSubImage(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,type_:Int,bufSize_:Int,pixels_:Byte Ptr)="__glewGetTextureSubImage"
rem
bbdoc: GL Const GL_ARB_gpu_shader5
endrem
Const GL_ARB_gpu_shader5=1
rem
bbdoc: GL Const GL_GEOMETRY_SHADER_INVOCATIONS
endrem
Const GL_GEOMETRY_SHADER_INVOCATIONS=$887F
rem
bbdoc: GL Const GL_MAX_GEOMETRY_SHADER_INVOCATIONS
endrem
Const GL_MAX_GEOMETRY_SHADER_INVOCATIONS=$8E5A
rem
bbdoc: GL Const GL_MIN_FRAGMENT_INTERPOLATION_OFFSET
endrem
Const GL_MIN_FRAGMENT_INTERPOLATION_OFFSET=$8E5B
rem
bbdoc: GL Const GL_MAX_FRAGMENT_INTERPOLATION_OFFSET
endrem
Const GL_MAX_FRAGMENT_INTERPOLATION_OFFSET=$8E5C
rem
bbdoc: GL Const GL_FRAGMENT_INTERPOLATION_OFFSET_BITS
endrem
Const GL_FRAGMENT_INTERPOLATION_OFFSET_BITS=$8E5D
rem
bbdoc: GL Const GL_MAX_VERTEX_STREAMS
endrem
Const GL_MAX_VERTEX_STREAMS=$8E71
rem
bbdoc: GL Const GL_ARB_gpu_shader_fp64
endrem
Const GL_ARB_gpu_shader_fp64=1
rem
bbdoc: GL Const GL_DOUBLE_MAT2
endrem
Const GL_DOUBLE_MAT2=$8F46
rem
bbdoc: GL Const GL_DOUBLE_MAT3
endrem
Const GL_DOUBLE_MAT3=$8F47
rem
bbdoc: GL Const GL_DOUBLE_MAT4
endrem
Const GL_DOUBLE_MAT4=$8F48
rem
bbdoc: GL Const GL_DOUBLE_MAT2x3
endrem
Const GL_DOUBLE_MAT2x3=$8F49
rem
bbdoc: GL Const GL_DOUBLE_MAT2x4
endrem
Const GL_DOUBLE_MAT2x4=$8F4A
rem
bbdoc: GL Const GL_DOUBLE_MAT3x2
endrem
Const GL_DOUBLE_MAT3x2=$8F4B
rem
bbdoc: GL Const GL_DOUBLE_MAT3x4
endrem
Const GL_DOUBLE_MAT3x4=$8F4C
rem
bbdoc: GL Const GL_DOUBLE_MAT4x2
endrem
Const GL_DOUBLE_MAT4x2=$8F4D
rem
bbdoc: GL Const GL_DOUBLE_MAT4x3
endrem
Const GL_DOUBLE_MAT4x3=$8F4E
rem
bbdoc: GL Const GL_DOUBLE_VEC2
endrem
Const GL_DOUBLE_VEC2=$8FFC
rem
bbdoc: GL Const GL_DOUBLE_VEC3
endrem
Const GL_DOUBLE_VEC3=$8FFD
rem
bbdoc: GL Const GL_DOUBLE_VEC4
endrem
Const GL_DOUBLE_VEC4=$8FFE
rem
bbdoc: GL Global glGetUniformdv(program_:Int,location_:Int,params_:Double Ptr)
endrem
Global glGetUniformdv(program_:Int,location_:Int,params_:Double Ptr)="__glewGetUniformdv"
rem
bbdoc: GL Global glUniform1d(location_:Int,x_:Double)
endrem
Global glUniform1d(location_:Int,x_:Double)="__glewUniform1d"
rem
bbdoc: GL Global glUniform1dv(location_:Int,count_:Int,value_:Double Ptr)
endrem
Global glUniform1dv(location_:Int,count_:Int,value_:Double Ptr)="__glewUniform1dv"
rem
bbdoc: GL Global glUniform2d(location_:Int,x_:Double,y_:Double)
endrem
Global glUniform2d(location_:Int,x_:Double,y_:Double)="__glewUniform2d"
rem
bbdoc: GL Global glUniform2dv(location_:Int,count_:Int,value_:Double Ptr)
endrem
Global glUniform2dv(location_:Int,count_:Int,value_:Double Ptr)="__glewUniform2dv"
rem
bbdoc: GL Global glUniform3d(location_:Int,x_:Double,y_:Double,z_:Double)
endrem
Global glUniform3d(location_:Int,x_:Double,y_:Double,z_:Double)="__glewUniform3d"
rem
bbdoc: GL Global glUniform3dv(location_:Int,count_:Int,value_:Double Ptr)
endrem
Global glUniform3dv(location_:Int,count_:Int,value_:Double Ptr)="__glewUniform3dv"
rem
bbdoc: GL Global glUniform4d(location_:Int,x_:Double,y_:Double,z_:Double,w_:Double)
endrem
Global glUniform4d(location_:Int,x_:Double,y_:Double,z_:Double,w_:Double)="__glewUniform4d"
rem
bbdoc: GL Global glUniform4dv(location_:Int,count_:Int,value_:Double Ptr)
endrem
Global glUniform4dv(location_:Int,count_:Int,value_:Double Ptr)="__glewUniform4dv"
rem
bbdoc: GL Global glUniformMatrix2dv(location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)
endrem
Global glUniformMatrix2dv(location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)="__glewUniformMatrix2dv"
rem
bbdoc: GL Global glUniformMatrix2x3dv(location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)
endrem
Global glUniformMatrix2x3dv(location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)="__glewUniformMatrix2x3dv"
rem
bbdoc: GL Global glUniformMatrix2x4dv(location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)
endrem
Global glUniformMatrix2x4dv(location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)="__glewUniformMatrix2x4dv"
rem
bbdoc: GL Global glUniformMatrix3dv(location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)
endrem
Global glUniformMatrix3dv(location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)="__glewUniformMatrix3dv"
rem
bbdoc: GL Global glUniformMatrix3x2dv(location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)
endrem
Global glUniformMatrix3x2dv(location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)="__glewUniformMatrix3x2dv"
rem
bbdoc: GL Global glUniformMatrix3x4dv(location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)
endrem
Global glUniformMatrix3x4dv(location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)="__glewUniformMatrix3x4dv"
rem
bbdoc: GL Global glUniformMatrix4dv(location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)
endrem
Global glUniformMatrix4dv(location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)="__glewUniformMatrix4dv"
rem
bbdoc: GL Global glUniformMatrix4x2dv(location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)
endrem
Global glUniformMatrix4x2dv(location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)="__glewUniformMatrix4x2dv"
rem
bbdoc: GL Global glUniformMatrix4x3dv(location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)
endrem
Global glUniformMatrix4x3dv(location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)="__glewUniformMatrix4x3dv"
rem
bbdoc: GL Const GL_ARB_half_float_pixel
endrem
Const GL_ARB_half_float_pixel=1
rem
bbdoc: GL Const GL_HALF_FLOAT_ARB
endrem
Const GL_HALF_FLOAT_ARB=$140B
rem
bbdoc: GL Const GL_ARB_half_float_vertex
endrem
Const GL_ARB_half_float_vertex=1
rem
bbdoc: GL Const GL_HALF_FLOAT
endrem
Const GL_HALF_FLOAT=$140B
rem
bbdoc: GL Const GL_ARB_imaging
endrem
Const GL_ARB_imaging=1
rem
bbdoc: GL Const GL_CONSTANT_COLOR
endrem
Const GL_CONSTANT_COLOR=$8001
rem
bbdoc: GL Const GL_ONE_MINUS_CONSTANT_COLOR
endrem
Const GL_ONE_MINUS_CONSTANT_COLOR=$8002
rem
bbdoc: GL Const GL_CONSTANT_ALPHA
endrem
Const GL_CONSTANT_ALPHA=$8003
rem
bbdoc: GL Const GL_ONE_MINUS_CONSTANT_ALPHA
endrem
Const GL_ONE_MINUS_CONSTANT_ALPHA=$8004
rem
bbdoc: GL Const GL_BLEND_COLOR
endrem
Const GL_BLEND_COLOR=$8005
rem
bbdoc: GL Const GL_FUNC_ADD
endrem
Const GL_FUNC_ADD=$8006
rem
bbdoc: GL Const GL_MIN
endrem
Const GL_MIN=$8007
rem
bbdoc: GL Const GL_MAX
endrem
Const GL_MAX=$8008
rem
bbdoc: GL Const GL_BLEND_EQUATION
endrem
Const GL_BLEND_EQUATION=$8009
rem
bbdoc: GL Const GL_FUNC_SUBTRACT
endrem
Const GL_FUNC_SUBTRACT=$800A
rem
bbdoc: GL Const GL_FUNC_REVERSE_SUBTRACT
endrem
Const GL_FUNC_REVERSE_SUBTRACT=$800B
rem
bbdoc: GL Const GL_CONVOLUTION_1D
endrem
Const GL_CONVOLUTION_1D=$8010
rem
bbdoc: GL Const GL_CONVOLUTION_2D
endrem
Const GL_CONVOLUTION_2D=$8011
rem
bbdoc: GL Const GL_SEPARABLE_2D
endrem
Const GL_SEPARABLE_2D=$8012
rem
bbdoc: GL Const GL_CONVOLUTION_BORDER_MODE
endrem
Const GL_CONVOLUTION_BORDER_MODE=$8013
rem
bbdoc: GL Const GL_CONVOLUTION_FILTER_SCALE
endrem
Const GL_CONVOLUTION_FILTER_SCALE=$8014
rem
bbdoc: GL Const GL_CONVOLUTION_FILTER_BIAS
endrem
Const GL_CONVOLUTION_FILTER_BIAS=$8015
rem
bbdoc: GL Const GL_REDUCE
endrem
Const GL_REDUCE=$8016
rem
bbdoc: GL Const GL_CONVOLUTION_FORMAT
endrem
Const GL_CONVOLUTION_FORMAT=$8017
rem
bbdoc: GL Const GL_CONVOLUTION_WIDTH
endrem
Const GL_CONVOLUTION_WIDTH=$8018
rem
bbdoc: GL Const GL_CONVOLUTION_HEIGHT
endrem
Const GL_CONVOLUTION_HEIGHT=$8019
rem
bbdoc: GL Const GL_MAX_CONVOLUTION_WIDTH
endrem
Const GL_MAX_CONVOLUTION_WIDTH=$801A
rem
bbdoc: GL Const GL_MAX_CONVOLUTION_HEIGHT
endrem
Const GL_MAX_CONVOLUTION_HEIGHT=$801B
rem
bbdoc: GL Const GL_POST_CONVOLUTION_RED_SCALE
endrem
Const GL_POST_CONVOLUTION_RED_SCALE=$801C
rem
bbdoc: GL Const GL_POST_CONVOLUTION_GREEN_SCALE
endrem
Const GL_POST_CONVOLUTION_GREEN_SCALE=$801D
rem
bbdoc: GL Const GL_POST_CONVOLUTION_BLUE_SCALE
endrem
Const GL_POST_CONVOLUTION_BLUE_SCALE=$801E
rem
bbdoc: GL Const GL_POST_CONVOLUTION_ALPHA_SCALE
endrem
Const GL_POST_CONVOLUTION_ALPHA_SCALE=$801F
rem
bbdoc: GL Const GL_POST_CONVOLUTION_RED_BIAS
endrem
Const GL_POST_CONVOLUTION_RED_BIAS=$8020
rem
bbdoc: GL Const GL_POST_CONVOLUTION_GREEN_BIAS
endrem
Const GL_POST_CONVOLUTION_GREEN_BIAS=$8021
rem
bbdoc: GL Const GL_POST_CONVOLUTION_BLUE_BIAS
endrem
Const GL_POST_CONVOLUTION_BLUE_BIAS=$8022
rem
bbdoc: GL Const GL_POST_CONVOLUTION_ALPHA_BIAS
endrem
Const GL_POST_CONVOLUTION_ALPHA_BIAS=$8023
rem
bbdoc: GL Const GL_HISTOGRAM
endrem
Const GL_HISTOGRAM=$8024
rem
bbdoc: GL Const GL_PROXY_HISTOGRAM
endrem
Const GL_PROXY_HISTOGRAM=$8025
rem
bbdoc: GL Const GL_HISTOGRAM_WIDTH
endrem
Const GL_HISTOGRAM_WIDTH=$8026
rem
bbdoc: GL Const GL_HISTOGRAM_FORMAT
endrem
Const GL_HISTOGRAM_FORMAT=$8027
rem
bbdoc: GL Const GL_HISTOGRAM_RED_SIZE
endrem
Const GL_HISTOGRAM_RED_SIZE=$8028
rem
bbdoc: GL Const GL_HISTOGRAM_GREEN_SIZE
endrem
Const GL_HISTOGRAM_GREEN_SIZE=$8029
rem
bbdoc: GL Const GL_HISTOGRAM_BLUE_SIZE
endrem
Const GL_HISTOGRAM_BLUE_SIZE=$802A
rem
bbdoc: GL Const GL_HISTOGRAM_ALPHA_SIZE
endrem
Const GL_HISTOGRAM_ALPHA_SIZE=$802B
rem
bbdoc: GL Const GL_HISTOGRAM_LUMINANCE_SIZE
endrem
Const GL_HISTOGRAM_LUMINANCE_SIZE=$802C
rem
bbdoc: GL Const GL_HISTOGRAM_SINK
endrem
Const GL_HISTOGRAM_SINK=$802D
rem
bbdoc: GL Const GL_MINMAX
endrem
Const GL_MINMAX=$802E
rem
bbdoc: GL Const GL_MINMAX_FORMAT
endrem
Const GL_MINMAX_FORMAT=$802F
rem
bbdoc: GL Const GL_MINMAX_SINK
endrem
Const GL_MINMAX_SINK=$8030
rem
bbdoc: GL Const GL_TABLE_TOO_LARGE
endrem
Const GL_TABLE_TOO_LARGE=$8031
rem
bbdoc: GL Const GL_COLOR_MATRIX
endrem
Const GL_COLOR_MATRIX=$80B1
rem
bbdoc: GL Const GL_COLOR_MATRIX_STACK_DEPTH
endrem
Const GL_COLOR_MATRIX_STACK_DEPTH=$80B2
rem
bbdoc: GL Const GL_MAX_COLOR_MATRIX_STACK_DEPTH
endrem
Const GL_MAX_COLOR_MATRIX_STACK_DEPTH=$80B3
rem
bbdoc: GL Const GL_POST_COLOR_MATRIX_RED_SCALE
endrem
Const GL_POST_COLOR_MATRIX_RED_SCALE=$80B4
rem
bbdoc: GL Const GL_POST_COLOR_MATRIX_GREEN_SCALE
endrem
Const GL_POST_COLOR_MATRIX_GREEN_SCALE=$80B5
rem
bbdoc: GL Const GL_POST_COLOR_MATRIX_BLUE_SCALE
endrem
Const GL_POST_COLOR_MATRIX_BLUE_SCALE=$80B6
rem
bbdoc: GL Const GL_POST_COLOR_MATRIX_ALPHA_SCALE
endrem
Const GL_POST_COLOR_MATRIX_ALPHA_SCALE=$80B7
rem
bbdoc: GL Const GL_POST_COLOR_MATRIX_RED_BIAS
endrem
Const GL_POST_COLOR_MATRIX_RED_BIAS=$80B8
rem
bbdoc: GL Const GL_POST_COLOR_MATRIX_GREEN_BIAS
endrem
Const GL_POST_COLOR_MATRIX_GREEN_BIAS=$80B9
rem
bbdoc: GL Const GL_POST_COLOR_MATRIX_BLUE_BIAS
endrem
Const GL_POST_COLOR_MATRIX_BLUE_BIAS=$80BA
rem
bbdoc: GL Const GL_POST_COLOR_MATRIX_ALPHA_BIAS
endrem
Const GL_POST_COLOR_MATRIX_ALPHA_BIAS=$80BB
rem
bbdoc: GL Const GL_COLOR_TABLE
endrem
Const GL_COLOR_TABLE=$80D0
rem
bbdoc: GL Const GL_POST_CONVOLUTION_COLOR_TABLE
endrem
Const GL_POST_CONVOLUTION_COLOR_TABLE=$80D1
rem
bbdoc: GL Const GL_POST_COLOR_MATRIX_COLOR_TABLE
endrem
Const GL_POST_COLOR_MATRIX_COLOR_TABLE=$80D2
rem
bbdoc: GL Const GL_PROXY_COLOR_TABLE
endrem
Const GL_PROXY_COLOR_TABLE=$80D3
rem
bbdoc: GL Const GL_PROXY_POST_CONVOLUTION_COLOR_TABLE
endrem
Const GL_PROXY_POST_CONVOLUTION_COLOR_TABLE=$80D4
rem
bbdoc: GL Const GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE
endrem
Const GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE=$80D5
rem
bbdoc: GL Const GL_COLOR_TABLE_SCALE
endrem
Const GL_COLOR_TABLE_SCALE=$80D6
rem
bbdoc: GL Const GL_COLOR_TABLE_BIAS
endrem
Const GL_COLOR_TABLE_BIAS=$80D7
rem
bbdoc: GL Const GL_COLOR_TABLE_FORMAT
endrem
Const GL_COLOR_TABLE_FORMAT=$80D8
rem
bbdoc: GL Const GL_COLOR_TABLE_WIDTH
endrem
Const GL_COLOR_TABLE_WIDTH=$80D9
rem
bbdoc: GL Const GL_COLOR_TABLE_RED_SIZE
endrem
Const GL_COLOR_TABLE_RED_SIZE=$80DA
rem
bbdoc: GL Const GL_COLOR_TABLE_GREEN_SIZE
endrem
Const GL_COLOR_TABLE_GREEN_SIZE=$80DB
rem
bbdoc: GL Const GL_COLOR_TABLE_BLUE_SIZE
endrem
Const GL_COLOR_TABLE_BLUE_SIZE=$80DC
rem
bbdoc: GL Const GL_COLOR_TABLE_ALPHA_SIZE
endrem
Const GL_COLOR_TABLE_ALPHA_SIZE=$80DD
rem
bbdoc: GL Const GL_COLOR_TABLE_LUMINANCE_SIZE
endrem
Const GL_COLOR_TABLE_LUMINANCE_SIZE=$80DE
rem
bbdoc: GL Const GL_COLOR_TABLE_INTENSITY_SIZE
endrem
Const GL_COLOR_TABLE_INTENSITY_SIZE=$80DF
rem
bbdoc: GL Const GL_IGNORE_BORDER
endrem
Const GL_IGNORE_BORDER=$8150
rem
bbdoc: GL Const GL_CONSTANT_BORDER
endrem
Const GL_CONSTANT_BORDER=$8151
rem
bbdoc: GL Const GL_WRAP_BORDER
endrem
Const GL_WRAP_BORDER=$8152
rem
bbdoc: GL Const GL_REPLICATE_BORDER
endrem
Const GL_REPLICATE_BORDER=$8153
rem
bbdoc: GL Const GL_CONVOLUTION_BORDER_COLOR
endrem
Const GL_CONVOLUTION_BORDER_COLOR=$8154
rem
bbdoc: GL Global glColorSubTable(target_:Int,start_:Int,count_:Int,format_:Int,type_:Int,data_:Byte Ptr)
endrem
Global glColorSubTable(target_:Int,start_:Int,count_:Int,format_:Int,type_:Int,data_:Byte Ptr)="__glewColorSubTable"
rem
bbdoc: GL Global glColorTable(target_:Int,internalformat_:Int,width_:Int,format_:Int,type_:Int,table_:Byte Ptr)
endrem
Global glColorTable(target_:Int,internalformat_:Int,width_:Int,format_:Int,type_:Int,table_:Byte Ptr)="__glewColorTable"
rem
bbdoc: GL Global glColorTableParameterfv(target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glColorTableParameterfv(target_:Int,pname_:Int,params_:Float Ptr)="__glewColorTableParameterfv"
rem
bbdoc: GL Global glColorTableParameteriv(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glColorTableParameteriv(target_:Int,pname_:Int,params_:Int Ptr)="__glewColorTableParameteriv"
rem
bbdoc: GL Global glConvolutionFilter1D(target_:Int,internalformat_:Int,width_:Int,format_:Int,type_:Int,image_:Byte Ptr)
endrem
Global glConvolutionFilter1D(target_:Int,internalformat_:Int,width_:Int,format_:Int,type_:Int,image_:Byte Ptr)="__glewConvolutionFilter1D"
rem
bbdoc: GL Global glConvolutionFilter2D(target_:Int,internalformat_:Int,width_:Int,height_:Int,format_:Int,type_:Int,image_:Byte Ptr)
endrem
Global glConvolutionFilter2D(target_:Int,internalformat_:Int,width_:Int,height_:Int,format_:Int,type_:Int,image_:Byte Ptr)="__glewConvolutionFilter2D"
rem
bbdoc: GL Global glConvolutionParameterf(target_:Int,pname_:Int,params_:Float)
endrem
Global glConvolutionParameterf(target_:Int,pname_:Int,params_:Float)="__glewConvolutionParameterf"
rem
bbdoc: GL Global glConvolutionParameterfv(target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glConvolutionParameterfv(target_:Int,pname_:Int,params_:Float Ptr)="__glewConvolutionParameterfv"
rem
bbdoc: GL Global glConvolutionParameteri(target_:Int,pname_:Int,params_:Int)
endrem
Global glConvolutionParameteri(target_:Int,pname_:Int,params_:Int)="__glewConvolutionParameteri"
rem
bbdoc: GL Global glConvolutionParameteriv(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glConvolutionParameteriv(target_:Int,pname_:Int,params_:Int Ptr)="__glewConvolutionParameteriv"
rem
bbdoc: GL Global glCopyColorSubTable(target_:Int,start_:Int,x_:Int,y_:Int,width_:Int)
endrem
Global glCopyColorSubTable(target_:Int,start_:Int,x_:Int,y_:Int,width_:Int)="__glewCopyColorSubTable"
rem
bbdoc: GL Global glCopyColorTable(target_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int)
endrem
Global glCopyColorTable(target_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int)="__glewCopyColorTable"
rem
bbdoc: GL Global glCopyConvolutionFilter1D(target_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int)
endrem
Global glCopyConvolutionFilter1D(target_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int)="__glewCopyConvolutionFilter1D"
rem
bbdoc: GL Global glCopyConvolutionFilter2D(target_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int,height_:Int)
endrem
Global glCopyConvolutionFilter2D(target_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int,height_:Int)="__glewCopyConvolutionFilter2D"
rem
bbdoc: GL Global glGetColorTable(target_:Int,format_:Int,type_:Int,table_:Byte Ptr)
endrem
Global glGetColorTable(target_:Int,format_:Int,type_:Int,table_:Byte Ptr)="__glewGetColorTable"
rem
bbdoc: GL Global glGetColorTableParameterfv(target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetColorTableParameterfv(target_:Int,pname_:Int,params_:Float Ptr)="__glewGetColorTableParameterfv"
rem
bbdoc: GL Global glGetColorTableParameteriv(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetColorTableParameteriv(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetColorTableParameteriv"
rem
bbdoc: GL Global glGetConvolutionFilter(target_:Int,format_:Int,type_:Int,image_:Byte Ptr)
endrem
Global glGetConvolutionFilter(target_:Int,format_:Int,type_:Int,image_:Byte Ptr)="__glewGetConvolutionFilter"
rem
bbdoc: GL Global glGetConvolutionParameterfv(target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetConvolutionParameterfv(target_:Int,pname_:Int,params_:Float Ptr)="__glewGetConvolutionParameterfv"
rem
bbdoc: GL Global glGetConvolutionParameteriv(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetConvolutionParameteriv(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetConvolutionParameteriv"
rem
bbdoc: GL Global glGetHistogram(target_:Int,reset_:Byte,format_:Int,type_:Int,values_:Byte Ptr)
endrem
Global glGetHistogram(target_:Int,reset_:Byte,format_:Int,type_:Int,values_:Byte Ptr)="__glewGetHistogram"
rem
bbdoc: GL Global glGetHistogramParameterfv(target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetHistogramParameterfv(target_:Int,pname_:Int,params_:Float Ptr)="__glewGetHistogramParameterfv"
rem
bbdoc: GL Global glGetHistogramParameteriv(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetHistogramParameteriv(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetHistogramParameteriv"
rem
bbdoc: GL Global glGetMinmax(target_:Int,reset_:Byte,format_:Int,types_:Int,values_:Byte Ptr)
endrem
Global glGetMinmax(target_:Int,reset_:Byte,format_:Int,types_:Int,values_:Byte Ptr)="__glewGetMinmax"
rem
bbdoc: GL Global glGetMinmaxParameterfv(target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetMinmaxParameterfv(target_:Int,pname_:Int,params_:Float Ptr)="__glewGetMinmaxParameterfv"
rem
bbdoc: GL Global glGetMinmaxParameteriv(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetMinmaxParameteriv(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetMinmaxParameteriv"
rem
bbdoc: GL Global glGetSeparableFilter(target_:Int,format_:Int,type_:Int,row_:Byte Ptr,column_:Byte Ptr,span_:Byte Ptr)
endrem
Global glGetSeparableFilter(target_:Int,format_:Int,type_:Int,row_:Byte Ptr,column_:Byte Ptr,span_:Byte Ptr)="__glewGetSeparableFilter"
rem
bbdoc: GL Global glHistogram(target_:Int,width_:Int,internalformat_:Int,sink_:Byte)
endrem
Global glHistogram(target_:Int,width_:Int,internalformat_:Int,sink_:Byte)="__glewHistogram"
rem
bbdoc: GL Global glMinmax(target_:Int,internalformat_:Int,sink_:Byte)
endrem
Global glMinmax(target_:Int,internalformat_:Int,sink_:Byte)="__glewMinmax"
rem
bbdoc: GL Global glResetHistogram(target_:Int)
endrem
Global glResetHistogram(target_:Int)="__glewResetHistogram"
rem
bbdoc: GL Global glResetMinmax(target_:Int)
endrem
Global glResetMinmax(target_:Int)="__glewResetMinmax"
rem
bbdoc: GL Global glSeparableFilter2D(target_:Int,internalformat_:Int,width_:Int,height_:Int,format_:Int,type_:Int,row_:Byte Ptr,column_:Byte Ptr)
endrem
Global glSeparableFilter2D(target_:Int,internalformat_:Int,width_:Int,height_:Int,format_:Int,type_:Int,row_:Byte Ptr,column_:Byte Ptr)="__glewSeparableFilter2D"
rem
bbdoc: GL Const GL_ARB_indirect_parameters
endrem
Const GL_ARB_indirect_parameters=1
rem
bbdoc: GL Const GL_PARAMETER_BUFFER_ARB
endrem
Const GL_PARAMETER_BUFFER_ARB=$80EE
rem
bbdoc: GL Const GL_PARAMETER_BUFFER_BINDING_ARB
endrem
Const GL_PARAMETER_BUFFER_BINDING_ARB=$80EF
rem
bbdoc: GL Global glMultiDrawArraysIndirectCountARB(mode_:Int,indirect_:Byte Ptr,drawcount_:Int,maxdrawcount_:Int,stride_:Int)
endrem
Global glMultiDrawArraysIndirectCountARB(mode_:Int,indirect_:Byte Ptr,drawcount_:Int,maxdrawcount_:Int,stride_:Int)="__glewMultiDrawArraysIndirectCountARB"
rem
bbdoc: GL Global glMultiDrawElementsIndirectCountARB(mode_:Int,type_:Int,indirect_:Byte Ptr,drawcount_:Int,maxdrawcount_:Int,stride_:Int)
endrem
Global glMultiDrawElementsIndirectCountARB(mode_:Int,type_:Int,indirect_:Byte Ptr,drawcount_:Int,maxdrawcount_:Int,stride_:Int)="__glewMultiDrawElementsIndirectCountARB"
rem
bbdoc: GL Const GL_ARB_instanced_arrays
endrem
Const GL_ARB_instanced_arrays=1
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB
endrem
Const GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB=$88FE
rem
bbdoc: GL Global glDrawArraysInstancedARB(mode_:Int,first_:Int,count_:Int,primcount_:Int)
endrem
Global glDrawArraysInstancedARB(mode_:Int,first_:Int,count_:Int,primcount_:Int)="__glewDrawArraysInstancedARB"
rem
bbdoc: GL Global glDrawElementsInstancedARB(mode_:Int,count_:Int,type_:Int,indices_:Byte Ptr,primcount_:Int)
endrem
Global glDrawElementsInstancedARB(mode_:Int,count_:Int,type_:Int,indices_:Byte Ptr,primcount_:Int)="__glewDrawElementsInstancedARB"
rem
bbdoc: GL Global glVertexAttribDivisorARB(index_:Int,divisor_:Int)
endrem
Global glVertexAttribDivisorARB(index_:Int,divisor_:Int)="__glewVertexAttribDivisorARB"
rem
bbdoc: GL Const GL_ARB_internalformat_query
endrem
Const GL_ARB_internalformat_query=1
rem
bbdoc: GL Const GL_NUM_SAMPLE_COUNTS
endrem
Const GL_NUM_SAMPLE_COUNTS=$9380
rem
bbdoc: GL Global glGetInternalformativ(target_:Int,internalformat_:Int,pname_:Int,bufSize_:Int,params_:Int Ptr)
endrem
Global glGetInternalformativ(target_:Int,internalformat_:Int,pname_:Int,bufSize_:Int,params_:Int Ptr)="__glewGetInternalformativ"
rem
bbdoc: GL Const GL_ARB_internalformat_query2
endrem
Const GL_ARB_internalformat_query2=1
rem
bbdoc: GL Const GL_INTERNALFORMAT_SUPPORTED
endrem
Const GL_INTERNALFORMAT_SUPPORTED=$826F
rem
bbdoc: GL Const GL_INTERNALFORMAT_PREFERRED
endrem
Const GL_INTERNALFORMAT_PREFERRED=$8270
rem
bbdoc: GL Const GL_INTERNALFORMAT_RED_SIZE
endrem
Const GL_INTERNALFORMAT_RED_SIZE=$8271
rem
bbdoc: GL Const GL_INTERNALFORMAT_GREEN_SIZE
endrem
Const GL_INTERNALFORMAT_GREEN_SIZE=$8272
rem
bbdoc: GL Const GL_INTERNALFORMAT_BLUE_SIZE
endrem
Const GL_INTERNALFORMAT_BLUE_SIZE=$8273
rem
bbdoc: GL Const GL_INTERNALFORMAT_ALPHA_SIZE
endrem
Const GL_INTERNALFORMAT_ALPHA_SIZE=$8274
rem
bbdoc: GL Const GL_INTERNALFORMAT_DEPTH_SIZE
endrem
Const GL_INTERNALFORMAT_DEPTH_SIZE=$8275
rem
bbdoc: GL Const GL_INTERNALFORMAT_STENCIL_SIZE
endrem
Const GL_INTERNALFORMAT_STENCIL_SIZE=$8276
rem
bbdoc: GL Const GL_INTERNALFORMAT_SHARED_SIZE
endrem
Const GL_INTERNALFORMAT_SHARED_SIZE=$8277
rem
bbdoc: GL Const GL_INTERNALFORMAT_RED_TYPE
endrem
Const GL_INTERNALFORMAT_RED_TYPE=$8278
rem
bbdoc: GL Const GL_INTERNALFORMAT_GREEN_TYPE
endrem
Const GL_INTERNALFORMAT_GREEN_TYPE=$8279
rem
bbdoc: GL Const GL_INTERNALFORMAT_BLUE_TYPE
endrem
Const GL_INTERNALFORMAT_BLUE_TYPE=$827A
rem
bbdoc: GL Const GL_INTERNALFORMAT_ALPHA_TYPE
endrem
Const GL_INTERNALFORMAT_ALPHA_TYPE=$827B
rem
bbdoc: GL Const GL_INTERNALFORMAT_DEPTH_TYPE
endrem
Const GL_INTERNALFORMAT_DEPTH_TYPE=$827C
rem
bbdoc: GL Const GL_INTERNALFORMAT_STENCIL_TYPE
endrem
Const GL_INTERNALFORMAT_STENCIL_TYPE=$827D
rem
bbdoc: GL Const GL_MAX_WIDTH
endrem
Const GL_MAX_WIDTH=$827E
rem
bbdoc: GL Const GL_MAX_HEIGHT
endrem
Const GL_MAX_HEIGHT=$827F
rem
bbdoc: GL Const GL_MAX_DEPTH
endrem
Const GL_MAX_DEPTH=$8280
rem
bbdoc: GL Const GL_MAX_LAYERS
endrem
Const GL_MAX_LAYERS=$8281
rem
bbdoc: GL Const GL_MAX_COMBINED_DIMENSIONS
endrem
Const GL_MAX_COMBINED_DIMENSIONS=$8282
rem
bbdoc: GL Const GL_COLOR_COMPONENTS
endrem
Const GL_COLOR_COMPONENTS=$8283
rem
bbdoc: GL Const GL_DEPTH_COMPONENTS
endrem
Const GL_DEPTH_COMPONENTS=$8284
rem
bbdoc: GL Const GL_STENCIL_COMPONENTS
endrem
Const GL_STENCIL_COMPONENTS=$8285
rem
bbdoc: GL Const GL_COLOR_RENDERABLE
endrem
Const GL_COLOR_RENDERABLE=$8286
rem
bbdoc: GL Const GL_DEPTH_RENDERABLE
endrem
Const GL_DEPTH_RENDERABLE=$8287
rem
bbdoc: GL Const GL_STENCIL_RENDERABLE
endrem
Const GL_STENCIL_RENDERABLE=$8288
rem
bbdoc: GL Const GL_FRAMEBUFFER_RENDERABLE
endrem
Const GL_FRAMEBUFFER_RENDERABLE=$8289
rem
bbdoc: GL Const GL_FRAMEBUFFER_RENDERABLE_LAYERED
endrem
Const GL_FRAMEBUFFER_RENDERABLE_LAYERED=$828A
rem
bbdoc: GL Const GL_FRAMEBUFFER_BLEND
endrem
Const GL_FRAMEBUFFER_BLEND=$828B
rem
bbdoc: GL Const GL_READ_PIXELS
endrem
Const GL_READ_PIXELS=$828C
rem
bbdoc: GL Const GL_READ_PIXELS_FORMAT
endrem
Const GL_READ_PIXELS_FORMAT=$828D
rem
bbdoc: GL Const GL_READ_PIXELS_TYPE
endrem
Const GL_READ_PIXELS_TYPE=$828E
rem
bbdoc: GL Const GL_TEXTURE_IMAGE_FORMAT
endrem
Const GL_TEXTURE_IMAGE_FORMAT=$828F
rem
bbdoc: GL Const GL_TEXTURE_IMAGE_TYPE
endrem
Const GL_TEXTURE_IMAGE_TYPE=$8290
rem
bbdoc: GL Const GL_GET_TEXTURE_IMAGE_FORMAT
endrem
Const GL_GET_TEXTURE_IMAGE_FORMAT=$8291
rem
bbdoc: GL Const GL_GET_TEXTURE_IMAGE_TYPE
endrem
Const GL_GET_TEXTURE_IMAGE_TYPE=$8292
rem
bbdoc: GL Const GL_MIPMAP
endrem
Const GL_MIPMAP=$8293
rem
bbdoc: GL Const GL_MANUAL_GENERATE_MIPMAP
endrem
Const GL_MANUAL_GENERATE_MIPMAP=$8294
rem
bbdoc: GL Const GL_AUTO_GENERATE_MIPMAP
endrem
Const GL_AUTO_GENERATE_MIPMAP=$8295
rem
bbdoc: GL Const GL_COLOR_ENCODING
endrem
Const GL_COLOR_ENCODING=$8296
rem
bbdoc: GL Const GL_SRGB_READ
endrem
Const GL_SRGB_READ=$8297
rem
bbdoc: GL Const GL_SRGB_WRITE
endrem
Const GL_SRGB_WRITE=$8298
rem
bbdoc: GL Const GL_SRGB_DECODE_ARB
endrem
Const GL_SRGB_DECODE_ARB=$8299
rem
bbdoc: GL Const GL_FILTER
endrem
Const GL_FILTER=$829A
rem
bbdoc: GL Const GL_VERTEX_TEXTURE
endrem
Const GL_VERTEX_TEXTURE=$829B
rem
bbdoc: GL Const GL_TESS_CONTROL_TEXTURE
endrem
Const GL_TESS_CONTROL_TEXTURE=$829C
rem
bbdoc: GL Const GL_TESS_EVALUATION_TEXTURE
endrem
Const GL_TESS_EVALUATION_TEXTURE=$829D
rem
bbdoc: GL Const GL_GEOMETRY_TEXTURE
endrem
Const GL_GEOMETRY_TEXTURE=$829E
rem
bbdoc: GL Const GL_FRAGMENT_TEXTURE
endrem
Const GL_FRAGMENT_TEXTURE=$829F
rem
bbdoc: GL Const GL_COMPUTE_TEXTURE
endrem
Const GL_COMPUTE_TEXTURE=$82A0
rem
bbdoc: GL Const GL_TEXTURE_SHADOW
endrem
Const GL_TEXTURE_SHADOW=$82A1
rem
bbdoc: GL Const GL_TEXTURE_GATHER
endrem
Const GL_TEXTURE_GATHER=$82A2
rem
bbdoc: GL Const GL_TEXTURE_GATHER_SHADOW
endrem
Const GL_TEXTURE_GATHER_SHADOW=$82A3
rem
bbdoc: GL Const GL_SHADER_IMAGE_LOAD
endrem
Const GL_SHADER_IMAGE_LOAD=$82A4
rem
bbdoc: GL Const GL_SHADER_IMAGE_STORE
endrem
Const GL_SHADER_IMAGE_STORE=$82A5
rem
bbdoc: GL Const GL_SHADER_IMAGE_ATOMIC
endrem
Const GL_SHADER_IMAGE_ATOMIC=$82A6
rem
bbdoc: GL Const GL_IMAGE_TEXEL_SIZE
endrem
Const GL_IMAGE_TEXEL_SIZE=$82A7
rem
bbdoc: GL Const GL_IMAGE_COMPATIBILITY_CLASS
endrem
Const GL_IMAGE_COMPATIBILITY_CLASS=$82A8
rem
bbdoc: GL Const GL_IMAGE_PIXEL_FORMAT
endrem
Const GL_IMAGE_PIXEL_FORMAT=$82A9
rem
bbdoc: GL Const GL_IMAGE_PIXEL_TYPE
endrem
Const GL_IMAGE_PIXEL_TYPE=$82AA
rem
bbdoc: GL Const GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST
endrem
Const GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST=$82AC
rem
bbdoc: GL Const GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST
endrem
Const GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST=$82AD
rem
bbdoc: GL Const GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE
endrem
Const GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE=$82AE
rem
bbdoc: GL Const GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE
endrem
Const GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE=$82AF
rem
bbdoc: GL Const GL_TEXTURE_COMPRESSED_BLOCK_WIDTH
endrem
Const GL_TEXTURE_COMPRESSED_BLOCK_WIDTH=$82B1
rem
bbdoc: GL Const GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT
endrem
Const GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT=$82B2
rem
bbdoc: GL Const GL_TEXTURE_COMPRESSED_BLOCK_SIZE
endrem
Const GL_TEXTURE_COMPRESSED_BLOCK_SIZE=$82B3
rem
bbdoc: GL Const GL_CLEAR_BUFFER
endrem
Const GL_CLEAR_BUFFER=$82B4
rem
bbdoc: GL Const GL_TEXTURE_VIEW
endrem
Const GL_TEXTURE_VIEW=$82B5
rem
bbdoc: GL Const GL_VIEW_COMPATIBILITY_CLASS
endrem
Const GL_VIEW_COMPATIBILITY_CLASS=$82B6
rem
bbdoc: GL Const GL_FULL_SUPPORT
endrem
Const GL_FULL_SUPPORT=$82B7
rem
bbdoc: GL Const GL_CAVEAT_SUPPORT
endrem
Const GL_CAVEAT_SUPPORT=$82B8
rem
bbdoc: GL Const GL_IMAGE_CLASS_4_X_32
endrem
Const GL_IMAGE_CLASS_4_X_32=$82B9
rem
bbdoc: GL Const GL_IMAGE_CLASS_2_X_32
endrem
Const GL_IMAGE_CLASS_2_X_32=$82BA
rem
bbdoc: GL Const GL_IMAGE_CLASS_1_X_32
endrem
Const GL_IMAGE_CLASS_1_X_32=$82BB
rem
bbdoc: GL Const GL_IMAGE_CLASS_4_X_16
endrem
Const GL_IMAGE_CLASS_4_X_16=$82BC
rem
bbdoc: GL Const GL_IMAGE_CLASS_2_X_16
endrem
Const GL_IMAGE_CLASS_2_X_16=$82BD
rem
bbdoc: GL Const GL_IMAGE_CLASS_1_X_16
endrem
Const GL_IMAGE_CLASS_1_X_16=$82BE
rem
bbdoc: GL Const GL_IMAGE_CLASS_4_X_8
endrem
Const GL_IMAGE_CLASS_4_X_8=$82BF
rem
bbdoc: GL Const GL_IMAGE_CLASS_2_X_8
endrem
Const GL_IMAGE_CLASS_2_X_8=$82C0
rem
bbdoc: GL Const GL_IMAGE_CLASS_1_X_8
endrem
Const GL_IMAGE_CLASS_1_X_8=$82C1
rem
bbdoc: GL Const GL_IMAGE_CLASS_11_11_10
endrem
Const GL_IMAGE_CLASS_11_11_10=$82C2
rem
bbdoc: GL Const GL_IMAGE_CLASS_10_10_10_2
endrem
Const GL_IMAGE_CLASS_10_10_10_2=$82C3
rem
bbdoc: GL Const GL_VIEW_CLASS_128_BITS
endrem
Const GL_VIEW_CLASS_128_BITS=$82C4
rem
bbdoc: GL Const GL_VIEW_CLASS_96_BITS
endrem
Const GL_VIEW_CLASS_96_BITS=$82C5
rem
bbdoc: GL Const GL_VIEW_CLASS_64_BITS
endrem
Const GL_VIEW_CLASS_64_BITS=$82C6
rem
bbdoc: GL Const GL_VIEW_CLASS_48_BITS
endrem
Const GL_VIEW_CLASS_48_BITS=$82C7
rem
bbdoc: GL Const GL_VIEW_CLASS_32_BITS
endrem
Const GL_VIEW_CLASS_32_BITS=$82C8
rem
bbdoc: GL Const GL_VIEW_CLASS_24_BITS
endrem
Const GL_VIEW_CLASS_24_BITS=$82C9
rem
bbdoc: GL Const GL_VIEW_CLASS_16_BITS
endrem
Const GL_VIEW_CLASS_16_BITS=$82CA
rem
bbdoc: GL Const GL_VIEW_CLASS_8_BITS
endrem
Const GL_VIEW_CLASS_8_BITS=$82CB
rem
bbdoc: GL Const GL_VIEW_CLASS_S3TC_DXT1_RGB
endrem
Const GL_VIEW_CLASS_S3TC_DXT1_RGB=$82CC
rem
bbdoc: GL Const GL_VIEW_CLASS_S3TC_DXT1_RGBA
endrem
Const GL_VIEW_CLASS_S3TC_DXT1_RGBA=$82CD
rem
bbdoc: GL Const GL_VIEW_CLASS_S3TC_DXT3_RGBA
endrem
Const GL_VIEW_CLASS_S3TC_DXT3_RGBA=$82CE
rem
bbdoc: GL Const GL_VIEW_CLASS_S3TC_DXT5_RGBA
endrem
Const GL_VIEW_CLASS_S3TC_DXT5_RGBA=$82CF
rem
bbdoc: GL Const GL_VIEW_CLASS_RGTC1_RED
endrem
Const GL_VIEW_CLASS_RGTC1_RED=$82D0
rem
bbdoc: GL Const GL_VIEW_CLASS_RGTC2_RG
endrem
Const GL_VIEW_CLASS_RGTC2_RG=$82D1
rem
bbdoc: GL Const GL_VIEW_CLASS_BPTC_UNORM
endrem
Const GL_VIEW_CLASS_BPTC_UNORM=$82D2
rem
bbdoc: GL Const GL_VIEW_CLASS_BPTC_FLOAT
endrem
Const GL_VIEW_CLASS_BPTC_FLOAT=$82D3
rem
bbdoc: GL Global glGetInternalformati64v(target_:Int,internalformat_:Int,pname_:Int,bufSize_:Int,params_:Long Ptr)
endrem
Global glGetInternalformati64v(target_:Int,internalformat_:Int,pname_:Int,bufSize_:Int,params_:Long Ptr)="__glewGetInternalformati64v"
rem
bbdoc: GL Const GL_ARB_invalidate_subdata
endrem
Const GL_ARB_invalidate_subdata=1
rem
bbdoc: GL Global glInvalidateBufferData(buffer_:Int)
endrem
Global glInvalidateBufferData(buffer_:Int)="__glewInvalidateBufferData"
rem
bbdoc: GL Global glInvalidateBufferSubData(buffer_:Int,offset_:Int,length_:Int)
endrem
Global glInvalidateBufferSubData(buffer_:Int,offset_:Int,length_:Int)="__glewInvalidateBufferSubData"
rem
bbdoc: GL Global glInvalidateFramebuffer(target_:Int,numAttachments_:Int,attachments_:Int Ptr)
endrem
Global glInvalidateFramebuffer(target_:Int,numAttachments_:Int,attachments_:Int Ptr)="__glewInvalidateFramebuffer"
rem
bbdoc: GL Global glInvalidateSubFramebuffer(target_:Int,numAttachments_:Int,attachments_:Int Ptr,x_:Int,y_:Int,width_:Int,height_:Int)
endrem
Global glInvalidateSubFramebuffer(target_:Int,numAttachments_:Int,attachments_:Int Ptr,x_:Int,y_:Int,width_:Int,height_:Int)="__glewInvalidateSubFramebuffer"
rem
bbdoc: GL Global glInvalidateTexImage(texture_:Int,level_:Int)
endrem
Global glInvalidateTexImage(texture_:Int,level_:Int)="__glewInvalidateTexImage"
rem
bbdoc: GL Global glInvalidateTexSubImage(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int)
endrem
Global glInvalidateTexSubImage(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int)="__glewInvalidateTexSubImage"
rem
bbdoc: GL Const GL_ARB_map_buffer_alignment
endrem
Const GL_ARB_map_buffer_alignment=1
rem
bbdoc: GL Const GL_MIN_MAP_BUFFER_ALIGNMENT
endrem
Const GL_MIN_MAP_BUFFER_ALIGNMENT=$90BC
rem
bbdoc: GL Const GL_ARB_map_buffer_range
endrem
Const GL_ARB_map_buffer_range=1
rem
bbdoc: GL Const GL_MAP_INVALIDATE_RANGE_BIT
endrem
Const GL_MAP_INVALIDATE_RANGE_BIT=$0004
rem
bbdoc: GL Const GL_MAP_INVALIDATE_BUFFER_BIT
endrem
Const GL_MAP_INVALIDATE_BUFFER_BIT=$0008
rem
bbdoc: GL Const GL_MAP_FLUSH_EXPLICIT_BIT
endrem
Const GL_MAP_FLUSH_EXPLICIT_BIT=$0010
rem
bbdoc: GL Const GL_MAP_UNSYNCHRONIZED_BIT
endrem
Const GL_MAP_UNSYNCHRONIZED_BIT=$0020
rem
bbdoc: GL Global glFlushMappedBufferRange(target_:Int,offset_:Int,length_:Int)
endrem
Global glFlushMappedBufferRange(target_:Int,offset_:Int,length_:Int)="__glewFlushMappedBufferRange"
rem
bbdoc: GL Global glMapBufferRange:Byte Ptr(target_:Int,offset_:Int,length_:Int,access_:Int)
endrem
Global glMapBufferRange:Byte Ptr(target_:Int,offset_:Int,length_:Int,access_:Int)="__glewMapBufferRange"
rem
bbdoc: GL Const GL_ARB_matrix_palette
endrem
Const GL_ARB_matrix_palette=1
rem
bbdoc: GL Const GL_MATRIX_PALETTE_ARB
endrem
Const GL_MATRIX_PALETTE_ARB=$8840
rem
bbdoc: GL Const GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB
endrem
Const GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB=$8841
rem
bbdoc: GL Const GL_MAX_PALETTE_MATRICES_ARB
endrem
Const GL_MAX_PALETTE_MATRICES_ARB=$8842
rem
bbdoc: GL Const GL_CURRENT_PALETTE_MATRIX_ARB
endrem
Const GL_CURRENT_PALETTE_MATRIX_ARB=$8843
rem
bbdoc: GL Const GL_MATRIX_INDEX_ARRAY_ARB
endrem
Const GL_MATRIX_INDEX_ARRAY_ARB=$8844
rem
bbdoc: GL Const GL_CURRENT_MATRIX_INDEX_ARB
endrem
Const GL_CURRENT_MATRIX_INDEX_ARB=$8845
rem
bbdoc: GL Const GL_MATRIX_INDEX_ARRAY_SIZE_ARB
endrem
Const GL_MATRIX_INDEX_ARRAY_SIZE_ARB=$8846
rem
bbdoc: GL Const GL_MATRIX_INDEX_ARRAY_TYPE_ARB
endrem
Const GL_MATRIX_INDEX_ARRAY_TYPE_ARB=$8847
rem
bbdoc: GL Const GL_MATRIX_INDEX_ARRAY_STRIDE_ARB
endrem
Const GL_MATRIX_INDEX_ARRAY_STRIDE_ARB=$8848
rem
bbdoc: GL Const GL_MATRIX_INDEX_ARRAY_POINTER_ARB
endrem
Const GL_MATRIX_INDEX_ARRAY_POINTER_ARB=$8849
rem
bbdoc: GL Global glCurrentPaletteMatrixARB(index_:Int)
endrem
Global glCurrentPaletteMatrixARB(index_:Int)="__glewCurrentPaletteMatrixARB"
rem
bbdoc: GL Global glMatrixIndexPointerARB(size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)
endrem
Global glMatrixIndexPointerARB(size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)="__glewMatrixIndexPointerARB"
rem
bbdoc: GL Global glMatrixIndexubvARB(size_:Int,indices_:Byte Ptr)
endrem
Global glMatrixIndexubvARB(size_:Int,indices_:Byte Ptr)="__glewMatrixIndexubvARB"
rem
bbdoc: GL Global glMatrixIndexuivARB(size_:Int,indices_:Int Ptr)
endrem
Global glMatrixIndexuivARB(size_:Int,indices_:Int Ptr)="__glewMatrixIndexuivARB"
rem
bbdoc: GL Global glMatrixIndexusvARB(size_:Int,indices_:Short Ptr)
endrem
Global glMatrixIndexusvARB(size_:Int,indices_:Short Ptr)="__glewMatrixIndexusvARB"
rem
bbdoc: GL Const GL_ARB_multi_bind
endrem
Const GL_ARB_multi_bind=1
rem
bbdoc: GL Global glBindBuffersBase(target_:Int,first_:Int,count_:Int,buffers_:Int Ptr)
endrem
Global glBindBuffersBase(target_:Int,first_:Int,count_:Int,buffers_:Int Ptr)="__glewBindBuffersBase"
rem
bbdoc: GL Global glBindBuffersRange(target_:Int,first_:Int,count_:Int,buffers_:Int Ptr,offsets_:Int Ptr,sizes_:Int Ptr)
endrem
Global glBindBuffersRange(target_:Int,first_:Int,count_:Int,buffers_:Int Ptr,offsets_:Int Ptr,sizes_:Int Ptr)="__glewBindBuffersRange"
rem
bbdoc: GL Global glBindImageTextures(first_:Int,count_:Int,textures_:Int Ptr)
endrem
Global glBindImageTextures(first_:Int,count_:Int,textures_:Int Ptr)="__glewBindImageTextures"
rem
bbdoc: GL Global glBindSamplers(first_:Int,count_:Int,samplers_:Int Ptr)
endrem
Global glBindSamplers(first_:Int,count_:Int,samplers_:Int Ptr)="__glewBindSamplers"
rem
bbdoc: GL Global glBindTextures(first_:Int,count_:Int,textures_:Int Ptr)
endrem
Global glBindTextures(first_:Int,count_:Int,textures_:Int Ptr)="__glewBindTextures"
rem
bbdoc: GL Global glBindVertexBuffers(first_:Int,count_:Int,buffers_:Int Ptr,offsets_:Int Ptr,strides_:Int Ptr)
endrem
Global glBindVertexBuffers(first_:Int,count_:Int,buffers_:Int Ptr,offsets_:Int Ptr,strides_:Int Ptr)="__glewBindVertexBuffers"
rem
bbdoc: GL Const GL_ARB_multi_draw_indirect
endrem
Const GL_ARB_multi_draw_indirect=1
rem
bbdoc: GL Global glMultiDrawArraysIndirect(mode_:Int,indirect_:Byte Ptr,primcount_:Int,stride_:Int)
endrem
Global glMultiDrawArraysIndirect(mode_:Int,indirect_:Byte Ptr,primcount_:Int,stride_:Int)="__glewMultiDrawArraysIndirect"
rem
bbdoc: GL Global glMultiDrawElementsIndirect(mode_:Int,type_:Int,indirect_:Byte Ptr,primcount_:Int,stride_:Int)
endrem
Global glMultiDrawElementsIndirect(mode_:Int,type_:Int,indirect_:Byte Ptr,primcount_:Int,stride_:Int)="__glewMultiDrawElementsIndirect"
rem
bbdoc: GL Const GL_ARB_multisample
endrem
Const GL_ARB_multisample=1
rem
bbdoc: GL Const GL_MULTISAMPLE_ARB
endrem
Const GL_MULTISAMPLE_ARB=$809D
rem
bbdoc: GL Const GL_SAMPLE_ALPHA_TO_COVERAGE_ARB
endrem
Const GL_SAMPLE_ALPHA_TO_COVERAGE_ARB=$809E
rem
bbdoc: GL Const GL_SAMPLE_ALPHA_TO_ONE_ARB
endrem
Const GL_SAMPLE_ALPHA_TO_ONE_ARB=$809F
rem
bbdoc: GL Const GL_SAMPLE_COVERAGE_ARB
endrem
Const GL_SAMPLE_COVERAGE_ARB=$80A0
rem
bbdoc: GL Const GL_SAMPLE_BUFFERS_ARB
endrem
Const GL_SAMPLE_BUFFERS_ARB=$80A8
rem
bbdoc: GL Const GL_SAMPLES_ARB
endrem
Const GL_SAMPLES_ARB=$80A9
rem
bbdoc: GL Const GL_SAMPLE_COVERAGE_VALUE_ARB
endrem
Const GL_SAMPLE_COVERAGE_VALUE_ARB=$80AA
rem
bbdoc: GL Const GL_SAMPLE_COVERAGE_INVERT_ARB
endrem
Const GL_SAMPLE_COVERAGE_INVERT_ARB=$80AB
rem
bbdoc: GL Const GL_MULTISAMPLE_BIT_ARB
endrem
Const GL_MULTISAMPLE_BIT_ARB=$20000000
rem
bbdoc: GL Global glSampleCoverageARB(value_:Float,invert_:Byte)
endrem
Global glSampleCoverageARB(value_:Float,invert_:Byte)="__glewSampleCoverageARB"
rem
bbdoc: GL Const GL_ARB_multitexture
endrem
Const GL_ARB_multitexture=1
rem
bbdoc: GL Const GL_TEXTURE0_ARB
endrem
Const GL_TEXTURE0_ARB=$84C0
rem
bbdoc: GL Const GL_TEXTURE1_ARB
endrem
Const GL_TEXTURE1_ARB=$84C1
rem
bbdoc: GL Const GL_TEXTURE2_ARB
endrem
Const GL_TEXTURE2_ARB=$84C2
rem
bbdoc: GL Const GL_TEXTURE3_ARB
endrem
Const GL_TEXTURE3_ARB=$84C3
rem
bbdoc: GL Const GL_TEXTURE4_ARB
endrem
Const GL_TEXTURE4_ARB=$84C4
rem
bbdoc: GL Const GL_TEXTURE5_ARB
endrem
Const GL_TEXTURE5_ARB=$84C5
rem
bbdoc: GL Const GL_TEXTURE6_ARB
endrem
Const GL_TEXTURE6_ARB=$84C6
rem
bbdoc: GL Const GL_TEXTURE7_ARB
endrem
Const GL_TEXTURE7_ARB=$84C7
rem
bbdoc: GL Const GL_TEXTURE8_ARB
endrem
Const GL_TEXTURE8_ARB=$84C8
rem
bbdoc: GL Const GL_TEXTURE9_ARB
endrem
Const GL_TEXTURE9_ARB=$84C9
rem
bbdoc: GL Const GL_TEXTURE10_ARB
endrem
Const GL_TEXTURE10_ARB=$84CA
rem
bbdoc: GL Const GL_TEXTURE11_ARB
endrem
Const GL_TEXTURE11_ARB=$84CB
rem
bbdoc: GL Const GL_TEXTURE12_ARB
endrem
Const GL_TEXTURE12_ARB=$84CC
rem
bbdoc: GL Const GL_TEXTURE13_ARB
endrem
Const GL_TEXTURE13_ARB=$84CD
rem
bbdoc: GL Const GL_TEXTURE14_ARB
endrem
Const GL_TEXTURE14_ARB=$84CE
rem
bbdoc: GL Const GL_TEXTURE15_ARB
endrem
Const GL_TEXTURE15_ARB=$84CF
rem
bbdoc: GL Const GL_TEXTURE16_ARB
endrem
Const GL_TEXTURE16_ARB=$84D0
rem
bbdoc: GL Const GL_TEXTURE17_ARB
endrem
Const GL_TEXTURE17_ARB=$84D1
rem
bbdoc: GL Const GL_TEXTURE18_ARB
endrem
Const GL_TEXTURE18_ARB=$84D2
rem
bbdoc: GL Const GL_TEXTURE19_ARB
endrem
Const GL_TEXTURE19_ARB=$84D3
rem
bbdoc: GL Const GL_TEXTURE20_ARB
endrem
Const GL_TEXTURE20_ARB=$84D4
rem
bbdoc: GL Const GL_TEXTURE21_ARB
endrem
Const GL_TEXTURE21_ARB=$84D5
rem
bbdoc: GL Const GL_TEXTURE22_ARB
endrem
Const GL_TEXTURE22_ARB=$84D6
rem
bbdoc: GL Const GL_TEXTURE23_ARB
endrem
Const GL_TEXTURE23_ARB=$84D7
rem
bbdoc: GL Const GL_TEXTURE24_ARB
endrem
Const GL_TEXTURE24_ARB=$84D8
rem
bbdoc: GL Const GL_TEXTURE25_ARB
endrem
Const GL_TEXTURE25_ARB=$84D9
rem
bbdoc: GL Const GL_TEXTURE26_ARB
endrem
Const GL_TEXTURE26_ARB=$84DA
rem
bbdoc: GL Const GL_TEXTURE27_ARB
endrem
Const GL_TEXTURE27_ARB=$84DB
rem
bbdoc: GL Const GL_TEXTURE28_ARB
endrem
Const GL_TEXTURE28_ARB=$84DC
rem
bbdoc: GL Const GL_TEXTURE29_ARB
endrem
Const GL_TEXTURE29_ARB=$84DD
rem
bbdoc: GL Const GL_TEXTURE30_ARB
endrem
Const GL_TEXTURE30_ARB=$84DE
rem
bbdoc: GL Const GL_TEXTURE31_ARB
endrem
Const GL_TEXTURE31_ARB=$84DF
rem
bbdoc: GL Const GL_ACTIVE_TEXTURE_ARB
endrem
Const GL_ACTIVE_TEXTURE_ARB=$84E0
rem
bbdoc: GL Const GL_CLIENT_ACTIVE_TEXTURE_ARB
endrem
Const GL_CLIENT_ACTIVE_TEXTURE_ARB=$84E1
rem
bbdoc: GL Const GL_MAX_TEXTURE_UNITS_ARB
endrem
Const GL_MAX_TEXTURE_UNITS_ARB=$84E2
rem
bbdoc: GL Global glActiveTextureARB(texture_:Int)
endrem
Global glActiveTextureARB(texture_:Int)="__glewActiveTextureARB"
rem
bbdoc: GL Global glClientActiveTextureARB(texture_:Int)
endrem
Global glClientActiveTextureARB(texture_:Int)="__glewClientActiveTextureARB"
rem
bbdoc: GL Global glMultiTexCoord1dARB(target_:Int,s_:Double)
endrem
Global glMultiTexCoord1dARB(target_:Int,s_:Double)="__glewMultiTexCoord1dARB"
rem
bbdoc: GL Global glMultiTexCoord1dvARB(target_:Int,v_:Double Ptr)
endrem
Global glMultiTexCoord1dvARB(target_:Int,v_:Double Ptr)="__glewMultiTexCoord1dvARB"
rem
bbdoc: GL Global glMultiTexCoord1fARB(target_:Int,s_:Float)
endrem
Global glMultiTexCoord1fARB(target_:Int,s_:Float)="__glewMultiTexCoord1fARB"
rem
bbdoc: GL Global glMultiTexCoord1fvARB(target_:Int,v_:Float Ptr)
endrem
Global glMultiTexCoord1fvARB(target_:Int,v_:Float Ptr)="__glewMultiTexCoord1fvARB"
rem
bbdoc: GL Global glMultiTexCoord1iARB(target_:Int,s_:Int)
endrem
Global glMultiTexCoord1iARB(target_:Int,s_:Int)="__glewMultiTexCoord1iARB"
rem
bbdoc: GL Global glMultiTexCoord1ivARB(target_:Int,v_:Int Ptr)
endrem
Global glMultiTexCoord1ivARB(target_:Int,v_:Int Ptr)="__glewMultiTexCoord1ivARB"
rem
bbdoc: GL Global glMultiTexCoord1sARB(target_:Int,s_:Short)
endrem
Global glMultiTexCoord1sARB(target_:Int,s_:Short)="__glewMultiTexCoord1sARB"
rem
bbdoc: GL Global glMultiTexCoord1svARB(target_:Int,v_:Short Ptr)
endrem
Global glMultiTexCoord1svARB(target_:Int,v_:Short Ptr)="__glewMultiTexCoord1svARB"
rem
bbdoc: GL Global glMultiTexCoord2dARB(target_:Int,s_:Double,t_:Double)
endrem
Global glMultiTexCoord2dARB(target_:Int,s_:Double,t_:Double)="__glewMultiTexCoord2dARB"
rem
bbdoc: GL Global glMultiTexCoord2dvARB(target_:Int,v_:Double Ptr)
endrem
Global glMultiTexCoord2dvARB(target_:Int,v_:Double Ptr)="__glewMultiTexCoord2dvARB"
rem
bbdoc: GL Global glMultiTexCoord2fARB(target_:Int,s_:Float,t_:Float)
endrem
Global glMultiTexCoord2fARB(target_:Int,s_:Float,t_:Float)="__glewMultiTexCoord2fARB"
rem
bbdoc: GL Global glMultiTexCoord2fvARB(target_:Int,v_:Float Ptr)
endrem
Global glMultiTexCoord2fvARB(target_:Int,v_:Float Ptr)="__glewMultiTexCoord2fvARB"
rem
bbdoc: GL Global glMultiTexCoord2iARB(target_:Int,s_:Int,t_:Int)
endrem
Global glMultiTexCoord2iARB(target_:Int,s_:Int,t_:Int)="__glewMultiTexCoord2iARB"
rem
bbdoc: GL Global glMultiTexCoord2ivARB(target_:Int,v_:Int Ptr)
endrem
Global glMultiTexCoord2ivARB(target_:Int,v_:Int Ptr)="__glewMultiTexCoord2ivARB"
rem
bbdoc: GL Global glMultiTexCoord2sARB(target_:Int,s_:Short,t_:Short)
endrem
Global glMultiTexCoord2sARB(target_:Int,s_:Short,t_:Short)="__glewMultiTexCoord2sARB"
rem
bbdoc: GL Global glMultiTexCoord2svARB(target_:Int,v_:Short Ptr)
endrem
Global glMultiTexCoord2svARB(target_:Int,v_:Short Ptr)="__glewMultiTexCoord2svARB"
rem
bbdoc: GL Global glMultiTexCoord3dARB(target_:Int,s_:Double,t_:Double,r_:Double)
endrem
Global glMultiTexCoord3dARB(target_:Int,s_:Double,t_:Double,r_:Double)="__glewMultiTexCoord3dARB"
rem
bbdoc: GL Global glMultiTexCoord3dvARB(target_:Int,v_:Double Ptr)
endrem
Global glMultiTexCoord3dvARB(target_:Int,v_:Double Ptr)="__glewMultiTexCoord3dvARB"
rem
bbdoc: GL Global glMultiTexCoord3fARB(target_:Int,s_:Float,t_:Float,r_:Float)
endrem
Global glMultiTexCoord3fARB(target_:Int,s_:Float,t_:Float,r_:Float)="__glewMultiTexCoord3fARB"
rem
bbdoc: GL Global glMultiTexCoord3fvARB(target_:Int,v_:Float Ptr)
endrem
Global glMultiTexCoord3fvARB(target_:Int,v_:Float Ptr)="__glewMultiTexCoord3fvARB"
rem
bbdoc: GL Global glMultiTexCoord3iARB(target_:Int,s_:Int,t_:Int,r_:Int)
endrem
Global glMultiTexCoord3iARB(target_:Int,s_:Int,t_:Int,r_:Int)="__glewMultiTexCoord3iARB"
rem
bbdoc: GL Global glMultiTexCoord3ivARB(target_:Int,v_:Int Ptr)
endrem
Global glMultiTexCoord3ivARB(target_:Int,v_:Int Ptr)="__glewMultiTexCoord3ivARB"
rem
bbdoc: GL Global glMultiTexCoord3sARB(target_:Int,s_:Short,t_:Short,r_:Short)
endrem
Global glMultiTexCoord3sARB(target_:Int,s_:Short,t_:Short,r_:Short)="__glewMultiTexCoord3sARB"
rem
bbdoc: GL Global glMultiTexCoord3svARB(target_:Int,v_:Short Ptr)
endrem
Global glMultiTexCoord3svARB(target_:Int,v_:Short Ptr)="__glewMultiTexCoord3svARB"
rem
bbdoc: GL Global glMultiTexCoord4dARB(target_:Int,s_:Double,t_:Double,r_:Double,q_:Double)
endrem
Global glMultiTexCoord4dARB(target_:Int,s_:Double,t_:Double,r_:Double,q_:Double)="__glewMultiTexCoord4dARB"
rem
bbdoc: GL Global glMultiTexCoord4dvARB(target_:Int,v_:Double Ptr)
endrem
Global glMultiTexCoord4dvARB(target_:Int,v_:Double Ptr)="__glewMultiTexCoord4dvARB"
rem
bbdoc: GL Global glMultiTexCoord4fARB(target_:Int,s_:Float,t_:Float,r_:Float,q_:Float)
endrem
Global glMultiTexCoord4fARB(target_:Int,s_:Float,t_:Float,r_:Float,q_:Float)="__glewMultiTexCoord4fARB"
rem
bbdoc: GL Global glMultiTexCoord4fvARB(target_:Int,v_:Float Ptr)
endrem
Global glMultiTexCoord4fvARB(target_:Int,v_:Float Ptr)="__glewMultiTexCoord4fvARB"
rem
bbdoc: GL Global glMultiTexCoord4iARB(target_:Int,s_:Int,t_:Int,r_:Int,q_:Int)
endrem
Global glMultiTexCoord4iARB(target_:Int,s_:Int,t_:Int,r_:Int,q_:Int)="__glewMultiTexCoord4iARB"
rem
bbdoc: GL Global glMultiTexCoord4ivARB(target_:Int,v_:Int Ptr)
endrem
Global glMultiTexCoord4ivARB(target_:Int,v_:Int Ptr)="__glewMultiTexCoord4ivARB"
rem
bbdoc: GL Global glMultiTexCoord4sARB(target_:Int,s_:Short,t_:Short,r_:Short,q_:Short)
endrem
Global glMultiTexCoord4sARB(target_:Int,s_:Short,t_:Short,r_:Short,q_:Short)="__glewMultiTexCoord4sARB"
rem
bbdoc: GL Global glMultiTexCoord4svARB(target_:Int,v_:Short Ptr)
endrem
Global glMultiTexCoord4svARB(target_:Int,v_:Short Ptr)="__glewMultiTexCoord4svARB"
rem
bbdoc: GL Const GL_ARB_occlusion_query
endrem
Const GL_ARB_occlusion_query=1
rem
bbdoc: GL Const GL_QUERY_COUNTER_BITS_ARB
endrem
Const GL_QUERY_COUNTER_BITS_ARB=$8864
rem
bbdoc: GL Const GL_CURRENT_QUERY_ARB
endrem
Const GL_CURRENT_QUERY_ARB=$8865
rem
bbdoc: GL Const GL_QUERY_RESULT_ARB
endrem
Const GL_QUERY_RESULT_ARB=$8866
rem
bbdoc: GL Const GL_QUERY_RESULT_AVAILABLE_ARB
endrem
Const GL_QUERY_RESULT_AVAILABLE_ARB=$8867
rem
bbdoc: GL Const GL_SAMPLES_PASSED_ARB
endrem
Const GL_SAMPLES_PASSED_ARB=$8914
rem
bbdoc: GL Global glBeginQueryARB(target_:Int,id_:Int)
endrem
Global glBeginQueryARB(target_:Int,id_:Int)="__glewBeginQueryARB"
rem
bbdoc: GL Global glDeleteQueriesARB(n_:Int,ids_:Int Ptr)
endrem
Global glDeleteQueriesARB(n_:Int,ids_:Int Ptr)="__glewDeleteQueriesARB"
rem
bbdoc: GL Global glEndQueryARB(target_:Int)
endrem
Global glEndQueryARB(target_:Int)="__glewEndQueryARB"
rem
bbdoc: GL Global glGenQueriesARB(n_:Int,ids_:Int Ptr)
endrem
Global glGenQueriesARB(n_:Int,ids_:Int Ptr)="__glewGenQueriesARB"
rem
bbdoc: GL Global glGetQueryObjectivARB(id_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetQueryObjectivARB(id_:Int,pname_:Int,params_:Int Ptr)="__glewGetQueryObjectivARB"
rem
bbdoc: GL Global glGetQueryObjectuivARB(id_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetQueryObjectuivARB(id_:Int,pname_:Int,params_:Int Ptr)="__glewGetQueryObjectuivARB"
rem
bbdoc: GL Global glGetQueryivARB(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetQueryivARB(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetQueryivARB"
rem
bbdoc: GL Global glIsQueryARB:Byte(id_:Int)
endrem
Global glIsQueryARB:Byte(id_:Int)="__glewIsQueryARB"
rem
bbdoc: GL Const GL_ARB_occlusion_query2
endrem
Const GL_ARB_occlusion_query2=1
rem
bbdoc: GL Const GL_ANY_SAMPLES_PASSED
endrem
Const GL_ANY_SAMPLES_PASSED=$8C2F
rem
bbdoc: GL Const GL_ARB_pipeline_statistics_query
endrem
Const GL_ARB_pipeline_statistics_query=1
rem
bbdoc: GL Const GL_VERTICES_SUBMITTED_ARB
endrem
Const GL_VERTICES_SUBMITTED_ARB=$82EE
rem
bbdoc: GL Const GL_PRIMITIVES_SUBMITTED_ARB
endrem
Const GL_PRIMITIVES_SUBMITTED_ARB=$82EF
rem
bbdoc: GL Const GL_VERTEX_SHADER_INVOCATIONS_ARB
endrem
Const GL_VERTEX_SHADER_INVOCATIONS_ARB=$82F0
rem
bbdoc: GL Const GL_TESS_CONTROL_SHADER_PATCHES_ARB
endrem
Const GL_TESS_CONTROL_SHADER_PATCHES_ARB=$82F1
rem
bbdoc: GL Const GL_TESS_EVALUATION_SHADER_INVOCATIONS_ARB
endrem
Const GL_TESS_EVALUATION_SHADER_INVOCATIONS_ARB=$82F2
rem
bbdoc: GL Const GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED_ARB
endrem
Const GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED_ARB=$82F3
rem
bbdoc: GL Const GL_FRAGMENT_SHADER_INVOCATIONS_ARB
endrem
Const GL_FRAGMENT_SHADER_INVOCATIONS_ARB=$82F4
rem
bbdoc: GL Const GL_COMPUTE_SHADER_INVOCATIONS_ARB
endrem
Const GL_COMPUTE_SHADER_INVOCATIONS_ARB=$82F5
rem
bbdoc: GL Const GL_CLIPPING_INPUT_PRIMITIVES_ARB
endrem
Const GL_CLIPPING_INPUT_PRIMITIVES_ARB=$82F6
rem
bbdoc: GL Const GL_CLIPPING_OUTPUT_PRIMITIVES_ARB
endrem
Const GL_CLIPPING_OUTPUT_PRIMITIVES_ARB=$82F7
rem
bbdoc: GL Const GL_ARB_pixel_buffer_object
endrem
Const GL_ARB_pixel_buffer_object=1
rem
bbdoc: GL Const GL_PIXEL_PACK_BUFFER_ARB
endrem
Const GL_PIXEL_PACK_BUFFER_ARB=$88EB
rem
bbdoc: GL Const GL_PIXEL_UNPACK_BUFFER_ARB
endrem
Const GL_PIXEL_UNPACK_BUFFER_ARB=$88EC
rem
bbdoc: GL Const GL_PIXEL_PACK_BUFFER_BINDING_ARB
endrem
Const GL_PIXEL_PACK_BUFFER_BINDING_ARB=$88ED
rem
bbdoc: GL Const GL_PIXEL_UNPACK_BUFFER_BINDING_ARB
endrem
Const GL_PIXEL_UNPACK_BUFFER_BINDING_ARB=$88EF
rem
bbdoc: GL Const GL_ARB_point_parameters
endrem
Const GL_ARB_point_parameters=1
rem
bbdoc: GL Const GL_POINT_SIZE_MIN_ARB
endrem
Const GL_POINT_SIZE_MIN_ARB=$8126
rem
bbdoc: GL Const GL_POINT_SIZE_MAX_ARB
endrem
Const GL_POINT_SIZE_MAX_ARB=$8127
rem
bbdoc: GL Const GL_POINT_FADE_THRESHOLD_SIZE_ARB
endrem
Const GL_POINT_FADE_THRESHOLD_SIZE_ARB=$8128
rem
bbdoc: GL Const GL_POINT_DISTANCE_ATTENUATION_ARB
endrem
Const GL_POINT_DISTANCE_ATTENUATION_ARB=$8129
rem
bbdoc: GL Global glPointParameterfARB(pname_:Int,param_:Float)
endrem
Global glPointParameterfARB(pname_:Int,param_:Float)="__glewPointParameterfARB"
rem
bbdoc: GL Global glPointParameterfvARB(pname_:Int,params_:Float Ptr)
endrem
Global glPointParameterfvARB(pname_:Int,params_:Float Ptr)="__glewPointParameterfvARB"
rem
bbdoc: GL Const GL_ARB_point_sprite
endrem
Const GL_ARB_point_sprite=1
rem
bbdoc: GL Const GL_POINT_SPRITE_ARB
endrem
Const GL_POINT_SPRITE_ARB=$8861
rem
bbdoc: GL Const GL_COORD_REPLACE_ARB
endrem
Const GL_COORD_REPLACE_ARB=$8862
rem
bbdoc: GL Const GL_ARB_program_interface_query
endrem
Const GL_ARB_program_interface_query=1
rem
bbdoc: GL Const GL_UNIFORM
endrem
Const GL_UNIFORM=$92E1
rem
bbdoc: GL Const GL_UNIFORM_BLOCK
endrem
Const GL_UNIFORM_BLOCK=$92E2
rem
bbdoc: GL Const GL_PROGRAM_INPUT
endrem
Const GL_PROGRAM_INPUT=$92E3
rem
bbdoc: GL Const GL_PROGRAM_OUTPUT
endrem
Const GL_PROGRAM_OUTPUT=$92E4
rem
bbdoc: GL Const GL_BUFFER_VARIABLE
endrem
Const GL_BUFFER_VARIABLE=$92E5
rem
bbdoc: GL Const GL_SHADER_STORAGE_BLOCK
endrem
Const GL_SHADER_STORAGE_BLOCK=$92E6
rem
bbdoc: GL Const GL_IS_PER_PATCH
endrem
Const GL_IS_PER_PATCH=$92E7
rem
bbdoc: GL Const GL_VERTEX_SUBROUTINE
endrem
Const GL_VERTEX_SUBROUTINE=$92E8
rem
bbdoc: GL Const GL_TESS_CONTROL_SUBROUTINE
endrem
Const GL_TESS_CONTROL_SUBROUTINE=$92E9
rem
bbdoc: GL Const GL_TESS_EVALUATION_SUBROUTINE
endrem
Const GL_TESS_EVALUATION_SUBROUTINE=$92EA
rem
bbdoc: GL Const GL_GEOMETRY_SUBROUTINE
endrem
Const GL_GEOMETRY_SUBROUTINE=$92EB
rem
bbdoc: GL Const GL_FRAGMENT_SUBROUTINE
endrem
Const GL_FRAGMENT_SUBROUTINE=$92EC
rem
bbdoc: GL Const GL_COMPUTE_SUBROUTINE
endrem
Const GL_COMPUTE_SUBROUTINE=$92ED
rem
bbdoc: GL Const GL_VERTEX_SUBROUTINE_UNIFORM
endrem
Const GL_VERTEX_SUBROUTINE_UNIFORM=$92EE
rem
bbdoc: GL Const GL_TESS_CONTROL_SUBROUTINE_UNIFORM
endrem
Const GL_TESS_CONTROL_SUBROUTINE_UNIFORM=$92EF
rem
bbdoc: GL Const GL_TESS_EVALUATION_SUBROUTINE_UNIFORM
endrem
Const GL_TESS_EVALUATION_SUBROUTINE_UNIFORM=$92F0
rem
bbdoc: GL Const GL_GEOMETRY_SUBROUTINE_UNIFORM
endrem
Const GL_GEOMETRY_SUBROUTINE_UNIFORM=$92F1
rem
bbdoc: GL Const GL_FRAGMENT_SUBROUTINE_UNIFORM
endrem
Const GL_FRAGMENT_SUBROUTINE_UNIFORM=$92F2
rem
bbdoc: GL Const GL_COMPUTE_SUBROUTINE_UNIFORM
endrem
Const GL_COMPUTE_SUBROUTINE_UNIFORM=$92F3
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_VARYING
endrem
Const GL_TRANSFORM_FEEDBACK_VARYING=$92F4
rem
bbdoc: GL Const GL_ACTIVE_RESOURCES
endrem
Const GL_ACTIVE_RESOURCES=$92F5
rem
bbdoc: GL Const GL_MAX_NAME_LENGTH
endrem
Const GL_MAX_NAME_LENGTH=$92F6
rem
bbdoc: GL Const GL_MAX_NUM_ACTIVE_VARIABLES
endrem
Const GL_MAX_NUM_ACTIVE_VARIABLES=$92F7
rem
bbdoc: GL Const GL_MAX_NUM_COMPATIBLE_SUBROUTINES
endrem
Const GL_MAX_NUM_COMPATIBLE_SUBROUTINES=$92F8
rem
bbdoc: GL Const GL_NAME_LENGTH
endrem
Const GL_NAME_LENGTH=$92F9
rem
bbdoc: GL Const GL_TYPE
endrem
Const GL_TYPE=$92FA
rem
bbdoc: GL Const GL_ARRAY_SIZE
endrem
Const GL_ARRAY_SIZE=$92FB
rem
bbdoc: GL Const GL_OFFSET
endrem
Const GL_OFFSET=$92FC
rem
bbdoc: GL Const GL_BLOCK_INDEX
endrem
Const GL_BLOCK_INDEX=$92FD
rem
bbdoc: GL Const GL_ARRAY_STRIDE
endrem
Const GL_ARRAY_STRIDE=$92FE
rem
bbdoc: GL Const GL_MATRIX_STRIDE
endrem
Const GL_MATRIX_STRIDE=$92FF
rem
bbdoc: GL Const GL_IS_ROW_MAJOR
endrem
Const GL_IS_ROW_MAJOR=$9300
rem
bbdoc: GL Const GL_ATOMIC_COUNTER_BUFFER_INDEX
endrem
Const GL_ATOMIC_COUNTER_BUFFER_INDEX=$9301
rem
bbdoc: GL Const GL_BUFFER_BINDING
endrem
Const GL_BUFFER_BINDING=$9302
rem
bbdoc: GL Const GL_BUFFER_DATA_SIZE
endrem
Const GL_BUFFER_DATA_SIZE=$9303
rem
bbdoc: GL Const GL_NUM_ACTIVE_VARIABLES
endrem
Const GL_NUM_ACTIVE_VARIABLES=$9304
rem
bbdoc: GL Const GL_ACTIVE_VARIABLES
endrem
Const GL_ACTIVE_VARIABLES=$9305
rem
bbdoc: GL Const GL_REFERENCED_BY_VERTEX_SHADER
endrem
Const GL_REFERENCED_BY_VERTEX_SHADER=$9306
rem
bbdoc: GL Const GL_REFERENCED_BY_TESS_CONTROL_SHADER
endrem
Const GL_REFERENCED_BY_TESS_CONTROL_SHADER=$9307
rem
bbdoc: GL Const GL_REFERENCED_BY_TESS_EVALUATION_SHADER
endrem
Const GL_REFERENCED_BY_TESS_EVALUATION_SHADER=$9308
rem
bbdoc: GL Const GL_REFERENCED_BY_GEOMETRY_SHADER
endrem
Const GL_REFERENCED_BY_GEOMETRY_SHADER=$9309
rem
bbdoc: GL Const GL_REFERENCED_BY_FRAGMENT_SHADER
endrem
Const GL_REFERENCED_BY_FRAGMENT_SHADER=$930A
rem
bbdoc: GL Const GL_REFERENCED_BY_COMPUTE_SHADER
endrem
Const GL_REFERENCED_BY_COMPUTE_SHADER=$930B
rem
bbdoc: GL Const GL_TOP_LEVEL_ARRAY_SIZE
endrem
Const GL_TOP_LEVEL_ARRAY_SIZE=$930C
rem
bbdoc: GL Const GL_TOP_LEVEL_ARRAY_STRIDE
endrem
Const GL_TOP_LEVEL_ARRAY_STRIDE=$930D
rem
bbdoc: GL Const GL_LOCATION
endrem
Const GL_LOCATION=$930E
rem
bbdoc: GL Const GL_LOCATION_INDEX
endrem
Const GL_LOCATION_INDEX=$930F
rem
bbdoc: GL Global glGetProgramInterfaceiv(program_:Int,programInterface_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetProgramInterfaceiv(program_:Int,programInterface_:Int,pname_:Int,params_:Int Ptr)="__glewGetProgramInterfaceiv"
rem
bbdoc: GL Global glGetProgramResourceIndex:Int(program_:Int,programInterface_:Int,name_:Byte Ptr)
endrem
Global glGetProgramResourceIndex:Int(program_:Int,programInterface_:Int,name_:Byte Ptr)="__glewGetProgramResourceIndex"
rem
bbdoc: GL Global glGetProgramResourceLocation:Int(program_:Int,programInterface_:Int,name_:Byte Ptr)
endrem
Global glGetProgramResourceLocation:Int(program_:Int,programInterface_:Int,name_:Byte Ptr)="__glewGetProgramResourceLocation"
rem
bbdoc: GL Global glGetProgramResourceLocationIndex:Int(program_:Int,programInterface_:Int,name_:Byte Ptr)
endrem
Global glGetProgramResourceLocationIndex:Int(program_:Int,programInterface_:Int,name_:Byte Ptr)="__glewGetProgramResourceLocationIndex"
rem
bbdoc: GL Global glGetProgramResourceName(program_:Int,programInterface_:Int,index_:Int,bufSize_:Int,length_:Int Ptr,name_:Byte Ptr)
endrem
Global glGetProgramResourceName(program_:Int,programInterface_:Int,index_:Int,bufSize_:Int,length_:Int Ptr,name_:Byte Ptr)="__glewGetProgramResourceName"
rem
bbdoc: GL Global glGetProgramResourceiv(program_:Int,programInterface_:Int,index_:Int,propCount_:Int,props_:Int Ptr,bufSize_:Int,length_:Int Ptr,params_:Int Ptr)
endrem
Global glGetProgramResourceiv(program_:Int,programInterface_:Int,index_:Int,propCount_:Int,props_:Int Ptr,bufSize_:Int,length_:Int Ptr,params_:Int Ptr)="__glewGetProgramResourceiv"
rem
bbdoc: GL Const GL_ARB_provoking_vertex
endrem
Const GL_ARB_provoking_vertex=1
rem
bbdoc: GL Const GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION
endrem
Const GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION=$8E4C
rem
bbdoc: GL Const GL_FIRST_VERTEX_CONVENTION
endrem
Const GL_FIRST_VERTEX_CONVENTION=$8E4D
rem
bbdoc: GL Const GL_LAST_VERTEX_CONVENTION
endrem
Const GL_LAST_VERTEX_CONVENTION=$8E4E
rem
bbdoc: GL Const GL_PROVOKING_VERTEX
endrem
Const GL_PROVOKING_VERTEX=$8E4F
rem
bbdoc: GL Global glProvokingVertex(mode_:Int)
endrem
Global glProvokingVertex(mode_:Int)="__glewProvokingVertex"
rem
bbdoc: GL Const GL_ARB_query_buffer_object
endrem
Const GL_ARB_query_buffer_object=1
rem
bbdoc: GL Const GL_QUERY_BUFFER_BARRIER_BIT
endrem
Const GL_QUERY_BUFFER_BARRIER_BIT=$00008000
rem
bbdoc: GL Const GL_QUERY_BUFFER
endrem
Const GL_QUERY_BUFFER=$9192
rem
bbdoc: GL Const GL_QUERY_BUFFER_BINDING
endrem
Const GL_QUERY_BUFFER_BINDING=$9193
rem
bbdoc: GL Const GL_QUERY_RESULT_NO_WAIT
endrem
Const GL_QUERY_RESULT_NO_WAIT=$9194
rem
bbdoc: GL Const GL_ARB_robust_buffer_access_behavior
endrem
Const GL_ARB_robust_buffer_access_behavior=1
rem
bbdoc: GL Const GL_ARB_robustness
endrem
Const GL_ARB_robustness=1
rem
bbdoc: GL Const GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB
endrem
Const GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB=$00000004
rem
bbdoc: GL Const GL_LOSE_CONTEXT_ON_RESET_ARB
endrem
Const GL_LOSE_CONTEXT_ON_RESET_ARB=$8252
rem
bbdoc: GL Const GL_GUILTY_CONTEXT_RESET_ARB
endrem
Const GL_GUILTY_CONTEXT_RESET_ARB=$8253
rem
bbdoc: GL Const GL_INNOCENT_CONTEXT_RESET_ARB
endrem
Const GL_INNOCENT_CONTEXT_RESET_ARB=$8254
rem
bbdoc: GL Const GL_UNKNOWN_CONTEXT_RESET_ARB
endrem
Const GL_UNKNOWN_CONTEXT_RESET_ARB=$8255
rem
bbdoc: GL Const GL_RESET_NOTIFICATION_STRATEGY_ARB
endrem
Const GL_RESET_NOTIFICATION_STRATEGY_ARB=$8256
rem
bbdoc: GL Const GL_NO_RESET_NOTIFICATION_ARB
endrem
Const GL_NO_RESET_NOTIFICATION_ARB=$8261
rem
bbdoc: GL Global glGetGraphicsResetStatusARB:Int()
endrem
Global glGetGraphicsResetStatusARB:Int()="__glewGetGraphicsResetStatusARB"
rem
bbdoc: GL Global glGetnColorTableARB(target_:Int,format_:Int,type_:Int,bufSize_:Int,table_:Byte Ptr)
endrem
Global glGetnColorTableARB(target_:Int,format_:Int,type_:Int,bufSize_:Int,table_:Byte Ptr)="__glewGetnColorTableARB"
rem
bbdoc: GL Global glGetnCompressedTexImageARB(target_:Int,lod_:Int,bufSize_:Int,img_:Byte Ptr)
endrem
Global glGetnCompressedTexImageARB(target_:Int,lod_:Int,bufSize_:Int,img_:Byte Ptr)="__glewGetnCompressedTexImageARB"
rem
bbdoc: GL Global glGetnConvolutionFilterARB(target_:Int,format_:Int,type_:Int,bufSize_:Int,image_:Byte Ptr)
endrem
Global glGetnConvolutionFilterARB(target_:Int,format_:Int,type_:Int,bufSize_:Int,image_:Byte Ptr)="__glewGetnConvolutionFilterARB"
rem
bbdoc: GL Global glGetnHistogramARB(target_:Int,reset_:Byte,format_:Int,type_:Int,bufSize_:Int,values_:Byte Ptr)
endrem
Global glGetnHistogramARB(target_:Int,reset_:Byte,format_:Int,type_:Int,bufSize_:Int,values_:Byte Ptr)="__glewGetnHistogramARB"
rem
bbdoc: GL Global glGetnMapdvARB(target_:Int,query_:Int,bufSize_:Int,v_:Double Ptr)
endrem
Global glGetnMapdvARB(target_:Int,query_:Int,bufSize_:Int,v_:Double Ptr)="__glewGetnMapdvARB"
rem
bbdoc: GL Global glGetnMapfvARB(target_:Int,query_:Int,bufSize_:Int,v_:Float Ptr)
endrem
Global glGetnMapfvARB(target_:Int,query_:Int,bufSize_:Int,v_:Float Ptr)="__glewGetnMapfvARB"
rem
bbdoc: GL Global glGetnMapivARB(target_:Int,query_:Int,bufSize_:Int,v_:Int Ptr)
endrem
Global glGetnMapivARB(target_:Int,query_:Int,bufSize_:Int,v_:Int Ptr)="__glewGetnMapivARB"
rem
bbdoc: GL Global glGetnMinmaxARB(target_:Int,reset_:Byte,format_:Int,type_:Int,bufSize_:Int,values_:Byte Ptr)
endrem
Global glGetnMinmaxARB(target_:Int,reset_:Byte,format_:Int,type_:Int,bufSize_:Int,values_:Byte Ptr)="__glewGetnMinmaxARB"
rem
bbdoc: GL Global glGetnPixelMapfvARB(map_:Int,bufSize_:Int,values_:Float Ptr)
endrem
Global glGetnPixelMapfvARB(map_:Int,bufSize_:Int,values_:Float Ptr)="__glewGetnPixelMapfvARB"
rem
bbdoc: GL Global glGetnPixelMapuivARB(map_:Int,bufSize_:Int,values_:Int Ptr)
endrem
Global glGetnPixelMapuivARB(map_:Int,bufSize_:Int,values_:Int Ptr)="__glewGetnPixelMapuivARB"
rem
bbdoc: GL Global glGetnPixelMapusvARB(map_:Int,bufSize_:Int,values_:Short Ptr)
endrem
Global glGetnPixelMapusvARB(map_:Int,bufSize_:Int,values_:Short Ptr)="__glewGetnPixelMapusvARB"
rem
bbdoc: GL Global glGetnPolygonStippleARB(bufSize_:Int,pattern_:Byte Ptr)
endrem
Global glGetnPolygonStippleARB(bufSize_:Int,pattern_:Byte Ptr)="__glewGetnPolygonStippleARB"
rem
bbdoc: GL Global glGetnSeparableFilterARB(target_:Int,format_:Int,type_:Int,rowBufSize_:Int,row_:Byte Ptr,columnBufSize_:Int,column_:Byte Ptr,span_:Byte Ptr)
endrem
Global glGetnSeparableFilterARB(target_:Int,format_:Int,type_:Int,rowBufSize_:Int,row_:Byte Ptr,columnBufSize_:Int,column_:Byte Ptr,span_:Byte Ptr)="__glewGetnSeparableFilterARB"
rem
bbdoc: GL Global glGetnTexImageARB(target_:Int,level_:Int,format_:Int,type_:Int,bufSize_:Int,img_:Byte Ptr)
endrem
Global glGetnTexImageARB(target_:Int,level_:Int,format_:Int,type_:Int,bufSize_:Int,img_:Byte Ptr)="__glewGetnTexImageARB"
rem
bbdoc: GL Global glGetnUniformdvARB(program_:Int,location_:Int,bufSize_:Int,params_:Double Ptr)
endrem
Global glGetnUniformdvARB(program_:Int,location_:Int,bufSize_:Int,params_:Double Ptr)="__glewGetnUniformdvARB"
rem
bbdoc: GL Global glGetnUniformfvARB(program_:Int,location_:Int,bufSize_:Int,params_:Float Ptr)
endrem
Global glGetnUniformfvARB(program_:Int,location_:Int,bufSize_:Int,params_:Float Ptr)="__glewGetnUniformfvARB"
rem
bbdoc: GL Global glGetnUniformivARB(program_:Int,location_:Int,bufSize_:Int,params_:Int Ptr)
endrem
Global glGetnUniformivARB(program_:Int,location_:Int,bufSize_:Int,params_:Int Ptr)="__glewGetnUniformivARB"
rem
bbdoc: GL Global glGetnUniformuivARB(program_:Int,location_:Int,bufSize_:Int,params_:Int Ptr)
endrem
Global glGetnUniformuivARB(program_:Int,location_:Int,bufSize_:Int,params_:Int Ptr)="__glewGetnUniformuivARB"
rem
bbdoc: GL Global glReadnPixelsARB(x_:Int,y_:Int,width_:Int,height_:Int,format_:Int,type_:Int,bufSize_:Int,data_:Byte Ptr)
endrem
Global glReadnPixelsARB(x_:Int,y_:Int,width_:Int,height_:Int,format_:Int,type_:Int,bufSize_:Int,data_:Byte Ptr)="__glewReadnPixelsARB"
rem
bbdoc: GL Const GL_ARB_robustness_application_isolation
endrem
Const GL_ARB_robustness_application_isolation=1
rem
bbdoc: GL Const GL_ARB_robustness_share_group_isolation
endrem
Const GL_ARB_robustness_share_group_isolation=1
rem
bbdoc: GL Const GL_ARB_sample_shading
endrem
Const GL_ARB_sample_shading=1
rem
bbdoc: GL Const GL_SAMPLE_SHADING_ARB
endrem
Const GL_SAMPLE_SHADING_ARB=$8C36
rem
bbdoc: GL Const GL_MIN_SAMPLE_SHADING_VALUE_ARB
endrem
Const GL_MIN_SAMPLE_SHADING_VALUE_ARB=$8C37
rem
bbdoc: GL Global glMinSampleShadingARB(value_:Float)
endrem
Global glMinSampleShadingARB(value_:Float)="__glewMinSampleShadingARB"
rem
bbdoc: GL Const GL_ARB_sampler_objects
endrem
Const GL_ARB_sampler_objects=1
rem
bbdoc: GL Const GL_SAMPLER_BINDING
endrem
Const GL_SAMPLER_BINDING=$8919
rem
bbdoc: GL Global glBindSampler(unit_:Int,sampler_:Int)
endrem
Global glBindSampler(unit_:Int,sampler_:Int)="__glewBindSampler"
rem
bbdoc: GL Global glDeleteSamplers(count_:Int,samplers_:Int Ptr)
endrem
Global glDeleteSamplers(count_:Int,samplers_:Int Ptr)="__glewDeleteSamplers"
rem
bbdoc: GL Global glGenSamplers(count_:Int,samplers_:Int Ptr)
endrem
Global glGenSamplers(count_:Int,samplers_:Int Ptr)="__glewGenSamplers"
rem
bbdoc: GL Global glGetSamplerParameterIiv(sampler_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetSamplerParameterIiv(sampler_:Int,pname_:Int,params_:Int Ptr)="__glewGetSamplerParameterIiv"
rem
bbdoc: GL Global glGetSamplerParameterIuiv(sampler_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetSamplerParameterIuiv(sampler_:Int,pname_:Int,params_:Int Ptr)="__glewGetSamplerParameterIuiv"
rem
bbdoc: GL Global glGetSamplerParameterfv(sampler_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetSamplerParameterfv(sampler_:Int,pname_:Int,params_:Float Ptr)="__glewGetSamplerParameterfv"
rem
bbdoc: GL Global glGetSamplerParameteriv(sampler_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetSamplerParameteriv(sampler_:Int,pname_:Int,params_:Int Ptr)="__glewGetSamplerParameteriv"
rem
bbdoc: GL Global glIsSampler:Byte(sampler_:Int)
endrem
Global glIsSampler:Byte(sampler_:Int)="__glewIsSampler"
rem
bbdoc: GL Global glSamplerParameterIiv(sampler_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glSamplerParameterIiv(sampler_:Int,pname_:Int,params_:Int Ptr)="__glewSamplerParameterIiv"
rem
bbdoc: GL Global glSamplerParameterIuiv(sampler_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glSamplerParameterIuiv(sampler_:Int,pname_:Int,params_:Int Ptr)="__glewSamplerParameterIuiv"
rem
bbdoc: GL Global glSamplerParameterf(sampler_:Int,pname_:Int,param_:Float)
endrem
Global glSamplerParameterf(sampler_:Int,pname_:Int,param_:Float)="__glewSamplerParameterf"
rem
bbdoc: GL Global glSamplerParameterfv(sampler_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glSamplerParameterfv(sampler_:Int,pname_:Int,params_:Float Ptr)="__glewSamplerParameterfv"
rem
bbdoc: GL Global glSamplerParameteri(sampler_:Int,pname_:Int,param_:Int)
endrem
Global glSamplerParameteri(sampler_:Int,pname_:Int,param_:Int)="__glewSamplerParameteri"
rem
bbdoc: GL Global glSamplerParameteriv(sampler_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glSamplerParameteriv(sampler_:Int,pname_:Int,params_:Int Ptr)="__glewSamplerParameteriv"
rem
bbdoc: GL Const GL_ARB_seamless_cube_map
endrem
Const GL_ARB_seamless_cube_map=1
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_SEAMLESS
endrem
Const GL_TEXTURE_CUBE_MAP_SEAMLESS=$884F
rem
bbdoc: GL Const GL_ARB_seamless_cubemap_per_texture
endrem
Const GL_ARB_seamless_cubemap_per_texture=1
rem
bbdoc: GL Const GL_ARB_separate_shader_objects
endrem
Const GL_ARB_separate_shader_objects=1
rem
bbdoc: GL Const GL_VERTEX_SHADER_BIT
endrem
Const GL_VERTEX_SHADER_BIT=$00000001
rem
bbdoc: GL Const GL_FRAGMENT_SHADER_BIT
endrem
Const GL_FRAGMENT_SHADER_BIT=$00000002
rem
bbdoc: GL Const GL_GEOMETRY_SHADER_BIT
endrem
Const GL_GEOMETRY_SHADER_BIT=$00000004
rem
bbdoc: GL Const GL_TESS_CONTROL_SHADER_BIT
endrem
Const GL_TESS_CONTROL_SHADER_BIT=$00000008
rem
bbdoc: GL Const GL_TESS_EVALUATION_SHADER_BIT
endrem
Const GL_TESS_EVALUATION_SHADER_BIT=$00000010
rem
bbdoc: GL Const GL_PROGRAM_SEPARABLE
endrem
Const GL_PROGRAM_SEPARABLE=$8258
rem
bbdoc: GL Const GL_ACTIVE_PROGRAM
endrem
Const GL_ACTIVE_PROGRAM=$8259
rem
bbdoc: GL Const GL_PROGRAM_PIPELINE_BINDING
endrem
Const GL_PROGRAM_PIPELINE_BINDING=$825A
rem
bbdoc: GL Const GL_ALL_SHADER_BITS
endrem
Const GL_ALL_SHADER_BITS=$FFFFFFFF
rem
bbdoc: GL Global glActiveShaderProgram(pipeline_:Int,program_:Int)
endrem
Global glActiveShaderProgram(pipeline_:Int,program_:Int)="__glewActiveShaderProgram"
rem
bbdoc: GL Global glBindProgramPipeline(pipeline_:Int)
endrem
Global glBindProgramPipeline(pipeline_:Int)="__glewBindProgramPipeline"
rem
bbdoc: GL Global glCreateShaderProgramv:Int(type_:Int,count_:Int,strings_:Byte Ptr Ptr)
endrem
Global glCreateShaderProgramv:Int(type_:Int,count_:Int,strings_:Byte Ptr Ptr)="__glewCreateShaderProgramv"
rem
bbdoc: GL Global glDeleteProgramPipelines(n_:Int,pipelines_:Int Ptr)
endrem
Global glDeleteProgramPipelines(n_:Int,pipelines_:Int Ptr)="__glewDeleteProgramPipelines"
rem
bbdoc: GL Global glGenProgramPipelines(n_:Int,pipelines_:Int Ptr)
endrem
Global glGenProgramPipelines(n_:Int,pipelines_:Int Ptr)="__glewGenProgramPipelines"
rem
bbdoc: GL Global glGetProgramPipelineInfoLog(pipeline_:Int,bufSize_:Int,length_:Int Ptr,infoLog_:Byte Ptr)
endrem
Global glGetProgramPipelineInfoLog(pipeline_:Int,bufSize_:Int,length_:Int Ptr,infoLog_:Byte Ptr)="__glewGetProgramPipelineInfoLog"
rem
bbdoc: GL Global glGetProgramPipelineiv(pipeline_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetProgramPipelineiv(pipeline_:Int,pname_:Int,params_:Int Ptr)="__glewGetProgramPipelineiv"
rem
bbdoc: GL Global glIsProgramPipeline:Byte(pipeline_:Int)
endrem
Global glIsProgramPipeline:Byte(pipeline_:Int)="__glewIsProgramPipeline"
rem
bbdoc: GL Global glProgramUniform1d(program_:Int,location_:Int,x_:Double)
endrem
Global glProgramUniform1d(program_:Int,location_:Int,x_:Double)="__glewProgramUniform1d"
rem
bbdoc: GL Global glProgramUniform1dv(program_:Int,location_:Int,count_:Int,value_:Double Ptr)
endrem
Global glProgramUniform1dv(program_:Int,location_:Int,count_:Int,value_:Double Ptr)="__glewProgramUniform1dv"
rem
bbdoc: GL Global glProgramUniform1f(program_:Int,location_:Int,x_:Float)
endrem
Global glProgramUniform1f(program_:Int,location_:Int,x_:Float)="__glewProgramUniform1f"
rem
bbdoc: GL Global glProgramUniform1fv(program_:Int,location_:Int,count_:Int,value_:Float Ptr)
endrem
Global glProgramUniform1fv(program_:Int,location_:Int,count_:Int,value_:Float Ptr)="__glewProgramUniform1fv"
rem
bbdoc: GL Global glProgramUniform1i(program_:Int,location_:Int,x_:Int)
endrem
Global glProgramUniform1i(program_:Int,location_:Int,x_:Int)="__glewProgramUniform1i"
rem
bbdoc: GL Global glProgramUniform1iv(program_:Int,location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glProgramUniform1iv(program_:Int,location_:Int,count_:Int,value_:Int Ptr)="__glewProgramUniform1iv"
rem
bbdoc: GL Global glProgramUniform1ui(program_:Int,location_:Int,x_:Int)
endrem
Global glProgramUniform1ui(program_:Int,location_:Int,x_:Int)="__glewProgramUniform1ui"
rem
bbdoc: GL Global glProgramUniform1uiv(program_:Int,location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glProgramUniform1uiv(program_:Int,location_:Int,count_:Int,value_:Int Ptr)="__glewProgramUniform1uiv"
rem
bbdoc: GL Global glProgramUniform2d(program_:Int,location_:Int,x_:Double,y_:Double)
endrem
Global glProgramUniform2d(program_:Int,location_:Int,x_:Double,y_:Double)="__glewProgramUniform2d"
rem
bbdoc: GL Global glProgramUniform2dv(program_:Int,location_:Int,count_:Int,value_:Double Ptr)
endrem
Global glProgramUniform2dv(program_:Int,location_:Int,count_:Int,value_:Double Ptr)="__glewProgramUniform2dv"
rem
bbdoc: GL Global glProgramUniform2f(program_:Int,location_:Int,x_:Float,y_:Float)
endrem
Global glProgramUniform2f(program_:Int,location_:Int,x_:Float,y_:Float)="__glewProgramUniform2f"
rem
bbdoc: GL Global glProgramUniform2fv(program_:Int,location_:Int,count_:Int,value_:Float Ptr)
endrem
Global glProgramUniform2fv(program_:Int,location_:Int,count_:Int,value_:Float Ptr)="__glewProgramUniform2fv"
rem
bbdoc: GL Global glProgramUniform2i(program_:Int,location_:Int,x_:Int,y_:Int)
endrem
Global glProgramUniform2i(program_:Int,location_:Int,x_:Int,y_:Int)="__glewProgramUniform2i"
rem
bbdoc: GL Global glProgramUniform2iv(program_:Int,location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glProgramUniform2iv(program_:Int,location_:Int,count_:Int,value_:Int Ptr)="__glewProgramUniform2iv"
rem
bbdoc: GL Global glProgramUniform2ui(program_:Int,location_:Int,x_:Int,y_:Int)
endrem
Global glProgramUniform2ui(program_:Int,location_:Int,x_:Int,y_:Int)="__glewProgramUniform2ui"
rem
bbdoc: GL Global glProgramUniform2uiv(program_:Int,location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glProgramUniform2uiv(program_:Int,location_:Int,count_:Int,value_:Int Ptr)="__glewProgramUniform2uiv"
rem
bbdoc: GL Global glProgramUniform3d(program_:Int,location_:Int,x_:Double,y_:Double,z_:Double)
endrem
Global glProgramUniform3d(program_:Int,location_:Int,x_:Double,y_:Double,z_:Double)="__glewProgramUniform3d"
rem
bbdoc: GL Global glProgramUniform3dv(program_:Int,location_:Int,count_:Int,value_:Double Ptr)
endrem
Global glProgramUniform3dv(program_:Int,location_:Int,count_:Int,value_:Double Ptr)="__glewProgramUniform3dv"
rem
bbdoc: GL Global glProgramUniform3f(program_:Int,location_:Int,x_:Float,y_:Float,z_:Float)
endrem
Global glProgramUniform3f(program_:Int,location_:Int,x_:Float,y_:Float,z_:Float)="__glewProgramUniform3f"
rem
bbdoc: GL Global glProgramUniform3fv(program_:Int,location_:Int,count_:Int,value_:Float Ptr)
endrem
Global glProgramUniform3fv(program_:Int,location_:Int,count_:Int,value_:Float Ptr)="__glewProgramUniform3fv"
rem
bbdoc: GL Global glProgramUniform3i(program_:Int,location_:Int,x_:Int,y_:Int,z_:Int)
endrem
Global glProgramUniform3i(program_:Int,location_:Int,x_:Int,y_:Int,z_:Int)="__glewProgramUniform3i"
rem
bbdoc: GL Global glProgramUniform3iv(program_:Int,location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glProgramUniform3iv(program_:Int,location_:Int,count_:Int,value_:Int Ptr)="__glewProgramUniform3iv"
rem
bbdoc: GL Global glProgramUniform3ui(program_:Int,location_:Int,x_:Int,y_:Int,z_:Int)
endrem
Global glProgramUniform3ui(program_:Int,location_:Int,x_:Int,y_:Int,z_:Int)="__glewProgramUniform3ui"
rem
bbdoc: GL Global glProgramUniform3uiv(program_:Int,location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glProgramUniform3uiv(program_:Int,location_:Int,count_:Int,value_:Int Ptr)="__glewProgramUniform3uiv"
rem
bbdoc: GL Global glProgramUniform4d(program_:Int,location_:Int,x_:Double,y_:Double,z_:Double,w_:Double)
endrem
Global glProgramUniform4d(program_:Int,location_:Int,x_:Double,y_:Double,z_:Double,w_:Double)="__glewProgramUniform4d"
rem
bbdoc: GL Global glProgramUniform4dv(program_:Int,location_:Int,count_:Int,value_:Double Ptr)
endrem
Global glProgramUniform4dv(program_:Int,location_:Int,count_:Int,value_:Double Ptr)="__glewProgramUniform4dv"
rem
bbdoc: GL Global glProgramUniform4f(program_:Int,location_:Int,x_:Float,y_:Float,z_:Float,w_:Float)
endrem
Global glProgramUniform4f(program_:Int,location_:Int,x_:Float,y_:Float,z_:Float,w_:Float)="__glewProgramUniform4f"
rem
bbdoc: GL Global glProgramUniform4fv(program_:Int,location_:Int,count_:Int,value_:Float Ptr)
endrem
Global glProgramUniform4fv(program_:Int,location_:Int,count_:Int,value_:Float Ptr)="__glewProgramUniform4fv"
rem
bbdoc: GL Global glProgramUniform4i(program_:Int,location_:Int,x_:Int,y_:Int,z_:Int,w_:Int)
endrem
Global glProgramUniform4i(program_:Int,location_:Int,x_:Int,y_:Int,z_:Int,w_:Int)="__glewProgramUniform4i"
rem
bbdoc: GL Global glProgramUniform4iv(program_:Int,location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glProgramUniform4iv(program_:Int,location_:Int,count_:Int,value_:Int Ptr)="__glewProgramUniform4iv"
rem
bbdoc: GL Global glProgramUniform4ui(program_:Int,location_:Int,x_:Int,y_:Int,z_:Int,w_:Int)
endrem
Global glProgramUniform4ui(program_:Int,location_:Int,x_:Int,y_:Int,z_:Int,w_:Int)="__glewProgramUniform4ui"
rem
bbdoc: GL Global glProgramUniform4uiv(program_:Int,location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glProgramUniform4uiv(program_:Int,location_:Int,count_:Int,value_:Int Ptr)="__glewProgramUniform4uiv"
rem
bbdoc: GL Global glProgramUniformMatrix2dv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)
endrem
Global glProgramUniformMatrix2dv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)="__glewProgramUniformMatrix2dv"
rem
bbdoc: GL Global glProgramUniformMatrix2fv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glProgramUniformMatrix2fv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewProgramUniformMatrix2fv"
rem
bbdoc: GL Global glProgramUniformMatrix2x3dv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)
endrem
Global glProgramUniformMatrix2x3dv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)="__glewProgramUniformMatrix2x3dv"
rem
bbdoc: GL Global glProgramUniformMatrix2x3fv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glProgramUniformMatrix2x3fv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewProgramUniformMatrix2x3fv"
rem
bbdoc: GL Global glProgramUniformMatrix2x4dv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)
endrem
Global glProgramUniformMatrix2x4dv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)="__glewProgramUniformMatrix2x4dv"
rem
bbdoc: GL Global glProgramUniformMatrix2x4fv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glProgramUniformMatrix2x4fv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewProgramUniformMatrix2x4fv"
rem
bbdoc: GL Global glProgramUniformMatrix3dv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)
endrem
Global glProgramUniformMatrix3dv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)="__glewProgramUniformMatrix3dv"
rem
bbdoc: GL Global glProgramUniformMatrix3fv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glProgramUniformMatrix3fv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewProgramUniformMatrix3fv"
rem
bbdoc: GL Global glProgramUniformMatrix3x2dv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)
endrem
Global glProgramUniformMatrix3x2dv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)="__glewProgramUniformMatrix3x2dv"
rem
bbdoc: GL Global glProgramUniformMatrix3x2fv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glProgramUniformMatrix3x2fv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewProgramUniformMatrix3x2fv"
rem
bbdoc: GL Global glProgramUniformMatrix3x4dv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)
endrem
Global glProgramUniformMatrix3x4dv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)="__glewProgramUniformMatrix3x4dv"
rem
bbdoc: GL Global glProgramUniformMatrix3x4fv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glProgramUniformMatrix3x4fv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewProgramUniformMatrix3x4fv"
rem
bbdoc: GL Global glProgramUniformMatrix4dv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)
endrem
Global glProgramUniformMatrix4dv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)="__glewProgramUniformMatrix4dv"
rem
bbdoc: GL Global glProgramUniformMatrix4fv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glProgramUniformMatrix4fv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewProgramUniformMatrix4fv"
rem
bbdoc: GL Global glProgramUniformMatrix4x2dv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)
endrem
Global glProgramUniformMatrix4x2dv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)="__glewProgramUniformMatrix4x2dv"
rem
bbdoc: GL Global glProgramUniformMatrix4x2fv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glProgramUniformMatrix4x2fv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewProgramUniformMatrix4x2fv"
rem
bbdoc: GL Global glProgramUniformMatrix4x3dv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)
endrem
Global glProgramUniformMatrix4x3dv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Double Ptr)="__glewProgramUniformMatrix4x3dv"
rem
bbdoc: GL Global glProgramUniformMatrix4x3fv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glProgramUniformMatrix4x3fv(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewProgramUniformMatrix4x3fv"
rem
bbdoc: GL Global glUseProgramStages(pipeline_:Int,stages_:Int,program_:Int)
endrem
Global glUseProgramStages(pipeline_:Int,stages_:Int,program_:Int)="__glewUseProgramStages"
rem
bbdoc: GL Global glValidateProgramPipeline(pipeline_:Int)
endrem
Global glValidateProgramPipeline(pipeline_:Int)="__glewValidateProgramPipeline"
rem
bbdoc: GL Const GL_ARB_shader_atomic_counters
endrem
Const GL_ARB_shader_atomic_counters=1
rem
bbdoc: GL Const GL_ATOMIC_COUNTER_BUFFER
endrem
Const GL_ATOMIC_COUNTER_BUFFER=$92C0
rem
bbdoc: GL Const GL_ATOMIC_COUNTER_BUFFER_BINDING
endrem
Const GL_ATOMIC_COUNTER_BUFFER_BINDING=$92C1
rem
bbdoc: GL Const GL_ATOMIC_COUNTER_BUFFER_START
endrem
Const GL_ATOMIC_COUNTER_BUFFER_START=$92C2
rem
bbdoc: GL Const GL_ATOMIC_COUNTER_BUFFER_SIZE
endrem
Const GL_ATOMIC_COUNTER_BUFFER_SIZE=$92C3
rem
bbdoc: GL Const GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE
endrem
Const GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE=$92C4
rem
bbdoc: GL Const GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS
endrem
Const GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS=$92C5
rem
bbdoc: GL Const GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES
endrem
Const GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES=$92C6
rem
bbdoc: GL Const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER
endrem
Const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER=$92C7
rem
bbdoc: GL Const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER
endrem
Const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER=$92C8
rem
bbdoc: GL Const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER
endrem
Const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER=$92C9
rem
bbdoc: GL Const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER
endrem
Const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER=$92CA
rem
bbdoc: GL Const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER
endrem
Const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER=$92CB
rem
bbdoc: GL Const GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS
endrem
Const GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS=$92CC
rem
bbdoc: GL Const GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS
endrem
Const GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS=$92CD
rem
bbdoc: GL Const GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS
endrem
Const GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS=$92CE
rem
bbdoc: GL Const GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS
endrem
Const GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS=$92CF
rem
bbdoc: GL Const GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS
endrem
Const GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS=$92D0
rem
bbdoc: GL Const GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS
endrem
Const GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS=$92D1
rem
bbdoc: GL Const GL_MAX_VERTEX_ATOMIC_COUNTERS
endrem
Const GL_MAX_VERTEX_ATOMIC_COUNTERS=$92D2
rem
bbdoc: GL Const GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS
endrem
Const GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS=$92D3
rem
bbdoc: GL Const GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS
endrem
Const GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS=$92D4
rem
bbdoc: GL Const GL_MAX_GEOMETRY_ATOMIC_COUNTERS
endrem
Const GL_MAX_GEOMETRY_ATOMIC_COUNTERS=$92D5
rem
bbdoc: GL Const GL_MAX_FRAGMENT_ATOMIC_COUNTERS
endrem
Const GL_MAX_FRAGMENT_ATOMIC_COUNTERS=$92D6
rem
bbdoc: GL Const GL_MAX_COMBINED_ATOMIC_COUNTERS
endrem
Const GL_MAX_COMBINED_ATOMIC_COUNTERS=$92D7
rem
bbdoc: GL Const GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE
endrem
Const GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE=$92D8
rem
bbdoc: GL Const GL_ACTIVE_ATOMIC_COUNTER_BUFFERS
endrem
Const GL_ACTIVE_ATOMIC_COUNTER_BUFFERS=$92D9
rem
bbdoc: GL Const GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX
endrem
Const GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX=$92DA
rem
bbdoc: GL Const GL_UNSIGNED_INT_ATOMIC_COUNTER
endrem
Const GL_UNSIGNED_INT_ATOMIC_COUNTER=$92DB
rem
bbdoc: GL Const GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS
endrem
Const GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS=$92DC
rem
bbdoc: GL Global glGetActiveAtomicCounterBufferiv(program_:Int,bufferIndex_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetActiveAtomicCounterBufferiv(program_:Int,bufferIndex_:Int,pname_:Int,params_:Int Ptr)="__glewGetActiveAtomicCounterBufferiv"
rem
bbdoc: GL Const GL_ARB_shader_bit_encoding
endrem
Const GL_ARB_shader_bit_encoding=1
rem
bbdoc: GL Const GL_ARB_shader_draw_parameters
endrem
Const GL_ARB_shader_draw_parameters=1
rem
bbdoc: GL Const GL_ARB_shader_group_vote
endrem
Const GL_ARB_shader_group_vote=1
rem
bbdoc: GL Const GL_ARB_shader_image_load_store
endrem
Const GL_ARB_shader_image_load_store=1
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT
endrem
Const GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT=$00000001
rem
bbdoc: GL Const GL_ELEMENT_ARRAY_BARRIER_BIT
endrem
Const GL_ELEMENT_ARRAY_BARRIER_BIT=$00000002
rem
bbdoc: GL Const GL_UNIFORM_BARRIER_BIT
endrem
Const GL_UNIFORM_BARRIER_BIT=$00000004
rem
bbdoc: GL Const GL_TEXTURE_FETCH_BARRIER_BIT
endrem
Const GL_TEXTURE_FETCH_BARRIER_BIT=$00000008
rem
bbdoc: GL Const GL_SHADER_IMAGE_ACCESS_BARRIER_BIT
endrem
Const GL_SHADER_IMAGE_ACCESS_BARRIER_BIT=$00000020
rem
bbdoc: GL Const GL_COMMAND_BARRIER_BIT
endrem
Const GL_COMMAND_BARRIER_BIT=$00000040
rem
bbdoc: GL Const GL_PIXEL_BUFFER_BARRIER_BIT
endrem
Const GL_PIXEL_BUFFER_BARRIER_BIT=$00000080
rem
bbdoc: GL Const GL_TEXTURE_UPDATE_BARRIER_BIT
endrem
Const GL_TEXTURE_UPDATE_BARRIER_BIT=$00000100
rem
bbdoc: GL Const GL_BUFFER_UPDATE_BARRIER_BIT
endrem
Const GL_BUFFER_UPDATE_BARRIER_BIT=$00000200
rem
bbdoc: GL Const GL_FRAMEBUFFER_BARRIER_BIT
endrem
Const GL_FRAMEBUFFER_BARRIER_BIT=$00000400
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BARRIER_BIT
endrem
Const GL_TRANSFORM_FEEDBACK_BARRIER_BIT=$00000800
rem
bbdoc: GL Const GL_ATOMIC_COUNTER_BARRIER_BIT
endrem
Const GL_ATOMIC_COUNTER_BARRIER_BIT=$00001000
rem
bbdoc: GL Const GL_MAX_IMAGE_UNITS
endrem
Const GL_MAX_IMAGE_UNITS=$8F38
rem
bbdoc: GL Const GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS
endrem
Const GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS=$8F39
rem
bbdoc: GL Const GL_IMAGE_BINDING_NAME
endrem
Const GL_IMAGE_BINDING_NAME=$8F3A
rem
bbdoc: GL Const GL_IMAGE_BINDING_LEVEL
endrem
Const GL_IMAGE_BINDING_LEVEL=$8F3B
rem
bbdoc: GL Const GL_IMAGE_BINDING_LAYERED
endrem
Const GL_IMAGE_BINDING_LAYERED=$8F3C
rem
bbdoc: GL Const GL_IMAGE_BINDING_LAYER
endrem
Const GL_IMAGE_BINDING_LAYER=$8F3D
rem
bbdoc: GL Const GL_IMAGE_BINDING_ACCESS
endrem
Const GL_IMAGE_BINDING_ACCESS=$8F3E
rem
bbdoc: GL Const GL_IMAGE_1D
endrem
Const GL_IMAGE_1D=$904C
rem
bbdoc: GL Const GL_IMAGE_2D
endrem
Const GL_IMAGE_2D=$904D
rem
bbdoc: GL Const GL_IMAGE_3D
endrem
Const GL_IMAGE_3D=$904E
rem
bbdoc: GL Const GL_IMAGE_2D_RECT
endrem
Const GL_IMAGE_2D_RECT=$904F
rem
bbdoc: GL Const GL_IMAGE_CUBE
endrem
Const GL_IMAGE_CUBE=$9050
rem
bbdoc: GL Const GL_IMAGE_BUFFER
endrem
Const GL_IMAGE_BUFFER=$9051
rem
bbdoc: GL Const GL_IMAGE_1D_ARRAY
endrem
Const GL_IMAGE_1D_ARRAY=$9052
rem
bbdoc: GL Const GL_IMAGE_2D_ARRAY
endrem
Const GL_IMAGE_2D_ARRAY=$9053
rem
bbdoc: GL Const GL_IMAGE_CUBE_MAP_ARRAY
endrem
Const GL_IMAGE_CUBE_MAP_ARRAY=$9054
rem
bbdoc: GL Const GL_IMAGE_2D_MULTISAMPLE
endrem
Const GL_IMAGE_2D_MULTISAMPLE=$9055
rem
bbdoc: GL Const GL_IMAGE_2D_MULTISAMPLE_ARRAY
endrem
Const GL_IMAGE_2D_MULTISAMPLE_ARRAY=$9056
rem
bbdoc: GL Const GL_INT_IMAGE_1D
endrem
Const GL_INT_IMAGE_1D=$9057
rem
bbdoc: GL Const GL_INT_IMAGE_2D
endrem
Const GL_INT_IMAGE_2D=$9058
rem
bbdoc: GL Const GL_INT_IMAGE_3D
endrem
Const GL_INT_IMAGE_3D=$9059
rem
bbdoc: GL Const GL_INT_IMAGE_2D_RECT
endrem
Const GL_INT_IMAGE_2D_RECT=$905A
rem
bbdoc: GL Const GL_INT_IMAGE_CUBE
endrem
Const GL_INT_IMAGE_CUBE=$905B
rem
bbdoc: GL Const GL_INT_IMAGE_BUFFER
endrem
Const GL_INT_IMAGE_BUFFER=$905C
rem
bbdoc: GL Const GL_INT_IMAGE_1D_ARRAY
endrem
Const GL_INT_IMAGE_1D_ARRAY=$905D
rem
bbdoc: GL Const GL_INT_IMAGE_2D_ARRAY
endrem
Const GL_INT_IMAGE_2D_ARRAY=$905E
rem
bbdoc: GL Const GL_INT_IMAGE_CUBE_MAP_ARRAY
endrem
Const GL_INT_IMAGE_CUBE_MAP_ARRAY=$905F
rem
bbdoc: GL Const GL_INT_IMAGE_2D_MULTISAMPLE
endrem
Const GL_INT_IMAGE_2D_MULTISAMPLE=$9060
rem
bbdoc: GL Const GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY
endrem
Const GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY=$9061
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_1D
endrem
Const GL_UNSIGNED_INT_IMAGE_1D=$9062
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_2D
endrem
Const GL_UNSIGNED_INT_IMAGE_2D=$9063
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_3D
endrem
Const GL_UNSIGNED_INT_IMAGE_3D=$9064
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_2D_RECT
endrem
Const GL_UNSIGNED_INT_IMAGE_2D_RECT=$9065
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_CUBE
endrem
Const GL_UNSIGNED_INT_IMAGE_CUBE=$9066
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_BUFFER
endrem
Const GL_UNSIGNED_INT_IMAGE_BUFFER=$9067
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_1D_ARRAY
endrem
Const GL_UNSIGNED_INT_IMAGE_1D_ARRAY=$9068
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_2D_ARRAY
endrem
Const GL_UNSIGNED_INT_IMAGE_2D_ARRAY=$9069
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY
endrem
Const GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY=$906A
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE
endrem
Const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE=$906B
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY
endrem
Const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY=$906C
rem
bbdoc: GL Const GL_MAX_IMAGE_SAMPLES
endrem
Const GL_MAX_IMAGE_SAMPLES=$906D
rem
bbdoc: GL Const GL_IMAGE_BINDING_FORMAT
endrem
Const GL_IMAGE_BINDING_FORMAT=$906E
rem
bbdoc: GL Const GL_IMAGE_FORMAT_COMPATIBILITY_TYPE
endrem
Const GL_IMAGE_FORMAT_COMPATIBILITY_TYPE=$90C7
rem
bbdoc: GL Const GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE
endrem
Const GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE=$90C8
rem
bbdoc: GL Const GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS
endrem
Const GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS=$90C9
rem
bbdoc: GL Const GL_MAX_VERTEX_IMAGE_UNIFORMS
endrem
Const GL_MAX_VERTEX_IMAGE_UNIFORMS=$90CA
rem
bbdoc: GL Const GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS
endrem
Const GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS=$90CB
rem
bbdoc: GL Const GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS
endrem
Const GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS=$90CC
rem
bbdoc: GL Const GL_MAX_GEOMETRY_IMAGE_UNIFORMS
endrem
Const GL_MAX_GEOMETRY_IMAGE_UNIFORMS=$90CD
rem
bbdoc: GL Const GL_MAX_FRAGMENT_IMAGE_UNIFORMS
endrem
Const GL_MAX_FRAGMENT_IMAGE_UNIFORMS=$90CE
rem
bbdoc: GL Const GL_MAX_COMBINED_IMAGE_UNIFORMS
endrem
Const GL_MAX_COMBINED_IMAGE_UNIFORMS=$90CF
rem
bbdoc: GL Const GL_ALL_BARRIER_BITS
endrem
Const GL_ALL_BARRIER_BITS=$FFFFFFFF
rem
bbdoc: GL Global glBindImageTexture(unit_:Int,texture_:Int,level_:Int,layered_:Byte,layer_:Int,access_:Int,format_:Int)
endrem
Global glBindImageTexture(unit_:Int,texture_:Int,level_:Int,layered_:Byte,layer_:Int,access_:Int,format_:Int)="__glewBindImageTexture"
rem
bbdoc: GL Global glMemoryBarrier(barriers_:Int)
endrem
Global glMemoryBarrier(barriers_:Int)="__glewMemoryBarrier"
rem
bbdoc: GL Const GL_ARB_shader_image_size
endrem
Const GL_ARB_shader_image_size=1
rem
bbdoc: GL Const GL_ARB_shader_objects
endrem
Const GL_ARB_shader_objects=1
rem
bbdoc: GL Const GL_PROGRAM_OBJECT_ARB
endrem
Const GL_PROGRAM_OBJECT_ARB=$8B40
rem
bbdoc: GL Const GL_SHADER_OBJECT_ARB
endrem
Const GL_SHADER_OBJECT_ARB=$8B48
rem
bbdoc: GL Const GL_OBJECT_TYPE_ARB
endrem
Const GL_OBJECT_TYPE_ARB=$8B4E
rem
bbdoc: GL Const GL_OBJECT_SUBTYPE_ARB
endrem
Const GL_OBJECT_SUBTYPE_ARB=$8B4F
rem
bbdoc: GL Const GL_FLOAT_VEC2_ARB
endrem
Const GL_FLOAT_VEC2_ARB=$8B50
rem
bbdoc: GL Const GL_FLOAT_VEC3_ARB
endrem
Const GL_FLOAT_VEC3_ARB=$8B51
rem
bbdoc: GL Const GL_FLOAT_VEC4_ARB
endrem
Const GL_FLOAT_VEC4_ARB=$8B52
rem
bbdoc: GL Const GL_INT_VEC2_ARB
endrem
Const GL_INT_VEC2_ARB=$8B53
rem
bbdoc: GL Const GL_INT_VEC3_ARB
endrem
Const GL_INT_VEC3_ARB=$8B54
rem
bbdoc: GL Const GL_INT_VEC4_ARB
endrem
Const GL_INT_VEC4_ARB=$8B55
rem
bbdoc: GL Const GL_BOOL_ARB
endrem
Const GL_BOOL_ARB=$8B56
rem
bbdoc: GL Const GL_BOOL_VEC2_ARB
endrem
Const GL_BOOL_VEC2_ARB=$8B57
rem
bbdoc: GL Const GL_BOOL_VEC3_ARB
endrem
Const GL_BOOL_VEC3_ARB=$8B58
rem
bbdoc: GL Const GL_BOOL_VEC4_ARB
endrem
Const GL_BOOL_VEC4_ARB=$8B59
rem
bbdoc: GL Const GL_FLOAT_MAT2_ARB
endrem
Const GL_FLOAT_MAT2_ARB=$8B5A
rem
bbdoc: GL Const GL_FLOAT_MAT3_ARB
endrem
Const GL_FLOAT_MAT3_ARB=$8B5B
rem
bbdoc: GL Const GL_FLOAT_MAT4_ARB
endrem
Const GL_FLOAT_MAT4_ARB=$8B5C
rem
bbdoc: GL Const GL_SAMPLER_1D_ARB
endrem
Const GL_SAMPLER_1D_ARB=$8B5D
rem
bbdoc: GL Const GL_SAMPLER_2D_ARB
endrem
Const GL_SAMPLER_2D_ARB=$8B5E
rem
bbdoc: GL Const GL_SAMPLER_3D_ARB
endrem
Const GL_SAMPLER_3D_ARB=$8B5F
rem
bbdoc: GL Const GL_SAMPLER_CUBE_ARB
endrem
Const GL_SAMPLER_CUBE_ARB=$8B60
rem
bbdoc: GL Const GL_SAMPLER_1D_SHADOW_ARB
endrem
Const GL_SAMPLER_1D_SHADOW_ARB=$8B61
rem
bbdoc: GL Const GL_SAMPLER_2D_SHADOW_ARB
endrem
Const GL_SAMPLER_2D_SHADOW_ARB=$8B62
rem
bbdoc: GL Const GL_SAMPLER_2D_RECT_ARB
endrem
Const GL_SAMPLER_2D_RECT_ARB=$8B63
rem
bbdoc: GL Const GL_SAMPLER_2D_RECT_SHADOW_ARB
endrem
Const GL_SAMPLER_2D_RECT_SHADOW_ARB=$8B64
rem
bbdoc: GL Const GL_OBJECT_DELETE_STATUS_ARB
endrem
Const GL_OBJECT_DELETE_STATUS_ARB=$8B80
rem
bbdoc: GL Const GL_OBJECT_COMPILE_STATUS_ARB
endrem
Const GL_OBJECT_COMPILE_STATUS_ARB=$8B81
rem
bbdoc: GL Const GL_OBJECT_LINK_STATUS_ARB
endrem
Const GL_OBJECT_LINK_STATUS_ARB=$8B82
rem
bbdoc: GL Const GL_OBJECT_VALIDATE_STATUS_ARB
endrem
Const GL_OBJECT_VALIDATE_STATUS_ARB=$8B83
rem
bbdoc: GL Const GL_OBJECT_INFO_LOG_LENGTH_ARB
endrem
Const GL_OBJECT_INFO_LOG_LENGTH_ARB=$8B84
rem
bbdoc: GL Const GL_OBJECT_ATTACHED_OBJECTS_ARB
endrem
Const GL_OBJECT_ATTACHED_OBJECTS_ARB=$8B85
rem
bbdoc: GL Const GL_OBJECT_ACTIVE_UNIFORMS_ARB
endrem
Const GL_OBJECT_ACTIVE_UNIFORMS_ARB=$8B86
rem
bbdoc: GL Const GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB
endrem
Const GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB=$8B87
rem
bbdoc: GL Const GL_OBJECT_SHADER_SOURCE_LENGTH_ARB
endrem
Const GL_OBJECT_SHADER_SOURCE_LENGTH_ARB=$8B88
rem
bbdoc: GL Global glAttachObjectARB(containerObj_:Int,obj_:Int)
endrem
Global glAttachObjectARB(containerObj_:Int,obj_:Int)="__glewAttachObjectARB"
rem
bbdoc: GL Global glCompileShaderARB(shaderObj_:Int)
endrem
Global glCompileShaderARB(shaderObj_:Int)="__glewCompileShaderARB"
rem
bbdoc: GL Global glCreateProgramObjectARB:Int()
endrem
Global glCreateProgramObjectARB:Int()="__glewCreateProgramObjectARB"
rem
bbdoc: GL Global glCreateShaderObjectARB:Int(shaderType_:Int)
endrem
Global glCreateShaderObjectARB:Int(shaderType_:Int)="__glewCreateShaderObjectARB"
rem
bbdoc: GL Global glDeleteObjectARB(obj_:Int)
endrem
Global glDeleteObjectARB(obj_:Int)="__glewDeleteObjectARB"
rem
bbdoc: GL Global glDetachObjectARB(containerObj_:Int,attachedObj_:Int)
endrem
Global glDetachObjectARB(containerObj_:Int,attachedObj_:Int)="__glewDetachObjectARB"
rem
bbdoc: GL Global glGetActiveUniformARB(programObj_:Int,index_:Int,maxLength_:Int,length_:Int Ptr,size_:Int Ptr,type_:Int Ptr,name_:Byte Ptr)
endrem
Global glGetActiveUniformARB(programObj_:Int,index_:Int,maxLength_:Int,length_:Int Ptr,size_:Int Ptr,type_:Int Ptr,name_:Byte Ptr)="__glewGetActiveUniformARB"
rem
bbdoc: GL Global glGetAttachedObjectsARB(containerObj_:Int,maxCount_:Int,count_:Int Ptr,obj_:Int Ptr)
endrem
Global glGetAttachedObjectsARB(containerObj_:Int,maxCount_:Int,count_:Int Ptr,obj_:Int Ptr)="__glewGetAttachedObjectsARB"
rem
bbdoc: GL Global glGetHandleARB:Int(pname_:Int)
endrem
Global glGetHandleARB:Int(pname_:Int)="__glewGetHandleARB"
rem
bbdoc: GL Global glGetInfoLogARB(obj_:Int,maxLength_:Int,length_:Int Ptr,infoLog_:Byte Ptr)
endrem
Global glGetInfoLogARB(obj_:Int,maxLength_:Int,length_:Int Ptr,infoLog_:Byte Ptr)="__glewGetInfoLogARB"
rem
bbdoc: GL Global glGetObjectParameterfvARB(obj_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetObjectParameterfvARB(obj_:Int,pname_:Int,params_:Float Ptr)="__glewGetObjectParameterfvARB"
rem
bbdoc: GL Global glGetObjectParameterivARB(obj_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetObjectParameterivARB(obj_:Int,pname_:Int,params_:Int Ptr)="__glewGetObjectParameterivARB"
rem
bbdoc: GL Global glGetShaderSourceARB(obj_:Int,maxLength_:Int,length_:Int Ptr,source_:Byte Ptr)
endrem
Global glGetShaderSourceARB(obj_:Int,maxLength_:Int,length_:Int Ptr,source_:Byte Ptr)="__glewGetShaderSourceARB"
rem
bbdoc: GL Global glGetUniformLocationARB:Int(programObj_:Int,name_:Byte Ptr)
endrem
Global glGetUniformLocationARB:Int(programObj_:Int,name_:Byte Ptr)="__glewGetUniformLocationARB"
rem
bbdoc: GL Global glGetUniformfvARB(programObj_:Int,location_:Int,params_:Float Ptr)
endrem
Global glGetUniformfvARB(programObj_:Int,location_:Int,params_:Float Ptr)="__glewGetUniformfvARB"
rem
bbdoc: GL Global glGetUniformivARB(programObj_:Int,location_:Int,params_:Int Ptr)
endrem
Global glGetUniformivARB(programObj_:Int,location_:Int,params_:Int Ptr)="__glewGetUniformivARB"
rem
bbdoc: GL Global glLinkProgramARB(programObj_:Int)
endrem
Global glLinkProgramARB(programObj_:Int)="__glewLinkProgramARB"
rem
bbdoc: GL Global glShaderSourceARB(shaderObj_:Int,count_:Int,string_:Byte Ptr Ptr,length_:Int Ptr)
endrem
Global glShaderSourceARB(shaderObj_:Int,count_:Int,string_:Byte Ptr Ptr,length_:Int Ptr)="__glewShaderSourceARB"
rem
bbdoc: GL Global glUniform1fARB(location_:Int,v0_:Float)
endrem
Global glUniform1fARB(location_:Int,v0_:Float)="__glewUniform1fARB"
rem
bbdoc: GL Global glUniform1fvARB(location_:Int,count_:Int,value_:Float Ptr)
endrem
Global glUniform1fvARB(location_:Int,count_:Int,value_:Float Ptr)="__glewUniform1fvARB"
rem
bbdoc: GL Global glUniform1iARB(location_:Int,v0_:Int)
endrem
Global glUniform1iARB(location_:Int,v0_:Int)="__glewUniform1iARB"
rem
bbdoc: GL Global glUniform1ivARB(location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glUniform1ivARB(location_:Int,count_:Int,value_:Int Ptr)="__glewUniform1ivARB"
rem
bbdoc: GL Global glUniform2fARB(location_:Int,v0_:Float,v1_:Float)
endrem
Global glUniform2fARB(location_:Int,v0_:Float,v1_:Float)="__glewUniform2fARB"
rem
bbdoc: GL Global glUniform2fvARB(location_:Int,count_:Int,value_:Float Ptr)
endrem
Global glUniform2fvARB(location_:Int,count_:Int,value_:Float Ptr)="__glewUniform2fvARB"
rem
bbdoc: GL Global glUniform2iARB(location_:Int,v0_:Int,v1_:Int)
endrem
Global glUniform2iARB(location_:Int,v0_:Int,v1_:Int)="__glewUniform2iARB"
rem
bbdoc: GL Global glUniform2ivARB(location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glUniform2ivARB(location_:Int,count_:Int,value_:Int Ptr)="__glewUniform2ivARB"
rem
bbdoc: GL Global glUniform3fARB(location_:Int,v0_:Float,v1_:Float,v2_:Float)
endrem
Global glUniform3fARB(location_:Int,v0_:Float,v1_:Float,v2_:Float)="__glewUniform3fARB"
rem
bbdoc: GL Global glUniform3fvARB(location_:Int,count_:Int,value_:Float Ptr)
endrem
Global glUniform3fvARB(location_:Int,count_:Int,value_:Float Ptr)="__glewUniform3fvARB"
rem
bbdoc: GL Global glUniform3iARB(location_:Int,v0_:Int,v1_:Int,v2_:Int)
endrem
Global glUniform3iARB(location_:Int,v0_:Int,v1_:Int,v2_:Int)="__glewUniform3iARB"
rem
bbdoc: GL Global glUniform3ivARB(location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glUniform3ivARB(location_:Int,count_:Int,value_:Int Ptr)="__glewUniform3ivARB"
rem
bbdoc: GL Global glUniform4fARB(location_:Int,v0_:Float,v1_:Float,v2_:Float,v3_:Float)
endrem
Global glUniform4fARB(location_:Int,v0_:Float,v1_:Float,v2_:Float,v3_:Float)="__glewUniform4fARB"
rem
bbdoc: GL Global glUniform4fvARB(location_:Int,count_:Int,value_:Float Ptr)
endrem
Global glUniform4fvARB(location_:Int,count_:Int,value_:Float Ptr)="__glewUniform4fvARB"
rem
bbdoc: GL Global glUniform4iARB(location_:Int,v0_:Int,v1_:Int,v2_:Int,v3_:Int)
endrem
Global glUniform4iARB(location_:Int,v0_:Int,v1_:Int,v2_:Int,v3_:Int)="__glewUniform4iARB"
rem
bbdoc: GL Global glUniform4ivARB(location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glUniform4ivARB(location_:Int,count_:Int,value_:Int Ptr)="__glewUniform4ivARB"
rem
bbdoc: GL Global glUniformMatrix2fvARB(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glUniformMatrix2fvARB(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewUniformMatrix2fvARB"
rem
bbdoc: GL Global glUniformMatrix3fvARB(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glUniformMatrix3fvARB(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewUniformMatrix3fvARB"
rem
bbdoc: GL Global glUniformMatrix4fvARB(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glUniformMatrix4fvARB(location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewUniformMatrix4fvARB"
rem
bbdoc: GL Global glUseProgramObjectARB(programObj_:Int)
endrem
Global glUseProgramObjectARB(programObj_:Int)="__glewUseProgramObjectARB"
rem
bbdoc: GL Global glValidateProgramARB(programObj_:Int)
endrem
Global glValidateProgramARB(programObj_:Int)="__glewValidateProgramARB"
rem
bbdoc: GL Const GL_ARB_shader_precision
endrem
Const GL_ARB_shader_precision=1
rem
bbdoc: GL Const GL_ARB_shader_stencil_export
endrem
Const GL_ARB_shader_stencil_export=1
rem
bbdoc: GL Const GL_ARB_shader_storage_buffer_object
endrem
Const GL_ARB_shader_storage_buffer_object=1
rem
bbdoc: GL Const GL_SHADER_STORAGE_BARRIER_BIT
endrem
Const GL_SHADER_STORAGE_BARRIER_BIT=$2000
rem
bbdoc: GL Const GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES
endrem
Const GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES=$8F39
rem
bbdoc: GL Const GL_SHADER_STORAGE_BUFFER
endrem
Const GL_SHADER_STORAGE_BUFFER=$90D2
rem
bbdoc: GL Const GL_SHADER_STORAGE_BUFFER_BINDING
endrem
Const GL_SHADER_STORAGE_BUFFER_BINDING=$90D3
rem
bbdoc: GL Const GL_SHADER_STORAGE_BUFFER_START
endrem
Const GL_SHADER_STORAGE_BUFFER_START=$90D4
rem
bbdoc: GL Const GL_SHADER_STORAGE_BUFFER_SIZE
endrem
Const GL_SHADER_STORAGE_BUFFER_SIZE=$90D5
rem
bbdoc: GL Const GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS
endrem
Const GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS=$90D6
rem
bbdoc: GL Const GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS
endrem
Const GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS=$90D7
rem
bbdoc: GL Const GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS
endrem
Const GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS=$90D8
rem
bbdoc: GL Const GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS
endrem
Const GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS=$90D9
rem
bbdoc: GL Const GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS
endrem
Const GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS=$90DA
rem
bbdoc: GL Const GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS
endrem
Const GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS=$90DB
rem
bbdoc: GL Const GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS
endrem
Const GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS=$90DC
rem
bbdoc: GL Const GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS
endrem
Const GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS=$90DD
rem
bbdoc: GL Const GL_MAX_SHADER_STORAGE_BLOCK_SIZE
endrem
Const GL_MAX_SHADER_STORAGE_BLOCK_SIZE=$90DE
rem
bbdoc: GL Const GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT
endrem
Const GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT=$90DF
rem
bbdoc: GL Global glShaderStorageBlockBinding(program_:Int,storageBlockIndex_:Int,storageBlockBinding_:Int)
endrem
Global glShaderStorageBlockBinding(program_:Int,storageBlockIndex_:Int,storageBlockBinding_:Int)="__glewShaderStorageBlockBinding"
rem
bbdoc: GL Const GL_ARB_shader_subroutine
endrem
Const GL_ARB_shader_subroutine=1
rem
bbdoc: GL Const GL_ACTIVE_SUBROUTINES
endrem
Const GL_ACTIVE_SUBROUTINES=$8DE5
rem
bbdoc: GL Const GL_ACTIVE_SUBROUTINE_UNIFORMS
endrem
Const GL_ACTIVE_SUBROUTINE_UNIFORMS=$8DE6
rem
bbdoc: GL Const GL_MAX_SUBROUTINES
endrem
Const GL_MAX_SUBROUTINES=$8DE7
rem
bbdoc: GL Const GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS
endrem
Const GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS=$8DE8
rem
bbdoc: GL Const GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS
endrem
Const GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS=$8E47
rem
bbdoc: GL Const GL_ACTIVE_SUBROUTINE_MAX_LENGTH
endrem
Const GL_ACTIVE_SUBROUTINE_MAX_LENGTH=$8E48
rem
bbdoc: GL Const GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH
endrem
Const GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH=$8E49
rem
bbdoc: GL Const GL_NUM_COMPATIBLE_SUBROUTINES
endrem
Const GL_NUM_COMPATIBLE_SUBROUTINES=$8E4A
rem
bbdoc: GL Const GL_COMPATIBLE_SUBROUTINES
endrem
Const GL_COMPATIBLE_SUBROUTINES=$8E4B
rem
bbdoc: GL Global glGetActiveSubroutineName(program_:Int,shadertype_:Int,index_:Int,bufsize_:Int,length_:Int Ptr,name_:Byte Ptr)
endrem
Global glGetActiveSubroutineName(program_:Int,shadertype_:Int,index_:Int,bufsize_:Int,length_:Int Ptr,name_:Byte Ptr)="__glewGetActiveSubroutineName"
rem
bbdoc: GL Global glGetActiveSubroutineUniformName(program_:Int,shadertype_:Int,index_:Int,bufsize_:Int,length_:Int Ptr,name_:Byte Ptr)
endrem
Global glGetActiveSubroutineUniformName(program_:Int,shadertype_:Int,index_:Int,bufsize_:Int,length_:Int Ptr,name_:Byte Ptr)="__glewGetActiveSubroutineUniformName"
rem
bbdoc: GL Global glGetActiveSubroutineUniformiv(program_:Int,shadertype_:Int,index_:Int,pname_:Int,values_:Int Ptr)
endrem
Global glGetActiveSubroutineUniformiv(program_:Int,shadertype_:Int,index_:Int,pname_:Int,values_:Int Ptr)="__glewGetActiveSubroutineUniformiv"
rem
bbdoc: GL Global glGetProgramStageiv(program_:Int,shadertype_:Int,pname_:Int,values_:Int Ptr)
endrem
Global glGetProgramStageiv(program_:Int,shadertype_:Int,pname_:Int,values_:Int Ptr)="__glewGetProgramStageiv"
rem
bbdoc: GL Global glGetSubroutineIndex:Int(program_:Int,shadertype_:Int,name_:Byte Ptr)
endrem
Global glGetSubroutineIndex:Int(program_:Int,shadertype_:Int,name_:Byte Ptr)="__glewGetSubroutineIndex"
rem
bbdoc: GL Global glGetSubroutineUniformLocation:Int(program_:Int,shadertype_:Int,name_:Byte Ptr)
endrem
Global glGetSubroutineUniformLocation:Int(program_:Int,shadertype_:Int,name_:Byte Ptr)="__glewGetSubroutineUniformLocation"
rem
bbdoc: GL Global glGetUniformSubroutineuiv(shadertype_:Int,location_:Int,params_:Int Ptr)
endrem
Global glGetUniformSubroutineuiv(shadertype_:Int,location_:Int,params_:Int Ptr)="__glewGetUniformSubroutineuiv"
rem
bbdoc: GL Global glUniformSubroutinesuiv(shadertype_:Int,count_:Int,indices_:Int Ptr)
endrem
Global glUniformSubroutinesuiv(shadertype_:Int,count_:Int,indices_:Int Ptr)="__glewUniformSubroutinesuiv"
rem
bbdoc: GL Const GL_ARB_shader_texture_image_samples
endrem
Const GL_ARB_shader_texture_image_samples=1
rem
bbdoc: GL Const GL_ARB_shader_texture_lod
endrem
Const GL_ARB_shader_texture_lod=1
rem
bbdoc: GL Const GL_ARB_shading_language_100
endrem
Const GL_ARB_shading_language_100=1
rem
bbdoc: GL Const GL_SHADING_LANGUAGE_VERSION_ARB
endrem
Const GL_SHADING_LANGUAGE_VERSION_ARB=$8B8C
rem
bbdoc: GL Const GL_ARB_shading_language_420pack
endrem
Const GL_ARB_shading_language_420pack=1
rem
bbdoc: GL Const GL_ARB_shading_language_include
endrem
Const GL_ARB_shading_language_include=1
rem
bbdoc: GL Const GL_SHADER_INCLUDE_ARB
endrem
Const GL_SHADER_INCLUDE_ARB=$8DAE
rem
bbdoc: GL Const GL_NAMED_STRING_LENGTH_ARB
endrem
Const GL_NAMED_STRING_LENGTH_ARB=$8DE9
rem
bbdoc: GL Const GL_NAMED_STRING_TYPE_ARB
endrem
Const GL_NAMED_STRING_TYPE_ARB=$8DEA
rem
bbdoc: GL Global glCompileShaderIncludeARB(shader_:Int,count_:Int,path_:Byte Ptr Ptr,length_:Int Ptr)
endrem
Global glCompileShaderIncludeARB(shader_:Int,count_:Int,path_:Byte Ptr Ptr,length_:Int Ptr)="__glewCompileShaderIncludeARB"
rem
bbdoc: GL Global glDeleteNamedStringARB(namelen_:Int,name_:Byte Ptr)
endrem
Global glDeleteNamedStringARB(namelen_:Int,name_:Byte Ptr)="__glewDeleteNamedStringARB"
rem
bbdoc: GL Global glGetNamedStringARB(namelen_:Int,name_:Byte Ptr,bufSize_:Int,stringlen_:Int Ptr,string_:Byte Ptr)
endrem
Global glGetNamedStringARB(namelen_:Int,name_:Byte Ptr,bufSize_:Int,stringlen_:Int Ptr,string_:Byte Ptr)="__glewGetNamedStringARB"
rem
bbdoc: GL Global glGetNamedStringivARB(namelen_:Int,name_:Byte Ptr,pname_:Int,params_:Int Ptr)
endrem
Global glGetNamedStringivARB(namelen_:Int,name_:Byte Ptr,pname_:Int,params_:Int Ptr)="__glewGetNamedStringivARB"
rem
bbdoc: GL Global glIsNamedStringARB:Byte(namelen_:Int,name_:Byte Ptr)
endrem
Global glIsNamedStringARB:Byte(namelen_:Int,name_:Byte Ptr)="__glewIsNamedStringARB"
rem
bbdoc: GL Global glNamedStringARB(type_:Int,namelen_:Int,name_:Byte Ptr,stringlen_:Int,string_:Byte Ptr)
endrem
Global glNamedStringARB(type_:Int,namelen_:Int,name_:Byte Ptr,stringlen_:Int,string_:Byte Ptr)="__glewNamedStringARB"
rem
bbdoc: GL Const GL_ARB_shading_language_packing
endrem
Const GL_ARB_shading_language_packing=1
rem
bbdoc: GL Const GL_ARB_shadow
endrem
Const GL_ARB_shadow=1
rem
bbdoc: GL Const GL_TEXTURE_COMPARE_MODE_ARB
endrem
Const GL_TEXTURE_COMPARE_MODE_ARB=$884C
rem
bbdoc: GL Const GL_TEXTURE_COMPARE_FUNC_ARB
endrem
Const GL_TEXTURE_COMPARE_FUNC_ARB=$884D
rem
bbdoc: GL Const GL_COMPARE_R_TO_TEXTURE_ARB
endrem
Const GL_COMPARE_R_TO_TEXTURE_ARB=$884E
rem
bbdoc: GL Const GL_ARB_shadow_ambient
endrem
Const GL_ARB_shadow_ambient=1
rem
bbdoc: GL Const GL_TEXTURE_COMPARE_FAIL_VALUE_ARB
endrem
Const GL_TEXTURE_COMPARE_FAIL_VALUE_ARB=$80BF
rem
bbdoc: GL Const GL_ARB_sparse_buffer
endrem
Const GL_ARB_sparse_buffer=1
rem
bbdoc: GL Const GL_SPARSE_STORAGE_BIT_ARB
endrem
Const GL_SPARSE_STORAGE_BIT_ARB=$0400
rem
bbdoc: GL Const GL_SPARSE_BUFFER_PAGE_SIZE_ARB
endrem
Const GL_SPARSE_BUFFER_PAGE_SIZE_ARB=$82F8
rem
bbdoc: GL Global glBufferPageCommitmentARB(target_:Int,offset_:Int,size_:Int,commit_:Byte)
endrem
Global glBufferPageCommitmentARB(target_:Int,offset_:Int,size_:Int,commit_:Byte)="__glewBufferPageCommitmentARB"
rem
bbdoc: GL Const GL_ARB_sparse_texture
endrem
Const GL_ARB_sparse_texture=1
rem
bbdoc: GL Const GL_VIRTUAL_PAGE_SIZE_X_ARB
endrem
Const GL_VIRTUAL_PAGE_SIZE_X_ARB=$9195
rem
bbdoc: GL Const GL_VIRTUAL_PAGE_SIZE_Y_ARB
endrem
Const GL_VIRTUAL_PAGE_SIZE_Y_ARB=$9196
rem
bbdoc: GL Const GL_VIRTUAL_PAGE_SIZE_Z_ARB
endrem
Const GL_VIRTUAL_PAGE_SIZE_Z_ARB=$9197
rem
bbdoc: GL Const GL_MAX_SPARSE_TEXTURE_SIZE_ARB
endrem
Const GL_MAX_SPARSE_TEXTURE_SIZE_ARB=$9198
rem
bbdoc: GL Const GL_MAX_SPARSE_3D_TEXTURE_SIZE_ARB
endrem
Const GL_MAX_SPARSE_3D_TEXTURE_SIZE_ARB=$9199
rem
bbdoc: GL Const GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB
endrem
Const GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB=$919A
rem
bbdoc: GL Const GL_TEXTURE_SPARSE_ARB
endrem
Const GL_TEXTURE_SPARSE_ARB=$91A6
rem
bbdoc: GL Const GL_VIRTUAL_PAGE_SIZE_INDEX_ARB
endrem
Const GL_VIRTUAL_PAGE_SIZE_INDEX_ARB=$91A7
rem
bbdoc: GL Const GL_NUM_VIRTUAL_PAGE_SIZES_ARB
endrem
Const GL_NUM_VIRTUAL_PAGE_SIZES_ARB=$91A8
rem
bbdoc: GL Const GL_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_ARB
endrem
Const GL_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_ARB=$91A9
rem
bbdoc: GL Const GL_NUM_SPARSE_LEVELS_ARB
endrem
Const GL_NUM_SPARSE_LEVELS_ARB=$91AA
rem
bbdoc: GL Global glTexPageCommitmentARB(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,commit_:Byte)
endrem
Global glTexPageCommitmentARB(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,commit_:Byte)="__glewTexPageCommitmentARB"
rem
bbdoc: GL Global glTexturePageCommitmentEXT(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,commit_:Byte)
endrem
Global glTexturePageCommitmentEXT(texture_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,commit_:Byte)="__glewTexturePageCommitmentEXT"
rem
bbdoc: GL Const GL_ARB_stencil_texturing
endrem
Const GL_ARB_stencil_texturing=1
rem
bbdoc: GL Const GL_DEPTH_STENCIL_TEXTURE_MODE
endrem
Const GL_DEPTH_STENCIL_TEXTURE_MODE=$90EA
rem
bbdoc: GL Const GL_ARB_sync
endrem
Const GL_ARB_sync=1
rem
bbdoc: GL Const GL_SYNC_FLUSH_COMMANDS_BIT
endrem
Const GL_SYNC_FLUSH_COMMANDS_BIT=$00000001
rem
bbdoc: GL Const GL_MAX_SERVER_WAIT_TIMEOUT
endrem
Const GL_MAX_SERVER_WAIT_TIMEOUT=$9111
rem
bbdoc: GL Const GL_OBJECT_TYPE
endrem
Const GL_OBJECT_TYPE=$9112
rem
bbdoc: GL Const GL_SYNC_CONDITION
endrem
Const GL_SYNC_CONDITION=$9113
rem
bbdoc: GL Const GL_SYNC_STATUS
endrem
Const GL_SYNC_STATUS=$9114
rem
bbdoc: GL Const GL_SYNC_FLAGS
endrem
Const GL_SYNC_FLAGS=$9115
rem
bbdoc: GL Const GL_SYNC_FENCE
endrem
Const GL_SYNC_FENCE=$9116
rem
bbdoc: GL Const GL_SYNC_GPU_COMMANDS_COMPLETE
endrem
Const GL_SYNC_GPU_COMMANDS_COMPLETE=$9117
rem
bbdoc: GL Const GL_UNSIGNALED
endrem
Const GL_UNSIGNALED=$9118
rem
bbdoc: GL Const GL_SIGNALED
endrem
Const GL_SIGNALED=$9119
rem
bbdoc: GL Const GL_ALREADY_SIGNALED
endrem
Const GL_ALREADY_SIGNALED=$911A
rem
bbdoc: GL Const GL_TIMEOUT_EXPIRED
endrem
Const GL_TIMEOUT_EXPIRED=$911B
rem
bbdoc: GL Const GL_CONDITION_SATISFIED
endrem
Const GL_CONDITION_SATISFIED=$911C
rem
bbdoc: GL Const GL_WAIT_FAILED
endrem
Const GL_WAIT_FAILED=$911D
rem
bbdoc: GL Const GL_TIMEOUT_IGNORED
endrem
Const GL_TIMEOUT_IGNORED=$FFFFFFFFFFFFFFFF
rem
bbdoc: GL Global glGetInteger64v(pname_:Int,params_:Long Ptr)
endrem
Global glGetInteger64v(pname_:Int,params_:Long Ptr)="__glewGetInteger64v"
rem
bbdoc: GL Const GL_ARB_tessellation_shader
endrem
Const GL_ARB_tessellation_shader=1
rem
bbdoc: GL Const GL_PATCHES
endrem
Const GL_PATCHES=$E
rem
bbdoc: GL Const GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER
endrem
Const GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER=$84F0
rem
bbdoc: GL Const GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER
endrem
Const GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER=$84F1
rem
bbdoc: GL Const GL_MAX_TESS_CONTROL_INPUT_COMPONENTS
endrem
Const GL_MAX_TESS_CONTROL_INPUT_COMPONENTS=$886C
rem
bbdoc: GL Const GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS
endrem
Const GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS=$886D
rem
bbdoc: GL Const GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS
endrem
Const GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS=$8E1E
rem
bbdoc: GL Const GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS
endrem
Const GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS=$8E1F
rem
bbdoc: GL Const GL_PATCH_VERTICES
endrem
Const GL_PATCH_VERTICES=$8E72
rem
bbdoc: GL Const GL_PATCH_DEFAULT_INNER_LEVEL
endrem
Const GL_PATCH_DEFAULT_INNER_LEVEL=$8E73
rem
bbdoc: GL Const GL_PATCH_DEFAULT_OUTER_LEVEL
endrem
Const GL_PATCH_DEFAULT_OUTER_LEVEL=$8E74
rem
bbdoc: GL Const GL_TESS_CONTROL_OUTPUT_VERTICES
endrem
Const GL_TESS_CONTROL_OUTPUT_VERTICES=$8E75
rem
bbdoc: GL Const GL_TESS_GEN_MODE
endrem
Const GL_TESS_GEN_MODE=$8E76
rem
bbdoc: GL Const GL_TESS_GEN_SPACING
endrem
Const GL_TESS_GEN_SPACING=$8E77
rem
bbdoc: GL Const GL_TESS_GEN_VERTEX_ORDER
endrem
Const GL_TESS_GEN_VERTEX_ORDER=$8E78
rem
bbdoc: GL Const GL_TESS_GEN_POINT_MODE
endrem
Const GL_TESS_GEN_POINT_MODE=$8E79
rem
bbdoc: GL Const GL_ISOLINES
endrem
Const GL_ISOLINES=$8E7A
rem
bbdoc: GL Const GL_FRACTIONAL_ODD
endrem
Const GL_FRACTIONAL_ODD=$8E7B
rem
bbdoc: GL Const GL_FRACTIONAL_EVEN
endrem
Const GL_FRACTIONAL_EVEN=$8E7C
rem
bbdoc: GL Const GL_MAX_PATCH_VERTICES
endrem
Const GL_MAX_PATCH_VERTICES=$8E7D
rem
bbdoc: GL Const GL_MAX_TESS_GEN_LEVEL
endrem
Const GL_MAX_TESS_GEN_LEVEL=$8E7E
rem
bbdoc: GL Const GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS
endrem
Const GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS=$8E7F
rem
bbdoc: GL Const GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS
endrem
Const GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS=$8E80
rem
bbdoc: GL Const GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS
endrem
Const GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS=$8E81
rem
bbdoc: GL Const GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS
endrem
Const GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS=$8E82
rem
bbdoc: GL Const GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS
endrem
Const GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS=$8E83
rem
bbdoc: GL Const GL_MAX_TESS_PATCH_COMPONENTS
endrem
Const GL_MAX_TESS_PATCH_COMPONENTS=$8E84
rem
bbdoc: GL Const GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS
endrem
Const GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS=$8E85
rem
bbdoc: GL Const GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS
endrem
Const GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS=$8E86
rem
bbdoc: GL Const GL_TESS_EVALUATION_SHADER
endrem
Const GL_TESS_EVALUATION_SHADER=$8E87
rem
bbdoc: GL Const GL_TESS_CONTROL_SHADER
endrem
Const GL_TESS_CONTROL_SHADER=$8E88
rem
bbdoc: GL Const GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS
endrem
Const GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS=$8E89
rem
bbdoc: GL Const GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS
endrem
Const GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS=$8E8A
rem
bbdoc: GL Global glPatchParameterfv(pname_:Int,values_:Float Ptr)
endrem
Global glPatchParameterfv(pname_:Int,values_:Float Ptr)="__glewPatchParameterfv"
rem
bbdoc: GL Global glPatchParameteri(pname_:Int,value_:Int)
endrem
Global glPatchParameteri(pname_:Int,value_:Int)="__glewPatchParameteri"
rem
bbdoc: GL Const GL_ARB_texture_barrier
endrem
Const GL_ARB_texture_barrier=1
rem
bbdoc: GL Global glTextureBarrier()
endrem
Global glTextureBarrier()="__glewTextureBarrier"
rem
bbdoc: GL Const GL_ARB_texture_border_clamp
endrem
Const GL_ARB_texture_border_clamp=1
rem
bbdoc: GL Const GL_CLAMP_TO_BORDER_ARB
endrem
Const GL_CLAMP_TO_BORDER_ARB=$812D
rem
bbdoc: GL Const GL_ARB_texture_buffer_object
endrem
Const GL_ARB_texture_buffer_object=1
rem
bbdoc: GL Const GL_TEXTURE_BUFFER_ARB
endrem
Const GL_TEXTURE_BUFFER_ARB=$8C2A
rem
bbdoc: GL Const GL_MAX_TEXTURE_BUFFER_SIZE_ARB
endrem
Const GL_MAX_TEXTURE_BUFFER_SIZE_ARB=$8C2B
rem
bbdoc: GL Const GL_TEXTURE_BINDING_BUFFER_ARB
endrem
Const GL_TEXTURE_BINDING_BUFFER_ARB=$8C2C
rem
bbdoc: GL Const GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB
endrem
Const GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB=$8C2D
rem
bbdoc: GL Const GL_TEXTURE_BUFFER_FORMAT_ARB
endrem
Const GL_TEXTURE_BUFFER_FORMAT_ARB=$8C2E
rem
bbdoc: GL Global glTexBufferARB(target_:Int,internalformat_:Int,buffer_:Int)
endrem
Global glTexBufferARB(target_:Int,internalformat_:Int,buffer_:Int)="__glewTexBufferARB"
rem
bbdoc: GL Const GL_ARB_texture_buffer_object_rgb32
endrem
Const GL_ARB_texture_buffer_object_rgb32=1
rem
bbdoc: GL Const GL_ARB_texture_buffer_range
endrem
Const GL_ARB_texture_buffer_range=1
rem
bbdoc: GL Const GL_TEXTURE_BUFFER_OFFSET
endrem
Const GL_TEXTURE_BUFFER_OFFSET=$919D
rem
bbdoc: GL Const GL_TEXTURE_BUFFER_SIZE
endrem
Const GL_TEXTURE_BUFFER_SIZE=$919E
rem
bbdoc: GL Const GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT
endrem
Const GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT=$919F
rem
bbdoc: GL Global glTexBufferRange(target_:Int,internalformat_:Int,buffer_:Int,offset_:Int,size_:Int)
endrem
Global glTexBufferRange(target_:Int,internalformat_:Int,buffer_:Int,offset_:Int,size_:Int)="__glewTexBufferRange"
rem
bbdoc: GL Global glTextureBufferRangeEXT(texture_:Int,target_:Int,internalformat_:Int,buffer_:Int,offset_:Int,size_:Int)
endrem
Global glTextureBufferRangeEXT(texture_:Int,target_:Int,internalformat_:Int,buffer_:Int,offset_:Int,size_:Int)="__glewTextureBufferRangeEXT"
rem
bbdoc: GL Const GL_ARB_texture_compression
endrem
Const GL_ARB_texture_compression=1
rem
bbdoc: GL Const GL_COMPRESSED_ALPHA_ARB
endrem
Const GL_COMPRESSED_ALPHA_ARB=$84E9
rem
bbdoc: GL Const GL_COMPRESSED_LUMINANCE_ARB
endrem
Const GL_COMPRESSED_LUMINANCE_ARB=$84EA
rem
bbdoc: GL Const GL_COMPRESSED_LUMINANCE_ALPHA_ARB
endrem
Const GL_COMPRESSED_LUMINANCE_ALPHA_ARB=$84EB
rem
bbdoc: GL Const GL_COMPRESSED_INTENSITY_ARB
endrem
Const GL_COMPRESSED_INTENSITY_ARB=$84EC
rem
bbdoc: GL Const GL_COMPRESSED_RGB_ARB
endrem
Const GL_COMPRESSED_RGB_ARB=$84ED
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_ARB
endrem
Const GL_COMPRESSED_RGBA_ARB=$84EE
rem
bbdoc: GL Const GL_TEXTURE_COMPRESSION_HINT_ARB
endrem
Const GL_TEXTURE_COMPRESSION_HINT_ARB=$84EF
rem
bbdoc: GL Const GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB
endrem
Const GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB=$86A0
rem
bbdoc: GL Const GL_TEXTURE_COMPRESSED_ARB
endrem
Const GL_TEXTURE_COMPRESSED_ARB=$86A1
rem
bbdoc: GL Const GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB
endrem
Const GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB=$86A2
rem
bbdoc: GL Const GL_COMPRESSED_TEXTURE_FORMATS_ARB
endrem
Const GL_COMPRESSED_TEXTURE_FORMATS_ARB=$86A3
rem
bbdoc: GL Global glCompressedTexImage1DARB(target_:Int,level_:Int,internalformat_:Int,width_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTexImage1DARB(target_:Int,level_:Int,internalformat_:Int,width_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTexImage1DARB"
rem
bbdoc: GL Global glCompressedTexImage2DARB(target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTexImage2DARB(target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTexImage2DARB"
rem
bbdoc: GL Global glCompressedTexImage3DARB(target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTexImage3DARB(target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTexImage3DARB"
rem
bbdoc: GL Global glCompressedTexSubImage1DARB(target_:Int,level_:Int,xoffset_:Int,width_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTexSubImage1DARB(target_:Int,level_:Int,xoffset_:Int,width_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTexSubImage1DARB"
rem
bbdoc: GL Global glCompressedTexSubImage2DARB(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,width_:Int,height_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTexSubImage2DARB(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,width_:Int,height_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTexSubImage2DARB"
rem
bbdoc: GL Global glCompressedTexSubImage3DARB(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTexSubImage3DARB(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTexSubImage3DARB"
rem
bbdoc: GL Global glGetCompressedTexImageARB(target_:Int,lod_:Int,img_:Byte Ptr)
endrem
Global glGetCompressedTexImageARB(target_:Int,lod_:Int,img_:Byte Ptr)="__glewGetCompressedTexImageARB"
rem
bbdoc: GL Const GL_ARB_texture_compression_bptc
endrem
Const GL_ARB_texture_compression_bptc=1
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_BPTC_UNORM_ARB
endrem
Const GL_COMPRESSED_RGBA_BPTC_UNORM_ARB=$8E8C
rem
bbdoc: GL Const GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB
endrem
Const GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB=$8E8D
rem
bbdoc: GL Const GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB
endrem
Const GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB=$8E8E
rem
bbdoc: GL Const GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB
endrem
Const GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB=$8E8F
rem
bbdoc: GL Const GL_ARB_texture_compression_rgtc
endrem
Const GL_ARB_texture_compression_rgtc=1
rem
bbdoc: GL Const GL_COMPRESSED_RED_RGTC1
endrem
Const GL_COMPRESSED_RED_RGTC1=$8DBB
rem
bbdoc: GL Const GL_COMPRESSED_SIGNED_RED_RGTC1
endrem
Const GL_COMPRESSED_SIGNED_RED_RGTC1=$8DBC
rem
bbdoc: GL Const GL_COMPRESSED_RG_RGTC2
endrem
Const GL_COMPRESSED_RG_RGTC2=$8DBD
rem
bbdoc: GL Const GL_COMPRESSED_SIGNED_RG_RGTC2
endrem
Const GL_COMPRESSED_SIGNED_RG_RGTC2=$8DBE
rem
bbdoc: GL Const GL_ARB_texture_cube_map
endrem
Const GL_ARB_texture_cube_map=1
rem
bbdoc: GL Const GL_NORMAL_MAP_ARB
endrem
Const GL_NORMAL_MAP_ARB=$8511
rem
bbdoc: GL Const GL_REFLECTION_MAP_ARB
endrem
Const GL_REFLECTION_MAP_ARB=$8512
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_ARB
endrem
Const GL_TEXTURE_CUBE_MAP_ARB=$8513
rem
bbdoc: GL Const GL_TEXTURE_BINDING_CUBE_MAP_ARB
endrem
Const GL_TEXTURE_BINDING_CUBE_MAP_ARB=$8514
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB
endrem
Const GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB=$8515
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB
endrem
Const GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB=$8516
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB
endrem
Const GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB=$8517
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB
endrem
Const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB=$8518
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB
endrem
Const GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB=$8519
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB
endrem
Const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB=$851A
rem
bbdoc: GL Const GL_PROXY_TEXTURE_CUBE_MAP_ARB
endrem
Const GL_PROXY_TEXTURE_CUBE_MAP_ARB=$851B
rem
bbdoc: GL Const GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB
endrem
Const GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB=$851C
rem
bbdoc: GL Const GL_ARB_texture_cube_map_array
endrem
Const GL_ARB_texture_cube_map_array=1
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_ARRAY_ARB
endrem
Const GL_TEXTURE_CUBE_MAP_ARRAY_ARB=$9009
rem
bbdoc: GL Const GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB
endrem
Const GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB=$900A
rem
bbdoc: GL Const GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB
endrem
Const GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB=$900B
rem
bbdoc: GL Const GL_SAMPLER_CUBE_MAP_ARRAY_ARB
endrem
Const GL_SAMPLER_CUBE_MAP_ARRAY_ARB=$900C
rem
bbdoc: GL Const GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB
endrem
Const GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB=$900D
rem
bbdoc: GL Const GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB
endrem
Const GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB=$900E
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB
endrem
Const GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB=$900F
rem
bbdoc: GL Const GL_ARB_texture_env_add
endrem
Const GL_ARB_texture_env_add=1
rem
bbdoc: GL Const GL_ARB_texture_env_combine
endrem
Const GL_ARB_texture_env_combine=1
rem
bbdoc: GL Const GL_SUBTRACT_ARB
endrem
Const GL_SUBTRACT_ARB=$84E7
rem
bbdoc: GL Const GL_COMBINE_ARB
endrem
Const GL_COMBINE_ARB=$8570
rem
bbdoc: GL Const GL_COMBINE_RGB_ARB
endrem
Const GL_COMBINE_RGB_ARB=$8571
rem
bbdoc: GL Const GL_COMBINE_ALPHA_ARB
endrem
Const GL_COMBINE_ALPHA_ARB=$8572
rem
bbdoc: GL Const GL_RGB_SCALE_ARB
endrem
Const GL_RGB_SCALE_ARB=$8573
rem
bbdoc: GL Const GL_ADD_SIGNED_ARB
endrem
Const GL_ADD_SIGNED_ARB=$8574
rem
bbdoc: GL Const GL_INTERPOLATE_ARB
endrem
Const GL_INTERPOLATE_ARB=$8575
rem
bbdoc: GL Const GL_CONSTANT_ARB
endrem
Const GL_CONSTANT_ARB=$8576
rem
bbdoc: GL Const GL_PRIMARY_COLOR_ARB
endrem
Const GL_PRIMARY_COLOR_ARB=$8577
rem
bbdoc: GL Const GL_PREVIOUS_ARB
endrem
Const GL_PREVIOUS_ARB=$8578
rem
bbdoc: GL Const GL_SOURCE0_RGB_ARB
endrem
Const GL_SOURCE0_RGB_ARB=$8580
rem
bbdoc: GL Const GL_SOURCE1_RGB_ARB
endrem
Const GL_SOURCE1_RGB_ARB=$8581
rem
bbdoc: GL Const GL_SOURCE2_RGB_ARB
endrem
Const GL_SOURCE2_RGB_ARB=$8582
rem
bbdoc: GL Const GL_SOURCE0_ALPHA_ARB
endrem
Const GL_SOURCE0_ALPHA_ARB=$8588
rem
bbdoc: GL Const GL_SOURCE1_ALPHA_ARB
endrem
Const GL_SOURCE1_ALPHA_ARB=$8589
rem
bbdoc: GL Const GL_SOURCE2_ALPHA_ARB
endrem
Const GL_SOURCE2_ALPHA_ARB=$858A
rem
bbdoc: GL Const GL_OPERAND0_RGB_ARB
endrem
Const GL_OPERAND0_RGB_ARB=$8590
rem
bbdoc: GL Const GL_OPERAND1_RGB_ARB
endrem
Const GL_OPERAND1_RGB_ARB=$8591
rem
bbdoc: GL Const GL_OPERAND2_RGB_ARB
endrem
Const GL_OPERAND2_RGB_ARB=$8592
rem
bbdoc: GL Const GL_OPERAND0_ALPHA_ARB
endrem
Const GL_OPERAND0_ALPHA_ARB=$8598
rem
bbdoc: GL Const GL_OPERAND1_ALPHA_ARB
endrem
Const GL_OPERAND1_ALPHA_ARB=$8599
rem
bbdoc: GL Const GL_OPERAND2_ALPHA_ARB
endrem
Const GL_OPERAND2_ALPHA_ARB=$859A
rem
bbdoc: GL Const GL_ARB_texture_env_crossbar
endrem
Const GL_ARB_texture_env_crossbar=1
rem
bbdoc: GL Const GL_ARB_texture_env_dot3
endrem
Const GL_ARB_texture_env_dot3=1
rem
bbdoc: GL Const GL_DOT3_RGB_ARB
endrem
Const GL_DOT3_RGB_ARB=$86AE
rem
bbdoc: GL Const GL_DOT3_RGBA_ARB
endrem
Const GL_DOT3_RGBA_ARB=$86AF
rem
bbdoc: GL Const GL_ARB_texture_float
endrem
Const GL_ARB_texture_float=1
rem
bbdoc: GL Const GL_RGBA32F_ARB
endrem
Const GL_RGBA32F_ARB=$8814
rem
bbdoc: GL Const GL_RGB32F_ARB
endrem
Const GL_RGB32F_ARB=$8815
rem
bbdoc: GL Const GL_ALPHA32F_ARB
endrem
Const GL_ALPHA32F_ARB=$8816
rem
bbdoc: GL Const GL_INTENSITY32F_ARB
endrem
Const GL_INTENSITY32F_ARB=$8817
rem
bbdoc: GL Const GL_LUMINANCE32F_ARB
endrem
Const GL_LUMINANCE32F_ARB=$8818
rem
bbdoc: GL Const GL_LUMINANCE_ALPHA32F_ARB
endrem
Const GL_LUMINANCE_ALPHA32F_ARB=$8819
rem
bbdoc: GL Const GL_RGBA16F_ARB
endrem
Const GL_RGBA16F_ARB=$881A
rem
bbdoc: GL Const GL_RGB16F_ARB
endrem
Const GL_RGB16F_ARB=$881B
rem
bbdoc: GL Const GL_ALPHA16F_ARB
endrem
Const GL_ALPHA16F_ARB=$881C
rem
bbdoc: GL Const GL_INTENSITY16F_ARB
endrem
Const GL_INTENSITY16F_ARB=$881D
rem
bbdoc: GL Const GL_LUMINANCE16F_ARB
endrem
Const GL_LUMINANCE16F_ARB=$881E
rem
bbdoc: GL Const GL_LUMINANCE_ALPHA16F_ARB
endrem
Const GL_LUMINANCE_ALPHA16F_ARB=$881F
rem
bbdoc: GL Const GL_TEXTURE_RED_TYPE_ARB
endrem
Const GL_TEXTURE_RED_TYPE_ARB=$8C10
rem
bbdoc: GL Const GL_TEXTURE_GREEN_TYPE_ARB
endrem
Const GL_TEXTURE_GREEN_TYPE_ARB=$8C11
rem
bbdoc: GL Const GL_TEXTURE_BLUE_TYPE_ARB
endrem
Const GL_TEXTURE_BLUE_TYPE_ARB=$8C12
rem
bbdoc: GL Const GL_TEXTURE_ALPHA_TYPE_ARB
endrem
Const GL_TEXTURE_ALPHA_TYPE_ARB=$8C13
rem
bbdoc: GL Const GL_TEXTURE_LUMINANCE_TYPE_ARB
endrem
Const GL_TEXTURE_LUMINANCE_TYPE_ARB=$8C14
rem
bbdoc: GL Const GL_TEXTURE_INTENSITY_TYPE_ARB
endrem
Const GL_TEXTURE_INTENSITY_TYPE_ARB=$8C15
rem
bbdoc: GL Const GL_TEXTURE_DEPTH_TYPE_ARB
endrem
Const GL_TEXTURE_DEPTH_TYPE_ARB=$8C16
rem
bbdoc: GL Const GL_UNSIGNED_NORMALIZED_ARB
endrem
Const GL_UNSIGNED_NORMALIZED_ARB=$8C17
rem
bbdoc: GL Const GL_ARB_texture_gather
endrem
Const GL_ARB_texture_gather=1
rem
bbdoc: GL Const GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB
endrem
Const GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB=$8E5E
rem
bbdoc: GL Const GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB
endrem
Const GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB=$8E5F
rem
bbdoc: GL Const GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB
endrem
Const GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB=$8F9F
rem
bbdoc: GL Const GL_ARB_texture_mirror_clamp_to_edge
endrem
Const GL_ARB_texture_mirror_clamp_to_edge=1
rem
bbdoc: GL Const GL_MIRROR_CLAMP_TO_EDGE
endrem
Const GL_MIRROR_CLAMP_TO_EDGE=$8743
rem
bbdoc: GL Const GL_ARB_texture_mirrored_repeat
endrem
Const GL_ARB_texture_mirrored_repeat=1
rem
bbdoc: GL Const GL_MIRRORED_REPEAT_ARB
endrem
Const GL_MIRRORED_REPEAT_ARB=$8370
rem
bbdoc: GL Const GL_ARB_texture_multisample
endrem
Const GL_ARB_texture_multisample=1
rem
bbdoc: GL Const GL_SAMPLE_POSITION
endrem
Const GL_SAMPLE_POSITION=$8E50
rem
bbdoc: GL Const GL_SAMPLE_MASK
endrem
Const GL_SAMPLE_MASK=$8E51
rem
bbdoc: GL Const GL_SAMPLE_MASK_VALUE
endrem
Const GL_SAMPLE_MASK_VALUE=$8E52
rem
bbdoc: GL Const GL_MAX_SAMPLE_MASK_WORDS
endrem
Const GL_MAX_SAMPLE_MASK_WORDS=$8E59
rem
bbdoc: GL Const GL_TEXTURE_2D_MULTISAMPLE
endrem
Const GL_TEXTURE_2D_MULTISAMPLE=$9100
rem
bbdoc: GL Const GL_PROXY_TEXTURE_2D_MULTISAMPLE
endrem
Const GL_PROXY_TEXTURE_2D_MULTISAMPLE=$9101
rem
bbdoc: GL Const GL_TEXTURE_2D_MULTISAMPLE_ARRAY
endrem
Const GL_TEXTURE_2D_MULTISAMPLE_ARRAY=$9102
rem
bbdoc: GL Const GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY
endrem
Const GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY=$9103
rem
bbdoc: GL Const GL_TEXTURE_BINDING_2D_MULTISAMPLE
endrem
Const GL_TEXTURE_BINDING_2D_MULTISAMPLE=$9104
rem
bbdoc: GL Const GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
endrem
Const GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY=$9105
rem
bbdoc: GL Const GL_TEXTURE_SAMPLES
endrem
Const GL_TEXTURE_SAMPLES=$9106
rem
bbdoc: GL Const GL_TEXTURE_FIXED_SAMPLE_LOCATIONS
endrem
Const GL_TEXTURE_FIXED_SAMPLE_LOCATIONS=$9107
rem
bbdoc: GL Const GL_SAMPLER_2D_MULTISAMPLE
endrem
Const GL_SAMPLER_2D_MULTISAMPLE=$9108
rem
bbdoc: GL Const GL_INT_SAMPLER_2D_MULTISAMPLE
endrem
Const GL_INT_SAMPLER_2D_MULTISAMPLE=$9109
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE
endrem
Const GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE=$910A
rem
bbdoc: GL Const GL_SAMPLER_2D_MULTISAMPLE_ARRAY
endrem
Const GL_SAMPLER_2D_MULTISAMPLE_ARRAY=$910B
rem
bbdoc: GL Const GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
endrem
Const GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY=$910C
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
endrem
Const GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY=$910D
rem
bbdoc: GL Const GL_MAX_COLOR_TEXTURE_SAMPLES
endrem
Const GL_MAX_COLOR_TEXTURE_SAMPLES=$910E
rem
bbdoc: GL Const GL_MAX_DEPTH_TEXTURE_SAMPLES
endrem
Const GL_MAX_DEPTH_TEXTURE_SAMPLES=$910F
rem
bbdoc: GL Const GL_MAX_INTEGER_SAMPLES
endrem
Const GL_MAX_INTEGER_SAMPLES=$9110
rem
bbdoc: GL Global glGetMultisamplefv(pname_:Int,index_:Int,val_:Float Ptr)
endrem
Global glGetMultisamplefv(pname_:Int,index_:Int,val_:Float Ptr)="__glewGetMultisamplefv"
rem
bbdoc: GL Global glSampleMaski(index_:Int,mask_:Int)
endrem
Global glSampleMaski(index_:Int,mask_:Int)="__glewSampleMaski"
rem
bbdoc: GL Global glTexImage2DMultisample(target_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int,fixedsamplelocations_:Byte)
endrem
Global glTexImage2DMultisample(target_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int,fixedsamplelocations_:Byte)="__glewTexImage2DMultisample"
rem
bbdoc: GL Global glTexImage3DMultisample(target_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,fixedsamplelocations_:Byte)
endrem
Global glTexImage3DMultisample(target_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,fixedsamplelocations_:Byte)="__glewTexImage3DMultisample"
rem
bbdoc: GL Const GL_ARB_texture_non_power_of_two
endrem
Const GL_ARB_texture_non_power_of_two=1
rem
bbdoc: GL Const GL_ARB_texture_query_levels
endrem
Const GL_ARB_texture_query_levels=1
rem
bbdoc: GL Const GL_ARB_texture_query_lod
endrem
Const GL_ARB_texture_query_lod=1
rem
bbdoc: GL Const GL_ARB_texture_rectangle
endrem
Const GL_ARB_texture_rectangle=1
rem
bbdoc: GL Const GL_TEXTURE_RECTANGLE_ARB
endrem
Const GL_TEXTURE_RECTANGLE_ARB=$84F5
rem
bbdoc: GL Const GL_TEXTURE_BINDING_RECTANGLE_ARB
endrem
Const GL_TEXTURE_BINDING_RECTANGLE_ARB=$84F6
rem
bbdoc: GL Const GL_PROXY_TEXTURE_RECTANGLE_ARB
endrem
Const GL_PROXY_TEXTURE_RECTANGLE_ARB=$84F7
rem
bbdoc: GL Const GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB
endrem
Const GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB=$84F8
rem
bbdoc: GL Const GL_ARB_texture_rg
endrem
Const GL_ARB_texture_rg=1
rem
bbdoc: GL Const GL_COMPRESSED_RED
endrem
Const GL_COMPRESSED_RED=$8225
rem
bbdoc: GL Const GL_COMPRESSED_RG
endrem
Const GL_COMPRESSED_RG=$8226
rem
bbdoc: GL Const GL_RG
endrem
Const GL_RG=$8227
rem
bbdoc: GL Const GL_RG_INTEGER
endrem
Const GL_RG_INTEGER=$8228
rem
bbdoc: GL Const GL_R8
endrem
Const GL_R8=$8229
rem
bbdoc: GL Const GL_R16
endrem
Const GL_R16=$822A
rem
bbdoc: GL Const GL_RG8
endrem
Const GL_RG8=$822B
rem
bbdoc: GL Const GL_RG16
endrem
Const GL_RG16=$822C
rem
bbdoc: GL Const GL_R16F
endrem
Const GL_R16F=$822D
rem
bbdoc: GL Const GL_R32F
endrem
Const GL_R32F=$822E
rem
bbdoc: GL Const GL_RG16F
endrem
Const GL_RG16F=$822F
rem
bbdoc: GL Const GL_RG32F
endrem
Const GL_RG32F=$8230
rem
bbdoc: GL Const GL_R8I
endrem
Const GL_R8I=$8231
rem
bbdoc: GL Const GL_R8UI
endrem
Const GL_R8UI=$8232
rem
bbdoc: GL Const GL_R16I
endrem
Const GL_R16I=$8233
rem
bbdoc: GL Const GL_R16UI
endrem
Const GL_R16UI=$8234
rem
bbdoc: GL Const GL_R32I
endrem
Const GL_R32I=$8235
rem
bbdoc: GL Const GL_R32UI
endrem
Const GL_R32UI=$8236
rem
bbdoc: GL Const GL_RG8I
endrem
Const GL_RG8I=$8237
rem
bbdoc: GL Const GL_RG16I
endrem
Const GL_RG16I=$8239
rem
bbdoc: GL Const GL_RG32I
endrem
Const GL_RG32I=$823B
rem
bbdoc: GL Const GL_RG32UI
endrem
Const GL_RG32UI=$823C
rem
bbdoc: GL Const GL_ARB_texture_rgb10_a2ui
endrem
Const GL_ARB_texture_rgb10_a2ui=1
rem
bbdoc: GL Const GL_ARB_texture_stencil8
endrem
Const GL_ARB_texture_stencil8=1
rem
bbdoc: GL Const GL_ARB_texture_storage
endrem
Const GL_ARB_texture_storage=1
rem
bbdoc: GL Const GL_TEXTURE_IMMUTABLE_FORMAT
endrem
Const GL_TEXTURE_IMMUTABLE_FORMAT=$912F
rem
bbdoc: GL Global glTexStorage1D(target_:Int,levels_:Int,internalformat_:Int,width_:Int)
endrem
Global glTexStorage1D(target_:Int,levels_:Int,internalformat_:Int,width_:Int)="__glewTexStorage1D"
rem
bbdoc: GL Global glTexStorage2D(target_:Int,levels_:Int,internalformat_:Int,width_:Int,height_:Int)
endrem
Global glTexStorage2D(target_:Int,levels_:Int,internalformat_:Int,width_:Int,height_:Int)="__glewTexStorage2D"
rem
bbdoc: GL Global glTexStorage3D(target_:Int,levels_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int)
endrem
Global glTexStorage3D(target_:Int,levels_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int)="__glewTexStorage3D"
rem
bbdoc: GL Global glTextureStorage1DEXT(texture_:Int,target_:Int,levels_:Int,internalformat_:Int,width_:Int)
endrem
Global glTextureStorage1DEXT(texture_:Int,target_:Int,levels_:Int,internalformat_:Int,width_:Int)="__glewTextureStorage1DEXT"
rem
bbdoc: GL Global glTextureStorage2DEXT(texture_:Int,target_:Int,levels_:Int,internalformat_:Int,width_:Int,height_:Int)
endrem
Global glTextureStorage2DEXT(texture_:Int,target_:Int,levels_:Int,internalformat_:Int,width_:Int,height_:Int)="__glewTextureStorage2DEXT"
rem
bbdoc: GL Global glTextureStorage3DEXT(texture_:Int,target_:Int,levels_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int)
endrem
Global glTextureStorage3DEXT(texture_:Int,target_:Int,levels_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int)="__glewTextureStorage3DEXT"
rem
bbdoc: GL Const GL_ARB_texture_storage_multisample
endrem
Const GL_ARB_texture_storage_multisample=1
rem
bbdoc: GL Global glTexStorage2DMultisample(target_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int,fixedsamplelocations_:Byte)
endrem
Global glTexStorage2DMultisample(target_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int,fixedsamplelocations_:Byte)="__glewTexStorage2DMultisample"
rem
bbdoc: GL Global glTexStorage3DMultisample(target_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,fixedsamplelocations_:Byte)
endrem
Global glTexStorage3DMultisample(target_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,fixedsamplelocations_:Byte)="__glewTexStorage3DMultisample"
rem
bbdoc: GL Global glTextureStorage2DMultisampleEXT(texture_:Int,target_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int,fixedsamplelocations_:Byte)
endrem
Global glTextureStorage2DMultisampleEXT(texture_:Int,target_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int,fixedsamplelocations_:Byte)="__glewTextureStorage2DMultisampleEXT"
rem
bbdoc: GL Global glTextureStorage3DMultisampleEXT(texture_:Int,target_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,fixedsamplelocations_:Byte)
endrem
Global glTextureStorage3DMultisampleEXT(texture_:Int,target_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,fixedsamplelocations_:Byte)="__glewTextureStorage3DMultisampleEXT"
rem
bbdoc: GL Const GL_ARB_texture_swizzle
endrem
Const GL_ARB_texture_swizzle=1
rem
bbdoc: GL Const GL_TEXTURE_SWIZZLE_R
endrem
Const GL_TEXTURE_SWIZZLE_R=$8E42
rem
bbdoc: GL Const GL_TEXTURE_SWIZZLE_G
endrem
Const GL_TEXTURE_SWIZZLE_G=$8E43
rem
bbdoc: GL Const GL_TEXTURE_SWIZZLE_B
endrem
Const GL_TEXTURE_SWIZZLE_B=$8E44
rem
bbdoc: GL Const GL_TEXTURE_SWIZZLE_A
endrem
Const GL_TEXTURE_SWIZZLE_A=$8E45
rem
bbdoc: GL Const GL_TEXTURE_SWIZZLE_RGBA
endrem
Const GL_TEXTURE_SWIZZLE_RGBA=$8E46
rem
bbdoc: GL Const GL_ARB_texture_view
endrem
Const GL_ARB_texture_view=1
rem
bbdoc: GL Const GL_TEXTURE_VIEW_MIN_LEVEL
endrem
Const GL_TEXTURE_VIEW_MIN_LEVEL=$82DB
rem
bbdoc: GL Const GL_TEXTURE_VIEW_NUM_LEVELS
endrem
Const GL_TEXTURE_VIEW_NUM_LEVELS=$82DC
rem
bbdoc: GL Const GL_TEXTURE_VIEW_MIN_LAYER
endrem
Const GL_TEXTURE_VIEW_MIN_LAYER=$82DD
rem
bbdoc: GL Const GL_TEXTURE_VIEW_NUM_LAYERS
endrem
Const GL_TEXTURE_VIEW_NUM_LAYERS=$82DE
rem
bbdoc: GL Global glTextureView(texture_:Int,target_:Int,origtexture_:Int,internalformat_:Int,minlevel_:Int,numlevels_:Int,minlayer_:Int,numlayers_:Int)
endrem
Global glTextureView(texture_:Int,target_:Int,origtexture_:Int,internalformat_:Int,minlevel_:Int,numlevels_:Int,minlayer_:Int,numlayers_:Int)="__glewTextureView"
rem
bbdoc: GL Const GL_ARB_timer_query
endrem
Const GL_ARB_timer_query=1
rem
bbdoc: GL Const GL_TIME_ELAPSED
endrem
Const GL_TIME_ELAPSED=$88BF
rem
bbdoc: GL Const GL_TIMESTAMP
endrem
Const GL_TIMESTAMP=$8E28
rem
bbdoc: GL Global glGetQueryObjecti64v(id_:Int,pname_:Int,params_:Long Ptr)
endrem
Global glGetQueryObjecti64v(id_:Int,pname_:Int,params_:Long Ptr)="__glewGetQueryObjecti64v"
rem
bbdoc: GL Global glGetQueryObjectui64v(id_:Int,pname_:Int,params_:Long Ptr)
endrem
Global glGetQueryObjectui64v(id_:Int,pname_:Int,params_:Long Ptr)="__glewGetQueryObjectui64v"
rem
bbdoc: GL Global glQueryCounter(id_:Int,target_:Int)
endrem
Global glQueryCounter(id_:Int,target_:Int)="__glewQueryCounter"
rem
bbdoc: GL Const GL_ARB_transform_feedback2
endrem
Const GL_ARB_transform_feedback2=1
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK
endrem
Const GL_TRANSFORM_FEEDBACK=$8E22
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED=$8E23
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE=$8E24
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BINDING
endrem
Const GL_TRANSFORM_FEEDBACK_BINDING=$8E25
rem
bbdoc: GL Global glBindTransformFeedback(target_:Int,id_:Int)
endrem
Global glBindTransformFeedback(target_:Int,id_:Int)="__glewBindTransformFeedback"
rem
bbdoc: GL Global glDeleteTransformFeedbacks(n_:Int,ids_:Int Ptr)
endrem
Global glDeleteTransformFeedbacks(n_:Int,ids_:Int Ptr)="__glewDeleteTransformFeedbacks"
rem
bbdoc: GL Global glDrawTransformFeedback(mode_:Int,id_:Int)
endrem
Global glDrawTransformFeedback(mode_:Int,id_:Int)="__glewDrawTransformFeedback"
rem
bbdoc: GL Global glGenTransformFeedbacks(n_:Int,ids_:Int Ptr)
endrem
Global glGenTransformFeedbacks(n_:Int,ids_:Int Ptr)="__glewGenTransformFeedbacks"
rem
bbdoc: GL Global glIsTransformFeedback:Byte(id_:Int)
endrem
Global glIsTransformFeedback:Byte(id_:Int)="__glewIsTransformFeedback"
rem
bbdoc: GL Global glPauseTransformFeedback()
endrem
Global glPauseTransformFeedback()="__glewPauseTransformFeedback"
rem
bbdoc: GL Global glResumeTransformFeedback()
endrem
Global glResumeTransformFeedback()="__glewResumeTransformFeedback"
rem
bbdoc: GL Const GL_ARB_transform_feedback3
endrem
Const GL_ARB_transform_feedback3=1
rem
bbdoc: GL Const GL_MAX_TRANSFORM_FEEDBACK_BUFFERS
endrem
Const GL_MAX_TRANSFORM_FEEDBACK_BUFFERS=$8E70
rem
bbdoc: GL Global glBeginQueryIndexed(target_:Int,index_:Int,id_:Int)
endrem
Global glBeginQueryIndexed(target_:Int,index_:Int,id_:Int)="__glewBeginQueryIndexed"
rem
bbdoc: GL Global glDrawTransformFeedbackStream(mode_:Int,id_:Int,stream_:Int)
endrem
Global glDrawTransformFeedbackStream(mode_:Int,id_:Int,stream_:Int)="__glewDrawTransformFeedbackStream"
rem
bbdoc: GL Global glEndQueryIndexed(target_:Int,index_:Int)
endrem
Global glEndQueryIndexed(target_:Int,index_:Int)="__glewEndQueryIndexed"
rem
bbdoc: GL Global glGetQueryIndexediv(target_:Int,index_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetQueryIndexediv(target_:Int,index_:Int,pname_:Int,params_:Int Ptr)="__glewGetQueryIndexediv"
rem
bbdoc: GL Const GL_ARB_transform_feedback_instanced
endrem
Const GL_ARB_transform_feedback_instanced=1
rem
bbdoc: GL Global glDrawTransformFeedbackInstanced(mode_:Int,id_:Int,primcount_:Int)
endrem
Global glDrawTransformFeedbackInstanced(mode_:Int,id_:Int,primcount_:Int)="__glewDrawTransformFeedbackInstanced"
rem
bbdoc: GL Global glDrawTransformFeedbackStreamInstanced(mode_:Int,id_:Int,stream_:Int,primcount_:Int)
endrem
Global glDrawTransformFeedbackStreamInstanced(mode_:Int,id_:Int,stream_:Int,primcount_:Int)="__glewDrawTransformFeedbackStreamInstanced"
rem
bbdoc: GL Const GL_ARB_transform_feedback_overflow_query
endrem
Const GL_ARB_transform_feedback_overflow_query=1
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_OVERFLOW_ARB
endrem
Const GL_TRANSFORM_FEEDBACK_OVERFLOW_ARB=$82EC
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW_ARB
endrem
Const GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW_ARB=$82ED
rem
bbdoc: GL Const GL_ARB_transpose_matrix
endrem
Const GL_ARB_transpose_matrix=1
rem
bbdoc: GL Const GL_TRANSPOSE_MODELVIEW_MATRIX_ARB
endrem
Const GL_TRANSPOSE_MODELVIEW_MATRIX_ARB=$84E3
rem
bbdoc: GL Const GL_TRANSPOSE_PROJECTION_MATRIX_ARB
endrem
Const GL_TRANSPOSE_PROJECTION_MATRIX_ARB=$84E4
rem
bbdoc: GL Const GL_TRANSPOSE_TEXTURE_MATRIX_ARB
endrem
Const GL_TRANSPOSE_TEXTURE_MATRIX_ARB=$84E5
rem
bbdoc: GL Const GL_TRANSPOSE_COLOR_MATRIX_ARB
endrem
Const GL_TRANSPOSE_COLOR_MATRIX_ARB=$84E6
rem
bbdoc: GL Global glLoadTransposeMatrixdARB(m_:Double Ptr)
endrem
Global glLoadTransposeMatrixdARB(m_:Double Ptr)="__glewLoadTransposeMatrixdARB"
rem
bbdoc: GL Global glLoadTransposeMatrixfARB(m_:Float Ptr)
endrem
Global glLoadTransposeMatrixfARB(m_:Float Ptr)="__glewLoadTransposeMatrixfARB"
rem
bbdoc: GL Global glMultTransposeMatrixdARB(m_:Double Ptr)
endrem
Global glMultTransposeMatrixdARB(m_:Double Ptr)="__glewMultTransposeMatrixdARB"
rem
bbdoc: GL Global glMultTransposeMatrixfARB(m_:Float Ptr)
endrem
Global glMultTransposeMatrixfARB(m_:Float Ptr)="__glewMultTransposeMatrixfARB"
rem
bbdoc: GL Const GL_ARB_uniform_buffer_object
endrem
Const GL_ARB_uniform_buffer_object=1
rem
bbdoc: GL Const GL_UNIFORM_BUFFER
endrem
Const GL_UNIFORM_BUFFER=$8A11
rem
bbdoc: GL Const GL_UNIFORM_BUFFER_BINDING
endrem
Const GL_UNIFORM_BUFFER_BINDING=$8A28
rem
bbdoc: GL Const GL_UNIFORM_BUFFER_START
endrem
Const GL_UNIFORM_BUFFER_START=$8A29
rem
bbdoc: GL Const GL_UNIFORM_BUFFER_SIZE
endrem
Const GL_UNIFORM_BUFFER_SIZE=$8A2A
rem
bbdoc: GL Const GL_MAX_VERTEX_UNIFORM_BLOCKS
endrem
Const GL_MAX_VERTEX_UNIFORM_BLOCKS=$8A2B
rem
bbdoc: GL Const GL_MAX_GEOMETRY_UNIFORM_BLOCKS
endrem
Const GL_MAX_GEOMETRY_UNIFORM_BLOCKS=$8A2C
rem
bbdoc: GL Const GL_MAX_FRAGMENT_UNIFORM_BLOCKS
endrem
Const GL_MAX_FRAGMENT_UNIFORM_BLOCKS=$8A2D
rem
bbdoc: GL Const GL_MAX_COMBINED_UNIFORM_BLOCKS
endrem
Const GL_MAX_COMBINED_UNIFORM_BLOCKS=$8A2E
rem
bbdoc: GL Const GL_MAX_UNIFORM_BUFFER_BINDINGS
endrem
Const GL_MAX_UNIFORM_BUFFER_BINDINGS=$8A2F
rem
bbdoc: GL Const GL_MAX_UNIFORM_BLOCK_SIZE
endrem
Const GL_MAX_UNIFORM_BLOCK_SIZE=$8A30
rem
bbdoc: GL Const GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS
endrem
Const GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS=$8A31
rem
bbdoc: GL Const GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS
endrem
Const GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS=$8A32
rem
bbdoc: GL Const GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS
endrem
Const GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS=$8A33
rem
bbdoc: GL Const GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT
endrem
Const GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT=$8A34
rem
bbdoc: GL Const GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH
endrem
Const GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH=$8A35
rem
bbdoc: GL Const GL_ACTIVE_UNIFORM_BLOCKS
endrem
Const GL_ACTIVE_UNIFORM_BLOCKS=$8A36
rem
bbdoc: GL Const GL_UNIFORM_TYPE
endrem
Const GL_UNIFORM_TYPE=$8A37
rem
bbdoc: GL Const GL_UNIFORM_SIZE
endrem
Const GL_UNIFORM_SIZE=$8A38
rem
bbdoc: GL Const GL_UNIFORM_NAME_LENGTH
endrem
Const GL_UNIFORM_NAME_LENGTH=$8A39
rem
bbdoc: GL Const GL_UNIFORM_BLOCK_INDEX
endrem
Const GL_UNIFORM_BLOCK_INDEX=$8A3A
rem
bbdoc: GL Const GL_UNIFORM_OFFSET
endrem
Const GL_UNIFORM_OFFSET=$8A3B
rem
bbdoc: GL Const GL_UNIFORM_ARRAY_STRIDE
endrem
Const GL_UNIFORM_ARRAY_STRIDE=$8A3C
rem
bbdoc: GL Const GL_UNIFORM_MATRIX_STRIDE
endrem
Const GL_UNIFORM_MATRIX_STRIDE=$8A3D
rem
bbdoc: GL Const GL_UNIFORM_IS_ROW_MAJOR
endrem
Const GL_UNIFORM_IS_ROW_MAJOR=$8A3E
rem
bbdoc: GL Const GL_UNIFORM_BLOCK_BINDING
endrem
Const GL_UNIFORM_BLOCK_BINDING=$8A3F
rem
bbdoc: GL Const GL_UNIFORM_BLOCK_DATA_SIZE
endrem
Const GL_UNIFORM_BLOCK_DATA_SIZE=$8A40
rem
bbdoc: GL Const GL_UNIFORM_BLOCK_NAME_LENGTH
endrem
Const GL_UNIFORM_BLOCK_NAME_LENGTH=$8A41
rem
bbdoc: GL Const GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS
endrem
Const GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS=$8A42
rem
bbdoc: GL Const GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES
endrem
Const GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES=$8A43
rem
bbdoc: GL Const GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER
endrem
Const GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER=$8A44
rem
bbdoc: GL Const GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER
endrem
Const GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER=$8A45
rem
bbdoc: GL Const GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER
endrem
Const GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER=$8A46
rem
bbdoc: GL Const GL_INVALID_INDEX
endrem
Const GL_INVALID_INDEX=$FFFFFFFF
rem
bbdoc: GL Global glBindBufferBase(target_:Int,index_:Int,buffer_:Int)
endrem
Global glBindBufferBase(target_:Int,index_:Int,buffer_:Int)="__glewBindBufferBase"
rem
bbdoc: GL Global glBindBufferRange(target_:Int,index_:Int,buffer_:Int,offset_:Int,size_:Int)
endrem
Global glBindBufferRange(target_:Int,index_:Int,buffer_:Int,offset_:Int,size_:Int)="__glewBindBufferRange"
rem
bbdoc: GL Global glGetActiveUniformBlockName(program_:Int,uniformBlockIndex_:Int,bufSize_:Int,length_:Int Ptr,uniformBlockName_:Byte Ptr)
endrem
Global glGetActiveUniformBlockName(program_:Int,uniformBlockIndex_:Int,bufSize_:Int,length_:Int Ptr,uniformBlockName_:Byte Ptr)="__glewGetActiveUniformBlockName"
rem
bbdoc: GL Global glGetActiveUniformBlockiv(program_:Int,uniformBlockIndex_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetActiveUniformBlockiv(program_:Int,uniformBlockIndex_:Int,pname_:Int,params_:Int Ptr)="__glewGetActiveUniformBlockiv"
rem
bbdoc: GL Global glGetActiveUniformName(program_:Int,uniformIndex_:Int,bufSize_:Int,length_:Int Ptr,uniformName_:Byte Ptr)
endrem
Global glGetActiveUniformName(program_:Int,uniformIndex_:Int,bufSize_:Int,length_:Int Ptr,uniformName_:Byte Ptr)="__glewGetActiveUniformName"
rem
bbdoc: GL Global glGetActiveUniformsiv(program_:Int,uniformCount_:Int,uniformIndices_:Int Ptr,pname_:Int,params_:Int Ptr)
endrem
Global glGetActiveUniformsiv(program_:Int,uniformCount_:Int,uniformIndices_:Int Ptr,pname_:Int,params_:Int Ptr)="__glewGetActiveUniformsiv"
rem
bbdoc: GL Global glGetIntegeri_v(target_:Int,index_:Int,data_:Int Ptr)
endrem
Global glGetIntegeri_v(target_:Int,index_:Int,data_:Int Ptr)="__glewGetIntegeri_v"
rem
bbdoc: GL Global glGetUniformBlockIndex:Int(program_:Int,uniformBlockName_:Byte Ptr)
endrem
Global glGetUniformBlockIndex:Int(program_:Int,uniformBlockName_:Byte Ptr)="__glewGetUniformBlockIndex"
rem
bbdoc: GL Global glGetUniformIndices(program_:Int,uniformCount_:Int,uniformNames_:Byte Ptr Ptr,uniformIndices_:Int Ptr)
endrem
Global glGetUniformIndices(program_:Int,uniformCount_:Int,uniformNames_:Byte Ptr Ptr,uniformIndices_:Int Ptr)="__glewGetUniformIndices"
rem
bbdoc: GL Global glUniformBlockBinding(program_:Int,uniformBlockIndex_:Int,uniformBlockBinding_:Int)
endrem
Global glUniformBlockBinding(program_:Int,uniformBlockIndex_:Int,uniformBlockBinding_:Int)="__glewUniformBlockBinding"
rem
bbdoc: GL Const GL_ARB_vertex_array_bgra
endrem
Const GL_ARB_vertex_array_bgra=1
rem
bbdoc: GL Const GL_ARB_vertex_array_object
endrem
Const GL_ARB_vertex_array_object=1
rem
bbdoc: GL Const GL_VERTEX_ARRAY_BINDING
endrem
Const GL_VERTEX_ARRAY_BINDING=$85B5
rem
bbdoc: GL Global glBindVertexArray(array_:Int)
endrem
Global glBindVertexArray(array_:Int)="__glewBindVertexArray"
rem
bbdoc: GL Global glDeleteVertexArrays(n_:Int,arrays_:Int Ptr)
endrem
Global glDeleteVertexArrays(n_:Int,arrays_:Int Ptr)="__glewDeleteVertexArrays"
rem
bbdoc: GL Global glGenVertexArrays(n_:Int,arrays_:Int Ptr)
endrem
Global glGenVertexArrays(n_:Int,arrays_:Int Ptr)="__glewGenVertexArrays"
rem
bbdoc: GL Global glIsVertexArray:Byte(array_:Int)
endrem
Global glIsVertexArray:Byte(array_:Int)="__glewIsVertexArray"
rem
bbdoc: GL Const GL_ARB_vertex_attrib_64bit
endrem
Const GL_ARB_vertex_attrib_64bit=1
rem
bbdoc: GL Global glGetVertexAttribLdv(index_:Int,pname_:Int,params_:Double Ptr)
endrem
Global glGetVertexAttribLdv(index_:Int,pname_:Int,params_:Double Ptr)="__glewGetVertexAttribLdv"
rem
bbdoc: GL Global glVertexAttribL1d(index_:Int,x_:Double)
endrem
Global glVertexAttribL1d(index_:Int,x_:Double)="__glewVertexAttribL1d"
rem
bbdoc: GL Global glVertexAttribL1dv(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttribL1dv(index_:Int,v_:Double Ptr)="__glewVertexAttribL1dv"
rem
bbdoc: GL Global glVertexAttribL2d(index_:Int,x_:Double,y_:Double)
endrem
Global glVertexAttribL2d(index_:Int,x_:Double,y_:Double)="__glewVertexAttribL2d"
rem
bbdoc: GL Global glVertexAttribL2dv(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttribL2dv(index_:Int,v_:Double Ptr)="__glewVertexAttribL2dv"
rem
bbdoc: GL Global glVertexAttribL3d(index_:Int,x_:Double,y_:Double,z_:Double)
endrem
Global glVertexAttribL3d(index_:Int,x_:Double,y_:Double,z_:Double)="__glewVertexAttribL3d"
rem
bbdoc: GL Global glVertexAttribL3dv(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttribL3dv(index_:Int,v_:Double Ptr)="__glewVertexAttribL3dv"
rem
bbdoc: GL Global glVertexAttribL4d(index_:Int,x_:Double,y_:Double,z_:Double,w_:Double)
endrem
Global glVertexAttribL4d(index_:Int,x_:Double,y_:Double,z_:Double,w_:Double)="__glewVertexAttribL4d"
rem
bbdoc: GL Global glVertexAttribL4dv(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttribL4dv(index_:Int,v_:Double Ptr)="__glewVertexAttribL4dv"
rem
bbdoc: GL Global glVertexAttribLPointer(index_:Int,size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)
endrem
Global glVertexAttribLPointer(index_:Int,size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)="__glewVertexAttribLPointer"
rem
bbdoc: GL Const GL_ARB_vertex_attrib_binding
endrem
Const GL_ARB_vertex_attrib_binding=1
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_BINDING
endrem
Const GL_VERTEX_ATTRIB_BINDING=$82D4
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_RELATIVE_OFFSET
endrem
Const GL_VERTEX_ATTRIB_RELATIVE_OFFSET=$82D5
rem
bbdoc: GL Const GL_VERTEX_BINDING_DIVISOR
endrem
Const GL_VERTEX_BINDING_DIVISOR=$82D6
rem
bbdoc: GL Const GL_VERTEX_BINDING_OFFSET
endrem
Const GL_VERTEX_BINDING_OFFSET=$82D7
rem
bbdoc: GL Const GL_VERTEX_BINDING_STRIDE
endrem
Const GL_VERTEX_BINDING_STRIDE=$82D8
rem
bbdoc: GL Const GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET
endrem
Const GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET=$82D9
rem
bbdoc: GL Const GL_MAX_VERTEX_ATTRIB_BINDINGS
endrem
Const GL_MAX_VERTEX_ATTRIB_BINDINGS=$82DA
rem
bbdoc: GL Const GL_VERTEX_BINDING_BUFFER
endrem
Const GL_VERTEX_BINDING_BUFFER=$8F4F
rem
bbdoc: GL Global glBindVertexBuffer(bindingindex_:Int,buffer_:Int,offset_:Int,stride_:Int)
endrem
Global glBindVertexBuffer(bindingindex_:Int,buffer_:Int,offset_:Int,stride_:Int)="__glewBindVertexBuffer"
rem
bbdoc: GL Global glVertexArrayBindVertexBufferEXT(vaobj_:Int,bindingindex_:Int,buffer_:Int,offset_:Int,stride_:Int)
endrem
Global glVertexArrayBindVertexBufferEXT(vaobj_:Int,bindingindex_:Int,buffer_:Int,offset_:Int,stride_:Int)="__glewVertexArrayBindVertexBufferEXT"
rem
bbdoc: GL Global glVertexArrayVertexAttribBindingEXT(vaobj_:Int,attribindex_:Int,bindingindex_:Int)
endrem
Global glVertexArrayVertexAttribBindingEXT(vaobj_:Int,attribindex_:Int,bindingindex_:Int)="__glewVertexArrayVertexAttribBindingEXT"
rem
bbdoc: GL Global glVertexArrayVertexAttribFormatEXT(vaobj_:Int,attribindex_:Int,size_:Int,type_:Int,normalized_:Byte,relativeoffset_:Int)
endrem
Global glVertexArrayVertexAttribFormatEXT(vaobj_:Int,attribindex_:Int,size_:Int,type_:Int,normalized_:Byte,relativeoffset_:Int)="__glewVertexArrayVertexAttribFormatEXT"
rem
bbdoc: GL Global glVertexArrayVertexAttribIFormatEXT(vaobj_:Int,attribindex_:Int,size_:Int,type_:Int,relativeoffset_:Int)
endrem
Global glVertexArrayVertexAttribIFormatEXT(vaobj_:Int,attribindex_:Int,size_:Int,type_:Int,relativeoffset_:Int)="__glewVertexArrayVertexAttribIFormatEXT"
rem
bbdoc: GL Global glVertexArrayVertexAttribLFormatEXT(vaobj_:Int,attribindex_:Int,size_:Int,type_:Int,relativeoffset_:Int)
endrem
Global glVertexArrayVertexAttribLFormatEXT(vaobj_:Int,attribindex_:Int,size_:Int,type_:Int,relativeoffset_:Int)="__glewVertexArrayVertexAttribLFormatEXT"
rem
bbdoc: GL Global glVertexArrayVertexBindingDivisorEXT(vaobj_:Int,bindingindex_:Int,divisor_:Int)
endrem
Global glVertexArrayVertexBindingDivisorEXT(vaobj_:Int,bindingindex_:Int,divisor_:Int)="__glewVertexArrayVertexBindingDivisorEXT"
rem
bbdoc: GL Global glVertexAttribBinding(attribindex_:Int,bindingindex_:Int)
endrem
Global glVertexAttribBinding(attribindex_:Int,bindingindex_:Int)="__glewVertexAttribBinding"
rem
bbdoc: GL Global glVertexAttribFormat(attribindex_:Int,size_:Int,type_:Int,normalized_:Byte,relativeoffset_:Int)
endrem
Global glVertexAttribFormat(attribindex_:Int,size_:Int,type_:Int,normalized_:Byte,relativeoffset_:Int)="__glewVertexAttribFormat"
rem
bbdoc: GL Global glVertexAttribIFormat(attribindex_:Int,size_:Int,type_:Int,relativeoffset_:Int)
endrem
Global glVertexAttribIFormat(attribindex_:Int,size_:Int,type_:Int,relativeoffset_:Int)="__glewVertexAttribIFormat"
rem
bbdoc: GL Global glVertexAttribLFormat(attribindex_:Int,size_:Int,type_:Int,relativeoffset_:Int)
endrem
Global glVertexAttribLFormat(attribindex_:Int,size_:Int,type_:Int,relativeoffset_:Int)="__glewVertexAttribLFormat"
rem
bbdoc: GL Global glVertexBindingDivisor(bindingindex_:Int,divisor_:Int)
endrem
Global glVertexBindingDivisor(bindingindex_:Int,divisor_:Int)="__glewVertexBindingDivisor"
rem
bbdoc: GL Const GL_ARB_vertex_blend
endrem
Const GL_ARB_vertex_blend=1
rem
bbdoc: GL Const GL_MODELVIEW0_ARB
endrem
Const GL_MODELVIEW0_ARB=$1700
rem
bbdoc: GL Const GL_MODELVIEW1_ARB
endrem
Const GL_MODELVIEW1_ARB=$850A
rem
bbdoc: GL Const GL_MAX_VERTEX_UNITS_ARB
endrem
Const GL_MAX_VERTEX_UNITS_ARB=$86A4
rem
bbdoc: GL Const GL_ACTIVE_VERTEX_UNITS_ARB
endrem
Const GL_ACTIVE_VERTEX_UNITS_ARB=$86A5
rem
bbdoc: GL Const GL_WEIGHT_SUM_UNITY_ARB
endrem
Const GL_WEIGHT_SUM_UNITY_ARB=$86A6
rem
bbdoc: GL Const GL_VERTEX_BLEND_ARB
endrem
Const GL_VERTEX_BLEND_ARB=$86A7
rem
bbdoc: GL Const GL_CURRENT_WEIGHT_ARB
endrem
Const GL_CURRENT_WEIGHT_ARB=$86A8
rem
bbdoc: GL Const GL_WEIGHT_ARRAY_TYPE_ARB
endrem
Const GL_WEIGHT_ARRAY_TYPE_ARB=$86A9
rem
bbdoc: GL Const GL_WEIGHT_ARRAY_STRIDE_ARB
endrem
Const GL_WEIGHT_ARRAY_STRIDE_ARB=$86AA
rem
bbdoc: GL Const GL_WEIGHT_ARRAY_SIZE_ARB
endrem
Const GL_WEIGHT_ARRAY_SIZE_ARB=$86AB
rem
bbdoc: GL Const GL_WEIGHT_ARRAY_POINTER_ARB
endrem
Const GL_WEIGHT_ARRAY_POINTER_ARB=$86AC
rem
bbdoc: GL Const GL_WEIGHT_ARRAY_ARB
endrem
Const GL_WEIGHT_ARRAY_ARB=$86AD
rem
bbdoc: GL Const GL_MODELVIEW2_ARB
endrem
Const GL_MODELVIEW2_ARB=$8722
rem
bbdoc: GL Const GL_MODELVIEW3_ARB
endrem
Const GL_MODELVIEW3_ARB=$8723
rem
bbdoc: GL Const GL_MODELVIEW4_ARB
endrem
Const GL_MODELVIEW4_ARB=$8724
rem
bbdoc: GL Const GL_MODELVIEW5_ARB
endrem
Const GL_MODELVIEW5_ARB=$8725
rem
bbdoc: GL Const GL_MODELVIEW6_ARB
endrem
Const GL_MODELVIEW6_ARB=$8726
rem
bbdoc: GL Const GL_MODELVIEW7_ARB
endrem
Const GL_MODELVIEW7_ARB=$8727
rem
bbdoc: GL Const GL_MODELVIEW8_ARB
endrem
Const GL_MODELVIEW8_ARB=$8728
rem
bbdoc: GL Const GL_MODELVIEW9_ARB
endrem
Const GL_MODELVIEW9_ARB=$8729
rem
bbdoc: GL Const GL_MODELVIEW10_ARB
endrem
Const GL_MODELVIEW10_ARB=$872A
rem
bbdoc: GL Const GL_MODELVIEW11_ARB
endrem
Const GL_MODELVIEW11_ARB=$872B
rem
bbdoc: GL Const GL_MODELVIEW12_ARB
endrem
Const GL_MODELVIEW12_ARB=$872C
rem
bbdoc: GL Const GL_MODELVIEW13_ARB
endrem
Const GL_MODELVIEW13_ARB=$872D
rem
bbdoc: GL Const GL_MODELVIEW14_ARB
endrem
Const GL_MODELVIEW14_ARB=$872E
rem
bbdoc: GL Const GL_MODELVIEW15_ARB
endrem
Const GL_MODELVIEW15_ARB=$872F
rem
bbdoc: GL Const GL_MODELVIEW16_ARB
endrem
Const GL_MODELVIEW16_ARB=$8730
rem
bbdoc: GL Const GL_MODELVIEW17_ARB
endrem
Const GL_MODELVIEW17_ARB=$8731
rem
bbdoc: GL Const GL_MODELVIEW18_ARB
endrem
Const GL_MODELVIEW18_ARB=$8732
rem
bbdoc: GL Const GL_MODELVIEW19_ARB
endrem
Const GL_MODELVIEW19_ARB=$8733
rem
bbdoc: GL Const GL_MODELVIEW20_ARB
endrem
Const GL_MODELVIEW20_ARB=$8734
rem
bbdoc: GL Const GL_MODELVIEW21_ARB
endrem
Const GL_MODELVIEW21_ARB=$8735
rem
bbdoc: GL Const GL_MODELVIEW22_ARB
endrem
Const GL_MODELVIEW22_ARB=$8736
rem
bbdoc: GL Const GL_MODELVIEW23_ARB
endrem
Const GL_MODELVIEW23_ARB=$8737
rem
bbdoc: GL Const GL_MODELVIEW24_ARB
endrem
Const GL_MODELVIEW24_ARB=$8738
rem
bbdoc: GL Const GL_MODELVIEW25_ARB
endrem
Const GL_MODELVIEW25_ARB=$8739
rem
bbdoc: GL Const GL_MODELVIEW26_ARB
endrem
Const GL_MODELVIEW26_ARB=$873A
rem
bbdoc: GL Const GL_MODELVIEW27_ARB
endrem
Const GL_MODELVIEW27_ARB=$873B
rem
bbdoc: GL Const GL_MODELVIEW28_ARB
endrem
Const GL_MODELVIEW28_ARB=$873C
rem
bbdoc: GL Const GL_MODELVIEW29_ARB
endrem
Const GL_MODELVIEW29_ARB=$873D
rem
bbdoc: GL Const GL_MODELVIEW30_ARB
endrem
Const GL_MODELVIEW30_ARB=$873E
rem
bbdoc: GL Const GL_MODELVIEW31_ARB
endrem
Const GL_MODELVIEW31_ARB=$873F
rem
bbdoc: GL Global glVertexBlendARB(count_:Int)
endrem
Global glVertexBlendARB(count_:Int)="__glewVertexBlendARB"
rem
bbdoc: GL Global glWeightPointerARB(size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)
endrem
Global glWeightPointerARB(size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)="__glewWeightPointerARB"
rem
bbdoc: GL Global glWeightbvARB(size_:Int,weights_:Byte Ptr)
endrem
Global glWeightbvARB(size_:Int,weights_:Byte Ptr)="__glewWeightbvARB"
rem
bbdoc: GL Global glWeightdvARB(size_:Int,weights_:Double Ptr)
endrem
Global glWeightdvARB(size_:Int,weights_:Double Ptr)="__glewWeightdvARB"
rem
bbdoc: GL Global glWeightfvARB(size_:Int,weights_:Float Ptr)
endrem
Global glWeightfvARB(size_:Int,weights_:Float Ptr)="__glewWeightfvARB"
rem
bbdoc: GL Global glWeightivARB(size_:Int,weights_:Int Ptr)
endrem
Global glWeightivARB(size_:Int,weights_:Int Ptr)="__glewWeightivARB"
rem
bbdoc: GL Global glWeightsvARB(size_:Int,weights_:Short Ptr)
endrem
Global glWeightsvARB(size_:Int,weights_:Short Ptr)="__glewWeightsvARB"
rem
bbdoc: GL Global glWeightubvARB(size_:Int,weights_:Byte Ptr)
endrem
Global glWeightubvARB(size_:Int,weights_:Byte Ptr)="__glewWeightubvARB"
rem
bbdoc: GL Global glWeightuivARB(size_:Int,weights_:Int Ptr)
endrem
Global glWeightuivARB(size_:Int,weights_:Int Ptr)="__glewWeightuivARB"
rem
bbdoc: GL Global glWeightusvARB(size_:Int,weights_:Short Ptr)
endrem
Global glWeightusvARB(size_:Int,weights_:Short Ptr)="__glewWeightusvARB"
rem
bbdoc: GL Const GL_ARB_vertex_buffer_object
endrem
Const GL_ARB_vertex_buffer_object=1
rem
bbdoc: GL Const GL_BUFFER_SIZE_ARB
endrem
Const GL_BUFFER_SIZE_ARB=$8764
rem
bbdoc: GL Const GL_BUFFER_USAGE_ARB
endrem
Const GL_BUFFER_USAGE_ARB=$8765
rem
bbdoc: GL Const GL_ARRAY_BUFFER_ARB
endrem
Const GL_ARRAY_BUFFER_ARB=$8892
rem
bbdoc: GL Const GL_ELEMENT_ARRAY_BUFFER_ARB
endrem
Const GL_ELEMENT_ARRAY_BUFFER_ARB=$8893
rem
bbdoc: GL Const GL_ARRAY_BUFFER_BINDING_ARB
endrem
Const GL_ARRAY_BUFFER_BINDING_ARB=$8894
rem
bbdoc: GL Const GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB
endrem
Const GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB=$8895
rem
bbdoc: GL Const GL_VERTEX_ARRAY_BUFFER_BINDING_ARB
endrem
Const GL_VERTEX_ARRAY_BUFFER_BINDING_ARB=$8896
rem
bbdoc: GL Const GL_NORMAL_ARRAY_BUFFER_BINDING_ARB
endrem
Const GL_NORMAL_ARRAY_BUFFER_BINDING_ARB=$8897
rem
bbdoc: GL Const GL_COLOR_ARRAY_BUFFER_BINDING_ARB
endrem
Const GL_COLOR_ARRAY_BUFFER_BINDING_ARB=$8898
rem
bbdoc: GL Const GL_INDEX_ARRAY_BUFFER_BINDING_ARB
endrem
Const GL_INDEX_ARRAY_BUFFER_BINDING_ARB=$8899
rem
bbdoc: GL Const GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB
endrem
Const GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB=$889A
rem
bbdoc: GL Const GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB
endrem
Const GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB=$889B
rem
bbdoc: GL Const GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB
endrem
Const GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB=$889C
rem
bbdoc: GL Const GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB
endrem
Const GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB=$889D
rem
bbdoc: GL Const GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB
endrem
Const GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB=$889E
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB
endrem
Const GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB=$889F
rem
bbdoc: GL Const GL_READ_ONLY_ARB
endrem
Const GL_READ_ONLY_ARB=$88B8
rem
bbdoc: GL Const GL_WRITE_ONLY_ARB
endrem
Const GL_WRITE_ONLY_ARB=$88B9
rem
bbdoc: GL Const GL_READ_WRITE_ARB
endrem
Const GL_READ_WRITE_ARB=$88BA
rem
bbdoc: GL Const GL_BUFFER_ACCESS_ARB
endrem
Const GL_BUFFER_ACCESS_ARB=$88BB
rem
bbdoc: GL Const GL_BUFFER_MAPPED_ARB
endrem
Const GL_BUFFER_MAPPED_ARB=$88BC
rem
bbdoc: GL Const GL_BUFFER_MAP_POINTER_ARB
endrem
Const GL_BUFFER_MAP_POINTER_ARB=$88BD
rem
bbdoc: GL Const GL_STREAM_DRAW_ARB
endrem
Const GL_STREAM_DRAW_ARB=$88E0
rem
bbdoc: GL Const GL_STREAM_READ_ARB
endrem
Const GL_STREAM_READ_ARB=$88E1
rem
bbdoc: GL Const GL_STREAM_COPY_ARB
endrem
Const GL_STREAM_COPY_ARB=$88E2
rem
bbdoc: GL Const GL_STATIC_DRAW_ARB
endrem
Const GL_STATIC_DRAW_ARB=$88E4
rem
bbdoc: GL Const GL_STATIC_READ_ARB
endrem
Const GL_STATIC_READ_ARB=$88E5
rem
bbdoc: GL Const GL_STATIC_COPY_ARB
endrem
Const GL_STATIC_COPY_ARB=$88E6
rem
bbdoc: GL Const GL_DYNAMIC_DRAW_ARB
endrem
Const GL_DYNAMIC_DRAW_ARB=$88E8
rem
bbdoc: GL Const GL_DYNAMIC_READ_ARB
endrem
Const GL_DYNAMIC_READ_ARB=$88E9
rem
bbdoc: GL Const GL_DYNAMIC_COPY_ARB
endrem
Const GL_DYNAMIC_COPY_ARB=$88EA
rem
bbdoc: GL Global glBindBufferARB(target_:Int,buffer_:Int)
endrem
Global glBindBufferARB(target_:Int,buffer_:Int)="__glewBindBufferARB"
rem
bbdoc: GL Global glBufferDataARB(target_:Int,size_:Int,data_:Byte Ptr,usage_:Int)
endrem
Global glBufferDataARB(target_:Int,size_:Int,data_:Byte Ptr,usage_:Int)="__glewBufferDataARB"
rem
bbdoc: GL Global glBufferSubDataARB(target_:Int,offset_:Int,size_:Int,data_:Byte Ptr)
endrem
Global glBufferSubDataARB(target_:Int,offset_:Int,size_:Int,data_:Byte Ptr)="__glewBufferSubDataARB"
rem
bbdoc: GL Global glDeleteBuffersARB(n_:Int,buffers_:Int Ptr)
endrem
Global glDeleteBuffersARB(n_:Int,buffers_:Int Ptr)="__glewDeleteBuffersARB"
rem
bbdoc: GL Global glGenBuffersARB(n_:Int,buffers_:Int Ptr)
endrem
Global glGenBuffersARB(n_:Int,buffers_:Int Ptr)="__glewGenBuffersARB"
rem
bbdoc: GL Global glGetBufferParameterivARB(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetBufferParameterivARB(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetBufferParameterivARB"
rem
bbdoc: GL Global glGetBufferPointervARB(target_:Int,pname_:Int,params_:Byte Ptr Ptr)
endrem
Global glGetBufferPointervARB(target_:Int,pname_:Int,params_:Byte Ptr Ptr)="__glewGetBufferPointervARB"
rem
bbdoc: GL Global glGetBufferSubDataARB(target_:Int,offset_:Int,size_:Int,data_:Byte Ptr)
endrem
Global glGetBufferSubDataARB(target_:Int,offset_:Int,size_:Int,data_:Byte Ptr)="__glewGetBufferSubDataARB"
rem
bbdoc: GL Global glIsBufferARB:Byte(buffer_:Int)
endrem
Global glIsBufferARB:Byte(buffer_:Int)="__glewIsBufferARB"
rem
bbdoc: GL Global glMapBufferARB:Byte Ptr(target_:Int,access_:Int)
endrem
Global glMapBufferARB:Byte Ptr(target_:Int,access_:Int)="__glewMapBufferARB"
rem
bbdoc: GL Global glUnmapBufferARB:Byte(target_:Int)
endrem
Global glUnmapBufferARB:Byte(target_:Int)="__glewUnmapBufferARB"
rem
bbdoc: GL Const GL_ARB_vertex_program
endrem
Const GL_ARB_vertex_program=1
rem
bbdoc: GL Const GL_COLOR_SUM_ARB
endrem
Const GL_COLOR_SUM_ARB=$8458
rem
bbdoc: GL Const GL_VERTEX_PROGRAM_ARB
endrem
Const GL_VERTEX_PROGRAM_ARB=$8620
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB
endrem
Const GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB=$8622
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB
endrem
Const GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB=$8623
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB
endrem
Const GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB=$8624
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB
endrem
Const GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB=$8625
rem
bbdoc: GL Const GL_CURRENT_VERTEX_ATTRIB_ARB
endrem
Const GL_CURRENT_VERTEX_ATTRIB_ARB=$8626
rem
bbdoc: GL Const GL_PROGRAM_LENGTH_ARB
endrem
Const GL_PROGRAM_LENGTH_ARB=$8627
rem
bbdoc: GL Const GL_PROGRAM_STRING_ARB
endrem
Const GL_PROGRAM_STRING_ARB=$8628
rem
bbdoc: GL Const GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB
endrem
Const GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB=$862E
rem
bbdoc: GL Const GL_MAX_PROGRAM_MATRICES_ARB
endrem
Const GL_MAX_PROGRAM_MATRICES_ARB=$862F
rem
bbdoc: GL Const GL_CURRENT_MATRIX_STACK_DEPTH_ARB
endrem
Const GL_CURRENT_MATRIX_STACK_DEPTH_ARB=$8640
rem
bbdoc: GL Const GL_CURRENT_MATRIX_ARB
endrem
Const GL_CURRENT_MATRIX_ARB=$8641
rem
bbdoc: GL Const GL_VERTEX_PROGRAM_POINT_SIZE_ARB
endrem
Const GL_VERTEX_PROGRAM_POINT_SIZE_ARB=$8642
rem
bbdoc: GL Const GL_VERTEX_PROGRAM_TWO_SIDE_ARB
endrem
Const GL_VERTEX_PROGRAM_TWO_SIDE_ARB=$8643
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB
endrem
Const GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB=$8645
rem
bbdoc: GL Const GL_PROGRAM_ERROR_POSITION_ARB
endrem
Const GL_PROGRAM_ERROR_POSITION_ARB=$864B
rem
bbdoc: GL Const GL_PROGRAM_BINDING_ARB
endrem
Const GL_PROGRAM_BINDING_ARB=$8677
rem
bbdoc: GL Const GL_MAX_VERTEX_ATTRIBS_ARB
endrem
Const GL_MAX_VERTEX_ATTRIBS_ARB=$8869
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB
endrem
Const GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB=$886A
rem
bbdoc: GL Const GL_PROGRAM_ERROR_STRING_ARB
endrem
Const GL_PROGRAM_ERROR_STRING_ARB=$8874
rem
bbdoc: GL Const GL_PROGRAM_FORMAT_ASCII_ARB
endrem
Const GL_PROGRAM_FORMAT_ASCII_ARB=$8875
rem
bbdoc: GL Const GL_PROGRAM_FORMAT_ARB
endrem
Const GL_PROGRAM_FORMAT_ARB=$8876
rem
bbdoc: GL Const GL_PROGRAM_INSTRUCTIONS_ARB
endrem
Const GL_PROGRAM_INSTRUCTIONS_ARB=$88A0
rem
bbdoc: GL Const GL_MAX_PROGRAM_INSTRUCTIONS_ARB
endrem
Const GL_MAX_PROGRAM_INSTRUCTIONS_ARB=$88A1
rem
bbdoc: GL Const GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB
endrem
Const GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB=$88A2
rem
bbdoc: GL Const GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB
endrem
Const GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB=$88A3
rem
bbdoc: GL Const GL_PROGRAM_TEMPORARIES_ARB
endrem
Const GL_PROGRAM_TEMPORARIES_ARB=$88A4
rem
bbdoc: GL Const GL_MAX_PROGRAM_TEMPORARIES_ARB
endrem
Const GL_MAX_PROGRAM_TEMPORARIES_ARB=$88A5
rem
bbdoc: GL Const GL_PROGRAM_NATIVE_TEMPORARIES_ARB
endrem
Const GL_PROGRAM_NATIVE_TEMPORARIES_ARB=$88A6
rem
bbdoc: GL Const GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB
endrem
Const GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB=$88A7
rem
bbdoc: GL Const GL_PROGRAM_PARAMETERS_ARB
endrem
Const GL_PROGRAM_PARAMETERS_ARB=$88A8
rem
bbdoc: GL Const GL_MAX_PROGRAM_PARAMETERS_ARB
endrem
Const GL_MAX_PROGRAM_PARAMETERS_ARB=$88A9
rem
bbdoc: GL Const GL_PROGRAM_NATIVE_PARAMETERS_ARB
endrem
Const GL_PROGRAM_NATIVE_PARAMETERS_ARB=$88AA
rem
bbdoc: GL Const GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB
endrem
Const GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB=$88AB
rem
bbdoc: GL Const GL_PROGRAM_ATTRIBS_ARB
endrem
Const GL_PROGRAM_ATTRIBS_ARB=$88AC
rem
bbdoc: GL Const GL_MAX_PROGRAM_ATTRIBS_ARB
endrem
Const GL_MAX_PROGRAM_ATTRIBS_ARB=$88AD
rem
bbdoc: GL Const GL_PROGRAM_NATIVE_ATTRIBS_ARB
endrem
Const GL_PROGRAM_NATIVE_ATTRIBS_ARB=$88AE
rem
bbdoc: GL Const GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB
endrem
Const GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB=$88AF
rem
bbdoc: GL Const GL_PROGRAM_ADDRESS_REGISTERS_ARB
endrem
Const GL_PROGRAM_ADDRESS_REGISTERS_ARB=$88B0
rem
bbdoc: GL Const GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB
endrem
Const GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB=$88B1
rem
bbdoc: GL Const GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB
endrem
Const GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB=$88B2
rem
bbdoc: GL Const GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB
endrem
Const GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB=$88B3
rem
bbdoc: GL Const GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB
endrem
Const GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB=$88B4
rem
bbdoc: GL Const GL_MAX_PROGRAM_ENV_PARAMETERS_ARB
endrem
Const GL_MAX_PROGRAM_ENV_PARAMETERS_ARB=$88B5
rem
bbdoc: GL Const GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB
endrem
Const GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB=$88B6
rem
bbdoc: GL Const GL_TRANSPOSE_CURRENT_MATRIX_ARB
endrem
Const GL_TRANSPOSE_CURRENT_MATRIX_ARB=$88B7
rem
bbdoc: GL Const GL_MATRIX0_ARB
endrem
Const GL_MATRIX0_ARB=$88C0
rem
bbdoc: GL Const GL_MATRIX1_ARB
endrem
Const GL_MATRIX1_ARB=$88C1
rem
bbdoc: GL Const GL_MATRIX2_ARB
endrem
Const GL_MATRIX2_ARB=$88C2
rem
bbdoc: GL Const GL_MATRIX3_ARB
endrem
Const GL_MATRIX3_ARB=$88C3
rem
bbdoc: GL Const GL_MATRIX4_ARB
endrem
Const GL_MATRIX4_ARB=$88C4
rem
bbdoc: GL Const GL_MATRIX5_ARB
endrem
Const GL_MATRIX5_ARB=$88C5
rem
bbdoc: GL Const GL_MATRIX6_ARB
endrem
Const GL_MATRIX6_ARB=$88C6
rem
bbdoc: GL Const GL_MATRIX7_ARB
endrem
Const GL_MATRIX7_ARB=$88C7
rem
bbdoc: GL Const GL_MATRIX8_ARB
endrem
Const GL_MATRIX8_ARB=$88C8
rem
bbdoc: GL Const GL_MATRIX9_ARB
endrem
Const GL_MATRIX9_ARB=$88C9
rem
bbdoc: GL Const GL_MATRIX10_ARB
endrem
Const GL_MATRIX10_ARB=$88CA
rem
bbdoc: GL Const GL_MATRIX11_ARB
endrem
Const GL_MATRIX11_ARB=$88CB
rem
bbdoc: GL Const GL_MATRIX12_ARB
endrem
Const GL_MATRIX12_ARB=$88CC
rem
bbdoc: GL Const GL_MATRIX13_ARB
endrem
Const GL_MATRIX13_ARB=$88CD
rem
bbdoc: GL Const GL_MATRIX14_ARB
endrem
Const GL_MATRIX14_ARB=$88CE
rem
bbdoc: GL Const GL_MATRIX15_ARB
endrem
Const GL_MATRIX15_ARB=$88CF
rem
bbdoc: GL Const GL_MATRIX16_ARB
endrem
Const GL_MATRIX16_ARB=$88D0
rem
bbdoc: GL Const GL_MATRIX17_ARB
endrem
Const GL_MATRIX17_ARB=$88D1
rem
bbdoc: GL Const GL_MATRIX18_ARB
endrem
Const GL_MATRIX18_ARB=$88D2
rem
bbdoc: GL Const GL_MATRIX19_ARB
endrem
Const GL_MATRIX19_ARB=$88D3
rem
bbdoc: GL Const GL_MATRIX20_ARB
endrem
Const GL_MATRIX20_ARB=$88D4
rem
bbdoc: GL Const GL_MATRIX21_ARB
endrem
Const GL_MATRIX21_ARB=$88D5
rem
bbdoc: GL Const GL_MATRIX22_ARB
endrem
Const GL_MATRIX22_ARB=$88D6
rem
bbdoc: GL Const GL_MATRIX23_ARB
endrem
Const GL_MATRIX23_ARB=$88D7
rem
bbdoc: GL Const GL_MATRIX24_ARB
endrem
Const GL_MATRIX24_ARB=$88D8
rem
bbdoc: GL Const GL_MATRIX25_ARB
endrem
Const GL_MATRIX25_ARB=$88D9
rem
bbdoc: GL Const GL_MATRIX26_ARB
endrem
Const GL_MATRIX26_ARB=$88DA
rem
bbdoc: GL Const GL_MATRIX27_ARB
endrem
Const GL_MATRIX27_ARB=$88DB
rem
bbdoc: GL Const GL_MATRIX28_ARB
endrem
Const GL_MATRIX28_ARB=$88DC
rem
bbdoc: GL Const GL_MATRIX29_ARB
endrem
Const GL_MATRIX29_ARB=$88DD
rem
bbdoc: GL Const GL_MATRIX30_ARB
endrem
Const GL_MATRIX30_ARB=$88DE
rem
bbdoc: GL Const GL_MATRIX31_ARB
endrem
Const GL_MATRIX31_ARB=$88DF
rem
bbdoc: GL Global glBindProgramARB(target_:Int,program_:Int)
endrem
Global glBindProgramARB(target_:Int,program_:Int)="__glewBindProgramARB"
rem
bbdoc: GL Global glDeleteProgramsARB(n_:Int,programs_:Int Ptr)
endrem
Global glDeleteProgramsARB(n_:Int,programs_:Int Ptr)="__glewDeleteProgramsARB"
rem
bbdoc: GL Global glDisableVertexAttribArrayARB(index_:Int)
endrem
Global glDisableVertexAttribArrayARB(index_:Int)="__glewDisableVertexAttribArrayARB"
rem
bbdoc: GL Global glEnableVertexAttribArrayARB(index_:Int)
endrem
Global glEnableVertexAttribArrayARB(index_:Int)="__glewEnableVertexAttribArrayARB"
rem
bbdoc: GL Global glGenProgramsARB(n_:Int,programs_:Int Ptr)
endrem
Global glGenProgramsARB(n_:Int,programs_:Int Ptr)="__glewGenProgramsARB"
rem
bbdoc: GL Global glGetProgramEnvParameterdvARB(target_:Int,index_:Int,params_:Double Ptr)
endrem
Global glGetProgramEnvParameterdvARB(target_:Int,index_:Int,params_:Double Ptr)="__glewGetProgramEnvParameterdvARB"
rem
bbdoc: GL Global glGetProgramEnvParameterfvARB(target_:Int,index_:Int,params_:Float Ptr)
endrem
Global glGetProgramEnvParameterfvARB(target_:Int,index_:Int,params_:Float Ptr)="__glewGetProgramEnvParameterfvARB"
rem
bbdoc: GL Global glGetProgramLocalParameterdvARB(target_:Int,index_:Int,params_:Double Ptr)
endrem
Global glGetProgramLocalParameterdvARB(target_:Int,index_:Int,params_:Double Ptr)="__glewGetProgramLocalParameterdvARB"
rem
bbdoc: GL Global glGetProgramLocalParameterfvARB(target_:Int,index_:Int,params_:Float Ptr)
endrem
Global glGetProgramLocalParameterfvARB(target_:Int,index_:Int,params_:Float Ptr)="__glewGetProgramLocalParameterfvARB"
rem
bbdoc: GL Global glGetProgramStringARB(target_:Int,pname_:Int,string_:Byte Ptr)
endrem
Global glGetProgramStringARB(target_:Int,pname_:Int,string_:Byte Ptr)="__glewGetProgramStringARB"
rem
bbdoc: GL Global glGetProgramivARB(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetProgramivARB(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetProgramivARB"
rem
bbdoc: GL Global glGetVertexAttribPointervARB(index_:Int,pname_:Int,pointer_:Byte Ptr Ptr)
endrem
Global glGetVertexAttribPointervARB(index_:Int,pname_:Int,pointer_:Byte Ptr Ptr)="__glewGetVertexAttribPointervARB"
rem
bbdoc: GL Global glGetVertexAttribdvARB(index_:Int,pname_:Int,params_:Double Ptr)
endrem
Global glGetVertexAttribdvARB(index_:Int,pname_:Int,params_:Double Ptr)="__glewGetVertexAttribdvARB"
rem
bbdoc: GL Global glGetVertexAttribfvARB(index_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetVertexAttribfvARB(index_:Int,pname_:Int,params_:Float Ptr)="__glewGetVertexAttribfvARB"
rem
bbdoc: GL Global glGetVertexAttribivARB(index_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetVertexAttribivARB(index_:Int,pname_:Int,params_:Int Ptr)="__glewGetVertexAttribivARB"
rem
bbdoc: GL Global glIsProgramARB:Byte(program_:Int)
endrem
Global glIsProgramARB:Byte(program_:Int)="__glewIsProgramARB"
rem
bbdoc: GL Global glProgramEnvParameter4dARB(target_:Int,index_:Int,x_:Double,y_:Double,z_:Double,w_:Double)
endrem
Global glProgramEnvParameter4dARB(target_:Int,index_:Int,x_:Double,y_:Double,z_:Double,w_:Double)="__glewProgramEnvParameter4dARB"
rem
bbdoc: GL Global glProgramEnvParameter4dvARB(target_:Int,index_:Int,params_:Double Ptr)
endrem
Global glProgramEnvParameter4dvARB(target_:Int,index_:Int,params_:Double Ptr)="__glewProgramEnvParameter4dvARB"
rem
bbdoc: GL Global glProgramEnvParameter4fARB(target_:Int,index_:Int,x_:Float,y_:Float,z_:Float,w_:Float)
endrem
Global glProgramEnvParameter4fARB(target_:Int,index_:Int,x_:Float,y_:Float,z_:Float,w_:Float)="__glewProgramEnvParameter4fARB"
rem
bbdoc: GL Global glProgramEnvParameter4fvARB(target_:Int,index_:Int,params_:Float Ptr)
endrem
Global glProgramEnvParameter4fvARB(target_:Int,index_:Int,params_:Float Ptr)="__glewProgramEnvParameter4fvARB"
rem
bbdoc: GL Global glProgramLocalParameter4dARB(target_:Int,index_:Int,x_:Double,y_:Double,z_:Double,w_:Double)
endrem
Global glProgramLocalParameter4dARB(target_:Int,index_:Int,x_:Double,y_:Double,z_:Double,w_:Double)="__glewProgramLocalParameter4dARB"
rem
bbdoc: GL Global glProgramLocalParameter4dvARB(target_:Int,index_:Int,params_:Double Ptr)
endrem
Global glProgramLocalParameter4dvARB(target_:Int,index_:Int,params_:Double Ptr)="__glewProgramLocalParameter4dvARB"
rem
bbdoc: GL Global glProgramLocalParameter4fARB(target_:Int,index_:Int,x_:Float,y_:Float,z_:Float,w_:Float)
endrem
Global glProgramLocalParameter4fARB(target_:Int,index_:Int,x_:Float,y_:Float,z_:Float,w_:Float)="__glewProgramLocalParameter4fARB"
rem
bbdoc: GL Global glProgramLocalParameter4fvARB(target_:Int,index_:Int,params_:Float Ptr)
endrem
Global glProgramLocalParameter4fvARB(target_:Int,index_:Int,params_:Float Ptr)="__glewProgramLocalParameter4fvARB"
rem
bbdoc: GL Global glProgramStringARB(target_:Int,format_:Int,len_:Int,string_:Byte Ptr)
endrem
Global glProgramStringARB(target_:Int,format_:Int,len_:Int,string_:Byte Ptr)="__glewProgramStringARB"
rem
bbdoc: GL Global glVertexAttrib1dARB(index_:Int,x_:Double)
endrem
Global glVertexAttrib1dARB(index_:Int,x_:Double)="__glewVertexAttrib1dARB"
rem
bbdoc: GL Global glVertexAttrib1dvARB(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttrib1dvARB(index_:Int,v_:Double Ptr)="__glewVertexAttrib1dvARB"
rem
bbdoc: GL Global glVertexAttrib1fARB(index_:Int,x_:Float)
endrem
Global glVertexAttrib1fARB(index_:Int,x_:Float)="__glewVertexAttrib1fARB"
rem
bbdoc: GL Global glVertexAttrib1fvARB(index_:Int,v_:Float Ptr)
endrem
Global glVertexAttrib1fvARB(index_:Int,v_:Float Ptr)="__glewVertexAttrib1fvARB"
rem
bbdoc: GL Global glVertexAttrib1sARB(index_:Int,x_:Short)
endrem
Global glVertexAttrib1sARB(index_:Int,x_:Short)="__glewVertexAttrib1sARB"
rem
bbdoc: GL Global glVertexAttrib1svARB(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib1svARB(index_:Int,v_:Short Ptr)="__glewVertexAttrib1svARB"
rem
bbdoc: GL Global glVertexAttrib2dARB(index_:Int,x_:Double,y_:Double)
endrem
Global glVertexAttrib2dARB(index_:Int,x_:Double,y_:Double)="__glewVertexAttrib2dARB"
rem
bbdoc: GL Global glVertexAttrib2dvARB(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttrib2dvARB(index_:Int,v_:Double Ptr)="__glewVertexAttrib2dvARB"
rem
bbdoc: GL Global glVertexAttrib2fARB(index_:Int,x_:Float,y_:Float)
endrem
Global glVertexAttrib2fARB(index_:Int,x_:Float,y_:Float)="__glewVertexAttrib2fARB"
rem
bbdoc: GL Global glVertexAttrib2fvARB(index_:Int,v_:Float Ptr)
endrem
Global glVertexAttrib2fvARB(index_:Int,v_:Float Ptr)="__glewVertexAttrib2fvARB"
rem
bbdoc: GL Global glVertexAttrib2sARB(index_:Int,x_:Short,y_:Short)
endrem
Global glVertexAttrib2sARB(index_:Int,x_:Short,y_:Short)="__glewVertexAttrib2sARB"
rem
bbdoc: GL Global glVertexAttrib2svARB(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib2svARB(index_:Int,v_:Short Ptr)="__glewVertexAttrib2svARB"
rem
bbdoc: GL Global glVertexAttrib3dARB(index_:Int,x_:Double,y_:Double,z_:Double)
endrem
Global glVertexAttrib3dARB(index_:Int,x_:Double,y_:Double,z_:Double)="__glewVertexAttrib3dARB"
rem
bbdoc: GL Global glVertexAttrib3dvARB(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttrib3dvARB(index_:Int,v_:Double Ptr)="__glewVertexAttrib3dvARB"
rem
bbdoc: GL Global glVertexAttrib3fARB(index_:Int,x_:Float,y_:Float,z_:Float)
endrem
Global glVertexAttrib3fARB(index_:Int,x_:Float,y_:Float,z_:Float)="__glewVertexAttrib3fARB"
rem
bbdoc: GL Global glVertexAttrib3fvARB(index_:Int,v_:Float Ptr)
endrem
Global glVertexAttrib3fvARB(index_:Int,v_:Float Ptr)="__glewVertexAttrib3fvARB"
rem
bbdoc: GL Global glVertexAttrib3sARB(index_:Int,x_:Short,y_:Short,z_:Short)
endrem
Global glVertexAttrib3sARB(index_:Int,x_:Short,y_:Short,z_:Short)="__glewVertexAttrib3sARB"
rem
bbdoc: GL Global glVertexAttrib3svARB(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib3svARB(index_:Int,v_:Short Ptr)="__glewVertexAttrib3svARB"
rem
bbdoc: GL Global glVertexAttrib4NbvARB(index_:Int,v_:Byte Ptr)
endrem
Global glVertexAttrib4NbvARB(index_:Int,v_:Byte Ptr)="__glewVertexAttrib4NbvARB"
rem
bbdoc: GL Global glVertexAttrib4NivARB(index_:Int,v_:Int Ptr)
endrem
Global glVertexAttrib4NivARB(index_:Int,v_:Int Ptr)="__glewVertexAttrib4NivARB"
rem
bbdoc: GL Global glVertexAttrib4NsvARB(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib4NsvARB(index_:Int,v_:Short Ptr)="__glewVertexAttrib4NsvARB"
rem
bbdoc: GL Global glVertexAttrib4NubARB(index_:Int,x_:Byte,y_:Byte,z_:Byte,w_:Byte)
endrem
Global glVertexAttrib4NubARB(index_:Int,x_:Byte,y_:Byte,z_:Byte,w_:Byte)="__glewVertexAttrib4NubARB"
rem
bbdoc: GL Global glVertexAttrib4NubvARB(index_:Int,v_:Byte Ptr)
endrem
Global glVertexAttrib4NubvARB(index_:Int,v_:Byte Ptr)="__glewVertexAttrib4NubvARB"
rem
bbdoc: GL Global glVertexAttrib4NuivARB(index_:Int,v_:Int Ptr)
endrem
Global glVertexAttrib4NuivARB(index_:Int,v_:Int Ptr)="__glewVertexAttrib4NuivARB"
rem
bbdoc: GL Global glVertexAttrib4NusvARB(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib4NusvARB(index_:Int,v_:Short Ptr)="__glewVertexAttrib4NusvARB"
rem
bbdoc: GL Global glVertexAttrib4bvARB(index_:Int,v_:Byte Ptr)
endrem
Global glVertexAttrib4bvARB(index_:Int,v_:Byte Ptr)="__glewVertexAttrib4bvARB"
rem
bbdoc: GL Global glVertexAttrib4dARB(index_:Int,x_:Double,y_:Double,z_:Double,w_:Double)
endrem
Global glVertexAttrib4dARB(index_:Int,x_:Double,y_:Double,z_:Double,w_:Double)="__glewVertexAttrib4dARB"
rem
bbdoc: GL Global glVertexAttrib4dvARB(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttrib4dvARB(index_:Int,v_:Double Ptr)="__glewVertexAttrib4dvARB"
rem
bbdoc: GL Global glVertexAttrib4fARB(index_:Int,x_:Float,y_:Float,z_:Float,w_:Float)
endrem
Global glVertexAttrib4fARB(index_:Int,x_:Float,y_:Float,z_:Float,w_:Float)="__glewVertexAttrib4fARB"
rem
bbdoc: GL Global glVertexAttrib4fvARB(index_:Int,v_:Float Ptr)
endrem
Global glVertexAttrib4fvARB(index_:Int,v_:Float Ptr)="__glewVertexAttrib4fvARB"
rem
bbdoc: GL Global glVertexAttrib4ivARB(index_:Int,v_:Int Ptr)
endrem
Global glVertexAttrib4ivARB(index_:Int,v_:Int Ptr)="__glewVertexAttrib4ivARB"
rem
bbdoc: GL Global glVertexAttrib4sARB(index_:Int,x_:Short,y_:Short,z_:Short,w_:Short)
endrem
Global glVertexAttrib4sARB(index_:Int,x_:Short,y_:Short,z_:Short,w_:Short)="__glewVertexAttrib4sARB"
rem
bbdoc: GL Global glVertexAttrib4svARB(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib4svARB(index_:Int,v_:Short Ptr)="__glewVertexAttrib4svARB"
rem
bbdoc: GL Global glVertexAttrib4ubvARB(index_:Int,v_:Byte Ptr)
endrem
Global glVertexAttrib4ubvARB(index_:Int,v_:Byte Ptr)="__glewVertexAttrib4ubvARB"
rem
bbdoc: GL Global glVertexAttrib4uivARB(index_:Int,v_:Int Ptr)
endrem
Global glVertexAttrib4uivARB(index_:Int,v_:Int Ptr)="__glewVertexAttrib4uivARB"
rem
bbdoc: GL Global glVertexAttrib4usvARB(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib4usvARB(index_:Int,v_:Short Ptr)="__glewVertexAttrib4usvARB"
rem
bbdoc: GL Global glVertexAttribPointerARB(index_:Int,size_:Int,type_:Int,normalized_:Byte,stride_:Int,pointer_:Byte Ptr)
endrem
Global glVertexAttribPointerARB(index_:Int,size_:Int,type_:Int,normalized_:Byte,stride_:Int,pointer_:Byte Ptr)="__glewVertexAttribPointerARB"
rem
bbdoc: GL Const GL_ARB_vertex_shader
endrem
Const GL_ARB_vertex_shader=1
rem
bbdoc: GL Const GL_VERTEX_SHADER_ARB
endrem
Const GL_VERTEX_SHADER_ARB=$8B31
rem
bbdoc: GL Const GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB
endrem
Const GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB=$8B4A
rem
bbdoc: GL Const GL_MAX_VARYING_FLOATS_ARB
endrem
Const GL_MAX_VARYING_FLOATS_ARB=$8B4B
rem
bbdoc: GL Const GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB
endrem
Const GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB=$8B4C
rem
bbdoc: GL Const GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB
endrem
Const GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB=$8B4D
rem
bbdoc: GL Const GL_OBJECT_ACTIVE_ATTRIBUTES_ARB
endrem
Const GL_OBJECT_ACTIVE_ATTRIBUTES_ARB=$8B89
rem
bbdoc: GL Const GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB
endrem
Const GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB=$8B8A
rem
bbdoc: GL Global glBindAttribLocationARB(programObj_:Int,index_:Int,name_:Byte Ptr)
endrem
Global glBindAttribLocationARB(programObj_:Int,index_:Int,name_:Byte Ptr)="__glewBindAttribLocationARB"
rem
bbdoc: GL Global glGetActiveAttribARB(programObj_:Int,index_:Int,maxLength_:Int,length_:Int Ptr,size_:Int Ptr,type_:Int Ptr,name_:Byte Ptr)
endrem
Global glGetActiveAttribARB(programObj_:Int,index_:Int,maxLength_:Int,length_:Int Ptr,size_:Int Ptr,type_:Int Ptr,name_:Byte Ptr)="__glewGetActiveAttribARB"
rem
bbdoc: GL Global glGetAttribLocationARB:Int(programObj_:Int,name_:Byte Ptr)
endrem
Global glGetAttribLocationARB:Int(programObj_:Int,name_:Byte Ptr)="__glewGetAttribLocationARB"
rem
bbdoc: GL Const GL_ARB_vertex_type_10f_11f_11f_rev
endrem
Const GL_ARB_vertex_type_10f_11f_11f_rev=1
rem
bbdoc: GL Const GL_ARB_vertex_type_2_10_10_10_rev
endrem
Const GL_ARB_vertex_type_2_10_10_10_rev=1
rem
bbdoc: GL Const GL_UNSIGNED_INT_2_10_10_10_REV
endrem
Const GL_UNSIGNED_INT_2_10_10_10_REV=$8368
rem
bbdoc: GL Const GL_INT_2_10_10_10_REV
endrem
Const GL_INT_2_10_10_10_REV=$8D9F
rem
bbdoc: GL Global glColorP3ui(type_:Int,color_:Int)
endrem
Global glColorP3ui(type_:Int,color_:Int)="__glewColorP3ui"
rem
bbdoc: GL Global glColorP3uiv(type_:Int,color_:Int Ptr)
endrem
Global glColorP3uiv(type_:Int,color_:Int Ptr)="__glewColorP3uiv"
rem
bbdoc: GL Global glColorP4ui(type_:Int,color_:Int)
endrem
Global glColorP4ui(type_:Int,color_:Int)="__glewColorP4ui"
rem
bbdoc: GL Global glColorP4uiv(type_:Int,color_:Int Ptr)
endrem
Global glColorP4uiv(type_:Int,color_:Int Ptr)="__glewColorP4uiv"
rem
bbdoc: GL Global glMultiTexCoordP1ui(texture_:Int,type_:Int,coords_:Int)
endrem
Global glMultiTexCoordP1ui(texture_:Int,type_:Int,coords_:Int)="__glewMultiTexCoordP1ui"
rem
bbdoc: GL Global glMultiTexCoordP1uiv(texture_:Int,type_:Int,coords_:Int Ptr)
endrem
Global glMultiTexCoordP1uiv(texture_:Int,type_:Int,coords_:Int Ptr)="__glewMultiTexCoordP1uiv"
rem
bbdoc: GL Global glMultiTexCoordP2ui(texture_:Int,type_:Int,coords_:Int)
endrem
Global glMultiTexCoordP2ui(texture_:Int,type_:Int,coords_:Int)="__glewMultiTexCoordP2ui"
rem
bbdoc: GL Global glMultiTexCoordP2uiv(texture_:Int,type_:Int,coords_:Int Ptr)
endrem
Global glMultiTexCoordP2uiv(texture_:Int,type_:Int,coords_:Int Ptr)="__glewMultiTexCoordP2uiv"
rem
bbdoc: GL Global glMultiTexCoordP3ui(texture_:Int,type_:Int,coords_:Int)
endrem
Global glMultiTexCoordP3ui(texture_:Int,type_:Int,coords_:Int)="__glewMultiTexCoordP3ui"
rem
bbdoc: GL Global glMultiTexCoordP3uiv(texture_:Int,type_:Int,coords_:Int Ptr)
endrem
Global glMultiTexCoordP3uiv(texture_:Int,type_:Int,coords_:Int Ptr)="__glewMultiTexCoordP3uiv"
rem
bbdoc: GL Global glMultiTexCoordP4ui(texture_:Int,type_:Int,coords_:Int)
endrem
Global glMultiTexCoordP4ui(texture_:Int,type_:Int,coords_:Int)="__glewMultiTexCoordP4ui"
rem
bbdoc: GL Global glMultiTexCoordP4uiv(texture_:Int,type_:Int,coords_:Int Ptr)
endrem
Global glMultiTexCoordP4uiv(texture_:Int,type_:Int,coords_:Int Ptr)="__glewMultiTexCoordP4uiv"
rem
bbdoc: GL Global glNormalP3ui(type_:Int,coords_:Int)
endrem
Global glNormalP3ui(type_:Int,coords_:Int)="__glewNormalP3ui"
rem
bbdoc: GL Global glNormalP3uiv(type_:Int,coords_:Int Ptr)
endrem
Global glNormalP3uiv(type_:Int,coords_:Int Ptr)="__glewNormalP3uiv"
rem
bbdoc: GL Global glSecondaryColorP3ui(type_:Int,color_:Int)
endrem
Global glSecondaryColorP3ui(type_:Int,color_:Int)="__glewSecondaryColorP3ui"
rem
bbdoc: GL Global glSecondaryColorP3uiv(type_:Int,color_:Int Ptr)
endrem
Global glSecondaryColorP3uiv(type_:Int,color_:Int Ptr)="__glewSecondaryColorP3uiv"
rem
bbdoc: GL Global glTexCoordP1ui(type_:Int,coords_:Int)
endrem
Global glTexCoordP1ui(type_:Int,coords_:Int)="__glewTexCoordP1ui"
rem
bbdoc: GL Global glTexCoordP1uiv(type_:Int,coords_:Int Ptr)
endrem
Global glTexCoordP1uiv(type_:Int,coords_:Int Ptr)="__glewTexCoordP1uiv"
rem
bbdoc: GL Global glTexCoordP2ui(type_:Int,coords_:Int)
endrem
Global glTexCoordP2ui(type_:Int,coords_:Int)="__glewTexCoordP2ui"
rem
bbdoc: GL Global glTexCoordP2uiv(type_:Int,coords_:Int Ptr)
endrem
Global glTexCoordP2uiv(type_:Int,coords_:Int Ptr)="__glewTexCoordP2uiv"
rem
bbdoc: GL Global glTexCoordP3ui(type_:Int,coords_:Int)
endrem
Global glTexCoordP3ui(type_:Int,coords_:Int)="__glewTexCoordP3ui"
rem
bbdoc: GL Global glTexCoordP3uiv(type_:Int,coords_:Int Ptr)
endrem
Global glTexCoordP3uiv(type_:Int,coords_:Int Ptr)="__glewTexCoordP3uiv"
rem
bbdoc: GL Global glTexCoordP4ui(type_:Int,coords_:Int)
endrem
Global glTexCoordP4ui(type_:Int,coords_:Int)="__glewTexCoordP4ui"
rem
bbdoc: GL Global glTexCoordP4uiv(type_:Int,coords_:Int Ptr)
endrem
Global glTexCoordP4uiv(type_:Int,coords_:Int Ptr)="__glewTexCoordP4uiv"
rem
bbdoc: GL Global glVertexAttribP1ui(index_:Int,type_:Int,normalized_:Byte,value_:Int)
endrem
Global glVertexAttribP1ui(index_:Int,type_:Int,normalized_:Byte,value_:Int)="__glewVertexAttribP1ui"
rem
bbdoc: GL Global glVertexAttribP1uiv(index_:Int,type_:Int,normalized_:Byte,value_:Int Ptr)
endrem
Global glVertexAttribP1uiv(index_:Int,type_:Int,normalized_:Byte,value_:Int Ptr)="__glewVertexAttribP1uiv"
rem
bbdoc: GL Global glVertexAttribP2ui(index_:Int,type_:Int,normalized_:Byte,value_:Int)
endrem
Global glVertexAttribP2ui(index_:Int,type_:Int,normalized_:Byte,value_:Int)="__glewVertexAttribP2ui"
rem
bbdoc: GL Global glVertexAttribP2uiv(index_:Int,type_:Int,normalized_:Byte,value_:Int Ptr)
endrem
Global glVertexAttribP2uiv(index_:Int,type_:Int,normalized_:Byte,value_:Int Ptr)="__glewVertexAttribP2uiv"
rem
bbdoc: GL Global glVertexAttribP3ui(index_:Int,type_:Int,normalized_:Byte,value_:Int)
endrem
Global glVertexAttribP3ui(index_:Int,type_:Int,normalized_:Byte,value_:Int)="__glewVertexAttribP3ui"
rem
bbdoc: GL Global glVertexAttribP3uiv(index_:Int,type_:Int,normalized_:Byte,value_:Int Ptr)
endrem
Global glVertexAttribP3uiv(index_:Int,type_:Int,normalized_:Byte,value_:Int Ptr)="__glewVertexAttribP3uiv"
rem
bbdoc: GL Global glVertexAttribP4ui(index_:Int,type_:Int,normalized_:Byte,value_:Int)
endrem
Global glVertexAttribP4ui(index_:Int,type_:Int,normalized_:Byte,value_:Int)="__glewVertexAttribP4ui"
rem
bbdoc: GL Global glVertexAttribP4uiv(index_:Int,type_:Int,normalized_:Byte,value_:Int Ptr)
endrem
Global glVertexAttribP4uiv(index_:Int,type_:Int,normalized_:Byte,value_:Int Ptr)="__glewVertexAttribP4uiv"
rem
bbdoc: GL Global glVertexP2ui(type_:Int,value_:Int)
endrem
Global glVertexP2ui(type_:Int,value_:Int)="__glewVertexP2ui"
rem
bbdoc: GL Global glVertexP2uiv(type_:Int,value_:Int Ptr)
endrem
Global glVertexP2uiv(type_:Int,value_:Int Ptr)="__glewVertexP2uiv"
rem
bbdoc: GL Global glVertexP3ui(type_:Int,value_:Int)
endrem
Global glVertexP3ui(type_:Int,value_:Int)="__glewVertexP3ui"
rem
bbdoc: GL Global glVertexP3uiv(type_:Int,value_:Int Ptr)
endrem
Global glVertexP3uiv(type_:Int,value_:Int Ptr)="__glewVertexP3uiv"
rem
bbdoc: GL Global glVertexP4ui(type_:Int,value_:Int)
endrem
Global glVertexP4ui(type_:Int,value_:Int)="__glewVertexP4ui"
rem
bbdoc: GL Global glVertexP4uiv(type_:Int,value_:Int Ptr)
endrem
Global glVertexP4uiv(type_:Int,value_:Int Ptr)="__glewVertexP4uiv"
rem
bbdoc: GL Const GL_ARB_viewport_array
endrem
Const GL_ARB_viewport_array=1
rem
bbdoc: GL Const GL_MAX_VIEWPORTS
endrem
Const GL_MAX_VIEWPORTS=$825B
rem
bbdoc: GL Const GL_VIEWPORT_SUBPIXEL_BITS
endrem
Const GL_VIEWPORT_SUBPIXEL_BITS=$825C
rem
bbdoc: GL Const GL_VIEWPORT_BOUNDS_RANGE
endrem
Const GL_VIEWPORT_BOUNDS_RANGE=$825D
rem
bbdoc: GL Const GL_LAYER_PROVOKING_VERTEX
endrem
Const GL_LAYER_PROVOKING_VERTEX=$825E
rem
bbdoc: GL Const GL_VIEWPORT_INDEX_PROVOKING_VERTEX
endrem
Const GL_VIEWPORT_INDEX_PROVOKING_VERTEX=$825F
rem
bbdoc: GL Const GL_UNDEFINED_VERTEX
endrem
Const GL_UNDEFINED_VERTEX=$8260
rem
bbdoc: GL Global glDepthRangeArrayv(first_:Int,count_:Int,v_:Double Ptr)
endrem
Global glDepthRangeArrayv(first_:Int,count_:Int,v_:Double Ptr)="__glewDepthRangeArrayv"
rem
bbdoc: GL Global glDepthRangeIndexed(index_:Int,n_:Double,f_:Double)
endrem
Global glDepthRangeIndexed(index_:Int,n_:Double,f_:Double)="__glewDepthRangeIndexed"
rem
bbdoc: GL Global glGetDoublei_v(target_:Int,index_:Int,data_:Double Ptr)
endrem
Global glGetDoublei_v(target_:Int,index_:Int,data_:Double Ptr)="__glewGetDoublei_v"
rem
bbdoc: GL Global glGetFloati_v(target_:Int,index_:Int,data_:Float Ptr)
endrem
Global glGetFloati_v(target_:Int,index_:Int,data_:Float Ptr)="__glewGetFloati_v"
rem
bbdoc: GL Global glScissorArrayv(first_:Int,count_:Int,v_:Int Ptr)
endrem
Global glScissorArrayv(first_:Int,count_:Int,v_:Int Ptr)="__glewScissorArrayv"
rem
bbdoc: GL Global glScissorIndexed(index_:Int,left_:Int,bottom_:Int,width_:Int,height_:Int)
endrem
Global glScissorIndexed(index_:Int,left_:Int,bottom_:Int,width_:Int,height_:Int)="__glewScissorIndexed"
rem
bbdoc: GL Global glScissorIndexedv(index_:Int,v_:Int Ptr)
endrem
Global glScissorIndexedv(index_:Int,v_:Int Ptr)="__glewScissorIndexedv"
rem
bbdoc: GL Global glViewportArrayv(first_:Int,count_:Int,v_:Float Ptr)
endrem
Global glViewportArrayv(first_:Int,count_:Int,v_:Float Ptr)="__glewViewportArrayv"
rem
bbdoc: GL Global glViewportIndexedf(index_:Int,x_:Float,y_:Float,w_:Float,h_:Float)
endrem
Global glViewportIndexedf(index_:Int,x_:Float,y_:Float,w_:Float,h_:Float)="__glewViewportIndexedf"
rem
bbdoc: GL Global glViewportIndexedfv(index_:Int,v_:Float Ptr)
endrem
Global glViewportIndexedfv(index_:Int,v_:Float Ptr)="__glewViewportIndexedfv"
rem
bbdoc: GL Const GL_ARB_window_pos
endrem
Const GL_ARB_window_pos=1
rem
bbdoc: GL Global glWindowPos2dARB(x_:Double,y_:Double)
endrem
Global glWindowPos2dARB(x_:Double,y_:Double)="__glewWindowPos2dARB"
rem
bbdoc: GL Global glWindowPos2dvARB(p_:Double Ptr)
endrem
Global glWindowPos2dvARB(p_:Double Ptr)="__glewWindowPos2dvARB"
rem
bbdoc: GL Global glWindowPos2fARB(x_:Float,y_:Float)
endrem
Global glWindowPos2fARB(x_:Float,y_:Float)="__glewWindowPos2fARB"
rem
bbdoc: GL Global glWindowPos2fvARB(p_:Float Ptr)
endrem
Global glWindowPos2fvARB(p_:Float Ptr)="__glewWindowPos2fvARB"
rem
bbdoc: GL Global glWindowPos2iARB(x_:Int,y_:Int)
endrem
Global glWindowPos2iARB(x_:Int,y_:Int)="__glewWindowPos2iARB"
rem
bbdoc: GL Global glWindowPos2ivARB(p_:Int Ptr)
endrem
Global glWindowPos2ivARB(p_:Int Ptr)="__glewWindowPos2ivARB"
rem
bbdoc: GL Global glWindowPos2sARB(x_:Short,y_:Short)
endrem
Global glWindowPos2sARB(x_:Short,y_:Short)="__glewWindowPos2sARB"
rem
bbdoc: GL Global glWindowPos2svARB(p_:Short Ptr)
endrem
Global glWindowPos2svARB(p_:Short Ptr)="__glewWindowPos2svARB"
rem
bbdoc: GL Global glWindowPos3dARB(x_:Double,y_:Double,z_:Double)
endrem
Global glWindowPos3dARB(x_:Double,y_:Double,z_:Double)="__glewWindowPos3dARB"
rem
bbdoc: GL Global glWindowPos3dvARB(p_:Double Ptr)
endrem
Global glWindowPos3dvARB(p_:Double Ptr)="__glewWindowPos3dvARB"
rem
bbdoc: GL Global glWindowPos3fARB(x_:Float,y_:Float,z_:Float)
endrem
Global glWindowPos3fARB(x_:Float,y_:Float,z_:Float)="__glewWindowPos3fARB"
rem
bbdoc: GL Global glWindowPos3fvARB(p_:Float Ptr)
endrem
Global glWindowPos3fvARB(p_:Float Ptr)="__glewWindowPos3fvARB"
rem
bbdoc: GL Global glWindowPos3iARB(x_:Int,y_:Int,z_:Int)
endrem
Global glWindowPos3iARB(x_:Int,y_:Int,z_:Int)="__glewWindowPos3iARB"
rem
bbdoc: GL Global glWindowPos3ivARB(p_:Int Ptr)
endrem
Global glWindowPos3ivARB(p_:Int Ptr)="__glewWindowPos3ivARB"
rem
bbdoc: GL Global glWindowPos3sARB(x_:Short,y_:Short,z_:Short)
endrem
Global glWindowPos3sARB(x_:Short,y_:Short,z_:Short)="__glewWindowPos3sARB"
rem
bbdoc: GL Global glWindowPos3svARB(p_:Short Ptr)
endrem
Global glWindowPos3svARB(p_:Short Ptr)="__glewWindowPos3svARB"
rem
bbdoc: GL Const GL_ATIX_point_sprites
endrem
Const GL_ATIX_point_sprites=1
rem
bbdoc: GL Const GL_TEXTURE_POINT_MODE_ATIX
endrem
Const GL_TEXTURE_POINT_MODE_ATIX=$60B0
rem
bbdoc: GL Const GL_TEXTURE_POINT_ONE_COORD_ATIX
endrem
Const GL_TEXTURE_POINT_ONE_COORD_ATIX=$60B1
rem
bbdoc: GL Const GL_TEXTURE_POINT_SPRITE_ATIX
endrem
Const GL_TEXTURE_POINT_SPRITE_ATIX=$60B2
rem
bbdoc: GL Const GL_POINT_SPRITE_CULL_MODE_ATIX
endrem
Const GL_POINT_SPRITE_CULL_MODE_ATIX=$60B3
rem
bbdoc: GL Const GL_POINT_SPRITE_CULL_CENTER_ATIX
endrem
Const GL_POINT_SPRITE_CULL_CENTER_ATIX=$60B4
rem
bbdoc: GL Const GL_POINT_SPRITE_CULL_CLIP_ATIX
endrem
Const GL_POINT_SPRITE_CULL_CLIP_ATIX=$60B5
rem
bbdoc: GL Const GL_ATIX_texture_env_combine3
endrem
Const GL_ATIX_texture_env_combine3=1
rem
bbdoc: GL Const GL_MODULATE_ADD_ATIX
endrem
Const GL_MODULATE_ADD_ATIX=$8744
rem
bbdoc: GL Const GL_MODULATE_SIGNED_ADD_ATIX
endrem
Const GL_MODULATE_SIGNED_ADD_ATIX=$8745
rem
bbdoc: GL Const GL_MODULATE_SUBTRACT_ATIX
endrem
Const GL_MODULATE_SUBTRACT_ATIX=$8746
rem
bbdoc: GL Const GL_ATIX_texture_env_route
endrem
Const GL_ATIX_texture_env_route=1
rem
bbdoc: GL Const GL_SECONDARY_COLOR_ATIX
endrem
Const GL_SECONDARY_COLOR_ATIX=$8747
rem
bbdoc: GL Const GL_TEXTURE_OUTPUT_RGB_ATIX
endrem
Const GL_TEXTURE_OUTPUT_RGB_ATIX=$8748
rem
bbdoc: GL Const GL_TEXTURE_OUTPUT_ALPHA_ATIX
endrem
Const GL_TEXTURE_OUTPUT_ALPHA_ATIX=$8749
rem
bbdoc: GL Const GL_ATIX_vertex_shader_output_point_size
endrem
Const GL_ATIX_vertex_shader_output_point_size=1
rem
bbdoc: GL Const GL_OUTPUT_POINT_SIZE_ATIX
endrem
Const GL_OUTPUT_POINT_SIZE_ATIX=$610E
rem
bbdoc: GL Const GL_ATI_draw_buffers
endrem
Const GL_ATI_draw_buffers=1
rem
bbdoc: GL Const GL_MAX_DRAW_BUFFERS_ATI
endrem
Const GL_MAX_DRAW_BUFFERS_ATI=$8824
rem
bbdoc: GL Const GL_DRAW_BUFFER0_ATI
endrem
Const GL_DRAW_BUFFER0_ATI=$8825
rem
bbdoc: GL Const GL_DRAW_BUFFER1_ATI
endrem
Const GL_DRAW_BUFFER1_ATI=$8826
rem
bbdoc: GL Const GL_DRAW_BUFFER2_ATI
endrem
Const GL_DRAW_BUFFER2_ATI=$8827
rem
bbdoc: GL Const GL_DRAW_BUFFER3_ATI
endrem
Const GL_DRAW_BUFFER3_ATI=$8828
rem
bbdoc: GL Const GL_DRAW_BUFFER4_ATI
endrem
Const GL_DRAW_BUFFER4_ATI=$8829
rem
bbdoc: GL Const GL_DRAW_BUFFER5_ATI
endrem
Const GL_DRAW_BUFFER5_ATI=$882A
rem
bbdoc: GL Const GL_DRAW_BUFFER6_ATI
endrem
Const GL_DRAW_BUFFER6_ATI=$882B
rem
bbdoc: GL Const GL_DRAW_BUFFER7_ATI
endrem
Const GL_DRAW_BUFFER7_ATI=$882C
rem
bbdoc: GL Const GL_DRAW_BUFFER8_ATI
endrem
Const GL_DRAW_BUFFER8_ATI=$882D
rem
bbdoc: GL Const GL_DRAW_BUFFER9_ATI
endrem
Const GL_DRAW_BUFFER9_ATI=$882E
rem
bbdoc: GL Const GL_DRAW_BUFFER10_ATI
endrem
Const GL_DRAW_BUFFER10_ATI=$882F
rem
bbdoc: GL Const GL_DRAW_BUFFER11_ATI
endrem
Const GL_DRAW_BUFFER11_ATI=$8830
rem
bbdoc: GL Const GL_DRAW_BUFFER12_ATI
endrem
Const GL_DRAW_BUFFER12_ATI=$8831
rem
bbdoc: GL Const GL_DRAW_BUFFER13_ATI
endrem
Const GL_DRAW_BUFFER13_ATI=$8832
rem
bbdoc: GL Const GL_DRAW_BUFFER14_ATI
endrem
Const GL_DRAW_BUFFER14_ATI=$8833
rem
bbdoc: GL Const GL_DRAW_BUFFER15_ATI
endrem
Const GL_DRAW_BUFFER15_ATI=$8834
rem
bbdoc: GL Global glDrawBuffersATI(n_:Int,bufs_:Int Ptr)
endrem
Global glDrawBuffersATI(n_:Int,bufs_:Int Ptr)="__glewDrawBuffersATI"
rem
bbdoc: GL Const GL_ATI_element_array
endrem
Const GL_ATI_element_array=1
rem
bbdoc: GL Const GL_ELEMENT_ARRAY_ATI
endrem
Const GL_ELEMENT_ARRAY_ATI=$8768
rem
bbdoc: GL Const GL_ELEMENT_ARRAY_TYPE_ATI
endrem
Const GL_ELEMENT_ARRAY_TYPE_ATI=$8769
rem
bbdoc: GL Const GL_ELEMENT_ARRAY_POINTER_ATI
endrem
Const GL_ELEMENT_ARRAY_POINTER_ATI=$876A
rem
bbdoc: GL Global glDrawElementArrayATI(mode_:Int,count_:Int)
endrem
Global glDrawElementArrayATI(mode_:Int,count_:Int)="__glewDrawElementArrayATI"
rem
bbdoc: GL Global glDrawRangeElementArrayATI(mode_:Int,start_:Int,end_:Int,count_:Int)
endrem
Global glDrawRangeElementArrayATI(mode_:Int,start_:Int,end_:Int,count_:Int)="__glewDrawRangeElementArrayATI"
rem
bbdoc: GL Global glElementPointerATI(type_:Int,pointer_:Byte Ptr)
endrem
Global glElementPointerATI(type_:Int,pointer_:Byte Ptr)="__glewElementPointerATI"
rem
bbdoc: GL Const GL_ATI_envmap_bumpmap
endrem
Const GL_ATI_envmap_bumpmap=1
rem
bbdoc: GL Const GL_BUMP_ROT_MATRIX_ATI
endrem
Const GL_BUMP_ROT_MATRIX_ATI=$8775
rem
bbdoc: GL Const GL_BUMP_ROT_MATRIX_SIZE_ATI
endrem
Const GL_BUMP_ROT_MATRIX_SIZE_ATI=$8776
rem
bbdoc: GL Const GL_BUMP_NUM_TEX_UNITS_ATI
endrem
Const GL_BUMP_NUM_TEX_UNITS_ATI=$8777
rem
bbdoc: GL Const GL_BUMP_TEX_UNITS_ATI
endrem
Const GL_BUMP_TEX_UNITS_ATI=$8778
rem
bbdoc: GL Const GL_DUDV_ATI
endrem
Const GL_DUDV_ATI=$8779
rem
bbdoc: GL Const GL_DU8DV8_ATI
endrem
Const GL_DU8DV8_ATI=$877A
rem
bbdoc: GL Const GL_BUMP_ENVMAP_ATI
endrem
Const GL_BUMP_ENVMAP_ATI=$877B
rem
bbdoc: GL Const GL_BUMP_TARGET_ATI
endrem
Const GL_BUMP_TARGET_ATI=$877C
rem
bbdoc: GL Global glGetTexBumpParameterfvATI(pname_:Int,param_:Float Ptr)
endrem
Global glGetTexBumpParameterfvATI(pname_:Int,param_:Float Ptr)="__glewGetTexBumpParameterfvATI"
rem
bbdoc: GL Global glGetTexBumpParameterivATI(pname_:Int,param_:Int Ptr)
endrem
Global glGetTexBumpParameterivATI(pname_:Int,param_:Int Ptr)="__glewGetTexBumpParameterivATI"
rem
bbdoc: GL Global glTexBumpParameterfvATI(pname_:Int,param_:Float Ptr)
endrem
Global glTexBumpParameterfvATI(pname_:Int,param_:Float Ptr)="__glewTexBumpParameterfvATI"
rem
bbdoc: GL Global glTexBumpParameterivATI(pname_:Int,param_:Int Ptr)
endrem
Global glTexBumpParameterivATI(pname_:Int,param_:Int Ptr)="__glewTexBumpParameterivATI"
rem
bbdoc: GL Const GL_ATI_fragment_shader
endrem
Const GL_ATI_fragment_shader=1
rem
bbdoc: GL Const GL_2X_BIT_ATI
endrem
Const GL_2X_BIT_ATI=$00000001
rem
bbdoc: GL Const GL_RED_BIT_ATI
endrem
Const GL_RED_BIT_ATI=$00000001
rem
bbdoc: GL Const GL_4X_BIT_ATI
endrem
Const GL_4X_BIT_ATI=$00000002
rem
bbdoc: GL Const GL_COMP_BIT_ATI
endrem
Const GL_COMP_BIT_ATI=$00000002
rem
bbdoc: GL Const GL_GREEN_BIT_ATI
endrem
Const GL_GREEN_BIT_ATI=$00000002
rem
bbdoc: GL Const GL_8X_BIT_ATI
endrem
Const GL_8X_BIT_ATI=$00000004
rem
bbdoc: GL Const GL_BLUE_BIT_ATI
endrem
Const GL_BLUE_BIT_ATI=$00000004
rem
bbdoc: GL Const GL_NEGATE_BIT_ATI
endrem
Const GL_NEGATE_BIT_ATI=$00000004
rem
bbdoc: GL Const GL_BIAS_BIT_ATI
endrem
Const GL_BIAS_BIT_ATI=$00000008
rem
bbdoc: GL Const GL_HALF_BIT_ATI
endrem
Const GL_HALF_BIT_ATI=$00000008
rem
bbdoc: GL Const GL_QUARTER_BIT_ATI
endrem
Const GL_QUARTER_BIT_ATI=$00000010
rem
bbdoc: GL Const GL_EIGHTH_BIT_ATI
endrem
Const GL_EIGHTH_BIT_ATI=$00000020
rem
bbdoc: GL Const GL_SATURATE_BIT_ATI
endrem
Const GL_SATURATE_BIT_ATI=$00000040
rem
bbdoc: GL Const GL_FRAGMENT_SHADER_ATI
endrem
Const GL_FRAGMENT_SHADER_ATI=$8920
rem
bbdoc: GL Const GL_REG_0_ATI
endrem
Const GL_REG_0_ATI=$8921
rem
bbdoc: GL Const GL_REG_1_ATI
endrem
Const GL_REG_1_ATI=$8922
rem
bbdoc: GL Const GL_REG_2_ATI
endrem
Const GL_REG_2_ATI=$8923
rem
bbdoc: GL Const GL_REG_3_ATI
endrem
Const GL_REG_3_ATI=$8924
rem
bbdoc: GL Const GL_REG_4_ATI
endrem
Const GL_REG_4_ATI=$8925
rem
bbdoc: GL Const GL_REG_5_ATI
endrem
Const GL_REG_5_ATI=$8926
rem
bbdoc: GL Const GL_CON_0_ATI
endrem
Const GL_CON_0_ATI=$8941
rem
bbdoc: GL Const GL_CON_1_ATI
endrem
Const GL_CON_1_ATI=$8942
rem
bbdoc: GL Const GL_CON_2_ATI
endrem
Const GL_CON_2_ATI=$8943
rem
bbdoc: GL Const GL_CON_3_ATI
endrem
Const GL_CON_3_ATI=$8944
rem
bbdoc: GL Const GL_CON_4_ATI
endrem
Const GL_CON_4_ATI=$8945
rem
bbdoc: GL Const GL_CON_5_ATI
endrem
Const GL_CON_5_ATI=$8946
rem
bbdoc: GL Const GL_CON_6_ATI
endrem
Const GL_CON_6_ATI=$8947
rem
bbdoc: GL Const GL_CON_7_ATI
endrem
Const GL_CON_7_ATI=$8948
rem
bbdoc: GL Const GL_MOV_ATI
endrem
Const GL_MOV_ATI=$8961
rem
bbdoc: GL Const GL_ADD_ATI
endrem
Const GL_ADD_ATI=$8963
rem
bbdoc: GL Const GL_MUL_ATI
endrem
Const GL_MUL_ATI=$8964
rem
bbdoc: GL Const GL_SUB_ATI
endrem
Const GL_SUB_ATI=$8965
rem
bbdoc: GL Const GL_DOT3_ATI
endrem
Const GL_DOT3_ATI=$8966
rem
bbdoc: GL Const GL_DOT4_ATI
endrem
Const GL_DOT4_ATI=$8967
rem
bbdoc: GL Const GL_MAD_ATI
endrem
Const GL_MAD_ATI=$8968
rem
bbdoc: GL Const GL_LERP_ATI
endrem
Const GL_LERP_ATI=$8969
rem
bbdoc: GL Const GL_CND_ATI
endrem
Const GL_CND_ATI=$896A
rem
bbdoc: GL Const GL_CND0_ATI
endrem
Const GL_CND0_ATI=$896B
rem
bbdoc: GL Const GL_DOT2_ADD_ATI
endrem
Const GL_DOT2_ADD_ATI=$896C
rem
bbdoc: GL Const GL_SECONDARY_INTERPOLATOR_ATI
endrem
Const GL_SECONDARY_INTERPOLATOR_ATI=$896D
rem
bbdoc: GL Const GL_NUM_FRAGMENT_REGISTERS_ATI
endrem
Const GL_NUM_FRAGMENT_REGISTERS_ATI=$896E
rem
bbdoc: GL Const GL_NUM_FRAGMENT_CONSTANTS_ATI
endrem
Const GL_NUM_FRAGMENT_CONSTANTS_ATI=$896F
rem
bbdoc: GL Const GL_NUM_PASSES_ATI
endrem
Const GL_NUM_PASSES_ATI=$8970
rem
bbdoc: GL Const GL_NUM_INSTRUCTIONS_PER_PASS_ATI
endrem
Const GL_NUM_INSTRUCTIONS_PER_PASS_ATI=$8971
rem
bbdoc: GL Const GL_NUM_INSTRUCTIONS_TOTAL_ATI
endrem
Const GL_NUM_INSTRUCTIONS_TOTAL_ATI=$8972
rem
bbdoc: GL Const GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI
endrem
Const GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI=$8973
rem
bbdoc: GL Const GL_NUM_LOOPBACK_COMPONENTS_ATI
endrem
Const GL_NUM_LOOPBACK_COMPONENTS_ATI=$8974
rem
bbdoc: GL Const GL_COLOR_ALPHA_PAIRING_ATI
endrem
Const GL_COLOR_ALPHA_PAIRING_ATI=$8975
rem
bbdoc: GL Const GL_SWIZZLE_STR_ATI
endrem
Const GL_SWIZZLE_STR_ATI=$8976
rem
bbdoc: GL Const GL_SWIZZLE_STQ_ATI
endrem
Const GL_SWIZZLE_STQ_ATI=$8977
rem
bbdoc: GL Const GL_SWIZZLE_STR_DR_ATI
endrem
Const GL_SWIZZLE_STR_DR_ATI=$8978
rem
bbdoc: GL Const GL_SWIZZLE_STQ_DQ_ATI
endrem
Const GL_SWIZZLE_STQ_DQ_ATI=$8979
rem
bbdoc: GL Const GL_SWIZZLE_STRQ_ATI
endrem
Const GL_SWIZZLE_STRQ_ATI=$897A
rem
bbdoc: GL Const GL_SWIZZLE_STRQ_DQ_ATI
endrem
Const GL_SWIZZLE_STRQ_DQ_ATI=$897B
rem
bbdoc: GL Global glAlphaFragmentOp1ATI(op_:Int,dst_:Int,dstMod_:Int,arg1_:Int,arg1Rep_:Int,arg1Mod_:Int)
endrem
Global glAlphaFragmentOp1ATI(op_:Int,dst_:Int,dstMod_:Int,arg1_:Int,arg1Rep_:Int,arg1Mod_:Int)="__glewAlphaFragmentOp1ATI"
rem
bbdoc: GL Global glAlphaFragmentOp2ATI(op_:Int,dst_:Int,dstMod_:Int,arg1_:Int,arg1Rep_:Int,arg1Mod_:Int,arg2_:Int,arg2Rep_:Int,arg2Mod_:Int)
endrem
Global glAlphaFragmentOp2ATI(op_:Int,dst_:Int,dstMod_:Int,arg1_:Int,arg1Rep_:Int,arg1Mod_:Int,arg2_:Int,arg2Rep_:Int,arg2Mod_:Int)="__glewAlphaFragmentOp2ATI"
rem
bbdoc: GL Global glAlphaFragmentOp3ATI(op_:Int,dst_:Int,dstMod_:Int,arg1_:Int,arg1Rep_:Int,arg1Mod_:Int,arg2_:Int,arg2Rep_:Int,arg2Mod_:Int,arg3_:Int,arg3Rep_:Int,arg3Mod_:Int)
endrem
Global glAlphaFragmentOp3ATI(op_:Int,dst_:Int,dstMod_:Int,arg1_:Int,arg1Rep_:Int,arg1Mod_:Int,arg2_:Int,arg2Rep_:Int,arg2Mod_:Int,arg3_:Int,arg3Rep_:Int,arg3Mod_:Int)="__glewAlphaFragmentOp3ATI"
rem
bbdoc: GL Global glBeginFragmentShaderATI()
endrem
Global glBeginFragmentShaderATI()="__glewBeginFragmentShaderATI"
rem
bbdoc: GL Global glBindFragmentShaderATI(id_:Int)
endrem
Global glBindFragmentShaderATI(id_:Int)="__glewBindFragmentShaderATI"
rem
bbdoc: GL Global glColorFragmentOp1ATI(op_:Int,dst_:Int,dstMask_:Int,dstMod_:Int,arg1_:Int,arg1Rep_:Int,arg1Mod_:Int)
endrem
Global glColorFragmentOp1ATI(op_:Int,dst_:Int,dstMask_:Int,dstMod_:Int,arg1_:Int,arg1Rep_:Int,arg1Mod_:Int)="__glewColorFragmentOp1ATI"
rem
bbdoc: GL Global glColorFragmentOp2ATI(op_:Int,dst_:Int,dstMask_:Int,dstMod_:Int,arg1_:Int,arg1Rep_:Int,arg1Mod_:Int,arg2_:Int,arg2Rep_:Int,arg2Mod_:Int)
endrem
Global glColorFragmentOp2ATI(op_:Int,dst_:Int,dstMask_:Int,dstMod_:Int,arg1_:Int,arg1Rep_:Int,arg1Mod_:Int,arg2_:Int,arg2Rep_:Int,arg2Mod_:Int)="__glewColorFragmentOp2ATI"
rem
bbdoc: GL Global glColorFragmentOp3ATI(op_:Int,dst_:Int,dstMask_:Int,dstMod_:Int,arg1_:Int,arg1Rep_:Int,arg1Mod_:Int,arg2_:Int,arg2Rep_:Int,arg2Mod_:Int,arg3_:Int,arg3Rep_:Int,arg3Mod_:Int)
endrem
Global glColorFragmentOp3ATI(op_:Int,dst_:Int,dstMask_:Int,dstMod_:Int,arg1_:Int,arg1Rep_:Int,arg1Mod_:Int,arg2_:Int,arg2Rep_:Int,arg2Mod_:Int,arg3_:Int,arg3Rep_:Int,arg3Mod_:Int)="__glewColorFragmentOp3ATI"
rem
bbdoc: GL Global glDeleteFragmentShaderATI(id_:Int)
endrem
Global glDeleteFragmentShaderATI(id_:Int)="__glewDeleteFragmentShaderATI"
rem
bbdoc: GL Global glEndFragmentShaderATI()
endrem
Global glEndFragmentShaderATI()="__glewEndFragmentShaderATI"
rem
bbdoc: GL Global glGenFragmentShadersATI:Int(range_:Int)
endrem
Global glGenFragmentShadersATI:Int(range_:Int)="__glewGenFragmentShadersATI"
rem
bbdoc: GL Global glPassTexCoordATI(dst_:Int,coord_:Int,swizzle_:Int)
endrem
Global glPassTexCoordATI(dst_:Int,coord_:Int,swizzle_:Int)="__glewPassTexCoordATI"
rem
bbdoc: GL Global glSampleMapATI(dst_:Int,interp_:Int,swizzle_:Int)
endrem
Global glSampleMapATI(dst_:Int,interp_:Int,swizzle_:Int)="__glewSampleMapATI"
rem
bbdoc: GL Global glSetFragmentShaderConstantATI(dst_:Int,value_:Float Ptr)
endrem
Global glSetFragmentShaderConstantATI(dst_:Int,value_:Float Ptr)="__glewSetFragmentShaderConstantATI"
rem
bbdoc: GL Const GL_ATI_map_object_buffer
endrem
Const GL_ATI_map_object_buffer=1
rem
bbdoc: GL Global glMapObjectBufferATI:Byte Ptr(buffer_:Int)
endrem
Global glMapObjectBufferATI:Byte Ptr(buffer_:Int)="__glewMapObjectBufferATI"
rem
bbdoc: GL Global glUnmapObjectBufferATI(buffer_:Int)
endrem
Global glUnmapObjectBufferATI(buffer_:Int)="__glewUnmapObjectBufferATI"
rem
bbdoc: GL Const GL_ATI_meminfo
endrem
Const GL_ATI_meminfo=1
rem
bbdoc: GL Const GL_VBO_FREE_MEMORY_ATI
endrem
Const GL_VBO_FREE_MEMORY_ATI=$87FB
rem
bbdoc: GL Const GL_TEXTURE_FREE_MEMORY_ATI
endrem
Const GL_TEXTURE_FREE_MEMORY_ATI=$87FC
rem
bbdoc: GL Const GL_RENDERBUFFER_FREE_MEMORY_ATI
endrem
Const GL_RENDERBUFFER_FREE_MEMORY_ATI=$87FD
rem
bbdoc: GL Const GL_ATI_pn_triangles
endrem
Const GL_ATI_pn_triangles=1
rem
bbdoc: GL Const GL_PN_TRIANGLES_ATI
endrem
Const GL_PN_TRIANGLES_ATI=$87F0
rem
bbdoc: GL Const GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI
endrem
Const GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI=$87F1
rem
bbdoc: GL Const GL_PN_TRIANGLES_POINT_MODE_ATI
endrem
Const GL_PN_TRIANGLES_POINT_MODE_ATI=$87F2
rem
bbdoc: GL Const GL_PN_TRIANGLES_NORMAL_MODE_ATI
endrem
Const GL_PN_TRIANGLES_NORMAL_MODE_ATI=$87F3
rem
bbdoc: GL Const GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI
endrem
Const GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI=$87F4
rem
bbdoc: GL Const GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI
endrem
Const GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI=$87F5
rem
bbdoc: GL Const GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI
endrem
Const GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI=$87F6
rem
bbdoc: GL Const GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI
endrem
Const GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI=$87F7
rem
bbdoc: GL Const GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI
endrem
Const GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI=$87F8
rem
bbdoc: GL Global glPNTrianglesfATI(pname_:Int,param_:Float)
endrem
Global glPNTrianglesfATI(pname_:Int,param_:Float)="__glewPNTrianglesfATI"
rem
bbdoc: GL Global glPNTrianglesiATI(pname_:Int,param_:Int)
endrem
Global glPNTrianglesiATI(pname_:Int,param_:Int)="__glewPNTrianglesiATI"
rem
bbdoc: GL Const GL_ATI_separate_stencil
endrem
Const GL_ATI_separate_stencil=1
rem
bbdoc: GL Const GL_STENCIL_BACK_FUNC_ATI
endrem
Const GL_STENCIL_BACK_FUNC_ATI=$8800
rem
bbdoc: GL Const GL_STENCIL_BACK_FAIL_ATI
endrem
Const GL_STENCIL_BACK_FAIL_ATI=$8801
rem
bbdoc: GL Const GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI
endrem
Const GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI=$8802
rem
bbdoc: GL Const GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI
endrem
Const GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI=$8803
rem
bbdoc: GL Global glStencilFuncSeparateATI(frontfunc_:Int,backfunc_:Int,ref_:Int,mask_:Int)
endrem
Global glStencilFuncSeparateATI(frontfunc_:Int,backfunc_:Int,ref_:Int,mask_:Int)="__glewStencilFuncSeparateATI"
rem
bbdoc: GL Global glStencilOpSeparateATI(face_:Int,sfail_:Int,dpfail_:Int,dppass_:Int)
endrem
Global glStencilOpSeparateATI(face_:Int,sfail_:Int,dpfail_:Int,dppass_:Int)="__glewStencilOpSeparateATI"
rem
bbdoc: GL Const GL_ATI_shader_texture_lod
endrem
Const GL_ATI_shader_texture_lod=1
rem
bbdoc: GL Const GL_ATI_text_fragment_shader
endrem
Const GL_ATI_text_fragment_shader=1
rem
bbdoc: GL Const GL_TEXT_FRAGMENT_SHADER_ATI
endrem
Const GL_TEXT_FRAGMENT_SHADER_ATI=$8200
rem
bbdoc: GL Const GL_ATI_texture_compression_3dc
endrem
Const GL_ATI_texture_compression_3dc=1
rem
bbdoc: GL Const GL_COMPRESSED_LUMINANCE_ALPHA_3DC_ATI
endrem
Const GL_COMPRESSED_LUMINANCE_ALPHA_3DC_ATI=$8837
rem
bbdoc: GL Const GL_ATI_texture_env_combine3
endrem
Const GL_ATI_texture_env_combine3=1
rem
bbdoc: GL Const GL_MODULATE_ADD_ATI
endrem
Const GL_MODULATE_ADD_ATI=$8744
rem
bbdoc: GL Const GL_MODULATE_SIGNED_ADD_ATI
endrem
Const GL_MODULATE_SIGNED_ADD_ATI=$8745
rem
bbdoc: GL Const GL_MODULATE_SUBTRACT_ATI
endrem
Const GL_MODULATE_SUBTRACT_ATI=$8746
rem
bbdoc: GL Const GL_ATI_texture_float
endrem
Const GL_ATI_texture_float=1
rem
bbdoc: GL Const GL_RGBA_FLOAT32_ATI
endrem
Const GL_RGBA_FLOAT32_ATI=$8814
rem
bbdoc: GL Const GL_RGB_FLOAT32_ATI
endrem
Const GL_RGB_FLOAT32_ATI=$8815
rem
bbdoc: GL Const GL_ALPHA_FLOAT32_ATI
endrem
Const GL_ALPHA_FLOAT32_ATI=$8816
rem
bbdoc: GL Const GL_INTENSITY_FLOAT32_ATI
endrem
Const GL_INTENSITY_FLOAT32_ATI=$8817
rem
bbdoc: GL Const GL_LUMINANCE_FLOAT32_ATI
endrem
Const GL_LUMINANCE_FLOAT32_ATI=$8818
rem
bbdoc: GL Const GL_LUMINANCE_ALPHA_FLOAT32_ATI
endrem
Const GL_LUMINANCE_ALPHA_FLOAT32_ATI=$8819
rem
bbdoc: GL Const GL_RGBA_FLOAT16_ATI
endrem
Const GL_RGBA_FLOAT16_ATI=$881A
rem
bbdoc: GL Const GL_RGB_FLOAT16_ATI
endrem
Const GL_RGB_FLOAT16_ATI=$881B
rem
bbdoc: GL Const GL_ALPHA_FLOAT16_ATI
endrem
Const GL_ALPHA_FLOAT16_ATI=$881C
rem
bbdoc: GL Const GL_INTENSITY_FLOAT16_ATI
endrem
Const GL_INTENSITY_FLOAT16_ATI=$881D
rem
bbdoc: GL Const GL_LUMINANCE_FLOAT16_ATI
endrem
Const GL_LUMINANCE_FLOAT16_ATI=$881E
rem
bbdoc: GL Const GL_LUMINANCE_ALPHA_FLOAT16_ATI
endrem
Const GL_LUMINANCE_ALPHA_FLOAT16_ATI=$881F
rem
bbdoc: GL Const GL_ATI_texture_mirror_once
endrem
Const GL_ATI_texture_mirror_once=1
rem
bbdoc: GL Const GL_MIRROR_CLAMP_ATI
endrem
Const GL_MIRROR_CLAMP_ATI=$8742
rem
bbdoc: GL Const GL_MIRROR_CLAMP_TO_EDGE_ATI
endrem
Const GL_MIRROR_CLAMP_TO_EDGE_ATI=$8743
rem
bbdoc: GL Const GL_ATI_vertex_array_object
endrem
Const GL_ATI_vertex_array_object=1
rem
bbdoc: GL Const GL_STATIC_ATI
endrem
Const GL_STATIC_ATI=$8760
rem
bbdoc: GL Const GL_DYNAMIC_ATI
endrem
Const GL_DYNAMIC_ATI=$8761
rem
bbdoc: GL Const GL_PRESERVE_ATI
endrem
Const GL_PRESERVE_ATI=$8762
rem
bbdoc: GL Const GL_DISCARD_ATI
endrem
Const GL_DISCARD_ATI=$8763
rem
bbdoc: GL Const GL_OBJECT_BUFFER_SIZE_ATI
endrem
Const GL_OBJECT_BUFFER_SIZE_ATI=$8764
rem
bbdoc: GL Const GL_OBJECT_BUFFER_USAGE_ATI
endrem
Const GL_OBJECT_BUFFER_USAGE_ATI=$8765
rem
bbdoc: GL Const GL_ARRAY_OBJECT_BUFFER_ATI
endrem
Const GL_ARRAY_OBJECT_BUFFER_ATI=$8766
rem
bbdoc: GL Const GL_ARRAY_OBJECT_OFFSET_ATI
endrem
Const GL_ARRAY_OBJECT_OFFSET_ATI=$8767
rem
bbdoc: GL Global glArrayObjectATI(array_:Int,size_:Int,type_:Int,stride_:Int,buffer_:Int,offset_:Int)
endrem
Global glArrayObjectATI(array_:Int,size_:Int,type_:Int,stride_:Int,buffer_:Int,offset_:Int)="__glewArrayObjectATI"
rem
bbdoc: GL Global glFreeObjectBufferATI(buffer_:Int)
endrem
Global glFreeObjectBufferATI(buffer_:Int)="__glewFreeObjectBufferATI"
rem
bbdoc: GL Global glGetArrayObjectfvATI(array_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetArrayObjectfvATI(array_:Int,pname_:Int,params_:Float Ptr)="__glewGetArrayObjectfvATI"
rem
bbdoc: GL Global glGetArrayObjectivATI(array_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetArrayObjectivATI(array_:Int,pname_:Int,params_:Int Ptr)="__glewGetArrayObjectivATI"
rem
bbdoc: GL Global glGetObjectBufferfvATI(buffer_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetObjectBufferfvATI(buffer_:Int,pname_:Int,params_:Float Ptr)="__glewGetObjectBufferfvATI"
rem
bbdoc: GL Global glGetObjectBufferivATI(buffer_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetObjectBufferivATI(buffer_:Int,pname_:Int,params_:Int Ptr)="__glewGetObjectBufferivATI"
rem
bbdoc: GL Global glGetVariantArrayObjectfvATI(id_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetVariantArrayObjectfvATI(id_:Int,pname_:Int,params_:Float Ptr)="__glewGetVariantArrayObjectfvATI"
rem
bbdoc: GL Global glGetVariantArrayObjectivATI(id_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetVariantArrayObjectivATI(id_:Int,pname_:Int,params_:Int Ptr)="__glewGetVariantArrayObjectivATI"
rem
bbdoc: GL Global glIsObjectBufferATI:Byte(buffer_:Int)
endrem
Global glIsObjectBufferATI:Byte(buffer_:Int)="__glewIsObjectBufferATI"
rem
bbdoc: GL Global glNewObjectBufferATI:Int(size_:Int,pointer_:Byte Ptr,usage_:Int)
endrem
Global glNewObjectBufferATI:Int(size_:Int,pointer_:Byte Ptr,usage_:Int)="__glewNewObjectBufferATI"
rem
bbdoc: GL Global glUpdateObjectBufferATI(buffer_:Int,offset_:Int,size_:Int,pointer_:Byte Ptr,preserve_:Int)
endrem
Global glUpdateObjectBufferATI(buffer_:Int,offset_:Int,size_:Int,pointer_:Byte Ptr,preserve_:Int)="__glewUpdateObjectBufferATI"
rem
bbdoc: GL Global glVariantArrayObjectATI(id_:Int,type_:Int,stride_:Int,buffer_:Int,offset_:Int)
endrem
Global glVariantArrayObjectATI(id_:Int,type_:Int,stride_:Int,buffer_:Int,offset_:Int)="__glewVariantArrayObjectATI"
rem
bbdoc: GL Const GL_ATI_vertex_attrib_array_object
endrem
Const GL_ATI_vertex_attrib_array_object=1
rem
bbdoc: GL Global glGetVertexAttribArrayObjectfvATI(index_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetVertexAttribArrayObjectfvATI(index_:Int,pname_:Int,params_:Float Ptr)="__glewGetVertexAttribArrayObjectfvATI"
rem
bbdoc: GL Global glGetVertexAttribArrayObjectivATI(index_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetVertexAttribArrayObjectivATI(index_:Int,pname_:Int,params_:Int Ptr)="__glewGetVertexAttribArrayObjectivATI"
rem
bbdoc: GL Global glVertexAttribArrayObjectATI(index_:Int,size_:Int,type_:Int,normalized_:Byte,stride_:Int,buffer_:Int,offset_:Int)
endrem
Global glVertexAttribArrayObjectATI(index_:Int,size_:Int,type_:Int,normalized_:Byte,stride_:Int,buffer_:Int,offset_:Int)="__glewVertexAttribArrayObjectATI"
rem
bbdoc: GL Const GL_ATI_vertex_streams
endrem
Const GL_ATI_vertex_streams=1
rem
bbdoc: GL Const GL_MAX_VERTEX_STREAMS_ATI
endrem
Const GL_MAX_VERTEX_STREAMS_ATI=$876B
rem
bbdoc: GL Const GL_VERTEX_SOURCE_ATI
endrem
Const GL_VERTEX_SOURCE_ATI=$876C
rem
bbdoc: GL Const GL_VERTEX_STREAM0_ATI
endrem
Const GL_VERTEX_STREAM0_ATI=$876D
rem
bbdoc: GL Const GL_VERTEX_STREAM1_ATI
endrem
Const GL_VERTEX_STREAM1_ATI=$876E
rem
bbdoc: GL Const GL_VERTEX_STREAM2_ATI
endrem
Const GL_VERTEX_STREAM2_ATI=$876F
rem
bbdoc: GL Const GL_VERTEX_STREAM3_ATI
endrem
Const GL_VERTEX_STREAM3_ATI=$8770
rem
bbdoc: GL Const GL_VERTEX_STREAM4_ATI
endrem
Const GL_VERTEX_STREAM4_ATI=$8771
rem
bbdoc: GL Const GL_VERTEX_STREAM5_ATI
endrem
Const GL_VERTEX_STREAM5_ATI=$8772
rem
bbdoc: GL Const GL_VERTEX_STREAM6_ATI
endrem
Const GL_VERTEX_STREAM6_ATI=$8773
rem
bbdoc: GL Const GL_VERTEX_STREAM7_ATI
endrem
Const GL_VERTEX_STREAM7_ATI=$8774
rem
bbdoc: GL Global glClientActiveVertexStreamATI(stream_:Int)
endrem
Global glClientActiveVertexStreamATI(stream_:Int)="__glewClientActiveVertexStreamATI"
rem
bbdoc: GL Global glNormalStream3bATI(stream_:Int,x_:Byte,y_:Byte,z_:Byte)
endrem
Global glNormalStream3bATI(stream_:Int,x_:Byte,y_:Byte,z_:Byte)="__glewNormalStream3bATI"
rem
bbdoc: GL Global glNormalStream3bvATI(stream_:Int,coords_:Byte Ptr)
endrem
Global glNormalStream3bvATI(stream_:Int,coords_:Byte Ptr)="__glewNormalStream3bvATI"
rem
bbdoc: GL Global glNormalStream3dATI(stream_:Int,x_:Double,y_:Double,z_:Double)
endrem
Global glNormalStream3dATI(stream_:Int,x_:Double,y_:Double,z_:Double)="__glewNormalStream3dATI"
rem
bbdoc: GL Global glNormalStream3dvATI(stream_:Int,coords_:Double Ptr)
endrem
Global glNormalStream3dvATI(stream_:Int,coords_:Double Ptr)="__glewNormalStream3dvATI"
rem
bbdoc: GL Global glNormalStream3fATI(stream_:Int,x_:Float,y_:Float,z_:Float)
endrem
Global glNormalStream3fATI(stream_:Int,x_:Float,y_:Float,z_:Float)="__glewNormalStream3fATI"
rem
bbdoc: GL Global glNormalStream3fvATI(stream_:Int,coords_:Float Ptr)
endrem
Global glNormalStream3fvATI(stream_:Int,coords_:Float Ptr)="__glewNormalStream3fvATI"
rem
bbdoc: GL Global glNormalStream3iATI(stream_:Int,x_:Int,y_:Int,z_:Int)
endrem
Global glNormalStream3iATI(stream_:Int,x_:Int,y_:Int,z_:Int)="__glewNormalStream3iATI"
rem
bbdoc: GL Global glNormalStream3ivATI(stream_:Int,coords_:Int Ptr)
endrem
Global glNormalStream3ivATI(stream_:Int,coords_:Int Ptr)="__glewNormalStream3ivATI"
rem
bbdoc: GL Global glNormalStream3sATI(stream_:Int,x_:Short,y_:Short,z_:Short)
endrem
Global glNormalStream3sATI(stream_:Int,x_:Short,y_:Short,z_:Short)="__glewNormalStream3sATI"
rem
bbdoc: GL Global glNormalStream3svATI(stream_:Int,coords_:Short Ptr)
endrem
Global glNormalStream3svATI(stream_:Int,coords_:Short Ptr)="__glewNormalStream3svATI"
rem
bbdoc: GL Global glVertexBlendEnvfATI(pname_:Int,param_:Float)
endrem
Global glVertexBlendEnvfATI(pname_:Int,param_:Float)="__glewVertexBlendEnvfATI"
rem
bbdoc: GL Global glVertexBlendEnviATI(pname_:Int,param_:Int)
endrem
Global glVertexBlendEnviATI(pname_:Int,param_:Int)="__glewVertexBlendEnviATI"
rem
bbdoc: GL Global glVertexStream1dATI(stream_:Int,x_:Double)
endrem
Global glVertexStream1dATI(stream_:Int,x_:Double)="__glewVertexStream1dATI"
rem
bbdoc: GL Global glVertexStream1dvATI(stream_:Int,coords_:Double Ptr)
endrem
Global glVertexStream1dvATI(stream_:Int,coords_:Double Ptr)="__glewVertexStream1dvATI"
rem
bbdoc: GL Global glVertexStream1fATI(stream_:Int,x_:Float)
endrem
Global glVertexStream1fATI(stream_:Int,x_:Float)="__glewVertexStream1fATI"
rem
bbdoc: GL Global glVertexStream1fvATI(stream_:Int,coords_:Float Ptr)
endrem
Global glVertexStream1fvATI(stream_:Int,coords_:Float Ptr)="__glewVertexStream1fvATI"
rem
bbdoc: GL Global glVertexStream1iATI(stream_:Int,x_:Int)
endrem
Global glVertexStream1iATI(stream_:Int,x_:Int)="__glewVertexStream1iATI"
rem
bbdoc: GL Global glVertexStream1ivATI(stream_:Int,coords_:Int Ptr)
endrem
Global glVertexStream1ivATI(stream_:Int,coords_:Int Ptr)="__glewVertexStream1ivATI"
rem
bbdoc: GL Global glVertexStream1sATI(stream_:Int,x_:Short)
endrem
Global glVertexStream1sATI(stream_:Int,x_:Short)="__glewVertexStream1sATI"
rem
bbdoc: GL Global glVertexStream1svATI(stream_:Int,coords_:Short Ptr)
endrem
Global glVertexStream1svATI(stream_:Int,coords_:Short Ptr)="__glewVertexStream1svATI"
rem
bbdoc: GL Global glVertexStream2dATI(stream_:Int,x_:Double,y_:Double)
endrem
Global glVertexStream2dATI(stream_:Int,x_:Double,y_:Double)="__glewVertexStream2dATI"
rem
bbdoc: GL Global glVertexStream2dvATI(stream_:Int,coords_:Double Ptr)
endrem
Global glVertexStream2dvATI(stream_:Int,coords_:Double Ptr)="__glewVertexStream2dvATI"
rem
bbdoc: GL Global glVertexStream2fATI(stream_:Int,x_:Float,y_:Float)
endrem
Global glVertexStream2fATI(stream_:Int,x_:Float,y_:Float)="__glewVertexStream2fATI"
rem
bbdoc: GL Global glVertexStream2fvATI(stream_:Int,coords_:Float Ptr)
endrem
Global glVertexStream2fvATI(stream_:Int,coords_:Float Ptr)="__glewVertexStream2fvATI"
rem
bbdoc: GL Global glVertexStream2iATI(stream_:Int,x_:Int,y_:Int)
endrem
Global glVertexStream2iATI(stream_:Int,x_:Int,y_:Int)="__glewVertexStream2iATI"
rem
bbdoc: GL Global glVertexStream2ivATI(stream_:Int,coords_:Int Ptr)
endrem
Global glVertexStream2ivATI(stream_:Int,coords_:Int Ptr)="__glewVertexStream2ivATI"
rem
bbdoc: GL Global glVertexStream2sATI(stream_:Int,x_:Short,y_:Short)
endrem
Global glVertexStream2sATI(stream_:Int,x_:Short,y_:Short)="__glewVertexStream2sATI"
rem
bbdoc: GL Global glVertexStream2svATI(stream_:Int,coords_:Short Ptr)
endrem
Global glVertexStream2svATI(stream_:Int,coords_:Short Ptr)="__glewVertexStream2svATI"
rem
bbdoc: GL Global glVertexStream3dATI(stream_:Int,x_:Double,y_:Double,z_:Double)
endrem
Global glVertexStream3dATI(stream_:Int,x_:Double,y_:Double,z_:Double)="__glewVertexStream3dATI"
rem
bbdoc: GL Global glVertexStream3dvATI(stream_:Int,coords_:Double Ptr)
endrem
Global glVertexStream3dvATI(stream_:Int,coords_:Double Ptr)="__glewVertexStream3dvATI"
rem
bbdoc: GL Global glVertexStream3fATI(stream_:Int,x_:Float,y_:Float,z_:Float)
endrem
Global glVertexStream3fATI(stream_:Int,x_:Float,y_:Float,z_:Float)="__glewVertexStream3fATI"
rem
bbdoc: GL Global glVertexStream3fvATI(stream_:Int,coords_:Float Ptr)
endrem
Global glVertexStream3fvATI(stream_:Int,coords_:Float Ptr)="__glewVertexStream3fvATI"
rem
bbdoc: GL Global glVertexStream3iATI(stream_:Int,x_:Int,y_:Int,z_:Int)
endrem
Global glVertexStream3iATI(stream_:Int,x_:Int,y_:Int,z_:Int)="__glewVertexStream3iATI"
rem
bbdoc: GL Global glVertexStream3ivATI(stream_:Int,coords_:Int Ptr)
endrem
Global glVertexStream3ivATI(stream_:Int,coords_:Int Ptr)="__glewVertexStream3ivATI"
rem
bbdoc: GL Global glVertexStream3sATI(stream_:Int,x_:Short,y_:Short,z_:Short)
endrem
Global glVertexStream3sATI(stream_:Int,x_:Short,y_:Short,z_:Short)="__glewVertexStream3sATI"
rem
bbdoc: GL Global glVertexStream3svATI(stream_:Int,coords_:Short Ptr)
endrem
Global glVertexStream3svATI(stream_:Int,coords_:Short Ptr)="__glewVertexStream3svATI"
rem
bbdoc: GL Global glVertexStream4dATI(stream_:Int,x_:Double,y_:Double,z_:Double,w_:Double)
endrem
Global glVertexStream4dATI(stream_:Int,x_:Double,y_:Double,z_:Double,w_:Double)="__glewVertexStream4dATI"
rem
bbdoc: GL Global glVertexStream4dvATI(stream_:Int,coords_:Double Ptr)
endrem
Global glVertexStream4dvATI(stream_:Int,coords_:Double Ptr)="__glewVertexStream4dvATI"
rem
bbdoc: GL Global glVertexStream4fATI(stream_:Int,x_:Float,y_:Float,z_:Float,w_:Float)
endrem
Global glVertexStream4fATI(stream_:Int,x_:Float,y_:Float,z_:Float,w_:Float)="__glewVertexStream4fATI"
rem
bbdoc: GL Global glVertexStream4fvATI(stream_:Int,coords_:Float Ptr)
endrem
Global glVertexStream4fvATI(stream_:Int,coords_:Float Ptr)="__glewVertexStream4fvATI"
rem
bbdoc: GL Global glVertexStream4iATI(stream_:Int,x_:Int,y_:Int,z_:Int,w_:Int)
endrem
Global glVertexStream4iATI(stream_:Int,x_:Int,y_:Int,z_:Int,w_:Int)="__glewVertexStream4iATI"
rem
bbdoc: GL Global glVertexStream4ivATI(stream_:Int,coords_:Int Ptr)
endrem
Global glVertexStream4ivATI(stream_:Int,coords_:Int Ptr)="__glewVertexStream4ivATI"
rem
bbdoc: GL Global glVertexStream4sATI(stream_:Int,x_:Short,y_:Short,z_:Short,w_:Short)
endrem
Global glVertexStream4sATI(stream_:Int,x_:Short,y_:Short,z_:Short,w_:Short)="__glewVertexStream4sATI"
rem
bbdoc: GL Global glVertexStream4svATI(stream_:Int,coords_:Short Ptr)
endrem
Global glVertexStream4svATI(stream_:Int,coords_:Short Ptr)="__glewVertexStream4svATI"
rem
bbdoc: GL Const GL_EXT_422_pixels
endrem
Const GL_EXT_422_pixels=1
rem
bbdoc: GL Const GL_422_EXT
endrem
Const GL_422_EXT=$80CC
rem
bbdoc: GL Const GL_422_REV_EXT
endrem
Const GL_422_REV_EXT=$80CD
rem
bbdoc: GL Const GL_422_AVERAGE_EXT
endrem
Const GL_422_AVERAGE_EXT=$80CE
rem
bbdoc: GL Const GL_422_REV_AVERAGE_EXT
endrem
Const GL_422_REV_AVERAGE_EXT=$80CF
rem
bbdoc: GL Const GL_EXT_Cg_shader
endrem
Const GL_EXT_Cg_shader=1
rem
bbdoc: GL Const GL_CG_VERTEX_SHADER_EXT
endrem
Const GL_CG_VERTEX_SHADER_EXT=$890E
rem
bbdoc: GL Const GL_CG_FRAGMENT_SHADER_EXT
endrem
Const GL_CG_FRAGMENT_SHADER_EXT=$890F
rem
bbdoc: GL Const GL_EXT_abgr
endrem
Const GL_EXT_abgr=1
rem
bbdoc: GL Const GL_ABGR_EXT
endrem
Const GL_ABGR_EXT=$8000
rem
bbdoc: GL Const GL_EXT_bgra
endrem
Const GL_EXT_bgra=1
rem
bbdoc: GL Const GL_BGR_EXT
endrem
Const GL_BGR_EXT=$80E0
rem
bbdoc: GL Const GL_BGRA_EXT
endrem
Const GL_BGRA_EXT=$80E1
rem
bbdoc: GL Const GL_EXT_bindable_uniform
endrem
Const GL_EXT_bindable_uniform=1
rem
bbdoc: GL Const GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT
endrem
Const GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT=$8DE2
rem
bbdoc: GL Const GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT
endrem
Const GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT=$8DE3
rem
bbdoc: GL Const GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT
endrem
Const GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT=$8DE4
rem
bbdoc: GL Const GL_MAX_BINDABLE_UNIFORM_SIZE_EXT
endrem
Const GL_MAX_BINDABLE_UNIFORM_SIZE_EXT=$8DED
rem
bbdoc: GL Const GL_UNIFORM_BUFFER_EXT
endrem
Const GL_UNIFORM_BUFFER_EXT=$8DEE
rem
bbdoc: GL Const GL_UNIFORM_BUFFER_BINDING_EXT
endrem
Const GL_UNIFORM_BUFFER_BINDING_EXT=$8DEF
rem
bbdoc: GL Global glGetUniformBufferSizeEXT:Int(program_:Int,location_:Int)
endrem
Global glGetUniformBufferSizeEXT:Int(program_:Int,location_:Int)="__glewGetUniformBufferSizeEXT"
rem
bbdoc: GL Global glGetUniformOffsetEXT:Int(program_:Int,location_:Int)
endrem
Global glGetUniformOffsetEXT:Int(program_:Int,location_:Int)="__glewGetUniformOffsetEXT"
rem
bbdoc: GL Global glUniformBufferEXT(program_:Int,location_:Int,buffer_:Int)
endrem
Global glUniformBufferEXT(program_:Int,location_:Int,buffer_:Int)="__glewUniformBufferEXT"
rem
bbdoc: GL Const GL_EXT_blend_color
endrem
Const GL_EXT_blend_color=1
rem
bbdoc: GL Const GL_CONSTANT_COLOR_EXT
endrem
Const GL_CONSTANT_COLOR_EXT=$8001
rem
bbdoc: GL Const GL_ONE_MINUS_CONSTANT_COLOR_EXT
endrem
Const GL_ONE_MINUS_CONSTANT_COLOR_EXT=$8002
rem
bbdoc: GL Const GL_CONSTANT_ALPHA_EXT
endrem
Const GL_CONSTANT_ALPHA_EXT=$8003
rem
bbdoc: GL Const GL_ONE_MINUS_CONSTANT_ALPHA_EXT
endrem
Const GL_ONE_MINUS_CONSTANT_ALPHA_EXT=$8004
rem
bbdoc: GL Const GL_BLEND_COLOR_EXT
endrem
Const GL_BLEND_COLOR_EXT=$8005
rem
bbdoc: GL Global glBlendColorEXT(red_:Float,green_:Float,blue_:Float,alpha_:Float)
endrem
Global glBlendColorEXT(red_:Float,green_:Float,blue_:Float,alpha_:Float)="__glewBlendColorEXT"
rem
bbdoc: GL Const GL_EXT_blend_equation_separate
endrem
Const GL_EXT_blend_equation_separate=1
rem
bbdoc: GL Const GL_BLEND_EQUATION_RGB_EXT
endrem
Const GL_BLEND_EQUATION_RGB_EXT=$8009
rem
bbdoc: GL Const GL_BLEND_EQUATION_ALPHA_EXT
endrem
Const GL_BLEND_EQUATION_ALPHA_EXT=$883D
rem
bbdoc: GL Global glBlendEquationSeparateEXT(modeRGB_:Int,modeAlpha_:Int)
endrem
Global glBlendEquationSeparateEXT(modeRGB_:Int,modeAlpha_:Int)="__glewBlendEquationSeparateEXT"
rem
bbdoc: GL Const GL_EXT_blend_func_separate
endrem
Const GL_EXT_blend_func_separate=1
rem
bbdoc: GL Const GL_BLEND_DST_RGB_EXT
endrem
Const GL_BLEND_DST_RGB_EXT=$80C8
rem
bbdoc: GL Const GL_BLEND_SRC_RGB_EXT
endrem
Const GL_BLEND_SRC_RGB_EXT=$80C9
rem
bbdoc: GL Const GL_BLEND_DST_ALPHA_EXT
endrem
Const GL_BLEND_DST_ALPHA_EXT=$80CA
rem
bbdoc: GL Const GL_BLEND_SRC_ALPHA_EXT
endrem
Const GL_BLEND_SRC_ALPHA_EXT=$80CB
rem
bbdoc: GL Global glBlendFuncSeparateEXT(sfactorRGB_:Int,dfactorRGB_:Int,sfactorAlpha_:Int,dfactorAlpha_:Int)
endrem
Global glBlendFuncSeparateEXT(sfactorRGB_:Int,dfactorRGB_:Int,sfactorAlpha_:Int,dfactorAlpha_:Int)="__glewBlendFuncSeparateEXT"
rem
bbdoc: GL Const GL_EXT_blend_logic_op
endrem
Const GL_EXT_blend_logic_op=1
rem
bbdoc: GL Const GL_EXT_blend_minmax
endrem
Const GL_EXT_blend_minmax=1
rem
bbdoc: GL Const GL_FUNC_ADD_EXT
endrem
Const GL_FUNC_ADD_EXT=$8006
rem
bbdoc: GL Const GL_MIN_EXT
endrem
Const GL_MIN_EXT=$8007
rem
bbdoc: GL Const GL_MAX_EXT
endrem
Const GL_MAX_EXT=$8008
rem
bbdoc: GL Const GL_BLEND_EQUATION_EXT
endrem
Const GL_BLEND_EQUATION_EXT=$8009
rem
bbdoc: GL Global glBlendEquationEXT(mode_:Int)
endrem
Global glBlendEquationEXT(mode_:Int)="__glewBlendEquationEXT"
rem
bbdoc: GL Const GL_EXT_blend_subtract
endrem
Const GL_EXT_blend_subtract=1
rem
bbdoc: GL Const GL_FUNC_SUBTRACT_EXT
endrem
Const GL_FUNC_SUBTRACT_EXT=$800A
rem
bbdoc: GL Const GL_FUNC_REVERSE_SUBTRACT_EXT
endrem
Const GL_FUNC_REVERSE_SUBTRACT_EXT=$800B
rem
bbdoc: GL Const GL_EXT_clip_volume_hint
endrem
Const GL_EXT_clip_volume_hint=1
rem
bbdoc: GL Const GL_CLIP_VOLUME_CLIPPING_HINT_EXT
endrem
Const GL_CLIP_VOLUME_CLIPPING_HINT_EXT=$80F0
rem
bbdoc: GL Const GL_EXT_cmyka
endrem
Const GL_EXT_cmyka=1
rem
bbdoc: GL Const GL_CMYK_EXT
endrem
Const GL_CMYK_EXT=$800C
rem
bbdoc: GL Const GL_CMYKA_EXT
endrem
Const GL_CMYKA_EXT=$800D
rem
bbdoc: GL Const GL_PACK_CMYK_HINT_EXT
endrem
Const GL_PACK_CMYK_HINT_EXT=$800E
rem
bbdoc: GL Const GL_UNPACK_CMYK_HINT_EXT
endrem
Const GL_UNPACK_CMYK_HINT_EXT=$800F
rem
bbdoc: GL Const GL_EXT_color_subtable
endrem
Const GL_EXT_color_subtable=1
rem
bbdoc: GL Global glColorSubTableEXT(target_:Int,start_:Int,count_:Int,format_:Int,type_:Int,data_:Byte Ptr)
endrem
Global glColorSubTableEXT(target_:Int,start_:Int,count_:Int,format_:Int,type_:Int,data_:Byte Ptr)="__glewColorSubTableEXT"
rem
bbdoc: GL Global glCopyColorSubTableEXT(target_:Int,start_:Int,x_:Int,y_:Int,width_:Int)
endrem
Global glCopyColorSubTableEXT(target_:Int,start_:Int,x_:Int,y_:Int,width_:Int)="__glewCopyColorSubTableEXT"
rem
bbdoc: GL Const GL_EXT_compiled_vertex_array
endrem
Const GL_EXT_compiled_vertex_array=1
rem
bbdoc: GL Const GL_ARRAY_ELEMENT_LOCK_FIRST_EXT
endrem
Const GL_ARRAY_ELEMENT_LOCK_FIRST_EXT=$81A8
rem
bbdoc: GL Const GL_ARRAY_ELEMENT_LOCK_COUNT_EXT
endrem
Const GL_ARRAY_ELEMENT_LOCK_COUNT_EXT=$81A9
rem
bbdoc: GL Global glLockArraysEXT(first_:Int,count_:Int)
endrem
Global glLockArraysEXT(first_:Int,count_:Int)="__glewLockArraysEXT"
rem
bbdoc: GL Global glUnlockArraysEXT()
endrem
Global glUnlockArraysEXT()="__glewUnlockArraysEXT"
rem
bbdoc: GL Const GL_EXT_convolution
endrem
Const GL_EXT_convolution=1
rem
bbdoc: GL Const GL_CONVOLUTION_1D_EXT
endrem
Const GL_CONVOLUTION_1D_EXT=$8010
rem
bbdoc: GL Const GL_CONVOLUTION_2D_EXT
endrem
Const GL_CONVOLUTION_2D_EXT=$8011
rem
bbdoc: GL Const GL_SEPARABLE_2D_EXT
endrem
Const GL_SEPARABLE_2D_EXT=$8012
rem
bbdoc: GL Const GL_CONVOLUTION_BORDER_MODE_EXT
endrem
Const GL_CONVOLUTION_BORDER_MODE_EXT=$8013
rem
bbdoc: GL Const GL_CONVOLUTION_FILTER_SCALE_EXT
endrem
Const GL_CONVOLUTION_FILTER_SCALE_EXT=$8014
rem
bbdoc: GL Const GL_CONVOLUTION_FILTER_BIAS_EXT
endrem
Const GL_CONVOLUTION_FILTER_BIAS_EXT=$8015
rem
bbdoc: GL Const GL_REDUCE_EXT
endrem
Const GL_REDUCE_EXT=$8016
rem
bbdoc: GL Const GL_CONVOLUTION_FORMAT_EXT
endrem
Const GL_CONVOLUTION_FORMAT_EXT=$8017
rem
bbdoc: GL Const GL_CONVOLUTION_WIDTH_EXT
endrem
Const GL_CONVOLUTION_WIDTH_EXT=$8018
rem
bbdoc: GL Const GL_CONVOLUTION_HEIGHT_EXT
endrem
Const GL_CONVOLUTION_HEIGHT_EXT=$8019
rem
bbdoc: GL Const GL_MAX_CONVOLUTION_WIDTH_EXT
endrem
Const GL_MAX_CONVOLUTION_WIDTH_EXT=$801A
rem
bbdoc: GL Const GL_MAX_CONVOLUTION_HEIGHT_EXT
endrem
Const GL_MAX_CONVOLUTION_HEIGHT_EXT=$801B
rem
bbdoc: GL Const GL_POST_CONVOLUTION_RED_SCALE_EXT
endrem
Const GL_POST_CONVOLUTION_RED_SCALE_EXT=$801C
rem
bbdoc: GL Const GL_POST_CONVOLUTION_GREEN_SCALE_EXT
endrem
Const GL_POST_CONVOLUTION_GREEN_SCALE_EXT=$801D
rem
bbdoc: GL Const GL_POST_CONVOLUTION_BLUE_SCALE_EXT
endrem
Const GL_POST_CONVOLUTION_BLUE_SCALE_EXT=$801E
rem
bbdoc: GL Const GL_POST_CONVOLUTION_ALPHA_SCALE_EXT
endrem
Const GL_POST_CONVOLUTION_ALPHA_SCALE_EXT=$801F
rem
bbdoc: GL Const GL_POST_CONVOLUTION_RED_BIAS_EXT
endrem
Const GL_POST_CONVOLUTION_RED_BIAS_EXT=$8020
rem
bbdoc: GL Const GL_POST_CONVOLUTION_GREEN_BIAS_EXT
endrem
Const GL_POST_CONVOLUTION_GREEN_BIAS_EXT=$8021
rem
bbdoc: GL Const GL_POST_CONVOLUTION_BLUE_BIAS_EXT
endrem
Const GL_POST_CONVOLUTION_BLUE_BIAS_EXT=$8022
rem
bbdoc: GL Const GL_POST_CONVOLUTION_ALPHA_BIAS_EXT
endrem
Const GL_POST_CONVOLUTION_ALPHA_BIAS_EXT=$8023
rem
bbdoc: GL Global glConvolutionFilter1DEXT(target_:Int,internalformat_:Int,width_:Int,format_:Int,type_:Int,image_:Byte Ptr)
endrem
Global glConvolutionFilter1DEXT(target_:Int,internalformat_:Int,width_:Int,format_:Int,type_:Int,image_:Byte Ptr)="__glewConvolutionFilter1DEXT"
rem
bbdoc: GL Global glConvolutionFilter2DEXT(target_:Int,internalformat_:Int,width_:Int,height_:Int,format_:Int,type_:Int,image_:Byte Ptr)
endrem
Global glConvolutionFilter2DEXT(target_:Int,internalformat_:Int,width_:Int,height_:Int,format_:Int,type_:Int,image_:Byte Ptr)="__glewConvolutionFilter2DEXT"
rem
bbdoc: GL Global glConvolutionParameterfEXT(target_:Int,pname_:Int,param_:Float)
endrem
Global glConvolutionParameterfEXT(target_:Int,pname_:Int,param_:Float)="__glewConvolutionParameterfEXT"
rem
bbdoc: GL Global glConvolutionParameterfvEXT(target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glConvolutionParameterfvEXT(target_:Int,pname_:Int,params_:Float Ptr)="__glewConvolutionParameterfvEXT"
rem
bbdoc: GL Global glConvolutionParameteriEXT(target_:Int,pname_:Int,param_:Int)
endrem
Global glConvolutionParameteriEXT(target_:Int,pname_:Int,param_:Int)="__glewConvolutionParameteriEXT"
rem
bbdoc: GL Global glConvolutionParameterivEXT(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glConvolutionParameterivEXT(target_:Int,pname_:Int,params_:Int Ptr)="__glewConvolutionParameterivEXT"
rem
bbdoc: GL Global glCopyConvolutionFilter1DEXT(target_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int)
endrem
Global glCopyConvolutionFilter1DEXT(target_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int)="__glewCopyConvolutionFilter1DEXT"
rem
bbdoc: GL Global glCopyConvolutionFilter2DEXT(target_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int,height_:Int)
endrem
Global glCopyConvolutionFilter2DEXT(target_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int,height_:Int)="__glewCopyConvolutionFilter2DEXT"
rem
bbdoc: GL Global glGetConvolutionFilterEXT(target_:Int,format_:Int,type_:Int,image_:Byte Ptr)
endrem
Global glGetConvolutionFilterEXT(target_:Int,format_:Int,type_:Int,image_:Byte Ptr)="__glewGetConvolutionFilterEXT"
rem
bbdoc: GL Global glGetConvolutionParameterfvEXT(target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetConvolutionParameterfvEXT(target_:Int,pname_:Int,params_:Float Ptr)="__glewGetConvolutionParameterfvEXT"
rem
bbdoc: GL Global glGetConvolutionParameterivEXT(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetConvolutionParameterivEXT(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetConvolutionParameterivEXT"
rem
bbdoc: GL Global glGetSeparableFilterEXT(target_:Int,format_:Int,type_:Int,row_:Byte Ptr,column_:Byte Ptr,span_:Byte Ptr)
endrem
Global glGetSeparableFilterEXT(target_:Int,format_:Int,type_:Int,row_:Byte Ptr,column_:Byte Ptr,span_:Byte Ptr)="__glewGetSeparableFilterEXT"
rem
bbdoc: GL Global glSeparableFilter2DEXT(target_:Int,internalformat_:Int,width_:Int,height_:Int,format_:Int,type_:Int,row_:Byte Ptr,column_:Byte Ptr)
endrem
Global glSeparableFilter2DEXT(target_:Int,internalformat_:Int,width_:Int,height_:Int,format_:Int,type_:Int,row_:Byte Ptr,column_:Byte Ptr)="__glewSeparableFilter2DEXT"
rem
bbdoc: GL Const GL_EXT_coordinate_frame
endrem
Const GL_EXT_coordinate_frame=1
rem
bbdoc: GL Const GL_TANGENT_ARRAY_EXT
endrem
Const GL_TANGENT_ARRAY_EXT=$8439
rem
bbdoc: GL Const GL_BINORMAL_ARRAY_EXT
endrem
Const GL_BINORMAL_ARRAY_EXT=$843A
rem
bbdoc: GL Const GL_CURRENT_TANGENT_EXT
endrem
Const GL_CURRENT_TANGENT_EXT=$843B
rem
bbdoc: GL Const GL_CURRENT_BINORMAL_EXT
endrem
Const GL_CURRENT_BINORMAL_EXT=$843C
rem
bbdoc: GL Const GL_TANGENT_ARRAY_TYPE_EXT
endrem
Const GL_TANGENT_ARRAY_TYPE_EXT=$843E
rem
bbdoc: GL Const GL_TANGENT_ARRAY_STRIDE_EXT
endrem
Const GL_TANGENT_ARRAY_STRIDE_EXT=$843F
rem
bbdoc: GL Const GL_BINORMAL_ARRAY_TYPE_EXT
endrem
Const GL_BINORMAL_ARRAY_TYPE_EXT=$8440
rem
bbdoc: GL Const GL_BINORMAL_ARRAY_STRIDE_EXT
endrem
Const GL_BINORMAL_ARRAY_STRIDE_EXT=$8441
rem
bbdoc: GL Const GL_TANGENT_ARRAY_POINTER_EXT
endrem
Const GL_TANGENT_ARRAY_POINTER_EXT=$8442
rem
bbdoc: GL Const GL_BINORMAL_ARRAY_POINTER_EXT
endrem
Const GL_BINORMAL_ARRAY_POINTER_EXT=$8443
rem
bbdoc: GL Const GL_MAP1_TANGENT_EXT
endrem
Const GL_MAP1_TANGENT_EXT=$8444
rem
bbdoc: GL Const GL_MAP2_TANGENT_EXT
endrem
Const GL_MAP2_TANGENT_EXT=$8445
rem
bbdoc: GL Const GL_MAP1_BINORMAL_EXT
endrem
Const GL_MAP1_BINORMAL_EXT=$8446
rem
bbdoc: GL Const GL_MAP2_BINORMAL_EXT
endrem
Const GL_MAP2_BINORMAL_EXT=$8447
rem
bbdoc: GL Global glBinormalPointerEXT(type_:Int,stride_:Int,pointer_:Byte Ptr)
endrem
Global glBinormalPointerEXT(type_:Int,stride_:Int,pointer_:Byte Ptr)="__glewBinormalPointerEXT"
rem
bbdoc: GL Global glTangentPointerEXT(type_:Int,stride_:Int,pointer_:Byte Ptr)
endrem
Global glTangentPointerEXT(type_:Int,stride_:Int,pointer_:Byte Ptr)="__glewTangentPointerEXT"
rem
bbdoc: GL Const GL_EXT_copy_texture
endrem
Const GL_EXT_copy_texture=1
rem
bbdoc: GL Global glCopyTexImage1DEXT(target_:Int,level_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int,border_:Int)
endrem
Global glCopyTexImage1DEXT(target_:Int,level_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int,border_:Int)="__glewCopyTexImage1DEXT"
rem
bbdoc: GL Global glCopyTexImage2DEXT(target_:Int,level_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int,height_:Int,border_:Int)
endrem
Global glCopyTexImage2DEXT(target_:Int,level_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int,height_:Int,border_:Int)="__glewCopyTexImage2DEXT"
rem
bbdoc: GL Global glCopyTexSubImage1DEXT(target_:Int,level_:Int,xoffset_:Int,x_:Int,y_:Int,width_:Int)
endrem
Global glCopyTexSubImage1DEXT(target_:Int,level_:Int,xoffset_:Int,x_:Int,y_:Int,width_:Int)="__glewCopyTexSubImage1DEXT"
rem
bbdoc: GL Global glCopyTexSubImage2DEXT(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,x_:Int,y_:Int,width_:Int,height_:Int)
endrem
Global glCopyTexSubImage2DEXT(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,x_:Int,y_:Int,width_:Int,height_:Int)="__glewCopyTexSubImage2DEXT"
rem
bbdoc: GL Global glCopyTexSubImage3DEXT(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,x_:Int,y_:Int,width_:Int,height_:Int)
endrem
Global glCopyTexSubImage3DEXT(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,x_:Int,y_:Int,width_:Int,height_:Int)="__glewCopyTexSubImage3DEXT"
rem
bbdoc: GL Const GL_EXT_cull_vertex
endrem
Const GL_EXT_cull_vertex=1
rem
bbdoc: GL Const GL_CULL_VERTEX_EXT
endrem
Const GL_CULL_VERTEX_EXT=$81AA
rem
bbdoc: GL Const GL_CULL_VERTEX_EYE_POSITION_EXT
endrem
Const GL_CULL_VERTEX_EYE_POSITION_EXT=$81AB
rem
bbdoc: GL Const GL_CULL_VERTEX_OBJECT_POSITION_EXT
endrem
Const GL_CULL_VERTEX_OBJECT_POSITION_EXT=$81AC
rem
bbdoc: GL Global glCullParameterdvEXT(pname_:Int,params_:Double Ptr)
endrem
Global glCullParameterdvEXT(pname_:Int,params_:Double Ptr)="__glewCullParameterdvEXT"
rem
bbdoc: GL Global glCullParameterfvEXT(pname_:Int,params_:Float Ptr)
endrem
Global glCullParameterfvEXT(pname_:Int,params_:Float Ptr)="__glewCullParameterfvEXT"
rem
bbdoc: GL Const GL_EXT_debug_label
endrem
Const GL_EXT_debug_label=1
rem
bbdoc: GL Const GL_PROGRAM_PIPELINE_OBJECT_EXT
endrem
Const GL_PROGRAM_PIPELINE_OBJECT_EXT=$8A4F
rem
bbdoc: GL Const GL_PROGRAM_OBJECT_EXT
endrem
Const GL_PROGRAM_OBJECT_EXT=$8B40
rem
bbdoc: GL Const GL_SHADER_OBJECT_EXT
endrem
Const GL_SHADER_OBJECT_EXT=$8B48
rem
bbdoc: GL Const GL_BUFFER_OBJECT_EXT
endrem
Const GL_BUFFER_OBJECT_EXT=$9151
rem
bbdoc: GL Const GL_QUERY_OBJECT_EXT
endrem
Const GL_QUERY_OBJECT_EXT=$9153
rem
bbdoc: GL Const GL_VERTEX_ARRAY_OBJECT_EXT
endrem
Const GL_VERTEX_ARRAY_OBJECT_EXT=$9154
rem
bbdoc: GL Global glGetObjectLabelEXT(type_:Int,object_:Int,bufSize_:Int,length_:Int Ptr,label_:Byte Ptr)
endrem
Global glGetObjectLabelEXT(type_:Int,object_:Int,bufSize_:Int,length_:Int Ptr,label_:Byte Ptr)="__glewGetObjectLabelEXT"
rem
bbdoc: GL Global glLabelObjectEXT(type_:Int,object_:Int,length_:Int,label_:Byte Ptr)
endrem
Global glLabelObjectEXT(type_:Int,object_:Int,length_:Int,label_:Byte Ptr)="__glewLabelObjectEXT"
rem
bbdoc: GL Const GL_EXT_debug_marker
endrem
Const GL_EXT_debug_marker=1
rem
bbdoc: GL Global glInsertEventMarkerEXT(length_:Int,marker_:Byte Ptr)
endrem
Global glInsertEventMarkerEXT(length_:Int,marker_:Byte Ptr)="__glewInsertEventMarkerEXT"
rem
bbdoc: GL Global glPopGroupMarkerEXT()
endrem
Global glPopGroupMarkerEXT()="__glewPopGroupMarkerEXT"
rem
bbdoc: GL Global glPushGroupMarkerEXT(length_:Int,marker_:Byte Ptr)
endrem
Global glPushGroupMarkerEXT(length_:Int,marker_:Byte Ptr)="__glewPushGroupMarkerEXT"
rem
bbdoc: GL Const GL_EXT_depth_bounds_test
endrem
Const GL_EXT_depth_bounds_test=1
rem
bbdoc: GL Const GL_DEPTH_BOUNDS_TEST_EXT
endrem
Const GL_DEPTH_BOUNDS_TEST_EXT=$8890
rem
bbdoc: GL Const GL_DEPTH_BOUNDS_EXT
endrem
Const GL_DEPTH_BOUNDS_EXT=$8891
rem
bbdoc: GL Global glDepthBoundsEXT(zmin_:Double,zmax_:Double)
endrem
Global glDepthBoundsEXT(zmin_:Double,zmax_:Double)="__glewDepthBoundsEXT"
rem
bbdoc: GL Const GL_EXT_direct_state_access
endrem
Const GL_EXT_direct_state_access=1
rem
bbdoc: GL Const GL_PROGRAM_MATRIX_EXT
endrem
Const GL_PROGRAM_MATRIX_EXT=$8E2D
rem
bbdoc: GL Const GL_TRANSPOSE_PROGRAM_MATRIX_EXT
endrem
Const GL_TRANSPOSE_PROGRAM_MATRIX_EXT=$8E2E
rem
bbdoc: GL Const GL_PROGRAM_MATRIX_STACK_DEPTH_EXT
endrem
Const GL_PROGRAM_MATRIX_STACK_DEPTH_EXT=$8E2F
rem
bbdoc: GL Global glBindMultiTextureEXT(texunit_:Int,target_:Int,texture_:Int)
endrem
Global glBindMultiTextureEXT(texunit_:Int,target_:Int,texture_:Int)="__glewBindMultiTextureEXT"
rem
bbdoc: GL Global glCheckNamedFramebufferStatusEXT:Int(framebuffer_:Int,target_:Int)
endrem
Global glCheckNamedFramebufferStatusEXT:Int(framebuffer_:Int,target_:Int)="__glewCheckNamedFramebufferStatusEXT"
rem
bbdoc: GL Global glClientAttribDefaultEXT(mask_:Int)
endrem
Global glClientAttribDefaultEXT(mask_:Int)="__glewClientAttribDefaultEXT"
rem
bbdoc: GL Global glCompressedMultiTexImage1DEXT(texunit_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedMultiTexImage1DEXT(texunit_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedMultiTexImage1DEXT"
rem
bbdoc: GL Global glCompressedMultiTexImage2DEXT(texunit_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedMultiTexImage2DEXT(texunit_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedMultiTexImage2DEXT"
rem
bbdoc: GL Global glCompressedMultiTexImage3DEXT(texunit_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedMultiTexImage3DEXT(texunit_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedMultiTexImage3DEXT"
rem
bbdoc: GL Global glCompressedMultiTexSubImage1DEXT(texunit_:Int,target_:Int,level_:Int,xoffset_:Int,width_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedMultiTexSubImage1DEXT(texunit_:Int,target_:Int,level_:Int,xoffset_:Int,width_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedMultiTexSubImage1DEXT"
rem
bbdoc: GL Global glCompressedMultiTexSubImage2DEXT(texunit_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,width_:Int,height_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedMultiTexSubImage2DEXT(texunit_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,width_:Int,height_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedMultiTexSubImage2DEXT"
rem
bbdoc: GL Global glCompressedMultiTexSubImage3DEXT(texunit_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedMultiTexSubImage3DEXT(texunit_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedMultiTexSubImage3DEXT"
rem
bbdoc: GL Global glCompressedTextureImage1DEXT(texture_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTextureImage1DEXT(texture_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTextureImage1DEXT"
rem
bbdoc: GL Global glCompressedTextureImage2DEXT(texture_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTextureImage2DEXT(texture_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTextureImage2DEXT"
rem
bbdoc: GL Global glCompressedTextureImage3DEXT(texture_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTextureImage3DEXT(texture_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,border_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTextureImage3DEXT"
rem
bbdoc: GL Global glCompressedTextureSubImage1DEXT(texture_:Int,target_:Int,level_:Int,xoffset_:Int,width_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTextureSubImage1DEXT(texture_:Int,target_:Int,level_:Int,xoffset_:Int,width_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTextureSubImage1DEXT"
rem
bbdoc: GL Global glCompressedTextureSubImage2DEXT(texture_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,width_:Int,height_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTextureSubImage2DEXT(texture_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,width_:Int,height_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTextureSubImage2DEXT"
rem
bbdoc: GL Global glCompressedTextureSubImage3DEXT(texture_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)
endrem
Global glCompressedTextureSubImage3DEXT(texture_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,imageSize_:Int,data_:Byte Ptr)="__glewCompressedTextureSubImage3DEXT"
rem
bbdoc: GL Global glCopyMultiTexImage1DEXT(texunit_:Int,target_:Int,level_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int,border_:Int)
endrem
Global glCopyMultiTexImage1DEXT(texunit_:Int,target_:Int,level_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int,border_:Int)="__glewCopyMultiTexImage1DEXT"
rem
bbdoc: GL Global glCopyMultiTexImage2DEXT(texunit_:Int,target_:Int,level_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int,height_:Int,border_:Int)
endrem
Global glCopyMultiTexImage2DEXT(texunit_:Int,target_:Int,level_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int,height_:Int,border_:Int)="__glewCopyMultiTexImage2DEXT"
rem
bbdoc: GL Global glCopyMultiTexSubImage1DEXT(texunit_:Int,target_:Int,level_:Int,xoffset_:Int,x_:Int,y_:Int,width_:Int)
endrem
Global glCopyMultiTexSubImage1DEXT(texunit_:Int,target_:Int,level_:Int,xoffset_:Int,x_:Int,y_:Int,width_:Int)="__glewCopyMultiTexSubImage1DEXT"
rem
bbdoc: GL Global glCopyMultiTexSubImage2DEXT(texunit_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,x_:Int,y_:Int,width_:Int,height_:Int)
endrem
Global glCopyMultiTexSubImage2DEXT(texunit_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,x_:Int,y_:Int,width_:Int,height_:Int)="__glewCopyMultiTexSubImage2DEXT"
rem
bbdoc: GL Global glCopyMultiTexSubImage3DEXT(texunit_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,x_:Int,y_:Int,width_:Int,height_:Int)
endrem
Global glCopyMultiTexSubImage3DEXT(texunit_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,x_:Int,y_:Int,width_:Int,height_:Int)="__glewCopyMultiTexSubImage3DEXT"
rem
bbdoc: GL Global glCopyTextureImage1DEXT(texture_:Int,target_:Int,level_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int,border_:Int)
endrem
Global glCopyTextureImage1DEXT(texture_:Int,target_:Int,level_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int,border_:Int)="__glewCopyTextureImage1DEXT"
rem
bbdoc: GL Global glCopyTextureImage2DEXT(texture_:Int,target_:Int,level_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int,height_:Int,border_:Int)
endrem
Global glCopyTextureImage2DEXT(texture_:Int,target_:Int,level_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int,height_:Int,border_:Int)="__glewCopyTextureImage2DEXT"
rem
bbdoc: GL Global glCopyTextureSubImage1DEXT(texture_:Int,target_:Int,level_:Int,xoffset_:Int,x_:Int,y_:Int,width_:Int)
endrem
Global glCopyTextureSubImage1DEXT(texture_:Int,target_:Int,level_:Int,xoffset_:Int,x_:Int,y_:Int,width_:Int)="__glewCopyTextureSubImage1DEXT"
rem
bbdoc: GL Global glCopyTextureSubImage2DEXT(texture_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,x_:Int,y_:Int,width_:Int,height_:Int)
endrem
Global glCopyTextureSubImage2DEXT(texture_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,x_:Int,y_:Int,width_:Int,height_:Int)="__glewCopyTextureSubImage2DEXT"
rem
bbdoc: GL Global glCopyTextureSubImage3DEXT(texture_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,x_:Int,y_:Int,width_:Int,height_:Int)
endrem
Global glCopyTextureSubImage3DEXT(texture_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,x_:Int,y_:Int,width_:Int,height_:Int)="__glewCopyTextureSubImage3DEXT"
rem
bbdoc: GL Global glDisableClientStateIndexedEXT(array_:Int,index_:Int)
endrem
Global glDisableClientStateIndexedEXT(array_:Int,index_:Int)="__glewDisableClientStateIndexedEXT"
rem
bbdoc: GL Global glDisableClientStateiEXT(array_:Int,index_:Int)
endrem
Global glDisableClientStateiEXT(array_:Int,index_:Int)="__glewDisableClientStateiEXT"
rem
bbdoc: GL Global glDisableVertexArrayAttribEXT(vaobj_:Int,index_:Int)
endrem
Global glDisableVertexArrayAttribEXT(vaobj_:Int,index_:Int)="__glewDisableVertexArrayAttribEXT"
rem
bbdoc: GL Global glDisableVertexArrayEXT(vaobj_:Int,array_:Int)
endrem
Global glDisableVertexArrayEXT(vaobj_:Int,array_:Int)="__glewDisableVertexArrayEXT"
rem
bbdoc: GL Global glEnableClientStateIndexedEXT(array_:Int,index_:Int)
endrem
Global glEnableClientStateIndexedEXT(array_:Int,index_:Int)="__glewEnableClientStateIndexedEXT"
rem
bbdoc: GL Global glEnableClientStateiEXT(array_:Int,index_:Int)
endrem
Global glEnableClientStateiEXT(array_:Int,index_:Int)="__glewEnableClientStateiEXT"
rem
bbdoc: GL Global glEnableVertexArrayAttribEXT(vaobj_:Int,index_:Int)
endrem
Global glEnableVertexArrayAttribEXT(vaobj_:Int,index_:Int)="__glewEnableVertexArrayAttribEXT"
rem
bbdoc: GL Global glEnableVertexArrayEXT(vaobj_:Int,array_:Int)
endrem
Global glEnableVertexArrayEXT(vaobj_:Int,array_:Int)="__glewEnableVertexArrayEXT"
rem
bbdoc: GL Global glFlushMappedNamedBufferRangeEXT(buffer_:Int,offset_:Int,length_:Int)
endrem
Global glFlushMappedNamedBufferRangeEXT(buffer_:Int,offset_:Int,length_:Int)="__glewFlushMappedNamedBufferRangeEXT"
rem
bbdoc: GL Global glFramebufferDrawBufferEXT(framebuffer_:Int,mode_:Int)
endrem
Global glFramebufferDrawBufferEXT(framebuffer_:Int,mode_:Int)="__glewFramebufferDrawBufferEXT"
rem
bbdoc: GL Global glFramebufferDrawBuffersEXT(framebuffer_:Int,n_:Int,bufs_:Int Ptr)
endrem
Global glFramebufferDrawBuffersEXT(framebuffer_:Int,n_:Int,bufs_:Int Ptr)="__glewFramebufferDrawBuffersEXT"
rem
bbdoc: GL Global glFramebufferReadBufferEXT(framebuffer_:Int,mode_:Int)
endrem
Global glFramebufferReadBufferEXT(framebuffer_:Int,mode_:Int)="__glewFramebufferReadBufferEXT"
rem
bbdoc: GL Global glGenerateMultiTexMipmapEXT(texunit_:Int,target_:Int)
endrem
Global glGenerateMultiTexMipmapEXT(texunit_:Int,target_:Int)="__glewGenerateMultiTexMipmapEXT"
rem
bbdoc: GL Global glGenerateTextureMipmapEXT(texture_:Int,target_:Int)
endrem
Global glGenerateTextureMipmapEXT(texture_:Int,target_:Int)="__glewGenerateTextureMipmapEXT"
rem
bbdoc: GL Global glGetCompressedMultiTexImageEXT(texunit_:Int,target_:Int,level_:Int,img_:Byte Ptr)
endrem
Global glGetCompressedMultiTexImageEXT(texunit_:Int,target_:Int,level_:Int,img_:Byte Ptr)="__glewGetCompressedMultiTexImageEXT"
rem
bbdoc: GL Global glGetCompressedTextureImageEXT(texture_:Int,target_:Int,level_:Int,img_:Byte Ptr)
endrem
Global glGetCompressedTextureImageEXT(texture_:Int,target_:Int,level_:Int,img_:Byte Ptr)="__glewGetCompressedTextureImageEXT"
rem
bbdoc: GL Global glGetDoubleIndexedvEXT(target_:Int,index_:Int,params_:Double Ptr)
endrem
Global glGetDoubleIndexedvEXT(target_:Int,index_:Int,params_:Double Ptr)="__glewGetDoubleIndexedvEXT"
rem
bbdoc: GL Global glGetDoublei_vEXT(pname_:Int,index_:Int,params_:Double Ptr)
endrem
Global glGetDoublei_vEXT(pname_:Int,index_:Int,params_:Double Ptr)="__glewGetDoublei_vEXT"
rem
bbdoc: GL Global glGetFloatIndexedvEXT(target_:Int,index_:Int,params_:Float Ptr)
endrem
Global glGetFloatIndexedvEXT(target_:Int,index_:Int,params_:Float Ptr)="__glewGetFloatIndexedvEXT"
rem
bbdoc: GL Global glGetFloati_vEXT(pname_:Int,index_:Int,params_:Float Ptr)
endrem
Global glGetFloati_vEXT(pname_:Int,index_:Int,params_:Float Ptr)="__glewGetFloati_vEXT"
rem
bbdoc: GL Global glGetFramebufferParameterivEXT(framebuffer_:Int,pname_:Int,param_:Int Ptr)
endrem
Global glGetFramebufferParameterivEXT(framebuffer_:Int,pname_:Int,param_:Int Ptr)="__glewGetFramebufferParameterivEXT"
rem
bbdoc: GL Global glGetMultiTexEnvfvEXT(texunit_:Int,target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetMultiTexEnvfvEXT(texunit_:Int,target_:Int,pname_:Int,params_:Float Ptr)="__glewGetMultiTexEnvfvEXT"
rem
bbdoc: GL Global glGetMultiTexEnvivEXT(texunit_:Int,target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetMultiTexEnvivEXT(texunit_:Int,target_:Int,pname_:Int,params_:Int Ptr)="__glewGetMultiTexEnvivEXT"
rem
bbdoc: GL Global glGetMultiTexGendvEXT(texunit_:Int,coord_:Int,pname_:Int,params_:Double Ptr)
endrem
Global glGetMultiTexGendvEXT(texunit_:Int,coord_:Int,pname_:Int,params_:Double Ptr)="__glewGetMultiTexGendvEXT"
rem
bbdoc: GL Global glGetMultiTexGenfvEXT(texunit_:Int,coord_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetMultiTexGenfvEXT(texunit_:Int,coord_:Int,pname_:Int,params_:Float Ptr)="__glewGetMultiTexGenfvEXT"
rem
bbdoc: GL Global glGetMultiTexGenivEXT(texunit_:Int,coord_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetMultiTexGenivEXT(texunit_:Int,coord_:Int,pname_:Int,params_:Int Ptr)="__glewGetMultiTexGenivEXT"
rem
bbdoc: GL Global glGetMultiTexImageEXT(texunit_:Int,target_:Int,level_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glGetMultiTexImageEXT(texunit_:Int,target_:Int,level_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewGetMultiTexImageEXT"
rem
bbdoc: GL Global glGetMultiTexLevelParameterfvEXT(texunit_:Int,target_:Int,level_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetMultiTexLevelParameterfvEXT(texunit_:Int,target_:Int,level_:Int,pname_:Int,params_:Float Ptr)="__glewGetMultiTexLevelParameterfvEXT"
rem
bbdoc: GL Global glGetMultiTexLevelParameterivEXT(texunit_:Int,target_:Int,level_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetMultiTexLevelParameterivEXT(texunit_:Int,target_:Int,level_:Int,pname_:Int,params_:Int Ptr)="__glewGetMultiTexLevelParameterivEXT"
rem
bbdoc: GL Global glGetMultiTexParameterIivEXT(texunit_:Int,target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetMultiTexParameterIivEXT(texunit_:Int,target_:Int,pname_:Int,params_:Int Ptr)="__glewGetMultiTexParameterIivEXT"
rem
bbdoc: GL Global glGetMultiTexParameterIuivEXT(texunit_:Int,target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetMultiTexParameterIuivEXT(texunit_:Int,target_:Int,pname_:Int,params_:Int Ptr)="__glewGetMultiTexParameterIuivEXT"
rem
bbdoc: GL Global glGetMultiTexParameterfvEXT(texunit_:Int,target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetMultiTexParameterfvEXT(texunit_:Int,target_:Int,pname_:Int,params_:Float Ptr)="__glewGetMultiTexParameterfvEXT"
rem
bbdoc: GL Global glGetMultiTexParameterivEXT(texunit_:Int,target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetMultiTexParameterivEXT(texunit_:Int,target_:Int,pname_:Int,params_:Int Ptr)="__glewGetMultiTexParameterivEXT"
rem
bbdoc: GL Global glGetNamedBufferParameterivEXT(buffer_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetNamedBufferParameterivEXT(buffer_:Int,pname_:Int,params_:Int Ptr)="__glewGetNamedBufferParameterivEXT"
rem
bbdoc: GL Global glGetNamedBufferPointervEXT(buffer_:Int,pname_:Int,params_:Byte Ptr Ptr)
endrem
Global glGetNamedBufferPointervEXT(buffer_:Int,pname_:Int,params_:Byte Ptr Ptr)="__glewGetNamedBufferPointervEXT"
rem
bbdoc: GL Global glGetNamedBufferSubDataEXT(buffer_:Int,offset_:Int,size_:Int,data_:Byte Ptr)
endrem
Global glGetNamedBufferSubDataEXT(buffer_:Int,offset_:Int,size_:Int,data_:Byte Ptr)="__glewGetNamedBufferSubDataEXT"
rem
bbdoc: GL Global glGetNamedFramebufferAttachmentParameterivEXT(framebuffer_:Int,attachment_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetNamedFramebufferAttachmentParameterivEXT(framebuffer_:Int,attachment_:Int,pname_:Int,params_:Int Ptr)="__glewGetNamedFramebufferAttachmentParameterivEXT"
rem
bbdoc: GL Global glGetNamedProgramLocalParameterIivEXT(program_:Int,target_:Int,index_:Int,params_:Int Ptr)
endrem
Global glGetNamedProgramLocalParameterIivEXT(program_:Int,target_:Int,index_:Int,params_:Int Ptr)="__glewGetNamedProgramLocalParameterIivEXT"
rem
bbdoc: GL Global glGetNamedProgramLocalParameterIuivEXT(program_:Int,target_:Int,index_:Int,params_:Int Ptr)
endrem
Global glGetNamedProgramLocalParameterIuivEXT(program_:Int,target_:Int,index_:Int,params_:Int Ptr)="__glewGetNamedProgramLocalParameterIuivEXT"
rem
bbdoc: GL Global glGetNamedProgramLocalParameterdvEXT(program_:Int,target_:Int,index_:Int,params_:Double Ptr)
endrem
Global glGetNamedProgramLocalParameterdvEXT(program_:Int,target_:Int,index_:Int,params_:Double Ptr)="__glewGetNamedProgramLocalParameterdvEXT"
rem
bbdoc: GL Global glGetNamedProgramLocalParameterfvEXT(program_:Int,target_:Int,index_:Int,params_:Float Ptr)
endrem
Global glGetNamedProgramLocalParameterfvEXT(program_:Int,target_:Int,index_:Int,params_:Float Ptr)="__glewGetNamedProgramLocalParameterfvEXT"
rem
bbdoc: GL Global glGetNamedProgramStringEXT(program_:Int,target_:Int,pname_:Int,string_:Byte Ptr)
endrem
Global glGetNamedProgramStringEXT(program_:Int,target_:Int,pname_:Int,string_:Byte Ptr)="__glewGetNamedProgramStringEXT"
rem
bbdoc: GL Global glGetNamedProgramivEXT(program_:Int,target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetNamedProgramivEXT(program_:Int,target_:Int,pname_:Int,params_:Int Ptr)="__glewGetNamedProgramivEXT"
rem
bbdoc: GL Global glGetNamedRenderbufferParameterivEXT(renderbuffer_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetNamedRenderbufferParameterivEXT(renderbuffer_:Int,pname_:Int,params_:Int Ptr)="__glewGetNamedRenderbufferParameterivEXT"
rem
bbdoc: GL Global glGetPointerIndexedvEXT(target_:Int,index_:Int,params_:Byte Ptr Ptr)
endrem
Global glGetPointerIndexedvEXT(target_:Int,index_:Int,params_:Byte Ptr Ptr)="__glewGetPointerIndexedvEXT"
rem
bbdoc: GL Global glGetPointeri_vEXT(pname_:Int,index_:Int,params_:Byte Ptr Ptr)
endrem
Global glGetPointeri_vEXT(pname_:Int,index_:Int,params_:Byte Ptr Ptr)="__glewGetPointeri_vEXT"
rem
bbdoc: GL Global glGetTextureImageEXT(texture_:Int,target_:Int,level_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glGetTextureImageEXT(texture_:Int,target_:Int,level_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewGetTextureImageEXT"
rem
bbdoc: GL Global glGetTextureLevelParameterfvEXT(texture_:Int,target_:Int,level_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetTextureLevelParameterfvEXT(texture_:Int,target_:Int,level_:Int,pname_:Int,params_:Float Ptr)="__glewGetTextureLevelParameterfvEXT"
rem
bbdoc: GL Global glGetTextureLevelParameterivEXT(texture_:Int,target_:Int,level_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetTextureLevelParameterivEXT(texture_:Int,target_:Int,level_:Int,pname_:Int,params_:Int Ptr)="__glewGetTextureLevelParameterivEXT"
rem
bbdoc: GL Global glGetTextureParameterIivEXT(texture_:Int,target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetTextureParameterIivEXT(texture_:Int,target_:Int,pname_:Int,params_:Int Ptr)="__glewGetTextureParameterIivEXT"
rem
bbdoc: GL Global glGetTextureParameterIuivEXT(texture_:Int,target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetTextureParameterIuivEXT(texture_:Int,target_:Int,pname_:Int,params_:Int Ptr)="__glewGetTextureParameterIuivEXT"
rem
bbdoc: GL Global glGetTextureParameterfvEXT(texture_:Int,target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetTextureParameterfvEXT(texture_:Int,target_:Int,pname_:Int,params_:Float Ptr)="__glewGetTextureParameterfvEXT"
rem
bbdoc: GL Global glGetTextureParameterivEXT(texture_:Int,target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetTextureParameterivEXT(texture_:Int,target_:Int,pname_:Int,params_:Int Ptr)="__glewGetTextureParameterivEXT"
rem
bbdoc: GL Global glGetVertexArrayIntegeri_vEXT(vaobj_:Int,index_:Int,pname_:Int,param_:Int Ptr)
endrem
Global glGetVertexArrayIntegeri_vEXT(vaobj_:Int,index_:Int,pname_:Int,param_:Int Ptr)="__glewGetVertexArrayIntegeri_vEXT"
rem
bbdoc: GL Global glGetVertexArrayIntegervEXT(vaobj_:Int,pname_:Int,param_:Int Ptr)
endrem
Global glGetVertexArrayIntegervEXT(vaobj_:Int,pname_:Int,param_:Int Ptr)="__glewGetVertexArrayIntegervEXT"
rem
bbdoc: GL Global glGetVertexArrayPointeri_vEXT(vaobj_:Int,index_:Int,pname_:Int,param_:Byte Ptr Ptr)
endrem
Global glGetVertexArrayPointeri_vEXT(vaobj_:Int,index_:Int,pname_:Int,param_:Byte Ptr Ptr)="__glewGetVertexArrayPointeri_vEXT"
rem
bbdoc: GL Global glGetVertexArrayPointervEXT(vaobj_:Int,pname_:Int,param_:Byte Ptr Ptr)
endrem
Global glGetVertexArrayPointervEXT(vaobj_:Int,pname_:Int,param_:Byte Ptr Ptr)="__glewGetVertexArrayPointervEXT"
rem
bbdoc: GL Global glMapNamedBufferEXT:Byte Ptr(buffer_:Int,access_:Int)
endrem
Global glMapNamedBufferEXT:Byte Ptr(buffer_:Int,access_:Int)="__glewMapNamedBufferEXT"
rem
bbdoc: GL Global glMapNamedBufferRangeEXT:Byte Ptr(buffer_:Int,offset_:Int,length_:Int,access_:Int)
endrem
Global glMapNamedBufferRangeEXT:Byte Ptr(buffer_:Int,offset_:Int,length_:Int,access_:Int)="__glewMapNamedBufferRangeEXT"
rem
bbdoc: GL Global glMatrixFrustumEXT(matrixMode_:Int,l_:Double,r_:Double,b_:Double,t_:Double,n_:Double,f_:Double)
endrem
Global glMatrixFrustumEXT(matrixMode_:Int,l_:Double,r_:Double,b_:Double,t_:Double,n_:Double,f_:Double)="__glewMatrixFrustumEXT"
rem
bbdoc: GL Global glMatrixLoadIdentityEXT(matrixMode_:Int)
endrem
Global glMatrixLoadIdentityEXT(matrixMode_:Int)="__glewMatrixLoadIdentityEXT"
rem
bbdoc: GL Global glMatrixLoadTransposedEXT(matrixMode_:Int,m_:Double Ptr)
endrem
Global glMatrixLoadTransposedEXT(matrixMode_:Int,m_:Double Ptr)="__glewMatrixLoadTransposedEXT"
rem
bbdoc: GL Global glMatrixLoadTransposefEXT(matrixMode_:Int,m_:Float Ptr)
endrem
Global glMatrixLoadTransposefEXT(matrixMode_:Int,m_:Float Ptr)="__glewMatrixLoadTransposefEXT"
rem
bbdoc: GL Global glMatrixLoaddEXT(matrixMode_:Int,m_:Double Ptr)
endrem
Global glMatrixLoaddEXT(matrixMode_:Int,m_:Double Ptr)="__glewMatrixLoaddEXT"
rem
bbdoc: GL Global glMatrixLoadfEXT(matrixMode_:Int,m_:Float Ptr)
endrem
Global glMatrixLoadfEXT(matrixMode_:Int,m_:Float Ptr)="__glewMatrixLoadfEXT"
rem
bbdoc: GL Global glMatrixMultTransposedEXT(matrixMode_:Int,m_:Double Ptr)
endrem
Global glMatrixMultTransposedEXT(matrixMode_:Int,m_:Double Ptr)="__glewMatrixMultTransposedEXT"
rem
bbdoc: GL Global glMatrixMultTransposefEXT(matrixMode_:Int,m_:Float Ptr)
endrem
Global glMatrixMultTransposefEXT(matrixMode_:Int,m_:Float Ptr)="__glewMatrixMultTransposefEXT"
rem
bbdoc: GL Global glMatrixMultdEXT(matrixMode_:Int,m_:Double Ptr)
endrem
Global glMatrixMultdEXT(matrixMode_:Int,m_:Double Ptr)="__glewMatrixMultdEXT"
rem
bbdoc: GL Global glMatrixMultfEXT(matrixMode_:Int,m_:Float Ptr)
endrem
Global glMatrixMultfEXT(matrixMode_:Int,m_:Float Ptr)="__glewMatrixMultfEXT"
rem
bbdoc: GL Global glMatrixOrthoEXT(matrixMode_:Int,l_:Double,r_:Double,b_:Double,t_:Double,n_:Double,f_:Double)
endrem
Global glMatrixOrthoEXT(matrixMode_:Int,l_:Double,r_:Double,b_:Double,t_:Double,n_:Double,f_:Double)="__glewMatrixOrthoEXT"
rem
bbdoc: GL Global glMatrixPopEXT(matrixMode_:Int)
endrem
Global glMatrixPopEXT(matrixMode_:Int)="__glewMatrixPopEXT"
rem
bbdoc: GL Global glMatrixPushEXT(matrixMode_:Int)
endrem
Global glMatrixPushEXT(matrixMode_:Int)="__glewMatrixPushEXT"
rem
bbdoc: GL Global glMatrixRotatedEXT(matrixMode_:Int,angle_:Double,x_:Double,y_:Double,z_:Double)
endrem
Global glMatrixRotatedEXT(matrixMode_:Int,angle_:Double,x_:Double,y_:Double,z_:Double)="__glewMatrixRotatedEXT"
rem
bbdoc: GL Global glMatrixRotatefEXT(matrixMode_:Int,angle_:Float,x_:Float,y_:Float,z_:Float)
endrem
Global glMatrixRotatefEXT(matrixMode_:Int,angle_:Float,x_:Float,y_:Float,z_:Float)="__glewMatrixRotatefEXT"
rem
bbdoc: GL Global glMatrixScaledEXT(matrixMode_:Int,x_:Double,y_:Double,z_:Double)
endrem
Global glMatrixScaledEXT(matrixMode_:Int,x_:Double,y_:Double,z_:Double)="__glewMatrixScaledEXT"
rem
bbdoc: GL Global glMatrixScalefEXT(matrixMode_:Int,x_:Float,y_:Float,z_:Float)
endrem
Global glMatrixScalefEXT(matrixMode_:Int,x_:Float,y_:Float,z_:Float)="__glewMatrixScalefEXT"
rem
bbdoc: GL Global glMatrixTranslatedEXT(matrixMode_:Int,x_:Double,y_:Double,z_:Double)
endrem
Global glMatrixTranslatedEXT(matrixMode_:Int,x_:Double,y_:Double,z_:Double)="__glewMatrixTranslatedEXT"
rem
bbdoc: GL Global glMatrixTranslatefEXT(matrixMode_:Int,x_:Float,y_:Float,z_:Float)
endrem
Global glMatrixTranslatefEXT(matrixMode_:Int,x_:Float,y_:Float,z_:Float)="__glewMatrixTranslatefEXT"
rem
bbdoc: GL Global glMultiTexBufferEXT(texunit_:Int,target_:Int,internalformat_:Int,buffer_:Int)
endrem
Global glMultiTexBufferEXT(texunit_:Int,target_:Int,internalformat_:Int,buffer_:Int)="__glewMultiTexBufferEXT"
rem
bbdoc: GL Global glMultiTexCoordPointerEXT(texunit_:Int,size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)
endrem
Global glMultiTexCoordPointerEXT(texunit_:Int,size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)="__glewMultiTexCoordPointerEXT"
rem
bbdoc: GL Global glMultiTexEnvfEXT(texunit_:Int,target_:Int,pname_:Int,param_:Float)
endrem
Global glMultiTexEnvfEXT(texunit_:Int,target_:Int,pname_:Int,param_:Float)="__glewMultiTexEnvfEXT"
rem
bbdoc: GL Global glMultiTexEnvfvEXT(texunit_:Int,target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glMultiTexEnvfvEXT(texunit_:Int,target_:Int,pname_:Int,params_:Float Ptr)="__glewMultiTexEnvfvEXT"
rem
bbdoc: GL Global glMultiTexEnviEXT(texunit_:Int,target_:Int,pname_:Int,param_:Int)
endrem
Global glMultiTexEnviEXT(texunit_:Int,target_:Int,pname_:Int,param_:Int)="__glewMultiTexEnviEXT"
rem
bbdoc: GL Global glMultiTexEnvivEXT(texunit_:Int,target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glMultiTexEnvivEXT(texunit_:Int,target_:Int,pname_:Int,params_:Int Ptr)="__glewMultiTexEnvivEXT"
rem
bbdoc: GL Global glMultiTexGendEXT(texunit_:Int,coord_:Int,pname_:Int,param_:Double)
endrem
Global glMultiTexGendEXT(texunit_:Int,coord_:Int,pname_:Int,param_:Double)="__glewMultiTexGendEXT"
rem
bbdoc: GL Global glMultiTexGendvEXT(texunit_:Int,coord_:Int,pname_:Int,params_:Double Ptr)
endrem
Global glMultiTexGendvEXT(texunit_:Int,coord_:Int,pname_:Int,params_:Double Ptr)="__glewMultiTexGendvEXT"
rem
bbdoc: GL Global glMultiTexGenfEXT(texunit_:Int,coord_:Int,pname_:Int,param_:Float)
endrem
Global glMultiTexGenfEXT(texunit_:Int,coord_:Int,pname_:Int,param_:Float)="__glewMultiTexGenfEXT"
rem
bbdoc: GL Global glMultiTexGenfvEXT(texunit_:Int,coord_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glMultiTexGenfvEXT(texunit_:Int,coord_:Int,pname_:Int,params_:Float Ptr)="__glewMultiTexGenfvEXT"
rem
bbdoc: GL Global glMultiTexGeniEXT(texunit_:Int,coord_:Int,pname_:Int,param_:Int)
endrem
Global glMultiTexGeniEXT(texunit_:Int,coord_:Int,pname_:Int,param_:Int)="__glewMultiTexGeniEXT"
rem
bbdoc: GL Global glMultiTexGenivEXT(texunit_:Int,coord_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glMultiTexGenivEXT(texunit_:Int,coord_:Int,pname_:Int,params_:Int Ptr)="__glewMultiTexGenivEXT"
rem
bbdoc: GL Global glMultiTexImage1DEXT(texunit_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,border_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glMultiTexImage1DEXT(texunit_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,border_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewMultiTexImage1DEXT"
rem
bbdoc: GL Global glMultiTexImage2DEXT(texunit_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,border_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glMultiTexImage2DEXT(texunit_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,border_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewMultiTexImage2DEXT"
rem
bbdoc: GL Global glMultiTexImage3DEXT(texunit_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,border_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glMultiTexImage3DEXT(texunit_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,border_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewMultiTexImage3DEXT"
rem
bbdoc: GL Global glMultiTexParameterIivEXT(texunit_:Int,target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glMultiTexParameterIivEXT(texunit_:Int,target_:Int,pname_:Int,params_:Int Ptr)="__glewMultiTexParameterIivEXT"
rem
bbdoc: GL Global glMultiTexParameterIuivEXT(texunit_:Int,target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glMultiTexParameterIuivEXT(texunit_:Int,target_:Int,pname_:Int,params_:Int Ptr)="__glewMultiTexParameterIuivEXT"
rem
bbdoc: GL Global glMultiTexParameterfEXT(texunit_:Int,target_:Int,pname_:Int,param_:Float)
endrem
Global glMultiTexParameterfEXT(texunit_:Int,target_:Int,pname_:Int,param_:Float)="__glewMultiTexParameterfEXT"
rem
bbdoc: GL Global glMultiTexParameterfvEXT(texunit_:Int,target_:Int,pname_:Int,param_:Float Ptr)
endrem
Global glMultiTexParameterfvEXT(texunit_:Int,target_:Int,pname_:Int,param_:Float Ptr)="__glewMultiTexParameterfvEXT"
rem
bbdoc: GL Global glMultiTexParameteriEXT(texunit_:Int,target_:Int,pname_:Int,param_:Int)
endrem
Global glMultiTexParameteriEXT(texunit_:Int,target_:Int,pname_:Int,param_:Int)="__glewMultiTexParameteriEXT"
rem
bbdoc: GL Global glMultiTexParameterivEXT(texunit_:Int,target_:Int,pname_:Int,param_:Int Ptr)
endrem
Global glMultiTexParameterivEXT(texunit_:Int,target_:Int,pname_:Int,param_:Int Ptr)="__glewMultiTexParameterivEXT"
rem
bbdoc: GL Global glMultiTexRenderbufferEXT(texunit_:Int,target_:Int,renderbuffer_:Int)
endrem
Global glMultiTexRenderbufferEXT(texunit_:Int,target_:Int,renderbuffer_:Int)="__glewMultiTexRenderbufferEXT"
rem
bbdoc: GL Global glMultiTexSubImage1DEXT(texunit_:Int,target_:Int,level_:Int,xoffset_:Int,width_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glMultiTexSubImage1DEXT(texunit_:Int,target_:Int,level_:Int,xoffset_:Int,width_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewMultiTexSubImage1DEXT"
rem
bbdoc: GL Global glMultiTexSubImage2DEXT(texunit_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,width_:Int,height_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glMultiTexSubImage2DEXT(texunit_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,width_:Int,height_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewMultiTexSubImage2DEXT"
rem
bbdoc: GL Global glMultiTexSubImage3DEXT(texunit_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glMultiTexSubImage3DEXT(texunit_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewMultiTexSubImage3DEXT"
rem
bbdoc: GL Global glNamedBufferDataEXT(buffer_:Int,size_:Int,data_:Byte Ptr,usage_:Int)
endrem
Global glNamedBufferDataEXT(buffer_:Int,size_:Int,data_:Byte Ptr,usage_:Int)="__glewNamedBufferDataEXT"
rem
bbdoc: GL Global glNamedBufferSubDataEXT(buffer_:Int,offset_:Int,size_:Int,data_:Byte Ptr)
endrem
Global glNamedBufferSubDataEXT(buffer_:Int,offset_:Int,size_:Int,data_:Byte Ptr)="__glewNamedBufferSubDataEXT"
rem
bbdoc: GL Global glNamedCopyBufferSubDataEXT(readBuffer_:Int,writeBuffer_:Int,readOffset_:Int,writeOffset_:Int,size_:Int)
endrem
Global glNamedCopyBufferSubDataEXT(readBuffer_:Int,writeBuffer_:Int,readOffset_:Int,writeOffset_:Int,size_:Int)="__glewNamedCopyBufferSubDataEXT"
rem
bbdoc: GL Global glNamedFramebufferRenderbufferEXT(framebuffer_:Int,attachment_:Int,renderbuffertarget_:Int,renderbuffer_:Int)
endrem
Global glNamedFramebufferRenderbufferEXT(framebuffer_:Int,attachment_:Int,renderbuffertarget_:Int,renderbuffer_:Int)="__glewNamedFramebufferRenderbufferEXT"
rem
bbdoc: GL Global glNamedFramebufferTexture1DEXT(framebuffer_:Int,attachment_:Int,textarget_:Int,texture_:Int,level_:Int)
endrem
Global glNamedFramebufferTexture1DEXT(framebuffer_:Int,attachment_:Int,textarget_:Int,texture_:Int,level_:Int)="__glewNamedFramebufferTexture1DEXT"
rem
bbdoc: GL Global glNamedFramebufferTexture2DEXT(framebuffer_:Int,attachment_:Int,textarget_:Int,texture_:Int,level_:Int)
endrem
Global glNamedFramebufferTexture2DEXT(framebuffer_:Int,attachment_:Int,textarget_:Int,texture_:Int,level_:Int)="__glewNamedFramebufferTexture2DEXT"
rem
bbdoc: GL Global glNamedFramebufferTexture3DEXT(framebuffer_:Int,attachment_:Int,textarget_:Int,texture_:Int,level_:Int,zoffset_:Int)
endrem
Global glNamedFramebufferTexture3DEXT(framebuffer_:Int,attachment_:Int,textarget_:Int,texture_:Int,level_:Int,zoffset_:Int)="__glewNamedFramebufferTexture3DEXT"
rem
bbdoc: GL Global glNamedFramebufferTextureEXT(framebuffer_:Int,attachment_:Int,texture_:Int,level_:Int)
endrem
Global glNamedFramebufferTextureEXT(framebuffer_:Int,attachment_:Int,texture_:Int,level_:Int)="__glewNamedFramebufferTextureEXT"
rem
bbdoc: GL Global glNamedFramebufferTextureFaceEXT(framebuffer_:Int,attachment_:Int,texture_:Int,level_:Int,face_:Int)
endrem
Global glNamedFramebufferTextureFaceEXT(framebuffer_:Int,attachment_:Int,texture_:Int,level_:Int,face_:Int)="__glewNamedFramebufferTextureFaceEXT"
rem
bbdoc: GL Global glNamedFramebufferTextureLayerEXT(framebuffer_:Int,attachment_:Int,texture_:Int,level_:Int,layer_:Int)
endrem
Global glNamedFramebufferTextureLayerEXT(framebuffer_:Int,attachment_:Int,texture_:Int,level_:Int,layer_:Int)="__glewNamedFramebufferTextureLayerEXT"
rem
bbdoc: GL Global glNamedProgramLocalParameter4dEXT(program_:Int,target_:Int,index_:Int,x_:Double,y_:Double,z_:Double,w_:Double)
endrem
Global glNamedProgramLocalParameter4dEXT(program_:Int,target_:Int,index_:Int,x_:Double,y_:Double,z_:Double,w_:Double)="__glewNamedProgramLocalParameter4dEXT"
rem
bbdoc: GL Global glNamedProgramLocalParameter4dvEXT(program_:Int,target_:Int,index_:Int,params_:Double Ptr)
endrem
Global glNamedProgramLocalParameter4dvEXT(program_:Int,target_:Int,index_:Int,params_:Double Ptr)="__glewNamedProgramLocalParameter4dvEXT"
rem
bbdoc: GL Global glNamedProgramLocalParameter4fEXT(program_:Int,target_:Int,index_:Int,x_:Float,y_:Float,z_:Float,w_:Float)
endrem
Global glNamedProgramLocalParameter4fEXT(program_:Int,target_:Int,index_:Int,x_:Float,y_:Float,z_:Float,w_:Float)="__glewNamedProgramLocalParameter4fEXT"
rem
bbdoc: GL Global glNamedProgramLocalParameter4fvEXT(program_:Int,target_:Int,index_:Int,params_:Float Ptr)
endrem
Global glNamedProgramLocalParameter4fvEXT(program_:Int,target_:Int,index_:Int,params_:Float Ptr)="__glewNamedProgramLocalParameter4fvEXT"
rem
bbdoc: GL Global glNamedProgramLocalParameterI4iEXT(program_:Int,target_:Int,index_:Int,x_:Int,y_:Int,z_:Int,w_:Int)
endrem
Global glNamedProgramLocalParameterI4iEXT(program_:Int,target_:Int,index_:Int,x_:Int,y_:Int,z_:Int,w_:Int)="__glewNamedProgramLocalParameterI4iEXT"
rem
bbdoc: GL Global glNamedProgramLocalParameterI4ivEXT(program_:Int,target_:Int,index_:Int,params_:Int Ptr)
endrem
Global glNamedProgramLocalParameterI4ivEXT(program_:Int,target_:Int,index_:Int,params_:Int Ptr)="__glewNamedProgramLocalParameterI4ivEXT"
rem
bbdoc: GL Global glNamedProgramLocalParameterI4uiEXT(program_:Int,target_:Int,index_:Int,x_:Int,y_:Int,z_:Int,w_:Int)
endrem
Global glNamedProgramLocalParameterI4uiEXT(program_:Int,target_:Int,index_:Int,x_:Int,y_:Int,z_:Int,w_:Int)="__glewNamedProgramLocalParameterI4uiEXT"
rem
bbdoc: GL Global glNamedProgramLocalParameterI4uivEXT(program_:Int,target_:Int,index_:Int,params_:Int Ptr)
endrem
Global glNamedProgramLocalParameterI4uivEXT(program_:Int,target_:Int,index_:Int,params_:Int Ptr)="__glewNamedProgramLocalParameterI4uivEXT"
rem
bbdoc: GL Global glNamedProgramLocalParameters4fvEXT(program_:Int,target_:Int,index_:Int,count_:Int,params_:Float Ptr)
endrem
Global glNamedProgramLocalParameters4fvEXT(program_:Int,target_:Int,index_:Int,count_:Int,params_:Float Ptr)="__glewNamedProgramLocalParameters4fvEXT"
rem
bbdoc: GL Global glNamedProgramLocalParametersI4ivEXT(program_:Int,target_:Int,index_:Int,count_:Int,params_:Int Ptr)
endrem
Global glNamedProgramLocalParametersI4ivEXT(program_:Int,target_:Int,index_:Int,count_:Int,params_:Int Ptr)="__glewNamedProgramLocalParametersI4ivEXT"
rem
bbdoc: GL Global glNamedProgramLocalParametersI4uivEXT(program_:Int,target_:Int,index_:Int,count_:Int,params_:Int Ptr)
endrem
Global glNamedProgramLocalParametersI4uivEXT(program_:Int,target_:Int,index_:Int,count_:Int,params_:Int Ptr)="__glewNamedProgramLocalParametersI4uivEXT"
rem
bbdoc: GL Global glNamedProgramStringEXT(program_:Int,target_:Int,format_:Int,len_:Int,string_:Byte Ptr)
endrem
Global glNamedProgramStringEXT(program_:Int,target_:Int,format_:Int,len_:Int,string_:Byte Ptr)="__glewNamedProgramStringEXT"
rem
bbdoc: GL Global glNamedRenderbufferStorageEXT(renderbuffer_:Int,internalformat_:Int,width_:Int,height_:Int)
endrem
Global glNamedRenderbufferStorageEXT(renderbuffer_:Int,internalformat_:Int,width_:Int,height_:Int)="__glewNamedRenderbufferStorageEXT"
rem
bbdoc: GL Global glNamedRenderbufferStorageMultisampleCoverageEXT(renderbuffer_:Int,coverageSamples_:Int,colorSamples_:Int,internalformat_:Int,width_:Int,height_:Int)
endrem
Global glNamedRenderbufferStorageMultisampleCoverageEXT(renderbuffer_:Int,coverageSamples_:Int,colorSamples_:Int,internalformat_:Int,width_:Int,height_:Int)="__glewNamedRenderbufferStorageMultisampleCoverageEXT"
rem
bbdoc: GL Global glNamedRenderbufferStorageMultisampleEXT(renderbuffer_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int)
endrem
Global glNamedRenderbufferStorageMultisampleEXT(renderbuffer_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int)="__glewNamedRenderbufferStorageMultisampleEXT"
rem
bbdoc: GL Global glProgramUniform1fEXT(program_:Int,location_:Int,v0_:Float)
endrem
Global glProgramUniform1fEXT(program_:Int,location_:Int,v0_:Float)="__glewProgramUniform1fEXT"
rem
bbdoc: GL Global glProgramUniform1fvEXT(program_:Int,location_:Int,count_:Int,value_:Float Ptr)
endrem
Global glProgramUniform1fvEXT(program_:Int,location_:Int,count_:Int,value_:Float Ptr)="__glewProgramUniform1fvEXT"
rem
bbdoc: GL Global glProgramUniform1iEXT(program_:Int,location_:Int,v0_:Int)
endrem
Global glProgramUniform1iEXT(program_:Int,location_:Int,v0_:Int)="__glewProgramUniform1iEXT"
rem
bbdoc: GL Global glProgramUniform1ivEXT(program_:Int,location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glProgramUniform1ivEXT(program_:Int,location_:Int,count_:Int,value_:Int Ptr)="__glewProgramUniform1ivEXT"
rem
bbdoc: GL Global glProgramUniform1uiEXT(program_:Int,location_:Int,v0_:Int)
endrem
Global glProgramUniform1uiEXT(program_:Int,location_:Int,v0_:Int)="__glewProgramUniform1uiEXT"
rem
bbdoc: GL Global glProgramUniform1uivEXT(program_:Int,location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glProgramUniform1uivEXT(program_:Int,location_:Int,count_:Int,value_:Int Ptr)="__glewProgramUniform1uivEXT"
rem
bbdoc: GL Global glProgramUniform2fEXT(program_:Int,location_:Int,v0_:Float,v1_:Float)
endrem
Global glProgramUniform2fEXT(program_:Int,location_:Int,v0_:Float,v1_:Float)="__glewProgramUniform2fEXT"
rem
bbdoc: GL Global glProgramUniform2fvEXT(program_:Int,location_:Int,count_:Int,value_:Float Ptr)
endrem
Global glProgramUniform2fvEXT(program_:Int,location_:Int,count_:Int,value_:Float Ptr)="__glewProgramUniform2fvEXT"
rem
bbdoc: GL Global glProgramUniform2iEXT(program_:Int,location_:Int,v0_:Int,v1_:Int)
endrem
Global glProgramUniform2iEXT(program_:Int,location_:Int,v0_:Int,v1_:Int)="__glewProgramUniform2iEXT"
rem
bbdoc: GL Global glProgramUniform2ivEXT(program_:Int,location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glProgramUniform2ivEXT(program_:Int,location_:Int,count_:Int,value_:Int Ptr)="__glewProgramUniform2ivEXT"
rem
bbdoc: GL Global glProgramUniform2uiEXT(program_:Int,location_:Int,v0_:Int,v1_:Int)
endrem
Global glProgramUniform2uiEXT(program_:Int,location_:Int,v0_:Int,v1_:Int)="__glewProgramUniform2uiEXT"
rem
bbdoc: GL Global glProgramUniform2uivEXT(program_:Int,location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glProgramUniform2uivEXT(program_:Int,location_:Int,count_:Int,value_:Int Ptr)="__glewProgramUniform2uivEXT"
rem
bbdoc: GL Global glProgramUniform3fEXT(program_:Int,location_:Int,v0_:Float,v1_:Float,v2_:Float)
endrem
Global glProgramUniform3fEXT(program_:Int,location_:Int,v0_:Float,v1_:Float,v2_:Float)="__glewProgramUniform3fEXT"
rem
bbdoc: GL Global glProgramUniform3fvEXT(program_:Int,location_:Int,count_:Int,value_:Float Ptr)
endrem
Global glProgramUniform3fvEXT(program_:Int,location_:Int,count_:Int,value_:Float Ptr)="__glewProgramUniform3fvEXT"
rem
bbdoc: GL Global glProgramUniform3iEXT(program_:Int,location_:Int,v0_:Int,v1_:Int,v2_:Int)
endrem
Global glProgramUniform3iEXT(program_:Int,location_:Int,v0_:Int,v1_:Int,v2_:Int)="__glewProgramUniform3iEXT"
rem
bbdoc: GL Global glProgramUniform3ivEXT(program_:Int,location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glProgramUniform3ivEXT(program_:Int,location_:Int,count_:Int,value_:Int Ptr)="__glewProgramUniform3ivEXT"
rem
bbdoc: GL Global glProgramUniform3uiEXT(program_:Int,location_:Int,v0_:Int,v1_:Int,v2_:Int)
endrem
Global glProgramUniform3uiEXT(program_:Int,location_:Int,v0_:Int,v1_:Int,v2_:Int)="__glewProgramUniform3uiEXT"
rem
bbdoc: GL Global glProgramUniform3uivEXT(program_:Int,location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glProgramUniform3uivEXT(program_:Int,location_:Int,count_:Int,value_:Int Ptr)="__glewProgramUniform3uivEXT"
rem
bbdoc: GL Global glProgramUniform4fEXT(program_:Int,location_:Int,v0_:Float,v1_:Float,v2_:Float,v3_:Float)
endrem
Global glProgramUniform4fEXT(program_:Int,location_:Int,v0_:Float,v1_:Float,v2_:Float,v3_:Float)="__glewProgramUniform4fEXT"
rem
bbdoc: GL Global glProgramUniform4fvEXT(program_:Int,location_:Int,count_:Int,value_:Float Ptr)
endrem
Global glProgramUniform4fvEXT(program_:Int,location_:Int,count_:Int,value_:Float Ptr)="__glewProgramUniform4fvEXT"
rem
bbdoc: GL Global glProgramUniform4iEXT(program_:Int,location_:Int,v0_:Int,v1_:Int,v2_:Int,v3_:Int)
endrem
Global glProgramUniform4iEXT(program_:Int,location_:Int,v0_:Int,v1_:Int,v2_:Int,v3_:Int)="__glewProgramUniform4iEXT"
rem
bbdoc: GL Global glProgramUniform4ivEXT(program_:Int,location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glProgramUniform4ivEXT(program_:Int,location_:Int,count_:Int,value_:Int Ptr)="__glewProgramUniform4ivEXT"
rem
bbdoc: GL Global glProgramUniform4uiEXT(program_:Int,location_:Int,v0_:Int,v1_:Int,v2_:Int,v3_:Int)
endrem
Global glProgramUniform4uiEXT(program_:Int,location_:Int,v0_:Int,v1_:Int,v2_:Int,v3_:Int)="__glewProgramUniform4uiEXT"
rem
bbdoc: GL Global glProgramUniform4uivEXT(program_:Int,location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glProgramUniform4uivEXT(program_:Int,location_:Int,count_:Int,value_:Int Ptr)="__glewProgramUniform4uivEXT"
rem
bbdoc: GL Global glProgramUniformMatrix2fvEXT(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glProgramUniformMatrix2fvEXT(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewProgramUniformMatrix2fvEXT"
rem
bbdoc: GL Global glProgramUniformMatrix2x3fvEXT(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glProgramUniformMatrix2x3fvEXT(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewProgramUniformMatrix2x3fvEXT"
rem
bbdoc: GL Global glProgramUniformMatrix2x4fvEXT(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glProgramUniformMatrix2x4fvEXT(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewProgramUniformMatrix2x4fvEXT"
rem
bbdoc: GL Global glProgramUniformMatrix3fvEXT(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glProgramUniformMatrix3fvEXT(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewProgramUniformMatrix3fvEXT"
rem
bbdoc: GL Global glProgramUniformMatrix3x2fvEXT(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glProgramUniformMatrix3x2fvEXT(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewProgramUniformMatrix3x2fvEXT"
rem
bbdoc: GL Global glProgramUniformMatrix3x4fvEXT(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glProgramUniformMatrix3x4fvEXT(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewProgramUniformMatrix3x4fvEXT"
rem
bbdoc: GL Global glProgramUniformMatrix4fvEXT(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glProgramUniformMatrix4fvEXT(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewProgramUniformMatrix4fvEXT"
rem
bbdoc: GL Global glProgramUniformMatrix4x2fvEXT(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glProgramUniformMatrix4x2fvEXT(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewProgramUniformMatrix4x2fvEXT"
rem
bbdoc: GL Global glProgramUniformMatrix4x3fvEXT(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)
endrem
Global glProgramUniformMatrix4x3fvEXT(program_:Int,location_:Int,count_:Int,transpose_:Byte,value_:Float Ptr)="__glewProgramUniformMatrix4x3fvEXT"
rem
bbdoc: GL Global glPushClientAttribDefaultEXT(mask_:Int)
endrem
Global glPushClientAttribDefaultEXT(mask_:Int)="__glewPushClientAttribDefaultEXT"
rem
bbdoc: GL Global glTextureBufferEXT(texture_:Int,target_:Int,internalformat_:Int,buffer_:Int)
endrem
Global glTextureBufferEXT(texture_:Int,target_:Int,internalformat_:Int,buffer_:Int)="__glewTextureBufferEXT"
rem
bbdoc: GL Global glTextureImage1DEXT(texture_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,border_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glTextureImage1DEXT(texture_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,border_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewTextureImage1DEXT"
rem
bbdoc: GL Global glTextureImage2DEXT(texture_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,border_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glTextureImage2DEXT(texture_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,border_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewTextureImage2DEXT"
rem
bbdoc: GL Global glTextureImage3DEXT(texture_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,border_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glTextureImage3DEXT(texture_:Int,target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,border_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewTextureImage3DEXT"
rem
bbdoc: GL Global glTextureParameterIivEXT(texture_:Int,target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glTextureParameterIivEXT(texture_:Int,target_:Int,pname_:Int,params_:Int Ptr)="__glewTextureParameterIivEXT"
rem
bbdoc: GL Global glTextureParameterIuivEXT(texture_:Int,target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glTextureParameterIuivEXT(texture_:Int,target_:Int,pname_:Int,params_:Int Ptr)="__glewTextureParameterIuivEXT"
rem
bbdoc: GL Global glTextureParameterfEXT(texture_:Int,target_:Int,pname_:Int,param_:Float)
endrem
Global glTextureParameterfEXT(texture_:Int,target_:Int,pname_:Int,param_:Float)="__glewTextureParameterfEXT"
rem
bbdoc: GL Global glTextureParameterfvEXT(texture_:Int,target_:Int,pname_:Int,param_:Float Ptr)
endrem
Global glTextureParameterfvEXT(texture_:Int,target_:Int,pname_:Int,param_:Float Ptr)="__glewTextureParameterfvEXT"
rem
bbdoc: GL Global glTextureParameteriEXT(texture_:Int,target_:Int,pname_:Int,param_:Int)
endrem
Global glTextureParameteriEXT(texture_:Int,target_:Int,pname_:Int,param_:Int)="__glewTextureParameteriEXT"
rem
bbdoc: GL Global glTextureParameterivEXT(texture_:Int,target_:Int,pname_:Int,param_:Int Ptr)
endrem
Global glTextureParameterivEXT(texture_:Int,target_:Int,pname_:Int,param_:Int Ptr)="__glewTextureParameterivEXT"
rem
bbdoc: GL Global glTextureRenderbufferEXT(texture_:Int,target_:Int,renderbuffer_:Int)
endrem
Global glTextureRenderbufferEXT(texture_:Int,target_:Int,renderbuffer_:Int)="__glewTextureRenderbufferEXT"
rem
bbdoc: GL Global glTextureSubImage1DEXT(texture_:Int,target_:Int,level_:Int,xoffset_:Int,width_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glTextureSubImage1DEXT(texture_:Int,target_:Int,level_:Int,xoffset_:Int,width_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewTextureSubImage1DEXT"
rem
bbdoc: GL Global glTextureSubImage2DEXT(texture_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,width_:Int,height_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glTextureSubImage2DEXT(texture_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,width_:Int,height_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewTextureSubImage2DEXT"
rem
bbdoc: GL Global glTextureSubImage3DEXT(texture_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glTextureSubImage3DEXT(texture_:Int,target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewTextureSubImage3DEXT"
rem
bbdoc: GL Global glUnmapNamedBufferEXT:Byte(buffer_:Int)
endrem
Global glUnmapNamedBufferEXT:Byte(buffer_:Int)="__glewUnmapNamedBufferEXT"
rem
bbdoc: GL Global glVertexArrayColorOffsetEXT(vaobj_:Int,buffer_:Int,size_:Int,type_:Int,stride_:Int,offset_:Int)
endrem
Global glVertexArrayColorOffsetEXT(vaobj_:Int,buffer_:Int,size_:Int,type_:Int,stride_:Int,offset_:Int)="__glewVertexArrayColorOffsetEXT"
rem
bbdoc: GL Global glVertexArrayEdgeFlagOffsetEXT(vaobj_:Int,buffer_:Int,stride_:Int,offset_:Int)
endrem
Global glVertexArrayEdgeFlagOffsetEXT(vaobj_:Int,buffer_:Int,stride_:Int,offset_:Int)="__glewVertexArrayEdgeFlagOffsetEXT"
rem
bbdoc: GL Global glVertexArrayFogCoordOffsetEXT(vaobj_:Int,buffer_:Int,type_:Int,stride_:Int,offset_:Int)
endrem
Global glVertexArrayFogCoordOffsetEXT(vaobj_:Int,buffer_:Int,type_:Int,stride_:Int,offset_:Int)="__glewVertexArrayFogCoordOffsetEXT"
rem
bbdoc: GL Global glVertexArrayIndexOffsetEXT(vaobj_:Int,buffer_:Int,type_:Int,stride_:Int,offset_:Int)
endrem
Global glVertexArrayIndexOffsetEXT(vaobj_:Int,buffer_:Int,type_:Int,stride_:Int,offset_:Int)="__glewVertexArrayIndexOffsetEXT"
rem
bbdoc: GL Global glVertexArrayMultiTexCoordOffsetEXT(vaobj_:Int,buffer_:Int,texunit_:Int,size_:Int,type_:Int,stride_:Int,offset_:Int)
endrem
Global glVertexArrayMultiTexCoordOffsetEXT(vaobj_:Int,buffer_:Int,texunit_:Int,size_:Int,type_:Int,stride_:Int,offset_:Int)="__glewVertexArrayMultiTexCoordOffsetEXT"
rem
bbdoc: GL Global glVertexArrayNormalOffsetEXT(vaobj_:Int,buffer_:Int,type_:Int,stride_:Int,offset_:Int)
endrem
Global glVertexArrayNormalOffsetEXT(vaobj_:Int,buffer_:Int,type_:Int,stride_:Int,offset_:Int)="__glewVertexArrayNormalOffsetEXT"
rem
bbdoc: GL Global glVertexArraySecondaryColorOffsetEXT(vaobj_:Int,buffer_:Int,size_:Int,type_:Int,stride_:Int,offset_:Int)
endrem
Global glVertexArraySecondaryColorOffsetEXT(vaobj_:Int,buffer_:Int,size_:Int,type_:Int,stride_:Int,offset_:Int)="__glewVertexArraySecondaryColorOffsetEXT"
rem
bbdoc: GL Global glVertexArrayTexCoordOffsetEXT(vaobj_:Int,buffer_:Int,size_:Int,type_:Int,stride_:Int,offset_:Int)
endrem
Global glVertexArrayTexCoordOffsetEXT(vaobj_:Int,buffer_:Int,size_:Int,type_:Int,stride_:Int,offset_:Int)="__glewVertexArrayTexCoordOffsetEXT"
rem
bbdoc: GL Global glVertexArrayVertexAttribDivisorEXT(vaobj_:Int,index_:Int,divisor_:Int)
endrem
Global glVertexArrayVertexAttribDivisorEXT(vaobj_:Int,index_:Int,divisor_:Int)="__glewVertexArrayVertexAttribDivisorEXT"
rem
bbdoc: GL Global glVertexArrayVertexAttribIOffsetEXT(vaobj_:Int,buffer_:Int,index_:Int,size_:Int,type_:Int,stride_:Int,offset_:Int)
endrem
Global glVertexArrayVertexAttribIOffsetEXT(vaobj_:Int,buffer_:Int,index_:Int,size_:Int,type_:Int,stride_:Int,offset_:Int)="__glewVertexArrayVertexAttribIOffsetEXT"
rem
bbdoc: GL Global glVertexArrayVertexAttribOffsetEXT(vaobj_:Int,buffer_:Int,index_:Int,size_:Int,type_:Int,normalized_:Byte,stride_:Int,offset_:Int)
endrem
Global glVertexArrayVertexAttribOffsetEXT(vaobj_:Int,buffer_:Int,index_:Int,size_:Int,type_:Int,normalized_:Byte,stride_:Int,offset_:Int)="__glewVertexArrayVertexAttribOffsetEXT"
rem
bbdoc: GL Global glVertexArrayVertexOffsetEXT(vaobj_:Int,buffer_:Int,size_:Int,type_:Int,stride_:Int,offset_:Int)
endrem
Global glVertexArrayVertexOffsetEXT(vaobj_:Int,buffer_:Int,size_:Int,type_:Int,stride_:Int,offset_:Int)="__glewVertexArrayVertexOffsetEXT"
rem
bbdoc: GL Const GL_EXT_draw_buffers2
endrem
Const GL_EXT_draw_buffers2=1
rem
bbdoc: GL Global glColorMaskIndexedEXT(buf_:Int,r_:Byte,g_:Byte,b_:Byte,a_:Byte)
endrem
Global glColorMaskIndexedEXT(buf_:Int,r_:Byte,g_:Byte,b_:Byte,a_:Byte)="__glewColorMaskIndexedEXT"
rem
bbdoc: GL Global glDisableIndexedEXT(target_:Int,index_:Int)
endrem
Global glDisableIndexedEXT(target_:Int,index_:Int)="__glewDisableIndexedEXT"
rem
bbdoc: GL Global glEnableIndexedEXT(target_:Int,index_:Int)
endrem
Global glEnableIndexedEXT(target_:Int,index_:Int)="__glewEnableIndexedEXT"
rem
bbdoc: GL Global glGetBooleanIndexedvEXT(value_:Int,index_:Int,data_:Byte Ptr)
endrem
Global glGetBooleanIndexedvEXT(value_:Int,index_:Int,data_:Byte Ptr)="__glewGetBooleanIndexedvEXT"
rem
bbdoc: GL Global glGetIntegerIndexedvEXT(value_:Int,index_:Int,data_:Int Ptr)
endrem
Global glGetIntegerIndexedvEXT(value_:Int,index_:Int,data_:Int Ptr)="__glewGetIntegerIndexedvEXT"
rem
bbdoc: GL Global glIsEnabledIndexedEXT:Byte(target_:Int,index_:Int)
endrem
Global glIsEnabledIndexedEXT:Byte(target_:Int,index_:Int)="__glewIsEnabledIndexedEXT"
rem
bbdoc: GL Const GL_EXT_draw_instanced
endrem
Const GL_EXT_draw_instanced=1
rem
bbdoc: GL Global glDrawArraysInstancedEXT(mode_:Int,start_:Int,count_:Int,primcount_:Int)
endrem
Global glDrawArraysInstancedEXT(mode_:Int,start_:Int,count_:Int,primcount_:Int)="__glewDrawArraysInstancedEXT"
rem
bbdoc: GL Global glDrawElementsInstancedEXT(mode_:Int,count_:Int,type_:Int,indices_:Byte Ptr,primcount_:Int)
endrem
Global glDrawElementsInstancedEXT(mode_:Int,count_:Int,type_:Int,indices_:Byte Ptr,primcount_:Int)="__glewDrawElementsInstancedEXT"
rem
bbdoc: GL Const GL_EXT_draw_range_elements
endrem
Const GL_EXT_draw_range_elements=1
rem
bbdoc: GL Const GL_MAX_ELEMENTS_VERTICES_EXT
endrem
Const GL_MAX_ELEMENTS_VERTICES_EXT=$80E8
rem
bbdoc: GL Const GL_MAX_ELEMENTS_INDICES_EXT
endrem
Const GL_MAX_ELEMENTS_INDICES_EXT=$80E9
rem
bbdoc: GL Global glDrawRangeElementsEXT(mode_:Int,start_:Int,end_:Int,count_:Int,type_:Int,indices_:Byte Ptr)
endrem
Global glDrawRangeElementsEXT(mode_:Int,start_:Int,end_:Int,count_:Int,type_:Int,indices_:Byte Ptr)="__glewDrawRangeElementsEXT"
rem
bbdoc: GL Const GL_EXT_fog_coord
endrem
Const GL_EXT_fog_coord=1
rem
bbdoc: GL Const GL_FOG_COORDINATE_SOURCE_EXT
endrem
Const GL_FOG_COORDINATE_SOURCE_EXT=$8450
rem
bbdoc: GL Const GL_FOG_COORDINATE_EXT
endrem
Const GL_FOG_COORDINATE_EXT=$8451
rem
bbdoc: GL Const GL_FRAGMENT_DEPTH_EXT
endrem
Const GL_FRAGMENT_DEPTH_EXT=$8452
rem
bbdoc: GL Const GL_CURRENT_FOG_COORDINATE_EXT
endrem
Const GL_CURRENT_FOG_COORDINATE_EXT=$8453
rem
bbdoc: GL Const GL_FOG_COORDINATE_ARRAY_TYPE_EXT
endrem
Const GL_FOG_COORDINATE_ARRAY_TYPE_EXT=$8454
rem
bbdoc: GL Const GL_FOG_COORDINATE_ARRAY_STRIDE_EXT
endrem
Const GL_FOG_COORDINATE_ARRAY_STRIDE_EXT=$8455
rem
bbdoc: GL Const GL_FOG_COORDINATE_ARRAY_POINTER_EXT
endrem
Const GL_FOG_COORDINATE_ARRAY_POINTER_EXT=$8456
rem
bbdoc: GL Const GL_FOG_COORDINATE_ARRAY_EXT
endrem
Const GL_FOG_COORDINATE_ARRAY_EXT=$8457
rem
bbdoc: GL Global glFogCoordPointerEXT(type_:Int,stride_:Int,pointer_:Byte Ptr)
endrem
Global glFogCoordPointerEXT(type_:Int,stride_:Int,pointer_:Byte Ptr)="__glewFogCoordPointerEXT"
rem
bbdoc: GL Global glFogCoorddEXT(coord_:Double)
endrem
Global glFogCoorddEXT(coord_:Double)="__glewFogCoorddEXT"
rem
bbdoc: GL Global glFogCoorddvEXT(coord_:Double Ptr)
endrem
Global glFogCoorddvEXT(coord_:Double Ptr)="__glewFogCoorddvEXT"
rem
bbdoc: GL Global glFogCoordfEXT(coord_:Float)
endrem
Global glFogCoordfEXT(coord_:Float)="__glewFogCoordfEXT"
rem
bbdoc: GL Global glFogCoordfvEXT(coord_:Float Ptr)
endrem
Global glFogCoordfvEXT(coord_:Float Ptr)="__glewFogCoordfvEXT"
rem
bbdoc: GL Const GL_EXT_fragment_lighting
endrem
Const GL_EXT_fragment_lighting=1
rem
bbdoc: GL Const GL_FRAGMENT_LIGHTING_EXT
endrem
Const GL_FRAGMENT_LIGHTING_EXT=$8400
rem
bbdoc: GL Const GL_FRAGMENT_COLOR_MATERIAL_EXT
endrem
Const GL_FRAGMENT_COLOR_MATERIAL_EXT=$8401
rem
bbdoc: GL Const GL_FRAGMENT_COLOR_MATERIAL_FACE_EXT
endrem
Const GL_FRAGMENT_COLOR_MATERIAL_FACE_EXT=$8402
rem
bbdoc: GL Const GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_EXT
endrem
Const GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_EXT=$8403
rem
bbdoc: GL Const GL_MAX_FRAGMENT_LIGHTS_EXT
endrem
Const GL_MAX_FRAGMENT_LIGHTS_EXT=$8404
rem
bbdoc: GL Const GL_MAX_ACTIVE_LIGHTS_EXT
endrem
Const GL_MAX_ACTIVE_LIGHTS_EXT=$8405
rem
bbdoc: GL Const GL_CURRENT_RASTER_NORMAL_EXT
endrem
Const GL_CURRENT_RASTER_NORMAL_EXT=$8406
rem
bbdoc: GL Const GL_LIGHT_ENV_MODE_EXT
endrem
Const GL_LIGHT_ENV_MODE_EXT=$8407
rem
bbdoc: GL Const GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_EXT
endrem
Const GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_EXT=$8408
rem
bbdoc: GL Const GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_EXT
endrem
Const GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_EXT=$8409
rem
bbdoc: GL Const GL_FRAGMENT_LIGHT_MODEL_AMBIENT_EXT
endrem
Const GL_FRAGMENT_LIGHT_MODEL_AMBIENT_EXT=$840A
rem
bbdoc: GL Const GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_EXT
endrem
Const GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_EXT=$840B
rem
bbdoc: GL Const GL_FRAGMENT_LIGHT0_EXT
endrem
Const GL_FRAGMENT_LIGHT0_EXT=$840C
rem
bbdoc: GL Const GL_FRAGMENT_LIGHT7_EXT
endrem
Const GL_FRAGMENT_LIGHT7_EXT=$8413
rem
bbdoc: GL Global glFragmentColorMaterialEXT(face_:Int,mode_:Int)
endrem
Global glFragmentColorMaterialEXT(face_:Int,mode_:Int)="__glewFragmentColorMaterialEXT"
rem
bbdoc: GL Global glFragmentLightModelfEXT(pname_:Int,param_:Float)
endrem
Global glFragmentLightModelfEXT(pname_:Int,param_:Float)="__glewFragmentLightModelfEXT"
rem
bbdoc: GL Global glFragmentLightModelfvEXT(pname_:Int,params_:Float Ptr)
endrem
Global glFragmentLightModelfvEXT(pname_:Int,params_:Float Ptr)="__glewFragmentLightModelfvEXT"
rem
bbdoc: GL Global glFragmentLightModeliEXT(pname_:Int,param_:Int)
endrem
Global glFragmentLightModeliEXT(pname_:Int,param_:Int)="__glewFragmentLightModeliEXT"
rem
bbdoc: GL Global glFragmentLightModelivEXT(pname_:Int,params_:Int Ptr)
endrem
Global glFragmentLightModelivEXT(pname_:Int,params_:Int Ptr)="__glewFragmentLightModelivEXT"
rem
bbdoc: GL Global glFragmentLightfEXT(light_:Int,pname_:Int,param_:Float)
endrem
Global glFragmentLightfEXT(light_:Int,pname_:Int,param_:Float)="__glewFragmentLightfEXT"
rem
bbdoc: GL Global glFragmentLightfvEXT(light_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glFragmentLightfvEXT(light_:Int,pname_:Int,params_:Float Ptr)="__glewFragmentLightfvEXT"
rem
bbdoc: GL Global glFragmentLightiEXT(light_:Int,pname_:Int,param_:Int)
endrem
Global glFragmentLightiEXT(light_:Int,pname_:Int,param_:Int)="__glewFragmentLightiEXT"
rem
bbdoc: GL Global glFragmentLightivEXT(light_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glFragmentLightivEXT(light_:Int,pname_:Int,params_:Int Ptr)="__glewFragmentLightivEXT"
rem
bbdoc: GL Global glFragmentMaterialfEXT(face_:Int,pname_:Int,param_:Float)
endrem
Global glFragmentMaterialfEXT(face_:Int,pname_:Int,param_:Float)="__glewFragmentMaterialfEXT"
rem
bbdoc: GL Global glFragmentMaterialfvEXT(face_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glFragmentMaterialfvEXT(face_:Int,pname_:Int,params_:Float Ptr)="__glewFragmentMaterialfvEXT"
rem
bbdoc: GL Global glFragmentMaterialiEXT(face_:Int,pname_:Int,param_:Int)
endrem
Global glFragmentMaterialiEXT(face_:Int,pname_:Int,param_:Int)="__glewFragmentMaterialiEXT"
rem
bbdoc: GL Global glFragmentMaterialivEXT(face_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glFragmentMaterialivEXT(face_:Int,pname_:Int,params_:Int Ptr)="__glewFragmentMaterialivEXT"
rem
bbdoc: GL Global glGetFragmentLightfvEXT(light_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetFragmentLightfvEXT(light_:Int,pname_:Int,params_:Float Ptr)="__glewGetFragmentLightfvEXT"
rem
bbdoc: GL Global glGetFragmentLightivEXT(light_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetFragmentLightivEXT(light_:Int,pname_:Int,params_:Int Ptr)="__glewGetFragmentLightivEXT"
rem
bbdoc: GL Global glGetFragmentMaterialfvEXT(face_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetFragmentMaterialfvEXT(face_:Int,pname_:Int,params_:Float Ptr)="__glewGetFragmentMaterialfvEXT"
rem
bbdoc: GL Global glGetFragmentMaterialivEXT(face_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetFragmentMaterialivEXT(face_:Int,pname_:Int,params_:Int Ptr)="__glewGetFragmentMaterialivEXT"
rem
bbdoc: GL Global glLightEnviEXT(pname_:Int,param_:Int)
endrem
Global glLightEnviEXT(pname_:Int,param_:Int)="__glewLightEnviEXT"
rem
bbdoc: GL Const GL_EXT_framebuffer_blit
endrem
Const GL_EXT_framebuffer_blit=1
rem
bbdoc: GL Const GL_DRAW_FRAMEBUFFER_BINDING_EXT
endrem
Const GL_DRAW_FRAMEBUFFER_BINDING_EXT=$8CA6
rem
bbdoc: GL Const GL_READ_FRAMEBUFFER_EXT
endrem
Const GL_READ_FRAMEBUFFER_EXT=$8CA8
rem
bbdoc: GL Const GL_DRAW_FRAMEBUFFER_EXT
endrem
Const GL_DRAW_FRAMEBUFFER_EXT=$8CA9
rem
bbdoc: GL Const GL_READ_FRAMEBUFFER_BINDING_EXT
endrem
Const GL_READ_FRAMEBUFFER_BINDING_EXT=$8CAA
rem
bbdoc: GL Global glBlitFramebufferEXT(srcX0_:Int,srcY0_:Int,srcX1_:Int,srcY1_:Int,dstX0_:Int,dstY0_:Int,dstX1_:Int,dstY1_:Int,mask_:Int,filter_:Int)
endrem
Global glBlitFramebufferEXT(srcX0_:Int,srcY0_:Int,srcX1_:Int,srcY1_:Int,dstX0_:Int,dstY0_:Int,dstX1_:Int,dstY1_:Int,mask_:Int,filter_:Int)="__glewBlitFramebufferEXT"
rem
bbdoc: GL Const GL_EXT_framebuffer_multisample
endrem
Const GL_EXT_framebuffer_multisample=1
rem
bbdoc: GL Const GL_RENDERBUFFER_SAMPLES_EXT
endrem
Const GL_RENDERBUFFER_SAMPLES_EXT=$8CAB
rem
bbdoc: GL Const GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT
endrem
Const GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT=$8D56
rem
bbdoc: GL Const GL_MAX_SAMPLES_EXT
endrem
Const GL_MAX_SAMPLES_EXT=$8D57
rem
bbdoc: GL Global glRenderbufferStorageMultisampleEXT(target_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int)
endrem
Global glRenderbufferStorageMultisampleEXT(target_:Int,samples_:Int,internalformat_:Int,width_:Int,height_:Int)="__glewRenderbufferStorageMultisampleEXT"
rem
bbdoc: GL Const GL_EXT_framebuffer_multisample_blit_scaled
endrem
Const GL_EXT_framebuffer_multisample_blit_scaled=1
rem
bbdoc: GL Const GL_SCALED_RESOLVE_FASTEST_EXT
endrem
Const GL_SCALED_RESOLVE_FASTEST_EXT=$90BA
rem
bbdoc: GL Const GL_SCALED_RESOLVE_NICEST_EXT
endrem
Const GL_SCALED_RESOLVE_NICEST_EXT=$90BB
rem
bbdoc: GL Const GL_EXT_framebuffer_object
endrem
Const GL_EXT_framebuffer_object=1
rem
bbdoc: GL Const GL_INVALID_FRAMEBUFFER_OPERATION_EXT
endrem
Const GL_INVALID_FRAMEBUFFER_OPERATION_EXT=$0506
rem
bbdoc: GL Const GL_MAX_RENDERBUFFER_SIZE_EXT
endrem
Const GL_MAX_RENDERBUFFER_SIZE_EXT=$84E8
rem
bbdoc: GL Const GL_FRAMEBUFFER_BINDING_EXT
endrem
Const GL_FRAMEBUFFER_BINDING_EXT=$8CA6
rem
bbdoc: GL Const GL_RENDERBUFFER_BINDING_EXT
endrem
Const GL_RENDERBUFFER_BINDING_EXT=$8CA7
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT=$8CD0
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT=$8CD1
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT=$8CD2
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT=$8CD3
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT=$8CD4
rem
bbdoc: GL Const GL_FRAMEBUFFER_COMPLETE_EXT
endrem
Const GL_FRAMEBUFFER_COMPLETE_EXT=$8CD5
rem
bbdoc: GL Const GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT
endrem
Const GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT=$8CD6
rem
bbdoc: GL Const GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT
endrem
Const GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT=$8CD7
rem
bbdoc: GL Const GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT
endrem
Const GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT=$8CD9
rem
bbdoc: GL Const GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT
endrem
Const GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT=$8CDA
rem
bbdoc: GL Const GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT
endrem
Const GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT=$8CDB
rem
bbdoc: GL Const GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT
endrem
Const GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT=$8CDC
rem
bbdoc: GL Const GL_FRAMEBUFFER_UNSUPPORTED_EXT
endrem
Const GL_FRAMEBUFFER_UNSUPPORTED_EXT=$8CDD
rem
bbdoc: GL Const GL_MAX_COLOR_ATTACHMENTS_EXT
endrem
Const GL_MAX_COLOR_ATTACHMENTS_EXT=$8CDF
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT0_EXT
endrem
Const GL_COLOR_ATTACHMENT0_EXT=$8CE0
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT1_EXT
endrem
Const GL_COLOR_ATTACHMENT1_EXT=$8CE1
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT2_EXT
endrem
Const GL_COLOR_ATTACHMENT2_EXT=$8CE2
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT3_EXT
endrem
Const GL_COLOR_ATTACHMENT3_EXT=$8CE3
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT4_EXT
endrem
Const GL_COLOR_ATTACHMENT4_EXT=$8CE4
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT5_EXT
endrem
Const GL_COLOR_ATTACHMENT5_EXT=$8CE5
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT6_EXT
endrem
Const GL_COLOR_ATTACHMENT6_EXT=$8CE6
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT7_EXT
endrem
Const GL_COLOR_ATTACHMENT7_EXT=$8CE7
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT8_EXT
endrem
Const GL_COLOR_ATTACHMENT8_EXT=$8CE8
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT9_EXT
endrem
Const GL_COLOR_ATTACHMENT9_EXT=$8CE9
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT10_EXT
endrem
Const GL_COLOR_ATTACHMENT10_EXT=$8CEA
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT11_EXT
endrem
Const GL_COLOR_ATTACHMENT11_EXT=$8CEB
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT12_EXT
endrem
Const GL_COLOR_ATTACHMENT12_EXT=$8CEC
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT13_EXT
endrem
Const GL_COLOR_ATTACHMENT13_EXT=$8CED
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT14_EXT
endrem
Const GL_COLOR_ATTACHMENT14_EXT=$8CEE
rem
bbdoc: GL Const GL_COLOR_ATTACHMENT15_EXT
endrem
Const GL_COLOR_ATTACHMENT15_EXT=$8CEF
rem
bbdoc: GL Const GL_DEPTH_ATTACHMENT_EXT
endrem
Const GL_DEPTH_ATTACHMENT_EXT=$8D00
rem
bbdoc: GL Const GL_STENCIL_ATTACHMENT_EXT
endrem
Const GL_STENCIL_ATTACHMENT_EXT=$8D20
rem
bbdoc: GL Const GL_FRAMEBUFFER_EXT
endrem
Const GL_FRAMEBUFFER_EXT=$8D40
rem
bbdoc: GL Const GL_RENDERBUFFER_EXT
endrem
Const GL_RENDERBUFFER_EXT=$8D41
rem
bbdoc: GL Const GL_RENDERBUFFER_WIDTH_EXT
endrem
Const GL_RENDERBUFFER_WIDTH_EXT=$8D42
rem
bbdoc: GL Const GL_RENDERBUFFER_HEIGHT_EXT
endrem
Const GL_RENDERBUFFER_HEIGHT_EXT=$8D43
rem
bbdoc: GL Const GL_RENDERBUFFER_INTERNAL_FORMAT_EXT
endrem
Const GL_RENDERBUFFER_INTERNAL_FORMAT_EXT=$8D44
rem
bbdoc: GL Const GL_STENCIL_INDEX1_EXT
endrem
Const GL_STENCIL_INDEX1_EXT=$8D46
rem
bbdoc: GL Const GL_STENCIL_INDEX4_EXT
endrem
Const GL_STENCIL_INDEX4_EXT=$8D47
rem
bbdoc: GL Const GL_STENCIL_INDEX8_EXT
endrem
Const GL_STENCIL_INDEX8_EXT=$8D48
rem
bbdoc: GL Const GL_STENCIL_INDEX16_EXT
endrem
Const GL_STENCIL_INDEX16_EXT=$8D49
rem
bbdoc: GL Const GL_RENDERBUFFER_RED_SIZE_EXT
endrem
Const GL_RENDERBUFFER_RED_SIZE_EXT=$8D50
rem
bbdoc: GL Const GL_RENDERBUFFER_GREEN_SIZE_EXT
endrem
Const GL_RENDERBUFFER_GREEN_SIZE_EXT=$8D51
rem
bbdoc: GL Const GL_RENDERBUFFER_BLUE_SIZE_EXT
endrem
Const GL_RENDERBUFFER_BLUE_SIZE_EXT=$8D52
rem
bbdoc: GL Const GL_RENDERBUFFER_ALPHA_SIZE_EXT
endrem
Const GL_RENDERBUFFER_ALPHA_SIZE_EXT=$8D53
rem
bbdoc: GL Const GL_RENDERBUFFER_DEPTH_SIZE_EXT
endrem
Const GL_RENDERBUFFER_DEPTH_SIZE_EXT=$8D54
rem
bbdoc: GL Const GL_RENDERBUFFER_STENCIL_SIZE_EXT
endrem
Const GL_RENDERBUFFER_STENCIL_SIZE_EXT=$8D55
rem
bbdoc: GL Global glBindFramebufferEXT(target_:Int,framebuffer_:Int)
endrem
Global glBindFramebufferEXT(target_:Int,framebuffer_:Int)="__glewBindFramebufferEXT"
rem
bbdoc: GL Global glBindRenderbufferEXT(target_:Int,renderbuffer_:Int)
endrem
Global glBindRenderbufferEXT(target_:Int,renderbuffer_:Int)="__glewBindRenderbufferEXT"
rem
bbdoc: GL Global glCheckFramebufferStatusEXT:Int(target_:Int)
endrem
Global glCheckFramebufferStatusEXT:Int(target_:Int)="__glewCheckFramebufferStatusEXT"
rem
bbdoc: GL Global glDeleteFramebuffersEXT(n_:Int,framebuffers_:Int Ptr)
endrem
Global glDeleteFramebuffersEXT(n_:Int,framebuffers_:Int Ptr)="__glewDeleteFramebuffersEXT"
rem
bbdoc: GL Global glDeleteRenderbuffersEXT(n_:Int,renderbuffers_:Int Ptr)
endrem
Global glDeleteRenderbuffersEXT(n_:Int,renderbuffers_:Int Ptr)="__glewDeleteRenderbuffersEXT"
rem
bbdoc: GL Global glFramebufferRenderbufferEXT(target_:Int,attachment_:Int,renderbuffertarget_:Int,renderbuffer_:Int)
endrem
Global glFramebufferRenderbufferEXT(target_:Int,attachment_:Int,renderbuffertarget_:Int,renderbuffer_:Int)="__glewFramebufferRenderbufferEXT"
rem
bbdoc: GL Global glFramebufferTexture1DEXT(target_:Int,attachment_:Int,textarget_:Int,texture_:Int,level_:Int)
endrem
Global glFramebufferTexture1DEXT(target_:Int,attachment_:Int,textarget_:Int,texture_:Int,level_:Int)="__glewFramebufferTexture1DEXT"
rem
bbdoc: GL Global glFramebufferTexture2DEXT(target_:Int,attachment_:Int,textarget_:Int,texture_:Int,level_:Int)
endrem
Global glFramebufferTexture2DEXT(target_:Int,attachment_:Int,textarget_:Int,texture_:Int,level_:Int)="__glewFramebufferTexture2DEXT"
rem
bbdoc: GL Global glFramebufferTexture3DEXT(target_:Int,attachment_:Int,textarget_:Int,texture_:Int,level_:Int,zoffset_:Int)
endrem
Global glFramebufferTexture3DEXT(target_:Int,attachment_:Int,textarget_:Int,texture_:Int,level_:Int,zoffset_:Int)="__glewFramebufferTexture3DEXT"
rem
bbdoc: GL Global glGenFramebuffersEXT(n_:Int,framebuffers_:Int Ptr)
endrem
Global glGenFramebuffersEXT(n_:Int,framebuffers_:Int Ptr)="__glewGenFramebuffersEXT"
rem
bbdoc: GL Global glGenRenderbuffersEXT(n_:Int,renderbuffers_:Int Ptr)
endrem
Global glGenRenderbuffersEXT(n_:Int,renderbuffers_:Int Ptr)="__glewGenRenderbuffersEXT"
rem
bbdoc: GL Global glGenerateMipmapEXT(target_:Int)
endrem
Global glGenerateMipmapEXT(target_:Int)="__glewGenerateMipmapEXT"
rem
bbdoc: GL Global glGetFramebufferAttachmentParameterivEXT(target_:Int,attachment_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetFramebufferAttachmentParameterivEXT(target_:Int,attachment_:Int,pname_:Int,params_:Int Ptr)="__glewGetFramebufferAttachmentParameterivEXT"
rem
bbdoc: GL Global glGetRenderbufferParameterivEXT(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetRenderbufferParameterivEXT(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetRenderbufferParameterivEXT"
rem
bbdoc: GL Global glIsFramebufferEXT:Byte(framebuffer_:Int)
endrem
Global glIsFramebufferEXT:Byte(framebuffer_:Int)="__glewIsFramebufferEXT"
rem
bbdoc: GL Global glIsRenderbufferEXT:Byte(renderbuffer_:Int)
endrem
Global glIsRenderbufferEXT:Byte(renderbuffer_:Int)="__glewIsRenderbufferEXT"
rem
bbdoc: GL Global glRenderbufferStorageEXT(target_:Int,internalformat_:Int,width_:Int,height_:Int)
endrem
Global glRenderbufferStorageEXT(target_:Int,internalformat_:Int,width_:Int,height_:Int)="__glewRenderbufferStorageEXT"
rem
bbdoc: GL Const GL_EXT_framebuffer_sRGB
endrem
Const GL_EXT_framebuffer_sRGB=1
rem
bbdoc: GL Const GL_FRAMEBUFFER_SRGB_EXT
endrem
Const GL_FRAMEBUFFER_SRGB_EXT=$8DB9
rem
bbdoc: GL Const GL_FRAMEBUFFER_SRGB_CAPABLE_EXT
endrem
Const GL_FRAMEBUFFER_SRGB_CAPABLE_EXT=$8DBA
rem
bbdoc: GL Const GL_EXT_geometry_shader4
endrem
Const GL_EXT_geometry_shader4=1
rem
bbdoc: GL Const GL_LINES_ADJACENCY_EXT
endrem
Const GL_LINES_ADJACENCY_EXT=$A
rem
bbdoc: GL Const GL_LINE_STRIP_ADJACENCY_EXT
endrem
Const GL_LINE_STRIP_ADJACENCY_EXT=$B
rem
bbdoc: GL Const GL_TRIANGLES_ADJACENCY_EXT
endrem
Const GL_TRIANGLES_ADJACENCY_EXT=$C
rem
bbdoc: GL Const GL_TRIANGLE_STRIP_ADJACENCY_EXT
endrem
Const GL_TRIANGLE_STRIP_ADJACENCY_EXT=$D
rem
bbdoc: GL Const GL_PROGRAM_POINT_SIZE_EXT
endrem
Const GL_PROGRAM_POINT_SIZE_EXT=$8642
rem
bbdoc: GL Const GL_MAX_VARYING_COMPONENTS_EXT
endrem
Const GL_MAX_VARYING_COMPONENTS_EXT=$8B4B
rem
bbdoc: GL Const GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT
endrem
Const GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT=$8C29
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT=$8CD4
rem
bbdoc: GL Const GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT
endrem
Const GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT=$8DA7
rem
bbdoc: GL Const GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT
endrem
Const GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT=$8DA8
rem
bbdoc: GL Const GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT
endrem
Const GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT=$8DA9
rem
bbdoc: GL Const GL_GEOMETRY_SHADER_EXT
endrem
Const GL_GEOMETRY_SHADER_EXT=$8DD9
rem
bbdoc: GL Const GL_GEOMETRY_VERTICES_OUT_EXT
endrem
Const GL_GEOMETRY_VERTICES_OUT_EXT=$8DDA
rem
bbdoc: GL Const GL_GEOMETRY_INPUT_TYPE_EXT
endrem
Const GL_GEOMETRY_INPUT_TYPE_EXT=$8DDB
rem
bbdoc: GL Const GL_GEOMETRY_OUTPUT_TYPE_EXT
endrem
Const GL_GEOMETRY_OUTPUT_TYPE_EXT=$8DDC
rem
bbdoc: GL Const GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT
endrem
Const GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT=$8DDD
rem
bbdoc: GL Const GL_MAX_VERTEX_VARYING_COMPONENTS_EXT
endrem
Const GL_MAX_VERTEX_VARYING_COMPONENTS_EXT=$8DDE
rem
bbdoc: GL Const GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT
endrem
Const GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT=$8DDF
rem
bbdoc: GL Const GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT
endrem
Const GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT=$8DE0
rem
bbdoc: GL Const GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT
endrem
Const GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT=$8DE1
rem
bbdoc: GL Global glFramebufferTextureEXT(target_:Int,attachment_:Int,texture_:Int,level_:Int)
endrem
Global glFramebufferTextureEXT(target_:Int,attachment_:Int,texture_:Int,level_:Int)="__glewFramebufferTextureEXT"
rem
bbdoc: GL Global glFramebufferTextureFaceEXT(target_:Int,attachment_:Int,texture_:Int,level_:Int,face_:Int)
endrem
Global glFramebufferTextureFaceEXT(target_:Int,attachment_:Int,texture_:Int,level_:Int,face_:Int)="__glewFramebufferTextureFaceEXT"
rem
bbdoc: GL Global glProgramParameteriEXT(program_:Int,pname_:Int,value_:Int)
endrem
Global glProgramParameteriEXT(program_:Int,pname_:Int,value_:Int)="__glewProgramParameteriEXT"
rem
bbdoc: GL Const GL_EXT_gpu_program_parameters
endrem
Const GL_EXT_gpu_program_parameters=1
rem
bbdoc: GL Global glProgramEnvParameters4fvEXT(target_:Int,index_:Int,count_:Int,params_:Float Ptr)
endrem
Global glProgramEnvParameters4fvEXT(target_:Int,index_:Int,count_:Int,params_:Float Ptr)="__glewProgramEnvParameters4fvEXT"
rem
bbdoc: GL Global glProgramLocalParameters4fvEXT(target_:Int,index_:Int,count_:Int,params_:Float Ptr)
endrem
Global glProgramLocalParameters4fvEXT(target_:Int,index_:Int,count_:Int,params_:Float Ptr)="__glewProgramLocalParameters4fvEXT"
rem
bbdoc: GL Const GL_EXT_gpu_shader4
endrem
Const GL_EXT_gpu_shader4=1
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_INTEGER_EXT
endrem
Const GL_VERTEX_ATTRIB_ARRAY_INTEGER_EXT=$88FD
rem
bbdoc: GL Const GL_SAMPLER_1D_ARRAY_EXT
endrem
Const GL_SAMPLER_1D_ARRAY_EXT=$8DC0
rem
bbdoc: GL Const GL_SAMPLER_2D_ARRAY_EXT
endrem
Const GL_SAMPLER_2D_ARRAY_EXT=$8DC1
rem
bbdoc: GL Const GL_SAMPLER_BUFFER_EXT
endrem
Const GL_SAMPLER_BUFFER_EXT=$8DC2
rem
bbdoc: GL Const GL_SAMPLER_1D_ARRAY_SHADOW_EXT
endrem
Const GL_SAMPLER_1D_ARRAY_SHADOW_EXT=$8DC3
rem
bbdoc: GL Const GL_SAMPLER_2D_ARRAY_SHADOW_EXT
endrem
Const GL_SAMPLER_2D_ARRAY_SHADOW_EXT=$8DC4
rem
bbdoc: GL Const GL_SAMPLER_CUBE_SHADOW_EXT
endrem
Const GL_SAMPLER_CUBE_SHADOW_EXT=$8DC5
rem
bbdoc: GL Const GL_UNSIGNED_INT_VEC2_EXT
endrem
Const GL_UNSIGNED_INT_VEC2_EXT=$8DC6
rem
bbdoc: GL Const GL_UNSIGNED_INT_VEC3_EXT
endrem
Const GL_UNSIGNED_INT_VEC3_EXT=$8DC7
rem
bbdoc: GL Const GL_UNSIGNED_INT_VEC4_EXT
endrem
Const GL_UNSIGNED_INT_VEC4_EXT=$8DC8
rem
bbdoc: GL Const GL_INT_SAMPLER_1D_EXT
endrem
Const GL_INT_SAMPLER_1D_EXT=$8DC9
rem
bbdoc: GL Const GL_INT_SAMPLER_2D_EXT
endrem
Const GL_INT_SAMPLER_2D_EXT=$8DCA
rem
bbdoc: GL Const GL_INT_SAMPLER_3D_EXT
endrem
Const GL_INT_SAMPLER_3D_EXT=$8DCB
rem
bbdoc: GL Const GL_INT_SAMPLER_CUBE_EXT
endrem
Const GL_INT_SAMPLER_CUBE_EXT=$8DCC
rem
bbdoc: GL Const GL_INT_SAMPLER_2D_RECT_EXT
endrem
Const GL_INT_SAMPLER_2D_RECT_EXT=$8DCD
rem
bbdoc: GL Const GL_INT_SAMPLER_1D_ARRAY_EXT
endrem
Const GL_INT_SAMPLER_1D_ARRAY_EXT=$8DCE
rem
bbdoc: GL Const GL_INT_SAMPLER_2D_ARRAY_EXT
endrem
Const GL_INT_SAMPLER_2D_ARRAY_EXT=$8DCF
rem
bbdoc: GL Const GL_INT_SAMPLER_BUFFER_EXT
endrem
Const GL_INT_SAMPLER_BUFFER_EXT=$8DD0
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_1D_EXT
endrem
Const GL_UNSIGNED_INT_SAMPLER_1D_EXT=$8DD1
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_2D_EXT
endrem
Const GL_UNSIGNED_INT_SAMPLER_2D_EXT=$8DD2
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_3D_EXT
endrem
Const GL_UNSIGNED_INT_SAMPLER_3D_EXT=$8DD3
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_CUBE_EXT
endrem
Const GL_UNSIGNED_INT_SAMPLER_CUBE_EXT=$8DD4
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT
endrem
Const GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT=$8DD5
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT
endrem
Const GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT=$8DD6
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT
endrem
Const GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT=$8DD7
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT
endrem
Const GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT=$8DD8
rem
bbdoc: GL Global glBindFragDataLocationEXT(program_:Int,color_:Int,name_:Byte Ptr)
endrem
Global glBindFragDataLocationEXT(program_:Int,color_:Int,name_:Byte Ptr)="__glewBindFragDataLocationEXT"
rem
bbdoc: GL Global glGetFragDataLocationEXT:Int(program_:Int,name_:Byte Ptr)
endrem
Global glGetFragDataLocationEXT:Int(program_:Int,name_:Byte Ptr)="__glewGetFragDataLocationEXT"
rem
bbdoc: GL Global glGetUniformuivEXT(program_:Int,location_:Int,params_:Int Ptr)
endrem
Global glGetUniformuivEXT(program_:Int,location_:Int,params_:Int Ptr)="__glewGetUniformuivEXT"
rem
bbdoc: GL Global glGetVertexAttribIivEXT(index_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetVertexAttribIivEXT(index_:Int,pname_:Int,params_:Int Ptr)="__glewGetVertexAttribIivEXT"
rem
bbdoc: GL Global glGetVertexAttribIuivEXT(index_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetVertexAttribIuivEXT(index_:Int,pname_:Int,params_:Int Ptr)="__glewGetVertexAttribIuivEXT"
rem
bbdoc: GL Global glUniform1uiEXT(location_:Int,v0_:Int)
endrem
Global glUniform1uiEXT(location_:Int,v0_:Int)="__glewUniform1uiEXT"
rem
bbdoc: GL Global glUniform1uivEXT(location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glUniform1uivEXT(location_:Int,count_:Int,value_:Int Ptr)="__glewUniform1uivEXT"
rem
bbdoc: GL Global glUniform2uiEXT(location_:Int,v0_:Int,v1_:Int)
endrem
Global glUniform2uiEXT(location_:Int,v0_:Int,v1_:Int)="__glewUniform2uiEXT"
rem
bbdoc: GL Global glUniform2uivEXT(location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glUniform2uivEXT(location_:Int,count_:Int,value_:Int Ptr)="__glewUniform2uivEXT"
rem
bbdoc: GL Global glUniform3uiEXT(location_:Int,v0_:Int,v1_:Int,v2_:Int)
endrem
Global glUniform3uiEXT(location_:Int,v0_:Int,v1_:Int,v2_:Int)="__glewUniform3uiEXT"
rem
bbdoc: GL Global glUniform3uivEXT(location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glUniform3uivEXT(location_:Int,count_:Int,value_:Int Ptr)="__glewUniform3uivEXT"
rem
bbdoc: GL Global glUniform4uiEXT(location_:Int,v0_:Int,v1_:Int,v2_:Int,v3_:Int)
endrem
Global glUniform4uiEXT(location_:Int,v0_:Int,v1_:Int,v2_:Int,v3_:Int)="__glewUniform4uiEXT"
rem
bbdoc: GL Global glUniform4uivEXT(location_:Int,count_:Int,value_:Int Ptr)
endrem
Global glUniform4uivEXT(location_:Int,count_:Int,value_:Int Ptr)="__glewUniform4uivEXT"
rem
bbdoc: GL Global glVertexAttribI1iEXT(index_:Int,x_:Int)
endrem
Global glVertexAttribI1iEXT(index_:Int,x_:Int)="__glewVertexAttribI1iEXT"
rem
bbdoc: GL Global glVertexAttribI1ivEXT(index_:Int,v_:Int Ptr)
endrem
Global glVertexAttribI1ivEXT(index_:Int,v_:Int Ptr)="__glewVertexAttribI1ivEXT"
rem
bbdoc: GL Global glVertexAttribI1uiEXT(index_:Int,x_:Int)
endrem
Global glVertexAttribI1uiEXT(index_:Int,x_:Int)="__glewVertexAttribI1uiEXT"
rem
bbdoc: GL Global glVertexAttribI1uivEXT(index_:Int,v_:Int Ptr)
endrem
Global glVertexAttribI1uivEXT(index_:Int,v_:Int Ptr)="__glewVertexAttribI1uivEXT"
rem
bbdoc: GL Global glVertexAttribI2iEXT(index_:Int,x_:Int,y_:Int)
endrem
Global glVertexAttribI2iEXT(index_:Int,x_:Int,y_:Int)="__glewVertexAttribI2iEXT"
rem
bbdoc: GL Global glVertexAttribI2ivEXT(index_:Int,v_:Int Ptr)
endrem
Global glVertexAttribI2ivEXT(index_:Int,v_:Int Ptr)="__glewVertexAttribI2ivEXT"
rem
bbdoc: GL Global glVertexAttribI2uiEXT(index_:Int,x_:Int,y_:Int)
endrem
Global glVertexAttribI2uiEXT(index_:Int,x_:Int,y_:Int)="__glewVertexAttribI2uiEXT"
rem
bbdoc: GL Global glVertexAttribI2uivEXT(index_:Int,v_:Int Ptr)
endrem
Global glVertexAttribI2uivEXT(index_:Int,v_:Int Ptr)="__glewVertexAttribI2uivEXT"
rem
bbdoc: GL Global glVertexAttribI3iEXT(index_:Int,x_:Int,y_:Int,z_:Int)
endrem
Global glVertexAttribI3iEXT(index_:Int,x_:Int,y_:Int,z_:Int)="__glewVertexAttribI3iEXT"
rem
bbdoc: GL Global glVertexAttribI3ivEXT(index_:Int,v_:Int Ptr)
endrem
Global glVertexAttribI3ivEXT(index_:Int,v_:Int Ptr)="__glewVertexAttribI3ivEXT"
rem
bbdoc: GL Global glVertexAttribI3uiEXT(index_:Int,x_:Int,y_:Int,z_:Int)
endrem
Global glVertexAttribI3uiEXT(index_:Int,x_:Int,y_:Int,z_:Int)="__glewVertexAttribI3uiEXT"
rem
bbdoc: GL Global glVertexAttribI3uivEXT(index_:Int,v_:Int Ptr)
endrem
Global glVertexAttribI3uivEXT(index_:Int,v_:Int Ptr)="__glewVertexAttribI3uivEXT"
rem
bbdoc: GL Global glVertexAttribI4bvEXT(index_:Int,v_:Byte Ptr)
endrem
Global glVertexAttribI4bvEXT(index_:Int,v_:Byte Ptr)="__glewVertexAttribI4bvEXT"
rem
bbdoc: GL Global glVertexAttribI4iEXT(index_:Int,x_:Int,y_:Int,z_:Int,w_:Int)
endrem
Global glVertexAttribI4iEXT(index_:Int,x_:Int,y_:Int,z_:Int,w_:Int)="__glewVertexAttribI4iEXT"
rem
bbdoc: GL Global glVertexAttribI4ivEXT(index_:Int,v_:Int Ptr)
endrem
Global glVertexAttribI4ivEXT(index_:Int,v_:Int Ptr)="__glewVertexAttribI4ivEXT"
rem
bbdoc: GL Global glVertexAttribI4svEXT(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttribI4svEXT(index_:Int,v_:Short Ptr)="__glewVertexAttribI4svEXT"
rem
bbdoc: GL Global glVertexAttribI4ubvEXT(index_:Int,v_:Byte Ptr)
endrem
Global glVertexAttribI4ubvEXT(index_:Int,v_:Byte Ptr)="__glewVertexAttribI4ubvEXT"
rem
bbdoc: GL Global glVertexAttribI4uiEXT(index_:Int,x_:Int,y_:Int,z_:Int,w_:Int)
endrem
Global glVertexAttribI4uiEXT(index_:Int,x_:Int,y_:Int,z_:Int,w_:Int)="__glewVertexAttribI4uiEXT"
rem
bbdoc: GL Global glVertexAttribI4uivEXT(index_:Int,v_:Int Ptr)
endrem
Global glVertexAttribI4uivEXT(index_:Int,v_:Int Ptr)="__glewVertexAttribI4uivEXT"
rem
bbdoc: GL Global glVertexAttribI4usvEXT(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttribI4usvEXT(index_:Int,v_:Short Ptr)="__glewVertexAttribI4usvEXT"
rem
bbdoc: GL Global glVertexAttribIPointerEXT(index_:Int,size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)
endrem
Global glVertexAttribIPointerEXT(index_:Int,size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)="__glewVertexAttribIPointerEXT"
rem
bbdoc: GL Const GL_EXT_histogram
endrem
Const GL_EXT_histogram=1
rem
bbdoc: GL Const GL_HISTOGRAM_EXT
endrem
Const GL_HISTOGRAM_EXT=$8024
rem
bbdoc: GL Const GL_PROXY_HISTOGRAM_EXT
endrem
Const GL_PROXY_HISTOGRAM_EXT=$8025
rem
bbdoc: GL Const GL_HISTOGRAM_WIDTH_EXT
endrem
Const GL_HISTOGRAM_WIDTH_EXT=$8026
rem
bbdoc: GL Const GL_HISTOGRAM_FORMAT_EXT
endrem
Const GL_HISTOGRAM_FORMAT_EXT=$8027
rem
bbdoc: GL Const GL_HISTOGRAM_RED_SIZE_EXT
endrem
Const GL_HISTOGRAM_RED_SIZE_EXT=$8028
rem
bbdoc: GL Const GL_HISTOGRAM_GREEN_SIZE_EXT
endrem
Const GL_HISTOGRAM_GREEN_SIZE_EXT=$8029
rem
bbdoc: GL Const GL_HISTOGRAM_BLUE_SIZE_EXT
endrem
Const GL_HISTOGRAM_BLUE_SIZE_EXT=$802A
rem
bbdoc: GL Const GL_HISTOGRAM_ALPHA_SIZE_EXT
endrem
Const GL_HISTOGRAM_ALPHA_SIZE_EXT=$802B
rem
bbdoc: GL Const GL_HISTOGRAM_LUMINANCE_SIZE_EXT
endrem
Const GL_HISTOGRAM_LUMINANCE_SIZE_EXT=$802C
rem
bbdoc: GL Const GL_HISTOGRAM_SINK_EXT
endrem
Const GL_HISTOGRAM_SINK_EXT=$802D
rem
bbdoc: GL Const GL_MINMAX_EXT
endrem
Const GL_MINMAX_EXT=$802E
rem
bbdoc: GL Const GL_MINMAX_FORMAT_EXT
endrem
Const GL_MINMAX_FORMAT_EXT=$802F
rem
bbdoc: GL Const GL_MINMAX_SINK_EXT
endrem
Const GL_MINMAX_SINK_EXT=$8030
rem
bbdoc: GL Global glGetHistogramEXT(target_:Int,reset_:Byte,format_:Int,type_:Int,values_:Byte Ptr)
endrem
Global glGetHistogramEXT(target_:Int,reset_:Byte,format_:Int,type_:Int,values_:Byte Ptr)="__glewGetHistogramEXT"
rem
bbdoc: GL Global glGetHistogramParameterfvEXT(target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetHistogramParameterfvEXT(target_:Int,pname_:Int,params_:Float Ptr)="__glewGetHistogramParameterfvEXT"
rem
bbdoc: GL Global glGetHistogramParameterivEXT(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetHistogramParameterivEXT(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetHistogramParameterivEXT"
rem
bbdoc: GL Global glGetMinmaxEXT(target_:Int,reset_:Byte,format_:Int,type_:Int,values_:Byte Ptr)
endrem
Global glGetMinmaxEXT(target_:Int,reset_:Byte,format_:Int,type_:Int,values_:Byte Ptr)="__glewGetMinmaxEXT"
rem
bbdoc: GL Global glGetMinmaxParameterfvEXT(target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetMinmaxParameterfvEXT(target_:Int,pname_:Int,params_:Float Ptr)="__glewGetMinmaxParameterfvEXT"
rem
bbdoc: GL Global glGetMinmaxParameterivEXT(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetMinmaxParameterivEXT(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetMinmaxParameterivEXT"
rem
bbdoc: GL Global glHistogramEXT(target_:Int,width_:Int,internalformat_:Int,sink_:Byte)
endrem
Global glHistogramEXT(target_:Int,width_:Int,internalformat_:Int,sink_:Byte)="__glewHistogramEXT"
rem
bbdoc: GL Global glMinmaxEXT(target_:Int,internalformat_:Int,sink_:Byte)
endrem
Global glMinmaxEXT(target_:Int,internalformat_:Int,sink_:Byte)="__glewMinmaxEXT"
rem
bbdoc: GL Global glResetHistogramEXT(target_:Int)
endrem
Global glResetHistogramEXT(target_:Int)="__glewResetHistogramEXT"
rem
bbdoc: GL Global glResetMinmaxEXT(target_:Int)
endrem
Global glResetMinmaxEXT(target_:Int)="__glewResetMinmaxEXT"
rem
bbdoc: GL Const GL_EXT_index_array_formats
endrem
Const GL_EXT_index_array_formats=1
rem
bbdoc: GL Const GL_EXT_index_func
endrem
Const GL_EXT_index_func=1
rem
bbdoc: GL Global glIndexFuncEXT(func_:Int,ref_:Float)
endrem
Global glIndexFuncEXT(func_:Int,ref_:Float)="__glewIndexFuncEXT"
rem
bbdoc: GL Const GL_EXT_index_material
endrem
Const GL_EXT_index_material=1
rem
bbdoc: GL Global glIndexMaterialEXT(face_:Int,mode_:Int)
endrem
Global glIndexMaterialEXT(face_:Int,mode_:Int)="__glewIndexMaterialEXT"
rem
bbdoc: GL Const GL_EXT_index_texture
endrem
Const GL_EXT_index_texture=1
rem
bbdoc: GL Const GL_EXT_light_texture
endrem
Const GL_EXT_light_texture=1
rem
bbdoc: GL Const GL_FRAGMENT_MATERIAL_EXT
endrem
Const GL_FRAGMENT_MATERIAL_EXT=$8349
rem
bbdoc: GL Const GL_FRAGMENT_NORMAL_EXT
endrem
Const GL_FRAGMENT_NORMAL_EXT=$834A
rem
bbdoc: GL Const GL_FRAGMENT_COLOR_EXT
endrem
Const GL_FRAGMENT_COLOR_EXT=$834C
rem
bbdoc: GL Const GL_ATTENUATION_EXT
endrem
Const GL_ATTENUATION_EXT=$834D
rem
bbdoc: GL Const GL_SHADOW_ATTENUATION_EXT
endrem
Const GL_SHADOW_ATTENUATION_EXT=$834E
rem
bbdoc: GL Const GL_TEXTURE_APPLICATION_MODE_EXT
endrem
Const GL_TEXTURE_APPLICATION_MODE_EXT=$834F
rem
bbdoc: GL Const GL_TEXTURE_LIGHT_EXT
endrem
Const GL_TEXTURE_LIGHT_EXT=$8350
rem
bbdoc: GL Const GL_TEXTURE_MATERIAL_FACE_EXT
endrem
Const GL_TEXTURE_MATERIAL_FACE_EXT=$8351
rem
bbdoc: GL Const GL_TEXTURE_MATERIAL_PARAMETER_EXT
endrem
Const GL_TEXTURE_MATERIAL_PARAMETER_EXT=$8352
rem
bbdoc: GL Global glApplyTextureEXT(mode_:Int)
endrem
Global glApplyTextureEXT(mode_:Int)="__glewApplyTextureEXT"
rem
bbdoc: GL Global glTextureLightEXT(pname_:Int)
endrem
Global glTextureLightEXT(pname_:Int)="__glewTextureLightEXT"
rem
bbdoc: GL Global glTextureMaterialEXT(face_:Int,mode_:Int)
endrem
Global glTextureMaterialEXT(face_:Int,mode_:Int)="__glewTextureMaterialEXT"
rem
bbdoc: GL Const GL_EXT_misc_attribute
endrem
Const GL_EXT_misc_attribute=1
rem
bbdoc: GL Const GL_EXT_multi_draw_arrays
endrem
Const GL_EXT_multi_draw_arrays=1
rem
bbdoc: GL Global glMultiDrawArraysEXT(mode_:Int,first_:Int Ptr,count_:Int Ptr,primcount_:Int)
endrem
Global glMultiDrawArraysEXT(mode_:Int,first_:Int Ptr,count_:Int Ptr,primcount_:Int)="__glewMultiDrawArraysEXT"
rem
bbdoc: GL Global glMultiDrawElementsEXT(mode_:Int,count_:Int Ptr,type_:Int,indices_:Byte Ptr Ptr,primcount_:Int)
endrem
Global glMultiDrawElementsEXT(mode_:Int,count_:Int Ptr,type_:Int,indices_:Byte Ptr Ptr,primcount_:Int)="__glewMultiDrawElementsEXT"
rem
bbdoc: GL Const GL_EXT_multisample
endrem
Const GL_EXT_multisample=1
rem
bbdoc: GL Const GL_MULTISAMPLE_EXT
endrem
Const GL_MULTISAMPLE_EXT=$809D
rem
bbdoc: GL Const GL_SAMPLE_ALPHA_TO_MASK_EXT
endrem
Const GL_SAMPLE_ALPHA_TO_MASK_EXT=$809E
rem
bbdoc: GL Const GL_SAMPLE_ALPHA_TO_ONE_EXT
endrem
Const GL_SAMPLE_ALPHA_TO_ONE_EXT=$809F
rem
bbdoc: GL Const GL_SAMPLE_MASK_EXT
endrem
Const GL_SAMPLE_MASK_EXT=$80A0
rem
bbdoc: GL Const GL_1PASS_EXT
endrem
Const GL_1PASS_EXT=$80A1
rem
bbdoc: GL Const GL_2PASS_0_EXT
endrem
Const GL_2PASS_0_EXT=$80A2
rem
bbdoc: GL Const GL_2PASS_1_EXT
endrem
Const GL_2PASS_1_EXT=$80A3
rem
bbdoc: GL Const GL_4PASS_0_EXT
endrem
Const GL_4PASS_0_EXT=$80A4
rem
bbdoc: GL Const GL_4PASS_1_EXT
endrem
Const GL_4PASS_1_EXT=$80A5
rem
bbdoc: GL Const GL_4PASS_2_EXT
endrem
Const GL_4PASS_2_EXT=$80A6
rem
bbdoc: GL Const GL_4PASS_3_EXT
endrem
Const GL_4PASS_3_EXT=$80A7
rem
bbdoc: GL Const GL_SAMPLE_BUFFERS_EXT
endrem
Const GL_SAMPLE_BUFFERS_EXT=$80A8
rem
bbdoc: GL Const GL_SAMPLES_EXT
endrem
Const GL_SAMPLES_EXT=$80A9
rem
bbdoc: GL Const GL_SAMPLE_MASK_VALUE_EXT
endrem
Const GL_SAMPLE_MASK_VALUE_EXT=$80AA
rem
bbdoc: GL Const GL_SAMPLE_MASK_INVERT_EXT
endrem
Const GL_SAMPLE_MASK_INVERT_EXT=$80AB
rem
bbdoc: GL Const GL_SAMPLE_PATTERN_EXT
endrem
Const GL_SAMPLE_PATTERN_EXT=$80AC
rem
bbdoc: GL Const GL_MULTISAMPLE_BIT_EXT
endrem
Const GL_MULTISAMPLE_BIT_EXT=$20000000
rem
bbdoc: GL Global glSampleMaskEXT(value_:Float,invert_:Byte)
endrem
Global glSampleMaskEXT(value_:Float,invert_:Byte)="__glewSampleMaskEXT"
rem
bbdoc: GL Global glSamplePatternEXT(pattern_:Int)
endrem
Global glSamplePatternEXT(pattern_:Int)="__glewSamplePatternEXT"
rem
bbdoc: GL Const GL_EXT_packed_depth_stencil
endrem
Const GL_EXT_packed_depth_stencil=1
rem
bbdoc: GL Const GL_DEPTH_STENCIL_EXT
endrem
Const GL_DEPTH_STENCIL_EXT=$84F9
rem
bbdoc: GL Const GL_UNSIGNED_INT_24_8_EXT
endrem
Const GL_UNSIGNED_INT_24_8_EXT=$84FA
rem
bbdoc: GL Const GL_DEPTH24_STENCIL8_EXT
endrem
Const GL_DEPTH24_STENCIL8_EXT=$88F0
rem
bbdoc: GL Const GL_TEXTURE_STENCIL_SIZE_EXT
endrem
Const GL_TEXTURE_STENCIL_SIZE_EXT=$88F1
rem
bbdoc: GL Const GL_EXT_packed_float
endrem
Const GL_EXT_packed_float=1
rem
bbdoc: GL Const GL_R11F_G11F_B10F_EXT
endrem
Const GL_R11F_G11F_B10F_EXT=$8C3A
rem
bbdoc: GL Const GL_UNSIGNED_INT_10F_11F_11F_REV_EXT
endrem
Const GL_UNSIGNED_INT_10F_11F_11F_REV_EXT=$8C3B
rem
bbdoc: GL Const GL_RGBA_SIGNED_COMPONENTS_EXT
endrem
Const GL_RGBA_SIGNED_COMPONENTS_EXT=$8C3C
rem
bbdoc: GL Const GL_EXT_packed_pixels
endrem
Const GL_EXT_packed_pixels=1
rem
bbdoc: GL Const GL_UNSIGNED_BYTE_3_3_2_EXT
endrem
Const GL_UNSIGNED_BYTE_3_3_2_EXT=$8032
rem
bbdoc: GL Const GL_UNSIGNED_SHORT_4_4_4_4_EXT
endrem
Const GL_UNSIGNED_SHORT_4_4_4_4_EXT=$8033
rem
bbdoc: GL Const GL_UNSIGNED_SHORT_5_5_5_1_EXT
endrem
Const GL_UNSIGNED_SHORT_5_5_5_1_EXT=$8034
rem
bbdoc: GL Const GL_UNSIGNED_INT_8_8_8_8_EXT
endrem
Const GL_UNSIGNED_INT_8_8_8_8_EXT=$8035
rem
bbdoc: GL Const GL_UNSIGNED_INT_10_10_10_2_EXT
endrem
Const GL_UNSIGNED_INT_10_10_10_2_EXT=$8036
rem
bbdoc: GL Const GL_EXT_paletted_texture
endrem
Const GL_EXT_paletted_texture=1
rem
bbdoc: GL Const GL_COLOR_TABLE_FORMAT_EXT
endrem
Const GL_COLOR_TABLE_FORMAT_EXT=$80D8
rem
bbdoc: GL Const GL_COLOR_TABLE_WIDTH_EXT
endrem
Const GL_COLOR_TABLE_WIDTH_EXT=$80D9
rem
bbdoc: GL Const GL_COLOR_TABLE_RED_SIZE_EXT
endrem
Const GL_COLOR_TABLE_RED_SIZE_EXT=$80DA
rem
bbdoc: GL Const GL_COLOR_TABLE_GREEN_SIZE_EXT
endrem
Const GL_COLOR_TABLE_GREEN_SIZE_EXT=$80DB
rem
bbdoc: GL Const GL_COLOR_TABLE_BLUE_SIZE_EXT
endrem
Const GL_COLOR_TABLE_BLUE_SIZE_EXT=$80DC
rem
bbdoc: GL Const GL_COLOR_TABLE_ALPHA_SIZE_EXT
endrem
Const GL_COLOR_TABLE_ALPHA_SIZE_EXT=$80DD
rem
bbdoc: GL Const GL_COLOR_TABLE_LUMINANCE_SIZE_EXT
endrem
Const GL_COLOR_TABLE_LUMINANCE_SIZE_EXT=$80DE
rem
bbdoc: GL Const GL_COLOR_TABLE_INTENSITY_SIZE_EXT
endrem
Const GL_COLOR_TABLE_INTENSITY_SIZE_EXT=$80DF
rem
bbdoc: GL Const GL_TEXTURE_INDEX_SIZE_EXT
endrem
Const GL_TEXTURE_INDEX_SIZE_EXT=$80ED
rem
bbdoc: GL Global glColorTableEXT(target_:Int,internalFormat_:Int,width_:Int,format_:Int,type_:Int,data_:Byte Ptr)
endrem
Global glColorTableEXT(target_:Int,internalFormat_:Int,width_:Int,format_:Int,type_:Int,data_:Byte Ptr)="__glewColorTableEXT"
rem
bbdoc: GL Global glGetColorTableEXT(target_:Int,format_:Int,type_:Int,data_:Byte Ptr)
endrem
Global glGetColorTableEXT(target_:Int,format_:Int,type_:Int,data_:Byte Ptr)="__glewGetColorTableEXT"
rem
bbdoc: GL Global glGetColorTableParameterfvEXT(target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetColorTableParameterfvEXT(target_:Int,pname_:Int,params_:Float Ptr)="__glewGetColorTableParameterfvEXT"
rem
bbdoc: GL Global glGetColorTableParameterivEXT(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetColorTableParameterivEXT(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetColorTableParameterivEXT"
rem
bbdoc: GL Const GL_EXT_pixel_buffer_object
endrem
Const GL_EXT_pixel_buffer_object=1
rem
bbdoc: GL Const GL_PIXEL_PACK_BUFFER_EXT
endrem
Const GL_PIXEL_PACK_BUFFER_EXT=$88EB
rem
bbdoc: GL Const GL_PIXEL_UNPACK_BUFFER_EXT
endrem
Const GL_PIXEL_UNPACK_BUFFER_EXT=$88EC
rem
bbdoc: GL Const GL_PIXEL_PACK_BUFFER_BINDING_EXT
endrem
Const GL_PIXEL_PACK_BUFFER_BINDING_EXT=$88ED
rem
bbdoc: GL Const GL_PIXEL_UNPACK_BUFFER_BINDING_EXT
endrem
Const GL_PIXEL_UNPACK_BUFFER_BINDING_EXT=$88EF
rem
bbdoc: GL Const GL_EXT_pixel_transform
endrem
Const GL_EXT_pixel_transform=1
rem
bbdoc: GL Const GL_PIXEL_TRANSFORM_2D_EXT
endrem
Const GL_PIXEL_TRANSFORM_2D_EXT=$8330
rem
bbdoc: GL Const GL_PIXEL_MAG_FILTER_EXT
endrem
Const GL_PIXEL_MAG_FILTER_EXT=$8331
rem
bbdoc: GL Const GL_PIXEL_MIN_FILTER_EXT
endrem
Const GL_PIXEL_MIN_FILTER_EXT=$8332
rem
bbdoc: GL Const GL_PIXEL_CUBIC_WEIGHT_EXT
endrem
Const GL_PIXEL_CUBIC_WEIGHT_EXT=$8333
rem
bbdoc: GL Const GL_CUBIC_EXT
endrem
Const GL_CUBIC_EXT=$8334
rem
bbdoc: GL Const GL_AVERAGE_EXT
endrem
Const GL_AVERAGE_EXT=$8335
rem
bbdoc: GL Const GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT
endrem
Const GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT=$8336
rem
bbdoc: GL Const GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT
endrem
Const GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT=$8337
rem
bbdoc: GL Const GL_PIXEL_TRANSFORM_2D_MATRIX_EXT
endrem
Const GL_PIXEL_TRANSFORM_2D_MATRIX_EXT=$8338
rem
bbdoc: GL Global glGetPixelTransformParameterfvEXT(target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetPixelTransformParameterfvEXT(target_:Int,pname_:Int,params_:Float Ptr)="__glewGetPixelTransformParameterfvEXT"
rem
bbdoc: GL Global glGetPixelTransformParameterivEXT(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetPixelTransformParameterivEXT(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetPixelTransformParameterivEXT"
rem
bbdoc: GL Global glPixelTransformParameterfEXT(target_:Int,pname_:Int,param_:Float)
endrem
Global glPixelTransformParameterfEXT(target_:Int,pname_:Int,param_:Float)="__glewPixelTransformParameterfEXT"
rem
bbdoc: GL Global glPixelTransformParameterfvEXT(target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glPixelTransformParameterfvEXT(target_:Int,pname_:Int,params_:Float Ptr)="__glewPixelTransformParameterfvEXT"
rem
bbdoc: GL Global glPixelTransformParameteriEXT(target_:Int,pname_:Int,param_:Int)
endrem
Global glPixelTransformParameteriEXT(target_:Int,pname_:Int,param_:Int)="__glewPixelTransformParameteriEXT"
rem
bbdoc: GL Global glPixelTransformParameterivEXT(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glPixelTransformParameterivEXT(target_:Int,pname_:Int,params_:Int Ptr)="__glewPixelTransformParameterivEXT"
rem
bbdoc: GL Const GL_EXT_pixel_transform_color_table
endrem
Const GL_EXT_pixel_transform_color_table=1
rem
bbdoc: GL Const GL_EXT_point_parameters
endrem
Const GL_EXT_point_parameters=1
rem
bbdoc: GL Const GL_POINT_SIZE_MIN_EXT
endrem
Const GL_POINT_SIZE_MIN_EXT=$8126
rem
bbdoc: GL Const GL_POINT_SIZE_MAX_EXT
endrem
Const GL_POINT_SIZE_MAX_EXT=$8127
rem
bbdoc: GL Const GL_POINT_FADE_THRESHOLD_SIZE_EXT
endrem
Const GL_POINT_FADE_THRESHOLD_SIZE_EXT=$8128
rem
bbdoc: GL Const GL_DISTANCE_ATTENUATION_EXT
endrem
Const GL_DISTANCE_ATTENUATION_EXT=$8129
rem
bbdoc: GL Global glPointParameterfEXT(pname_:Int,param_:Float)
endrem
Global glPointParameterfEXT(pname_:Int,param_:Float)="__glewPointParameterfEXT"
rem
bbdoc: GL Global glPointParameterfvEXT(pname_:Int,params_:Float Ptr)
endrem
Global glPointParameterfvEXT(pname_:Int,params_:Float Ptr)="__glewPointParameterfvEXT"
rem
bbdoc: GL Const GL_EXT_polygon_offset
endrem
Const GL_EXT_polygon_offset=1
rem
bbdoc: GL Const GL_POLYGON_OFFSET_EXT
endrem
Const GL_POLYGON_OFFSET_EXT=$8037
rem
bbdoc: GL Const GL_POLYGON_OFFSET_FACTOR_EXT
endrem
Const GL_POLYGON_OFFSET_FACTOR_EXT=$8038
rem
bbdoc: GL Const GL_POLYGON_OFFSET_BIAS_EXT
endrem
Const GL_POLYGON_OFFSET_BIAS_EXT=$8039
rem
bbdoc: GL Global glPolygonOffsetEXT(factor_:Float,bias_:Float)
endrem
Global glPolygonOffsetEXT(factor_:Float,bias_:Float)="__glewPolygonOffsetEXT"
rem
bbdoc: GL Const GL_EXT_provoking_vertex
endrem
Const GL_EXT_provoking_vertex=1
rem
bbdoc: GL Const GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT
endrem
Const GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT=$8E4C
rem
bbdoc: GL Const GL_FIRST_VERTEX_CONVENTION_EXT
endrem
Const GL_FIRST_VERTEX_CONVENTION_EXT=$8E4D
rem
bbdoc: GL Const GL_LAST_VERTEX_CONVENTION_EXT
endrem
Const GL_LAST_VERTEX_CONVENTION_EXT=$8E4E
rem
bbdoc: GL Const GL_PROVOKING_VERTEX_EXT
endrem
Const GL_PROVOKING_VERTEX_EXT=$8E4F
rem
bbdoc: GL Global glProvokingVertexEXT(mode_:Int)
endrem
Global glProvokingVertexEXT(mode_:Int)="__glewProvokingVertexEXT"
rem
bbdoc: GL Const GL_EXT_rescale_normal
endrem
Const GL_EXT_rescale_normal=1
rem
bbdoc: GL Const GL_RESCALE_NORMAL_EXT
endrem
Const GL_RESCALE_NORMAL_EXT=$803A
rem
bbdoc: GL Const GL_EXT_scene_marker
endrem
Const GL_EXT_scene_marker=1
rem
bbdoc: GL Global glBeginSceneEXT()
endrem
Global glBeginSceneEXT()="__glewBeginSceneEXT"
rem
bbdoc: GL Global glEndSceneEXT()
endrem
Global glEndSceneEXT()="__glewEndSceneEXT"
rem
bbdoc: GL Const GL_EXT_secondary_color
endrem
Const GL_EXT_secondary_color=1
rem
bbdoc: GL Const GL_COLOR_SUM_EXT
endrem
Const GL_COLOR_SUM_EXT=$8458
rem
bbdoc: GL Const GL_CURRENT_SECONDARY_COLOR_EXT
endrem
Const GL_CURRENT_SECONDARY_COLOR_EXT=$8459
rem
bbdoc: GL Const GL_SECONDARY_COLOR_ARRAY_SIZE_EXT
endrem
Const GL_SECONDARY_COLOR_ARRAY_SIZE_EXT=$845A
rem
bbdoc: GL Const GL_SECONDARY_COLOR_ARRAY_TYPE_EXT
endrem
Const GL_SECONDARY_COLOR_ARRAY_TYPE_EXT=$845B
rem
bbdoc: GL Const GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT
endrem
Const GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT=$845C
rem
bbdoc: GL Const GL_SECONDARY_COLOR_ARRAY_POINTER_EXT
endrem
Const GL_SECONDARY_COLOR_ARRAY_POINTER_EXT=$845D
rem
bbdoc: GL Const GL_SECONDARY_COLOR_ARRAY_EXT
endrem
Const GL_SECONDARY_COLOR_ARRAY_EXT=$845E
rem
bbdoc: GL Global glSecondaryColor3bEXT(red_:Byte,green_:Byte,blue_:Byte)
endrem
Global glSecondaryColor3bEXT(red_:Byte,green_:Byte,blue_:Byte)="__glewSecondaryColor3bEXT"
rem
bbdoc: GL Global glSecondaryColor3bvEXT(v_:Byte Ptr)
endrem
Global glSecondaryColor3bvEXT(v_:Byte Ptr)="__glewSecondaryColor3bvEXT"
rem
bbdoc: GL Global glSecondaryColor3dEXT(red_:Double,green_:Double,blue_:Double)
endrem
Global glSecondaryColor3dEXT(red_:Double,green_:Double,blue_:Double)="__glewSecondaryColor3dEXT"
rem
bbdoc: GL Global glSecondaryColor3dvEXT(v_:Double Ptr)
endrem
Global glSecondaryColor3dvEXT(v_:Double Ptr)="__glewSecondaryColor3dvEXT"
rem
bbdoc: GL Global glSecondaryColor3fEXT(red_:Float,green_:Float,blue_:Float)
endrem
Global glSecondaryColor3fEXT(red_:Float,green_:Float,blue_:Float)="__glewSecondaryColor3fEXT"
rem
bbdoc: GL Global glSecondaryColor3fvEXT(v_:Float Ptr)
endrem
Global glSecondaryColor3fvEXT(v_:Float Ptr)="__glewSecondaryColor3fvEXT"
rem
bbdoc: GL Global glSecondaryColor3iEXT(red_:Int,green_:Int,blue_:Int)
endrem
Global glSecondaryColor3iEXT(red_:Int,green_:Int,blue_:Int)="__glewSecondaryColor3iEXT"
rem
bbdoc: GL Global glSecondaryColor3ivEXT(v_:Int Ptr)
endrem
Global glSecondaryColor3ivEXT(v_:Int Ptr)="__glewSecondaryColor3ivEXT"
rem
bbdoc: GL Global glSecondaryColor3sEXT(red_:Short,green_:Short,blue_:Short)
endrem
Global glSecondaryColor3sEXT(red_:Short,green_:Short,blue_:Short)="__glewSecondaryColor3sEXT"
rem
bbdoc: GL Global glSecondaryColor3svEXT(v_:Short Ptr)
endrem
Global glSecondaryColor3svEXT(v_:Short Ptr)="__glewSecondaryColor3svEXT"
rem
bbdoc: GL Global glSecondaryColor3ubEXT(red_:Byte,green_:Byte,blue_:Byte)
endrem
Global glSecondaryColor3ubEXT(red_:Byte,green_:Byte,blue_:Byte)="__glewSecondaryColor3ubEXT"
rem
bbdoc: GL Global glSecondaryColor3ubvEXT(v_:Byte Ptr)
endrem
Global glSecondaryColor3ubvEXT(v_:Byte Ptr)="__glewSecondaryColor3ubvEXT"
rem
bbdoc: GL Global glSecondaryColor3uiEXT(red_:Int,green_:Int,blue_:Int)
endrem
Global glSecondaryColor3uiEXT(red_:Int,green_:Int,blue_:Int)="__glewSecondaryColor3uiEXT"
rem
bbdoc: GL Global glSecondaryColor3uivEXT(v_:Int Ptr)
endrem
Global glSecondaryColor3uivEXT(v_:Int Ptr)="__glewSecondaryColor3uivEXT"
rem
bbdoc: GL Global glSecondaryColor3usEXT(red_:Short,green_:Short,blue_:Short)
endrem
Global glSecondaryColor3usEXT(red_:Short,green_:Short,blue_:Short)="__glewSecondaryColor3usEXT"
rem
bbdoc: GL Global glSecondaryColor3usvEXT(v_:Short Ptr)
endrem
Global glSecondaryColor3usvEXT(v_:Short Ptr)="__glewSecondaryColor3usvEXT"
rem
bbdoc: GL Global glSecondaryColorPointerEXT(size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)
endrem
Global glSecondaryColorPointerEXT(size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)="__glewSecondaryColorPointerEXT"
rem
bbdoc: GL Const GL_EXT_separate_shader_objects
endrem
Const GL_EXT_separate_shader_objects=1
rem
bbdoc: GL Const GL_ACTIVE_PROGRAM_EXT
endrem
Const GL_ACTIVE_PROGRAM_EXT=$8B8D
rem
bbdoc: GL Global glActiveProgramEXT(program_:Int)
endrem
Global glActiveProgramEXT(program_:Int)="__glewActiveProgramEXT"
rem
bbdoc: GL Global glCreateShaderProgramEXT:Int(type_:Int,string_:Byte Ptr)
endrem
Global glCreateShaderProgramEXT:Int(type_:Int,string_:Byte Ptr)="__glewCreateShaderProgramEXT"
rem
bbdoc: GL Global glUseShaderProgramEXT(type_:Int,program_:Int)
endrem
Global glUseShaderProgramEXT(type_:Int,program_:Int)="__glewUseShaderProgramEXT"
rem
bbdoc: GL Const GL_EXT_separate_specular_color
endrem
Const GL_EXT_separate_specular_color=1
rem
bbdoc: GL Const GL_LIGHT_MODEL_COLOR_CONTROL_EXT
endrem
Const GL_LIGHT_MODEL_COLOR_CONTROL_EXT=$81F8
rem
bbdoc: GL Const GL_SINGLE_COLOR_EXT
endrem
Const GL_SINGLE_COLOR_EXT=$81F9
rem
bbdoc: GL Const GL_SEPARATE_SPECULAR_COLOR_EXT
endrem
Const GL_SEPARATE_SPECULAR_COLOR_EXT=$81FA
rem
bbdoc: GL Const GL_EXT_shader_image_load_formatted
endrem
Const GL_EXT_shader_image_load_formatted=1
rem
bbdoc: GL Const GL_EXT_shader_image_load_store
endrem
Const GL_EXT_shader_image_load_store=1
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT
endrem
Const GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT=$00000001
rem
bbdoc: GL Const GL_ELEMENT_ARRAY_BARRIER_BIT_EXT
endrem
Const GL_ELEMENT_ARRAY_BARRIER_BIT_EXT=$00000002
rem
bbdoc: GL Const GL_UNIFORM_BARRIER_BIT_EXT
endrem
Const GL_UNIFORM_BARRIER_BIT_EXT=$00000004
rem
bbdoc: GL Const GL_TEXTURE_FETCH_BARRIER_BIT_EXT
endrem
Const GL_TEXTURE_FETCH_BARRIER_BIT_EXT=$00000008
rem
bbdoc: GL Const GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT
endrem
Const GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT=$00000020
rem
bbdoc: GL Const GL_COMMAND_BARRIER_BIT_EXT
endrem
Const GL_COMMAND_BARRIER_BIT_EXT=$00000040
rem
bbdoc: GL Const GL_PIXEL_BUFFER_BARRIER_BIT_EXT
endrem
Const GL_PIXEL_BUFFER_BARRIER_BIT_EXT=$00000080
rem
bbdoc: GL Const GL_TEXTURE_UPDATE_BARRIER_BIT_EXT
endrem
Const GL_TEXTURE_UPDATE_BARRIER_BIT_EXT=$00000100
rem
bbdoc: GL Const GL_BUFFER_UPDATE_BARRIER_BIT_EXT
endrem
Const GL_BUFFER_UPDATE_BARRIER_BIT_EXT=$00000200
rem
bbdoc: GL Const GL_FRAMEBUFFER_BARRIER_BIT_EXT
endrem
Const GL_FRAMEBUFFER_BARRIER_BIT_EXT=$00000400
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT
endrem
Const GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT=$00000800
rem
bbdoc: GL Const GL_ATOMIC_COUNTER_BARRIER_BIT_EXT
endrem
Const GL_ATOMIC_COUNTER_BARRIER_BIT_EXT=$00001000
rem
bbdoc: GL Const GL_MAX_IMAGE_UNITS_EXT
endrem
Const GL_MAX_IMAGE_UNITS_EXT=$8F38
rem
bbdoc: GL Const GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT
endrem
Const GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT=$8F39
rem
bbdoc: GL Const GL_IMAGE_BINDING_NAME_EXT
endrem
Const GL_IMAGE_BINDING_NAME_EXT=$8F3A
rem
bbdoc: GL Const GL_IMAGE_BINDING_LEVEL_EXT
endrem
Const GL_IMAGE_BINDING_LEVEL_EXT=$8F3B
rem
bbdoc: GL Const GL_IMAGE_BINDING_LAYERED_EXT
endrem
Const GL_IMAGE_BINDING_LAYERED_EXT=$8F3C
rem
bbdoc: GL Const GL_IMAGE_BINDING_LAYER_EXT
endrem
Const GL_IMAGE_BINDING_LAYER_EXT=$8F3D
rem
bbdoc: GL Const GL_IMAGE_BINDING_ACCESS_EXT
endrem
Const GL_IMAGE_BINDING_ACCESS_EXT=$8F3E
rem
bbdoc: GL Const GL_IMAGE_1D_EXT
endrem
Const GL_IMAGE_1D_EXT=$904C
rem
bbdoc: GL Const GL_IMAGE_2D_EXT
endrem
Const GL_IMAGE_2D_EXT=$904D
rem
bbdoc: GL Const GL_IMAGE_3D_EXT
endrem
Const GL_IMAGE_3D_EXT=$904E
rem
bbdoc: GL Const GL_IMAGE_2D_RECT_EXT
endrem
Const GL_IMAGE_2D_RECT_EXT=$904F
rem
bbdoc: GL Const GL_IMAGE_CUBE_EXT
endrem
Const GL_IMAGE_CUBE_EXT=$9050
rem
bbdoc: GL Const GL_IMAGE_BUFFER_EXT
endrem
Const GL_IMAGE_BUFFER_EXT=$9051
rem
bbdoc: GL Const GL_IMAGE_1D_ARRAY_EXT
endrem
Const GL_IMAGE_1D_ARRAY_EXT=$9052
rem
bbdoc: GL Const GL_IMAGE_2D_ARRAY_EXT
endrem
Const GL_IMAGE_2D_ARRAY_EXT=$9053
rem
bbdoc: GL Const GL_IMAGE_CUBE_MAP_ARRAY_EXT
endrem
Const GL_IMAGE_CUBE_MAP_ARRAY_EXT=$9054
rem
bbdoc: GL Const GL_IMAGE_2D_MULTISAMPLE_EXT
endrem
Const GL_IMAGE_2D_MULTISAMPLE_EXT=$9055
rem
bbdoc: GL Const GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT
endrem
Const GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT=$9056
rem
bbdoc: GL Const GL_INT_IMAGE_1D_EXT
endrem
Const GL_INT_IMAGE_1D_EXT=$9057
rem
bbdoc: GL Const GL_INT_IMAGE_2D_EXT
endrem
Const GL_INT_IMAGE_2D_EXT=$9058
rem
bbdoc: GL Const GL_INT_IMAGE_3D_EXT
endrem
Const GL_INT_IMAGE_3D_EXT=$9059
rem
bbdoc: GL Const GL_INT_IMAGE_2D_RECT_EXT
endrem
Const GL_INT_IMAGE_2D_RECT_EXT=$905A
rem
bbdoc: GL Const GL_INT_IMAGE_CUBE_EXT
endrem
Const GL_INT_IMAGE_CUBE_EXT=$905B
rem
bbdoc: GL Const GL_INT_IMAGE_BUFFER_EXT
endrem
Const GL_INT_IMAGE_BUFFER_EXT=$905C
rem
bbdoc: GL Const GL_INT_IMAGE_1D_ARRAY_EXT
endrem
Const GL_INT_IMAGE_1D_ARRAY_EXT=$905D
rem
bbdoc: GL Const GL_INT_IMAGE_2D_ARRAY_EXT
endrem
Const GL_INT_IMAGE_2D_ARRAY_EXT=$905E
rem
bbdoc: GL Const GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT
endrem
Const GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT=$905F
rem
bbdoc: GL Const GL_INT_IMAGE_2D_MULTISAMPLE_EXT
endrem
Const GL_INT_IMAGE_2D_MULTISAMPLE_EXT=$9060
rem
bbdoc: GL Const GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT
endrem
Const GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT=$9061
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_1D_EXT
endrem
Const GL_UNSIGNED_INT_IMAGE_1D_EXT=$9062
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_2D_EXT
endrem
Const GL_UNSIGNED_INT_IMAGE_2D_EXT=$9063
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_3D_EXT
endrem
Const GL_UNSIGNED_INT_IMAGE_3D_EXT=$9064
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT
endrem
Const GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT=$9065
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_CUBE_EXT
endrem
Const GL_UNSIGNED_INT_IMAGE_CUBE_EXT=$9066
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_BUFFER_EXT
endrem
Const GL_UNSIGNED_INT_IMAGE_BUFFER_EXT=$9067
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT
endrem
Const GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT=$9068
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT
endrem
Const GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT=$9069
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT
endrem
Const GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT=$906A
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT
endrem
Const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT=$906B
rem
bbdoc: GL Const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT
endrem
Const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT=$906C
rem
bbdoc: GL Const GL_MAX_IMAGE_SAMPLES_EXT
endrem
Const GL_MAX_IMAGE_SAMPLES_EXT=$906D
rem
bbdoc: GL Const GL_IMAGE_BINDING_FORMAT_EXT
endrem
Const GL_IMAGE_BINDING_FORMAT_EXT=$906E
rem
bbdoc: GL Const GL_ALL_BARRIER_BITS_EXT
endrem
Const GL_ALL_BARRIER_BITS_EXT=$FFFFFFFF
rem
bbdoc: GL Global glBindImageTextureEXT(index_:Int,texture_:Int,level_:Int,layered_:Byte,layer_:Int,access_:Int,format_:Int)
endrem
Global glBindImageTextureEXT(index_:Int,texture_:Int,level_:Int,layered_:Byte,layer_:Int,access_:Int,format_:Int)="__glewBindImageTextureEXT"
rem
bbdoc: GL Global glMemoryBarrierEXT(barriers_:Int)
endrem
Global glMemoryBarrierEXT(barriers_:Int)="__glewMemoryBarrierEXT"
rem
bbdoc: GL Const GL_EXT_shader_integer_mix
endrem
Const GL_EXT_shader_integer_mix=1
rem
bbdoc: GL Const GL_EXT_shadow_funcs
endrem
Const GL_EXT_shadow_funcs=1
rem
bbdoc: GL Const GL_EXT_shared_texture_palette
endrem
Const GL_EXT_shared_texture_palette=1
rem
bbdoc: GL Const GL_SHARED_TEXTURE_PALETTE_EXT
endrem
Const GL_SHARED_TEXTURE_PALETTE_EXT=$81FB
rem
bbdoc: GL Const GL_EXT_stencil_clear_tag
endrem
Const GL_EXT_stencil_clear_tag=1
rem
bbdoc: GL Const GL_STENCIL_TAG_BITS_EXT
endrem
Const GL_STENCIL_TAG_BITS_EXT=$88F2
rem
bbdoc: GL Const GL_STENCIL_CLEAR_TAG_VALUE_EXT
endrem
Const GL_STENCIL_CLEAR_TAG_VALUE_EXT=$88F3
rem
bbdoc: GL Const GL_EXT_stencil_two_side
endrem
Const GL_EXT_stencil_two_side=1
rem
bbdoc: GL Const GL_STENCIL_TEST_TWO_SIDE_EXT
endrem
Const GL_STENCIL_TEST_TWO_SIDE_EXT=$8910
rem
bbdoc: GL Const GL_ACTIVE_STENCIL_FACE_EXT
endrem
Const GL_ACTIVE_STENCIL_FACE_EXT=$8911
rem
bbdoc: GL Global glActiveStencilFaceEXT(face_:Int)
endrem
Global glActiveStencilFaceEXT(face_:Int)="__glewActiveStencilFaceEXT"
rem
bbdoc: GL Const GL_EXT_stencil_wrap
endrem
Const GL_EXT_stencil_wrap=1
rem
bbdoc: GL Const GL_INCR_WRAP_EXT
endrem
Const GL_INCR_WRAP_EXT=$8507
rem
bbdoc: GL Const GL_DECR_WRAP_EXT
endrem
Const GL_DECR_WRAP_EXT=$8508
rem
bbdoc: GL Const GL_EXT_subtexture
endrem
Const GL_EXT_subtexture=1
rem
bbdoc: GL Global glTexSubImage1DEXT(target_:Int,level_:Int,xoffset_:Int,width_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glTexSubImage1DEXT(target_:Int,level_:Int,xoffset_:Int,width_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewTexSubImage1DEXT"
rem
bbdoc: GL Global glTexSubImage2DEXT(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,width_:Int,height_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glTexSubImage2DEXT(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,width_:Int,height_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewTexSubImage2DEXT"
rem
bbdoc: GL Global glTexSubImage3DEXT(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glTexSubImage3DEXT(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,width_:Int,height_:Int,depth_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewTexSubImage3DEXT"
rem
bbdoc: GL Const GL_EXT_texture
endrem
Const GL_EXT_texture=1
rem
bbdoc: GL Const GL_ALPHA4_EXT
endrem
Const GL_ALPHA4_EXT=$803B
rem
bbdoc: GL Const GL_ALPHA8_EXT
endrem
Const GL_ALPHA8_EXT=$803C
rem
bbdoc: GL Const GL_ALPHA12_EXT
endrem
Const GL_ALPHA12_EXT=$803D
rem
bbdoc: GL Const GL_ALPHA16_EXT
endrem
Const GL_ALPHA16_EXT=$803E
rem
bbdoc: GL Const GL_LUMINANCE4_EXT
endrem
Const GL_LUMINANCE4_EXT=$803F
rem
bbdoc: GL Const GL_LUMINANCE8_EXT
endrem
Const GL_LUMINANCE8_EXT=$8040
rem
bbdoc: GL Const GL_LUMINANCE12_EXT
endrem
Const GL_LUMINANCE12_EXT=$8041
rem
bbdoc: GL Const GL_LUMINANCE16_EXT
endrem
Const GL_LUMINANCE16_EXT=$8042
rem
bbdoc: GL Const GL_LUMINANCE4_ALPHA4_EXT
endrem
Const GL_LUMINANCE4_ALPHA4_EXT=$8043
rem
bbdoc: GL Const GL_LUMINANCE6_ALPHA2_EXT
endrem
Const GL_LUMINANCE6_ALPHA2_EXT=$8044
rem
bbdoc: GL Const GL_LUMINANCE8_ALPHA8_EXT
endrem
Const GL_LUMINANCE8_ALPHA8_EXT=$8045
rem
bbdoc: GL Const GL_LUMINANCE12_ALPHA4_EXT
endrem
Const GL_LUMINANCE12_ALPHA4_EXT=$8046
rem
bbdoc: GL Const GL_LUMINANCE12_ALPHA12_EXT
endrem
Const GL_LUMINANCE12_ALPHA12_EXT=$8047
rem
bbdoc: GL Const GL_LUMINANCE16_ALPHA16_EXT
endrem
Const GL_LUMINANCE16_ALPHA16_EXT=$8048
rem
bbdoc: GL Const GL_INTENSITY_EXT
endrem
Const GL_INTENSITY_EXT=$8049
rem
bbdoc: GL Const GL_INTENSITY4_EXT
endrem
Const GL_INTENSITY4_EXT=$804A
rem
bbdoc: GL Const GL_INTENSITY8_EXT
endrem
Const GL_INTENSITY8_EXT=$804B
rem
bbdoc: GL Const GL_INTENSITY12_EXT
endrem
Const GL_INTENSITY12_EXT=$804C
rem
bbdoc: GL Const GL_INTENSITY16_EXT
endrem
Const GL_INTENSITY16_EXT=$804D
rem
bbdoc: GL Const GL_RGB2_EXT
endrem
Const GL_RGB2_EXT=$804E
rem
bbdoc: GL Const GL_RGB4_EXT
endrem
Const GL_RGB4_EXT=$804F
rem
bbdoc: GL Const GL_RGB5_EXT
endrem
Const GL_RGB5_EXT=$8050
rem
bbdoc: GL Const GL_RGB8_EXT
endrem
Const GL_RGB8_EXT=$8051
rem
bbdoc: GL Const GL_RGB10_EXT
endrem
Const GL_RGB10_EXT=$8052
rem
bbdoc: GL Const GL_RGB12_EXT
endrem
Const GL_RGB12_EXT=$8053
rem
bbdoc: GL Const GL_RGB16_EXT
endrem
Const GL_RGB16_EXT=$8054
rem
bbdoc: GL Const GL_RGBA2_EXT
endrem
Const GL_RGBA2_EXT=$8055
rem
bbdoc: GL Const GL_RGBA4_EXT
endrem
Const GL_RGBA4_EXT=$8056
rem
bbdoc: GL Const GL_RGB5_A1_EXT
endrem
Const GL_RGB5_A1_EXT=$8057
rem
bbdoc: GL Const GL_RGBA8_EXT
endrem
Const GL_RGBA8_EXT=$8058
rem
bbdoc: GL Const GL_RGB10_A2_EXT
endrem
Const GL_RGB10_A2_EXT=$8059
rem
bbdoc: GL Const GL_RGBA12_EXT
endrem
Const GL_RGBA12_EXT=$805A
rem
bbdoc: GL Const GL_RGBA16_EXT
endrem
Const GL_RGBA16_EXT=$805B
rem
bbdoc: GL Const GL_TEXTURE_RED_SIZE_EXT
endrem
Const GL_TEXTURE_RED_SIZE_EXT=$805C
rem
bbdoc: GL Const GL_TEXTURE_GREEN_SIZE_EXT
endrem
Const GL_TEXTURE_GREEN_SIZE_EXT=$805D
rem
bbdoc: GL Const GL_TEXTURE_BLUE_SIZE_EXT
endrem
Const GL_TEXTURE_BLUE_SIZE_EXT=$805E
rem
bbdoc: GL Const GL_TEXTURE_ALPHA_SIZE_EXT
endrem
Const GL_TEXTURE_ALPHA_SIZE_EXT=$805F
rem
bbdoc: GL Const GL_TEXTURE_LUMINANCE_SIZE_EXT
endrem
Const GL_TEXTURE_LUMINANCE_SIZE_EXT=$8060
rem
bbdoc: GL Const GL_TEXTURE_INTENSITY_SIZE_EXT
endrem
Const GL_TEXTURE_INTENSITY_SIZE_EXT=$8061
rem
bbdoc: GL Const GL_REPLACE_EXT
endrem
Const GL_REPLACE_EXT=$8062
rem
bbdoc: GL Const GL_PROXY_TEXTURE_1D_EXT
endrem
Const GL_PROXY_TEXTURE_1D_EXT=$8063
rem
bbdoc: GL Const GL_PROXY_TEXTURE_2D_EXT
endrem
Const GL_PROXY_TEXTURE_2D_EXT=$8064
rem
bbdoc: GL Const GL_EXT_texture3D
endrem
Const GL_EXT_texture3D=1
rem
bbdoc: GL Const GL_PACK_SKIP_IMAGES_EXT
endrem
Const GL_PACK_SKIP_IMAGES_EXT=$806B
rem
bbdoc: GL Const GL_PACK_IMAGE_HEIGHT_EXT
endrem
Const GL_PACK_IMAGE_HEIGHT_EXT=$806C
rem
bbdoc: GL Const GL_UNPACK_SKIP_IMAGES_EXT
endrem
Const GL_UNPACK_SKIP_IMAGES_EXT=$806D
rem
bbdoc: GL Const GL_UNPACK_IMAGE_HEIGHT_EXT
endrem
Const GL_UNPACK_IMAGE_HEIGHT_EXT=$806E
rem
bbdoc: GL Const GL_TEXTURE_3D_EXT
endrem
Const GL_TEXTURE_3D_EXT=$806F
rem
bbdoc: GL Const GL_PROXY_TEXTURE_3D_EXT
endrem
Const GL_PROXY_TEXTURE_3D_EXT=$8070
rem
bbdoc: GL Const GL_TEXTURE_DEPTH_EXT
endrem
Const GL_TEXTURE_DEPTH_EXT=$8071
rem
bbdoc: GL Const GL_TEXTURE_WRAP_R_EXT
endrem
Const GL_TEXTURE_WRAP_R_EXT=$8072
rem
bbdoc: GL Const GL_MAX_3D_TEXTURE_SIZE_EXT
endrem
Const GL_MAX_3D_TEXTURE_SIZE_EXT=$8073
rem
bbdoc: GL Global glTexImage3DEXT(target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,border_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glTexImage3DEXT(target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,border_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewTexImage3DEXT"
rem
bbdoc: GL Const GL_EXT_texture_array
endrem
Const GL_EXT_texture_array=1
rem
bbdoc: GL Const GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT
endrem
Const GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT=$884E
rem
bbdoc: GL Const GL_MAX_ARRAY_TEXTURE_LAYERS_EXT
endrem
Const GL_MAX_ARRAY_TEXTURE_LAYERS_EXT=$88FF
rem
bbdoc: GL Const GL_TEXTURE_1D_ARRAY_EXT
endrem
Const GL_TEXTURE_1D_ARRAY_EXT=$8C18
rem
bbdoc: GL Const GL_PROXY_TEXTURE_1D_ARRAY_EXT
endrem
Const GL_PROXY_TEXTURE_1D_ARRAY_EXT=$8C19
rem
bbdoc: GL Const GL_TEXTURE_2D_ARRAY_EXT
endrem
Const GL_TEXTURE_2D_ARRAY_EXT=$8C1A
rem
bbdoc: GL Const GL_PROXY_TEXTURE_2D_ARRAY_EXT
endrem
Const GL_PROXY_TEXTURE_2D_ARRAY_EXT=$8C1B
rem
bbdoc: GL Const GL_TEXTURE_BINDING_1D_ARRAY_EXT
endrem
Const GL_TEXTURE_BINDING_1D_ARRAY_EXT=$8C1C
rem
bbdoc: GL Const GL_TEXTURE_BINDING_2D_ARRAY_EXT
endrem
Const GL_TEXTURE_BINDING_2D_ARRAY_EXT=$8C1D
rem
bbdoc: GL Global glFramebufferTextureLayerEXT(target_:Int,attachment_:Int,texture_:Int,level_:Int,layer_:Int)
endrem
Global glFramebufferTextureLayerEXT(target_:Int,attachment_:Int,texture_:Int,level_:Int,layer_:Int)="__glewFramebufferTextureLayerEXT"
rem
bbdoc: GL Const GL_EXT_texture_buffer_object
endrem
Const GL_EXT_texture_buffer_object=1
rem
bbdoc: GL Const GL_TEXTURE_BUFFER_EXT
endrem
Const GL_TEXTURE_BUFFER_EXT=$8C2A
rem
bbdoc: GL Const GL_MAX_TEXTURE_BUFFER_SIZE_EXT
endrem
Const GL_MAX_TEXTURE_BUFFER_SIZE_EXT=$8C2B
rem
bbdoc: GL Const GL_TEXTURE_BINDING_BUFFER_EXT
endrem
Const GL_TEXTURE_BINDING_BUFFER_EXT=$8C2C
rem
bbdoc: GL Const GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT
endrem
Const GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT=$8C2D
rem
bbdoc: GL Const GL_TEXTURE_BUFFER_FORMAT_EXT
endrem
Const GL_TEXTURE_BUFFER_FORMAT_EXT=$8C2E
rem
bbdoc: GL Global glTexBufferEXT(target_:Int,internalformat_:Int,buffer_:Int)
endrem
Global glTexBufferEXT(target_:Int,internalformat_:Int,buffer_:Int)="__glewTexBufferEXT"
rem
bbdoc: GL Const GL_EXT_texture_compression_dxt1
endrem
Const GL_EXT_texture_compression_dxt1=1
rem
bbdoc: GL Const GL_EXT_texture_compression_latc
endrem
Const GL_EXT_texture_compression_latc=1
rem
bbdoc: GL Const GL_COMPRESSED_LUMINANCE_LATC1_EXT
endrem
Const GL_COMPRESSED_LUMINANCE_LATC1_EXT=$8C70
rem
bbdoc: GL Const GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT
endrem
Const GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT=$8C71
rem
bbdoc: GL Const GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT
endrem
Const GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT=$8C72
rem
bbdoc: GL Const GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT
endrem
Const GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT=$8C73
rem
bbdoc: GL Const GL_EXT_texture_compression_rgtc
endrem
Const GL_EXT_texture_compression_rgtc=1
rem
bbdoc: GL Const GL_COMPRESSED_RED_RGTC1_EXT
endrem
Const GL_COMPRESSED_RED_RGTC1_EXT=$8DBB
rem
bbdoc: GL Const GL_COMPRESSED_SIGNED_RED_RGTC1_EXT
endrem
Const GL_COMPRESSED_SIGNED_RED_RGTC1_EXT=$8DBC
rem
bbdoc: GL Const GL_COMPRESSED_RED_GREEN_RGTC2_EXT
endrem
Const GL_COMPRESSED_RED_GREEN_RGTC2_EXT=$8DBD
rem
bbdoc: GL Const GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT
endrem
Const GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT=$8DBE
rem
bbdoc: GL Const GL_EXT_texture_compression_s3tc
endrem
Const GL_EXT_texture_compression_s3tc=1
rem
bbdoc: GL Const GL_COMPRESSED_RGB_S3TC_DXT1_EXT
endrem
Const GL_COMPRESSED_RGB_S3TC_DXT1_EXT=$83F0
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_S3TC_DXT1_EXT
endrem
Const GL_COMPRESSED_RGBA_S3TC_DXT1_EXT=$83F1
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_S3TC_DXT3_EXT
endrem
Const GL_COMPRESSED_RGBA_S3TC_DXT3_EXT=$83F2
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_S3TC_DXT5_EXT
endrem
Const GL_COMPRESSED_RGBA_S3TC_DXT5_EXT=$83F3
rem
bbdoc: GL Const GL_EXT_texture_cube_map
endrem
Const GL_EXT_texture_cube_map=1
rem
bbdoc: GL Const GL_NORMAL_MAP_EXT
endrem
Const GL_NORMAL_MAP_EXT=$8511
rem
bbdoc: GL Const GL_REFLECTION_MAP_EXT
endrem
Const GL_REFLECTION_MAP_EXT=$8512
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_EXT
endrem
Const GL_TEXTURE_CUBE_MAP_EXT=$8513
rem
bbdoc: GL Const GL_TEXTURE_BINDING_CUBE_MAP_EXT
endrem
Const GL_TEXTURE_BINDING_CUBE_MAP_EXT=$8514
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT
endrem
Const GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT=$8515
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT
endrem
Const GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT=$8516
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT
endrem
Const GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT=$8517
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT
endrem
Const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT=$8518
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT
endrem
Const GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT=$8519
rem
bbdoc: GL Const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT
endrem
Const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT=$851A
rem
bbdoc: GL Const GL_PROXY_TEXTURE_CUBE_MAP_EXT
endrem
Const GL_PROXY_TEXTURE_CUBE_MAP_EXT=$851B
rem
bbdoc: GL Const GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT
endrem
Const GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT=$851C
rem
bbdoc: GL Const GL_EXT_texture_edge_clamp
endrem
Const GL_EXT_texture_edge_clamp=1
rem
bbdoc: GL Const GL_CLAMP_TO_EDGE_EXT
endrem
Const GL_CLAMP_TO_EDGE_EXT=$812F
rem
bbdoc: GL Const GL_EXT_texture_env
endrem
Const GL_EXT_texture_env=1
rem
bbdoc: GL Const GL_EXT_texture_env_add
endrem
Const GL_EXT_texture_env_add=1
rem
bbdoc: GL Const GL_EXT_texture_env_combine
endrem
Const GL_EXT_texture_env_combine=1
rem
bbdoc: GL Const GL_COMBINE_EXT
endrem
Const GL_COMBINE_EXT=$8570
rem
bbdoc: GL Const GL_COMBINE_RGB_EXT
endrem
Const GL_COMBINE_RGB_EXT=$8571
rem
bbdoc: GL Const GL_COMBINE_ALPHA_EXT
endrem
Const GL_COMBINE_ALPHA_EXT=$8572
rem
bbdoc: GL Const GL_RGB_SCALE_EXT
endrem
Const GL_RGB_SCALE_EXT=$8573
rem
bbdoc: GL Const GL_ADD_SIGNED_EXT
endrem
Const GL_ADD_SIGNED_EXT=$8574
rem
bbdoc: GL Const GL_INTERPOLATE_EXT
endrem
Const GL_INTERPOLATE_EXT=$8575
rem
bbdoc: GL Const GL_CONSTANT_EXT
endrem
Const GL_CONSTANT_EXT=$8576
rem
bbdoc: GL Const GL_PRIMARY_COLOR_EXT
endrem
Const GL_PRIMARY_COLOR_EXT=$8577
rem
bbdoc: GL Const GL_PREVIOUS_EXT
endrem
Const GL_PREVIOUS_EXT=$8578
rem
bbdoc: GL Const GL_SOURCE0_RGB_EXT
endrem
Const GL_SOURCE0_RGB_EXT=$8580
rem
bbdoc: GL Const GL_SOURCE1_RGB_EXT
endrem
Const GL_SOURCE1_RGB_EXT=$8581
rem
bbdoc: GL Const GL_SOURCE2_RGB_EXT
endrem
Const GL_SOURCE2_RGB_EXT=$8582
rem
bbdoc: GL Const GL_SOURCE0_ALPHA_EXT
endrem
Const GL_SOURCE0_ALPHA_EXT=$8588
rem
bbdoc: GL Const GL_SOURCE1_ALPHA_EXT
endrem
Const GL_SOURCE1_ALPHA_EXT=$8589
rem
bbdoc: GL Const GL_SOURCE2_ALPHA_EXT
endrem
Const GL_SOURCE2_ALPHA_EXT=$858A
rem
bbdoc: GL Const GL_OPERAND0_RGB_EXT
endrem
Const GL_OPERAND0_RGB_EXT=$8590
rem
bbdoc: GL Const GL_OPERAND1_RGB_EXT
endrem
Const GL_OPERAND1_RGB_EXT=$8591
rem
bbdoc: GL Const GL_OPERAND2_RGB_EXT
endrem
Const GL_OPERAND2_RGB_EXT=$8592
rem
bbdoc: GL Const GL_OPERAND0_ALPHA_EXT
endrem
Const GL_OPERAND0_ALPHA_EXT=$8598
rem
bbdoc: GL Const GL_OPERAND1_ALPHA_EXT
endrem
Const GL_OPERAND1_ALPHA_EXT=$8599
rem
bbdoc: GL Const GL_OPERAND2_ALPHA_EXT
endrem
Const GL_OPERAND2_ALPHA_EXT=$859A
rem
bbdoc: GL Const GL_EXT_texture_env_dot3
endrem
Const GL_EXT_texture_env_dot3=1
rem
bbdoc: GL Const GL_DOT3_RGB_EXT
endrem
Const GL_DOT3_RGB_EXT=$8740
rem
bbdoc: GL Const GL_DOT3_RGBA_EXT
endrem
Const GL_DOT3_RGBA_EXT=$8741
rem
bbdoc: GL Const GL_EXT_texture_filter_anisotropic
endrem
Const GL_EXT_texture_filter_anisotropic=1
rem
bbdoc: GL Const GL_TEXTURE_MAX_ANISOTROPY_EXT
endrem
Const GL_TEXTURE_MAX_ANISOTROPY_EXT=$84FE
rem
bbdoc: GL Const GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT
endrem
Const GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT=$84FF
rem
bbdoc: GL Const GL_EXT_texture_integer
endrem
Const GL_EXT_texture_integer=1
rem
bbdoc: GL Const GL_RGBA32UI_EXT
endrem
Const GL_RGBA32UI_EXT=$8D70
rem
bbdoc: GL Const GL_RGB32UI_EXT
endrem
Const GL_RGB32UI_EXT=$8D71
rem
bbdoc: GL Const GL_ALPHA32UI_EXT
endrem
Const GL_ALPHA32UI_EXT=$8D72
rem
bbdoc: GL Const GL_INTENSITY32UI_EXT
endrem
Const GL_INTENSITY32UI_EXT=$8D73
rem
bbdoc: GL Const GL_LUMINANCE32UI_EXT
endrem
Const GL_LUMINANCE32UI_EXT=$8D74
rem
bbdoc: GL Const GL_LUMINANCE_ALPHA32UI_EXT
endrem
Const GL_LUMINANCE_ALPHA32UI_EXT=$8D75
rem
bbdoc: GL Const GL_RGBA16UI_EXT
endrem
Const GL_RGBA16UI_EXT=$8D76
rem
bbdoc: GL Const GL_RGB16UI_EXT
endrem
Const GL_RGB16UI_EXT=$8D77
rem
bbdoc: GL Const GL_ALPHA16UI_EXT
endrem
Const GL_ALPHA16UI_EXT=$8D78
rem
bbdoc: GL Const GL_INTENSITY16UI_EXT
endrem
Const GL_INTENSITY16UI_EXT=$8D79
rem
bbdoc: GL Const GL_LUMINANCE16UI_EXT
endrem
Const GL_LUMINANCE16UI_EXT=$8D7A
rem
bbdoc: GL Const GL_LUMINANCE_ALPHA16UI_EXT
endrem
Const GL_LUMINANCE_ALPHA16UI_EXT=$8D7B
rem
bbdoc: GL Const GL_RGBA8UI_EXT
endrem
Const GL_RGBA8UI_EXT=$8D7C
rem
bbdoc: GL Const GL_RGB8UI_EXT
endrem
Const GL_RGB8UI_EXT=$8D7D
rem
bbdoc: GL Const GL_ALPHA8UI_EXT
endrem
Const GL_ALPHA8UI_EXT=$8D7E
rem
bbdoc: GL Const GL_INTENSITY8UI_EXT
endrem
Const GL_INTENSITY8UI_EXT=$8D7F
rem
bbdoc: GL Const GL_LUMINANCE8UI_EXT
endrem
Const GL_LUMINANCE8UI_EXT=$8D80
rem
bbdoc: GL Const GL_LUMINANCE_ALPHA8UI_EXT
endrem
Const GL_LUMINANCE_ALPHA8UI_EXT=$8D81
rem
bbdoc: GL Const GL_RGBA32I_EXT
endrem
Const GL_RGBA32I_EXT=$8D82
rem
bbdoc: GL Const GL_RGB32I_EXT
endrem
Const GL_RGB32I_EXT=$8D83
rem
bbdoc: GL Const GL_ALPHA32I_EXT
endrem
Const GL_ALPHA32I_EXT=$8D84
rem
bbdoc: GL Const GL_INTENSITY32I_EXT
endrem
Const GL_INTENSITY32I_EXT=$8D85
rem
bbdoc: GL Const GL_LUMINANCE32I_EXT
endrem
Const GL_LUMINANCE32I_EXT=$8D86
rem
bbdoc: GL Const GL_LUMINANCE_ALPHA32I_EXT
endrem
Const GL_LUMINANCE_ALPHA32I_EXT=$8D87
rem
bbdoc: GL Const GL_RGBA16I_EXT
endrem
Const GL_RGBA16I_EXT=$8D88
rem
bbdoc: GL Const GL_RGB16I_EXT
endrem
Const GL_RGB16I_EXT=$8D89
rem
bbdoc: GL Const GL_ALPHA16I_EXT
endrem
Const GL_ALPHA16I_EXT=$8D8A
rem
bbdoc: GL Const GL_INTENSITY16I_EXT
endrem
Const GL_INTENSITY16I_EXT=$8D8B
rem
bbdoc: GL Const GL_LUMINANCE16I_EXT
endrem
Const GL_LUMINANCE16I_EXT=$8D8C
rem
bbdoc: GL Const GL_LUMINANCE_ALPHA16I_EXT
endrem
Const GL_LUMINANCE_ALPHA16I_EXT=$8D8D
rem
bbdoc: GL Const GL_RGBA8I_EXT
endrem
Const GL_RGBA8I_EXT=$8D8E
rem
bbdoc: GL Const GL_RGB8I_EXT
endrem
Const GL_RGB8I_EXT=$8D8F
rem
bbdoc: GL Const GL_ALPHA8I_EXT
endrem
Const GL_ALPHA8I_EXT=$8D90
rem
bbdoc: GL Const GL_INTENSITY8I_EXT
endrem
Const GL_INTENSITY8I_EXT=$8D91
rem
bbdoc: GL Const GL_LUMINANCE8I_EXT
endrem
Const GL_LUMINANCE8I_EXT=$8D92
rem
bbdoc: GL Const GL_LUMINANCE_ALPHA8I_EXT
endrem
Const GL_LUMINANCE_ALPHA8I_EXT=$8D93
rem
bbdoc: GL Const GL_RED_INTEGER_EXT
endrem
Const GL_RED_INTEGER_EXT=$8D94
rem
bbdoc: GL Const GL_GREEN_INTEGER_EXT
endrem
Const GL_GREEN_INTEGER_EXT=$8D95
rem
bbdoc: GL Const GL_BLUE_INTEGER_EXT
endrem
Const GL_BLUE_INTEGER_EXT=$8D96
rem
bbdoc: GL Const GL_ALPHA_INTEGER_EXT
endrem
Const GL_ALPHA_INTEGER_EXT=$8D97
rem
bbdoc: GL Const GL_RGB_INTEGER_EXT
endrem
Const GL_RGB_INTEGER_EXT=$8D98
rem
bbdoc: GL Const GL_RGBA_INTEGER_EXT
endrem
Const GL_RGBA_INTEGER_EXT=$8D99
rem
bbdoc: GL Const GL_BGR_INTEGER_EXT
endrem
Const GL_BGR_INTEGER_EXT=$8D9A
rem
bbdoc: GL Const GL_BGRA_INTEGER_EXT
endrem
Const GL_BGRA_INTEGER_EXT=$8D9B
rem
bbdoc: GL Const GL_LUMINANCE_INTEGER_EXT
endrem
Const GL_LUMINANCE_INTEGER_EXT=$8D9C
rem
bbdoc: GL Const GL_LUMINANCE_ALPHA_INTEGER_EXT
endrem
Const GL_LUMINANCE_ALPHA_INTEGER_EXT=$8D9D
rem
bbdoc: GL Const GL_RGBA_INTEGER_MODE_EXT
endrem
Const GL_RGBA_INTEGER_MODE_EXT=$8D9E
rem
bbdoc: GL Global glClearColorIiEXT(red_:Int,green_:Int,blue_:Int,alpha_:Int)
endrem
Global glClearColorIiEXT(red_:Int,green_:Int,blue_:Int,alpha_:Int)="__glewClearColorIiEXT"
rem
bbdoc: GL Global glClearColorIuiEXT(red_:Int,green_:Int,blue_:Int,alpha_:Int)
endrem
Global glClearColorIuiEXT(red_:Int,green_:Int,blue_:Int,alpha_:Int)="__glewClearColorIuiEXT"
rem
bbdoc: GL Global glGetTexParameterIivEXT(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetTexParameterIivEXT(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetTexParameterIivEXT"
rem
bbdoc: GL Global glGetTexParameterIuivEXT(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetTexParameterIuivEXT(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetTexParameterIuivEXT"
rem
bbdoc: GL Global glTexParameterIivEXT(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glTexParameterIivEXT(target_:Int,pname_:Int,params_:Int Ptr)="__glewTexParameterIivEXT"
rem
bbdoc: GL Global glTexParameterIuivEXT(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glTexParameterIuivEXT(target_:Int,pname_:Int,params_:Int Ptr)="__glewTexParameterIuivEXT"
rem
bbdoc: GL Const GL_EXT_texture_lod_bias
endrem
Const GL_EXT_texture_lod_bias=1
rem
bbdoc: GL Const GL_MAX_TEXTURE_LOD_BIAS_EXT
endrem
Const GL_MAX_TEXTURE_LOD_BIAS_EXT=$84FD
rem
bbdoc: GL Const GL_TEXTURE_FILTER_CONTROL_EXT
endrem
Const GL_TEXTURE_FILTER_CONTROL_EXT=$8500
rem
bbdoc: GL Const GL_TEXTURE_LOD_BIAS_EXT
endrem
Const GL_TEXTURE_LOD_BIAS_EXT=$8501
rem
bbdoc: GL Const GL_EXT_texture_mirror_clamp
endrem
Const GL_EXT_texture_mirror_clamp=1
rem
bbdoc: GL Const GL_MIRROR_CLAMP_EXT
endrem
Const GL_MIRROR_CLAMP_EXT=$8742
rem
bbdoc: GL Const GL_MIRROR_CLAMP_TO_EDGE_EXT
endrem
Const GL_MIRROR_CLAMP_TO_EDGE_EXT=$8743
rem
bbdoc: GL Const GL_MIRROR_CLAMP_TO_BORDER_EXT
endrem
Const GL_MIRROR_CLAMP_TO_BORDER_EXT=$8912
rem
bbdoc: GL Const GL_EXT_texture_object
endrem
Const GL_EXT_texture_object=1
rem
bbdoc: GL Const GL_TEXTURE_PRIORITY_EXT
endrem
Const GL_TEXTURE_PRIORITY_EXT=$8066
rem
bbdoc: GL Const GL_TEXTURE_RESIDENT_EXT
endrem
Const GL_TEXTURE_RESIDENT_EXT=$8067
rem
bbdoc: GL Const GL_TEXTURE_1D_BINDING_EXT
endrem
Const GL_TEXTURE_1D_BINDING_EXT=$8068
rem
bbdoc: GL Const GL_TEXTURE_2D_BINDING_EXT
endrem
Const GL_TEXTURE_2D_BINDING_EXT=$8069
rem
bbdoc: GL Const GL_TEXTURE_3D_BINDING_EXT
endrem
Const GL_TEXTURE_3D_BINDING_EXT=$806A
rem
bbdoc: GL Global glAreTexturesResidentEXT:Byte(n_:Int,textures_:Int Ptr,residences_:Byte Ptr)
endrem
Global glAreTexturesResidentEXT:Byte(n_:Int,textures_:Int Ptr,residences_:Byte Ptr)="__glewAreTexturesResidentEXT"
rem
bbdoc: GL Global glBindTextureEXT(target_:Int,texture_:Int)
endrem
Global glBindTextureEXT(target_:Int,texture_:Int)="__glewBindTextureEXT"
rem
bbdoc: GL Global glDeleteTexturesEXT(n_:Int,textures_:Int Ptr)
endrem
Global glDeleteTexturesEXT(n_:Int,textures_:Int Ptr)="__glewDeleteTexturesEXT"
rem
bbdoc: GL Global glGenTexturesEXT(n_:Int,textures_:Int Ptr)
endrem
Global glGenTexturesEXT(n_:Int,textures_:Int Ptr)="__glewGenTexturesEXT"
rem
bbdoc: GL Global glIsTextureEXT:Byte(texture_:Int)
endrem
Global glIsTextureEXT:Byte(texture_:Int)="__glewIsTextureEXT"
rem
bbdoc: GL Global glPrioritizeTexturesEXT(n_:Int,textures_:Int Ptr,priorities_:Float Ptr)
endrem
Global glPrioritizeTexturesEXT(n_:Int,textures_:Int Ptr,priorities_:Float Ptr)="__glewPrioritizeTexturesEXT"
rem
bbdoc: GL Const GL_EXT_texture_perturb_normal
endrem
Const GL_EXT_texture_perturb_normal=1
rem
bbdoc: GL Const GL_PERTURB_EXT
endrem
Const GL_PERTURB_EXT=$85AE
rem
bbdoc: GL Const GL_TEXTURE_NORMAL_EXT
endrem
Const GL_TEXTURE_NORMAL_EXT=$85AF
rem
bbdoc: GL Global glTextureNormalEXT(mode_:Int)
endrem
Global glTextureNormalEXT(mode_:Int)="__glewTextureNormalEXT"
rem
bbdoc: GL Const GL_EXT_texture_rectangle
endrem
Const GL_EXT_texture_rectangle=1
rem
bbdoc: GL Const GL_TEXTURE_RECTANGLE_EXT
endrem
Const GL_TEXTURE_RECTANGLE_EXT=$84F5
rem
bbdoc: GL Const GL_TEXTURE_BINDING_RECTANGLE_EXT
endrem
Const GL_TEXTURE_BINDING_RECTANGLE_EXT=$84F6
rem
bbdoc: GL Const GL_PROXY_TEXTURE_RECTANGLE_EXT
endrem
Const GL_PROXY_TEXTURE_RECTANGLE_EXT=$84F7
rem
bbdoc: GL Const GL_MAX_RECTANGLE_TEXTURE_SIZE_EXT
endrem
Const GL_MAX_RECTANGLE_TEXTURE_SIZE_EXT=$84F8
rem
bbdoc: GL Const GL_EXT_texture_sRGB
endrem
Const GL_EXT_texture_sRGB=1
rem
bbdoc: GL Const GL_SRGB_EXT
endrem
Const GL_SRGB_EXT=$8C40
rem
bbdoc: GL Const GL_SRGB8_EXT
endrem
Const GL_SRGB8_EXT=$8C41
rem
bbdoc: GL Const GL_SRGB_ALPHA_EXT
endrem
Const GL_SRGB_ALPHA_EXT=$8C42
rem
bbdoc: GL Const GL_SRGB8_ALPHA8_EXT
endrem
Const GL_SRGB8_ALPHA8_EXT=$8C43
rem
bbdoc: GL Const GL_SLUMINANCE_ALPHA_EXT
endrem
Const GL_SLUMINANCE_ALPHA_EXT=$8C44
rem
bbdoc: GL Const GL_SLUMINANCE8_ALPHA8_EXT
endrem
Const GL_SLUMINANCE8_ALPHA8_EXT=$8C45
rem
bbdoc: GL Const GL_SLUMINANCE_EXT
endrem
Const GL_SLUMINANCE_EXT=$8C46
rem
bbdoc: GL Const GL_SLUMINANCE8_EXT
endrem
Const GL_SLUMINANCE8_EXT=$8C47
rem
bbdoc: GL Const GL_COMPRESSED_SRGB_EXT
endrem
Const GL_COMPRESSED_SRGB_EXT=$8C48
rem
bbdoc: GL Const GL_COMPRESSED_SRGB_ALPHA_EXT
endrem
Const GL_COMPRESSED_SRGB_ALPHA_EXT=$8C49
rem
bbdoc: GL Const GL_COMPRESSED_SLUMINANCE_EXT
endrem
Const GL_COMPRESSED_SLUMINANCE_EXT=$8C4A
rem
bbdoc: GL Const GL_COMPRESSED_SLUMINANCE_ALPHA_EXT
endrem
Const GL_COMPRESSED_SLUMINANCE_ALPHA_EXT=$8C4B
rem
bbdoc: GL Const GL_COMPRESSED_SRGB_S3TC_DXT1_EXT
endrem
Const GL_COMPRESSED_SRGB_S3TC_DXT1_EXT=$8C4C
rem
bbdoc: GL Const GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT
endrem
Const GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT=$8C4D
rem
bbdoc: GL Const GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT
endrem
Const GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT=$8C4E
rem
bbdoc: GL Const GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT
endrem
Const GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT=$8C4F
rem
bbdoc: GL Const GL_EXT_texture_sRGB_decode
endrem
Const GL_EXT_texture_sRGB_decode=1
rem
bbdoc: GL Const GL_TEXTURE_SRGB_DECODE_EXT
endrem
Const GL_TEXTURE_SRGB_DECODE_EXT=$8A48
rem
bbdoc: GL Const GL_DECODE_EXT
endrem
Const GL_DECODE_EXT=$8A49
rem
bbdoc: GL Const GL_SKIP_DECODE_EXT
endrem
Const GL_SKIP_DECODE_EXT=$8A4A
rem
bbdoc: GL Const GL_EXT_texture_shared_exponent
endrem
Const GL_EXT_texture_shared_exponent=1
rem
bbdoc: GL Const GL_RGB9_E5_EXT
endrem
Const GL_RGB9_E5_EXT=$8C3D
rem
bbdoc: GL Const GL_UNSIGNED_INT_5_9_9_9_REV_EXT
endrem
Const GL_UNSIGNED_INT_5_9_9_9_REV_EXT=$8C3E
rem
bbdoc: GL Const GL_TEXTURE_SHARED_SIZE_EXT
endrem
Const GL_TEXTURE_SHARED_SIZE_EXT=$8C3F
rem
bbdoc: GL Const GL_EXT_texture_snorm
endrem
Const GL_EXT_texture_snorm=1
rem
bbdoc: GL Const GL_ALPHA_SNORM
endrem
Const GL_ALPHA_SNORM=$9010
rem
bbdoc: GL Const GL_LUMINANCE_SNORM
endrem
Const GL_LUMINANCE_SNORM=$9011
rem
bbdoc: GL Const GL_LUMINANCE_ALPHA_SNORM
endrem
Const GL_LUMINANCE_ALPHA_SNORM=$9012
rem
bbdoc: GL Const GL_INTENSITY_SNORM
endrem
Const GL_INTENSITY_SNORM=$9013
rem
bbdoc: GL Const GL_ALPHA8_SNORM
endrem
Const GL_ALPHA8_SNORM=$9014
rem
bbdoc: GL Const GL_LUMINANCE8_SNORM
endrem
Const GL_LUMINANCE8_SNORM=$9015
rem
bbdoc: GL Const GL_LUMINANCE8_ALPHA8_SNORM
endrem
Const GL_LUMINANCE8_ALPHA8_SNORM=$9016
rem
bbdoc: GL Const GL_INTENSITY8_SNORM
endrem
Const GL_INTENSITY8_SNORM=$9017
rem
bbdoc: GL Const GL_ALPHA16_SNORM
endrem
Const GL_ALPHA16_SNORM=$9018
rem
bbdoc: GL Const GL_LUMINANCE16_SNORM
endrem
Const GL_LUMINANCE16_SNORM=$9019
rem
bbdoc: GL Const GL_LUMINANCE16_ALPHA16_SNORM
endrem
Const GL_LUMINANCE16_ALPHA16_SNORM=$901A
rem
bbdoc: GL Const GL_INTENSITY16_SNORM
endrem
Const GL_INTENSITY16_SNORM=$901B
rem
bbdoc: GL Const GL_EXT_texture_swizzle
endrem
Const GL_EXT_texture_swizzle=1
rem
bbdoc: GL Const GL_TEXTURE_SWIZZLE_R_EXT
endrem
Const GL_TEXTURE_SWIZZLE_R_EXT=$8E42
rem
bbdoc: GL Const GL_TEXTURE_SWIZZLE_G_EXT
endrem
Const GL_TEXTURE_SWIZZLE_G_EXT=$8E43
rem
bbdoc: GL Const GL_TEXTURE_SWIZZLE_B_EXT
endrem
Const GL_TEXTURE_SWIZZLE_B_EXT=$8E44
rem
bbdoc: GL Const GL_TEXTURE_SWIZZLE_A_EXT
endrem
Const GL_TEXTURE_SWIZZLE_A_EXT=$8E45
rem
bbdoc: GL Const GL_TEXTURE_SWIZZLE_RGBA_EXT
endrem
Const GL_TEXTURE_SWIZZLE_RGBA_EXT=$8E46
rem
bbdoc: GL Const GL_EXT_timer_query
endrem
Const GL_EXT_timer_query=1
rem
bbdoc: GL Const GL_TIME_ELAPSED_EXT
endrem
Const GL_TIME_ELAPSED_EXT=$88BF
rem
bbdoc: GL Global glGetQueryObjecti64vEXT(id_:Int,pname_:Int,params_:Long Ptr)
endrem
Global glGetQueryObjecti64vEXT(id_:Int,pname_:Int,params_:Long Ptr)="__glewGetQueryObjecti64vEXT"
rem
bbdoc: GL Global glGetQueryObjectui64vEXT(id_:Int,pname_:Int,params_:Long Ptr)
endrem
Global glGetQueryObjectui64vEXT(id_:Int,pname_:Int,params_:Long Ptr)="__glewGetQueryObjectui64vEXT"
rem
bbdoc: GL Const GL_EXT_transform_feedback
endrem
Const GL_EXT_transform_feedback=1
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT
endrem
Const GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT=$8C76
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT=$8C7F
rem
bbdoc: GL Const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT
endrem
Const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT=$8C80
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_VARYINGS_EXT
endrem
Const GL_TRANSFORM_FEEDBACK_VARYINGS_EXT=$8C83
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT=$8C84
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT=$8C85
rem
bbdoc: GL Const GL_PRIMITIVES_GENERATED_EXT
endrem
Const GL_PRIMITIVES_GENERATED_EXT=$8C87
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT
endrem
Const GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT=$8C88
rem
bbdoc: GL Const GL_RASTERIZER_DISCARD_EXT
endrem
Const GL_RASTERIZER_DISCARD_EXT=$8C89
rem
bbdoc: GL Const GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT
endrem
Const GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT=$8C8A
rem
bbdoc: GL Const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT
endrem
Const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT=$8C8B
rem
bbdoc: GL Const GL_INTERLEAVED_ATTRIBS_EXT
endrem
Const GL_INTERLEAVED_ATTRIBS_EXT=$8C8C
rem
bbdoc: GL Const GL_SEPARATE_ATTRIBS_EXT
endrem
Const GL_SEPARATE_ATTRIBS_EXT=$8C8D
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_EXT
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_EXT=$8C8E
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT=$8C8F
rem
bbdoc: GL Global glBeginTransformFeedbackEXT(primitiveMode_:Int)
endrem
Global glBeginTransformFeedbackEXT(primitiveMode_:Int)="__glewBeginTransformFeedbackEXT"
rem
bbdoc: GL Global glBindBufferBaseEXT(target_:Int,index_:Int,buffer_:Int)
endrem
Global glBindBufferBaseEXT(target_:Int,index_:Int,buffer_:Int)="__glewBindBufferBaseEXT"
rem
bbdoc: GL Global glBindBufferOffsetEXT(target_:Int,index_:Int,buffer_:Int,offset_:Int)
endrem
Global glBindBufferOffsetEXT(target_:Int,index_:Int,buffer_:Int,offset_:Int)="__glewBindBufferOffsetEXT"
rem
bbdoc: GL Global glBindBufferRangeEXT(target_:Int,index_:Int,buffer_:Int,offset_:Int,size_:Int)
endrem
Global glBindBufferRangeEXT(target_:Int,index_:Int,buffer_:Int,offset_:Int,size_:Int)="__glewBindBufferRangeEXT"
rem
bbdoc: GL Global glEndTransformFeedbackEXT()
endrem
Global glEndTransformFeedbackEXT()="__glewEndTransformFeedbackEXT"
rem
bbdoc: GL Global glGetTransformFeedbackVaryingEXT(program_:Int,index_:Int,bufSize_:Int,length_:Int Ptr,size_:Int Ptr,type_:Int Ptr,name_:Byte Ptr)
endrem
Global glGetTransformFeedbackVaryingEXT(program_:Int,index_:Int,bufSize_:Int,length_:Int Ptr,size_:Int Ptr,type_:Int Ptr,name_:Byte Ptr)="__glewGetTransformFeedbackVaryingEXT"
rem
bbdoc: GL Global glTransformFeedbackVaryingsEXT(program_:Int,count_:Int,varyings_:Byte Ptr Ptr,bufferMode_:Int)
endrem
Global glTransformFeedbackVaryingsEXT(program_:Int,count_:Int,varyings_:Byte Ptr Ptr,bufferMode_:Int)="__glewTransformFeedbackVaryingsEXT"
rem
bbdoc: GL Const GL_EXT_vertex_array
endrem
Const GL_EXT_vertex_array=1
rem
bbdoc: GL Const GL_DOUBLE_EXT
endrem
Const GL_DOUBLE_EXT=$140A
rem
bbdoc: GL Const GL_VERTEX_ARRAY_EXT
endrem
Const GL_VERTEX_ARRAY_EXT=$8074
rem
bbdoc: GL Const GL_NORMAL_ARRAY_EXT
endrem
Const GL_NORMAL_ARRAY_EXT=$8075
rem
bbdoc: GL Const GL_COLOR_ARRAY_EXT
endrem
Const GL_COLOR_ARRAY_EXT=$8076
rem
bbdoc: GL Const GL_INDEX_ARRAY_EXT
endrem
Const GL_INDEX_ARRAY_EXT=$8077
rem
bbdoc: GL Const GL_TEXTURE_COORD_ARRAY_EXT
endrem
Const GL_TEXTURE_COORD_ARRAY_EXT=$8078
rem
bbdoc: GL Const GL_EDGE_FLAG_ARRAY_EXT
endrem
Const GL_EDGE_FLAG_ARRAY_EXT=$8079
rem
bbdoc: GL Const GL_VERTEX_ARRAY_SIZE_EXT
endrem
Const GL_VERTEX_ARRAY_SIZE_EXT=$807A
rem
bbdoc: GL Const GL_VERTEX_ARRAY_TYPE_EXT
endrem
Const GL_VERTEX_ARRAY_TYPE_EXT=$807B
rem
bbdoc: GL Const GL_VERTEX_ARRAY_STRIDE_EXT
endrem
Const GL_VERTEX_ARRAY_STRIDE_EXT=$807C
rem
bbdoc: GL Const GL_VERTEX_ARRAY_COUNT_EXT
endrem
Const GL_VERTEX_ARRAY_COUNT_EXT=$807D
rem
bbdoc: GL Const GL_NORMAL_ARRAY_TYPE_EXT
endrem
Const GL_NORMAL_ARRAY_TYPE_EXT=$807E
rem
bbdoc: GL Const GL_NORMAL_ARRAY_STRIDE_EXT
endrem
Const GL_NORMAL_ARRAY_STRIDE_EXT=$807F
rem
bbdoc: GL Const GL_NORMAL_ARRAY_COUNT_EXT
endrem
Const GL_NORMAL_ARRAY_COUNT_EXT=$8080
rem
bbdoc: GL Const GL_COLOR_ARRAY_SIZE_EXT
endrem
Const GL_COLOR_ARRAY_SIZE_EXT=$8081
rem
bbdoc: GL Const GL_COLOR_ARRAY_TYPE_EXT
endrem
Const GL_COLOR_ARRAY_TYPE_EXT=$8082
rem
bbdoc: GL Const GL_COLOR_ARRAY_STRIDE_EXT
endrem
Const GL_COLOR_ARRAY_STRIDE_EXT=$8083
rem
bbdoc: GL Const GL_COLOR_ARRAY_COUNT_EXT
endrem
Const GL_COLOR_ARRAY_COUNT_EXT=$8084
rem
bbdoc: GL Const GL_INDEX_ARRAY_TYPE_EXT
endrem
Const GL_INDEX_ARRAY_TYPE_EXT=$8085
rem
bbdoc: GL Const GL_INDEX_ARRAY_STRIDE_EXT
endrem
Const GL_INDEX_ARRAY_STRIDE_EXT=$8086
rem
bbdoc: GL Const GL_INDEX_ARRAY_COUNT_EXT
endrem
Const GL_INDEX_ARRAY_COUNT_EXT=$8087
rem
bbdoc: GL Const GL_TEXTURE_COORD_ARRAY_SIZE_EXT
endrem
Const GL_TEXTURE_COORD_ARRAY_SIZE_EXT=$8088
rem
bbdoc: GL Const GL_TEXTURE_COORD_ARRAY_TYPE_EXT
endrem
Const GL_TEXTURE_COORD_ARRAY_TYPE_EXT=$8089
rem
bbdoc: GL Const GL_TEXTURE_COORD_ARRAY_STRIDE_EXT
endrem
Const GL_TEXTURE_COORD_ARRAY_STRIDE_EXT=$808A
rem
bbdoc: GL Const GL_TEXTURE_COORD_ARRAY_COUNT_EXT
endrem
Const GL_TEXTURE_COORD_ARRAY_COUNT_EXT=$808B
rem
bbdoc: GL Const GL_EDGE_FLAG_ARRAY_STRIDE_EXT
endrem
Const GL_EDGE_FLAG_ARRAY_STRIDE_EXT=$808C
rem
bbdoc: GL Const GL_EDGE_FLAG_ARRAY_COUNT_EXT
endrem
Const GL_EDGE_FLAG_ARRAY_COUNT_EXT=$808D
rem
bbdoc: GL Const GL_VERTEX_ARRAY_POINTER_EXT
endrem
Const GL_VERTEX_ARRAY_POINTER_EXT=$808E
rem
bbdoc: GL Const GL_NORMAL_ARRAY_POINTER_EXT
endrem
Const GL_NORMAL_ARRAY_POINTER_EXT=$808F
rem
bbdoc: GL Const GL_COLOR_ARRAY_POINTER_EXT
endrem
Const GL_COLOR_ARRAY_POINTER_EXT=$8090
rem
bbdoc: GL Const GL_INDEX_ARRAY_POINTER_EXT
endrem
Const GL_INDEX_ARRAY_POINTER_EXT=$8091
rem
bbdoc: GL Const GL_TEXTURE_COORD_ARRAY_POINTER_EXT
endrem
Const GL_TEXTURE_COORD_ARRAY_POINTER_EXT=$8092
rem
bbdoc: GL Const GL_EDGE_FLAG_ARRAY_POINTER_EXT
endrem
Const GL_EDGE_FLAG_ARRAY_POINTER_EXT=$8093
rem
bbdoc: GL Global glArrayElementEXT(i_:Int)
endrem
Global glArrayElementEXT(i_:Int)="__glewArrayElementEXT"
rem
bbdoc: GL Global glColorPointerEXT(size_:Int,type_:Int,stride_:Int,count_:Int,pointer_:Byte Ptr)
endrem
Global glColorPointerEXT(size_:Int,type_:Int,stride_:Int,count_:Int,pointer_:Byte Ptr)="__glewColorPointerEXT"
rem
bbdoc: GL Global glDrawArraysEXT(mode_:Int,first_:Int,count_:Int)
endrem
Global glDrawArraysEXT(mode_:Int,first_:Int,count_:Int)="__glewDrawArraysEXT"
rem
bbdoc: GL Global glEdgeFlagPointerEXT(stride_:Int,count_:Int,pointer_:Byte Ptr)
endrem
Global glEdgeFlagPointerEXT(stride_:Int,count_:Int,pointer_:Byte Ptr)="__glewEdgeFlagPointerEXT"
rem
bbdoc: GL Global glIndexPointerEXT(type_:Int,stride_:Int,count_:Int,pointer_:Byte Ptr)
endrem
Global glIndexPointerEXT(type_:Int,stride_:Int,count_:Int,pointer_:Byte Ptr)="__glewIndexPointerEXT"
rem
bbdoc: GL Global glNormalPointerEXT(type_:Int,stride_:Int,count_:Int,pointer_:Byte Ptr)
endrem
Global glNormalPointerEXT(type_:Int,stride_:Int,count_:Int,pointer_:Byte Ptr)="__glewNormalPointerEXT"
rem
bbdoc: GL Global glTexCoordPointerEXT(size_:Int,type_:Int,stride_:Int,count_:Int,pointer_:Byte Ptr)
endrem
Global glTexCoordPointerEXT(size_:Int,type_:Int,stride_:Int,count_:Int,pointer_:Byte Ptr)="__glewTexCoordPointerEXT"
rem
bbdoc: GL Global glVertexPointerEXT(size_:Int,type_:Int,stride_:Int,count_:Int,pointer_:Byte Ptr)
endrem
Global glVertexPointerEXT(size_:Int,type_:Int,stride_:Int,count_:Int,pointer_:Byte Ptr)="__glewVertexPointerEXT"
rem
bbdoc: GL Const GL_EXT_vertex_array_bgra
endrem
Const GL_EXT_vertex_array_bgra=1
rem
bbdoc: GL Const GL_EXT_vertex_attrib_64bit
endrem
Const GL_EXT_vertex_attrib_64bit=1
rem
bbdoc: GL Const GL_DOUBLE_MAT2_EXT
endrem
Const GL_DOUBLE_MAT2_EXT=$8F46
rem
bbdoc: GL Const GL_DOUBLE_MAT3_EXT
endrem
Const GL_DOUBLE_MAT3_EXT=$8F47
rem
bbdoc: GL Const GL_DOUBLE_MAT4_EXT
endrem
Const GL_DOUBLE_MAT4_EXT=$8F48
rem
bbdoc: GL Const GL_DOUBLE_MAT2x3_EXT
endrem
Const GL_DOUBLE_MAT2x3_EXT=$8F49
rem
bbdoc: GL Const GL_DOUBLE_MAT2x4_EXT
endrem
Const GL_DOUBLE_MAT2x4_EXT=$8F4A
rem
bbdoc: GL Const GL_DOUBLE_MAT3x2_EXT
endrem
Const GL_DOUBLE_MAT3x2_EXT=$8F4B
rem
bbdoc: GL Const GL_DOUBLE_MAT3x4_EXT
endrem
Const GL_DOUBLE_MAT3x4_EXT=$8F4C
rem
bbdoc: GL Const GL_DOUBLE_MAT4x2_EXT
endrem
Const GL_DOUBLE_MAT4x2_EXT=$8F4D
rem
bbdoc: GL Const GL_DOUBLE_MAT4x3_EXT
endrem
Const GL_DOUBLE_MAT4x3_EXT=$8F4E
rem
bbdoc: GL Const GL_DOUBLE_VEC2_EXT
endrem
Const GL_DOUBLE_VEC2_EXT=$8FFC
rem
bbdoc: GL Const GL_DOUBLE_VEC3_EXT
endrem
Const GL_DOUBLE_VEC3_EXT=$8FFD
rem
bbdoc: GL Const GL_DOUBLE_VEC4_EXT
endrem
Const GL_DOUBLE_VEC4_EXT=$8FFE
rem
bbdoc: GL Global glGetVertexAttribLdvEXT(index_:Int,pname_:Int,params_:Double Ptr)
endrem
Global glGetVertexAttribLdvEXT(index_:Int,pname_:Int,params_:Double Ptr)="__glewGetVertexAttribLdvEXT"
rem
bbdoc: GL Global glVertexArrayVertexAttribLOffsetEXT(vaobj_:Int,buffer_:Int,index_:Int,size_:Int,type_:Int,stride_:Int,offset_:Int)
endrem
Global glVertexArrayVertexAttribLOffsetEXT(vaobj_:Int,buffer_:Int,index_:Int,size_:Int,type_:Int,stride_:Int,offset_:Int)="__glewVertexArrayVertexAttribLOffsetEXT"
rem
bbdoc: GL Global glVertexAttribL1dEXT(index_:Int,x_:Double)
endrem
Global glVertexAttribL1dEXT(index_:Int,x_:Double)="__glewVertexAttribL1dEXT"
rem
bbdoc: GL Global glVertexAttribL1dvEXT(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttribL1dvEXT(index_:Int,v_:Double Ptr)="__glewVertexAttribL1dvEXT"
rem
bbdoc: GL Global glVertexAttribL2dEXT(index_:Int,x_:Double,y_:Double)
endrem
Global glVertexAttribL2dEXT(index_:Int,x_:Double,y_:Double)="__glewVertexAttribL2dEXT"
rem
bbdoc: GL Global glVertexAttribL2dvEXT(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttribL2dvEXT(index_:Int,v_:Double Ptr)="__glewVertexAttribL2dvEXT"
rem
bbdoc: GL Global glVertexAttribL3dEXT(index_:Int,x_:Double,y_:Double,z_:Double)
endrem
Global glVertexAttribL3dEXT(index_:Int,x_:Double,y_:Double,z_:Double)="__glewVertexAttribL3dEXT"
rem
bbdoc: GL Global glVertexAttribL3dvEXT(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttribL3dvEXT(index_:Int,v_:Double Ptr)="__glewVertexAttribL3dvEXT"
rem
bbdoc: GL Global glVertexAttribL4dEXT(index_:Int,x_:Double,y_:Double,z_:Double,w_:Double)
endrem
Global glVertexAttribL4dEXT(index_:Int,x_:Double,y_:Double,z_:Double,w_:Double)="__glewVertexAttribL4dEXT"
rem
bbdoc: GL Global glVertexAttribL4dvEXT(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttribL4dvEXT(index_:Int,v_:Double Ptr)="__glewVertexAttribL4dvEXT"
rem
bbdoc: GL Global glVertexAttribLPointerEXT(index_:Int,size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)
endrem
Global glVertexAttribLPointerEXT(index_:Int,size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)="__glewVertexAttribLPointerEXT"
rem
bbdoc: GL Const GL_EXT_vertex_shader
endrem
Const GL_EXT_vertex_shader=1
rem
bbdoc: GL Const GL_VERTEX_SHADER_EXT
endrem
Const GL_VERTEX_SHADER_EXT=$8780
rem
bbdoc: GL Const GL_VERTEX_SHADER_BINDING_EXT
endrem
Const GL_VERTEX_SHADER_BINDING_EXT=$8781
rem
bbdoc: GL Const GL_OP_INDEX_EXT
endrem
Const GL_OP_INDEX_EXT=$8782
rem
bbdoc: GL Const GL_OP_NEGATE_EXT
endrem
Const GL_OP_NEGATE_EXT=$8783
rem
bbdoc: GL Const GL_OP_DOT3_EXT
endrem
Const GL_OP_DOT3_EXT=$8784
rem
bbdoc: GL Const GL_OP_DOT4_EXT
endrem
Const GL_OP_DOT4_EXT=$8785
rem
bbdoc: GL Const GL_OP_MUL_EXT
endrem
Const GL_OP_MUL_EXT=$8786
rem
bbdoc: GL Const GL_OP_ADD_EXT
endrem
Const GL_OP_ADD_EXT=$8787
rem
bbdoc: GL Const GL_OP_MADD_EXT
endrem
Const GL_OP_MADD_EXT=$8788
rem
bbdoc: GL Const GL_OP_FRAC_EXT
endrem
Const GL_OP_FRAC_EXT=$8789
rem
bbdoc: GL Const GL_OP_MAX_EXT
endrem
Const GL_OP_MAX_EXT=$878A
rem
bbdoc: GL Const GL_OP_MIN_EXT
endrem
Const GL_OP_MIN_EXT=$878B
rem
bbdoc: GL Const GL_OP_SET_GE_EXT
endrem
Const GL_OP_SET_GE_EXT=$878C
rem
bbdoc: GL Const GL_OP_SET_LT_EXT
endrem
Const GL_OP_SET_LT_EXT=$878D
rem
bbdoc: GL Const GL_OP_CLAMP_EXT
endrem
Const GL_OP_CLAMP_EXT=$878E
rem
bbdoc: GL Const GL_OP_FLOOR_EXT
endrem
Const GL_OP_FLOOR_EXT=$878F
rem
bbdoc: GL Const GL_OP_ROUND_EXT
endrem
Const GL_OP_ROUND_EXT=$8790
rem
bbdoc: GL Const GL_OP_EXP_BASE_2_EXT
endrem
Const GL_OP_EXP_BASE_2_EXT=$8791
rem
bbdoc: GL Const GL_OP_LOG_BASE_2_EXT
endrem
Const GL_OP_LOG_BASE_2_EXT=$8792
rem
bbdoc: GL Const GL_OP_POWER_EXT
endrem
Const GL_OP_POWER_EXT=$8793
rem
bbdoc: GL Const GL_OP_RECIP_EXT
endrem
Const GL_OP_RECIP_EXT=$8794
rem
bbdoc: GL Const GL_OP_RECIP_SQRT_EXT
endrem
Const GL_OP_RECIP_SQRT_EXT=$8795
rem
bbdoc: GL Const GL_OP_SUB_EXT
endrem
Const GL_OP_SUB_EXT=$8796
rem
bbdoc: GL Const GL_OP_CROSS_PRODUCT_EXT
endrem
Const GL_OP_CROSS_PRODUCT_EXT=$8797
rem
bbdoc: GL Const GL_OP_MULTIPLY_MATRIX_EXT
endrem
Const GL_OP_MULTIPLY_MATRIX_EXT=$8798
rem
bbdoc: GL Const GL_OP_MOV_EXT
endrem
Const GL_OP_MOV_EXT=$8799
rem
bbdoc: GL Const GL_OUTPUT_VERTEX_EXT
endrem
Const GL_OUTPUT_VERTEX_EXT=$879A
rem
bbdoc: GL Const GL_OUTPUT_COLOR0_EXT
endrem
Const GL_OUTPUT_COLOR0_EXT=$879B
rem
bbdoc: GL Const GL_OUTPUT_COLOR1_EXT
endrem
Const GL_OUTPUT_COLOR1_EXT=$879C
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD0_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD0_EXT=$879D
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD1_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD1_EXT=$879E
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD2_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD2_EXT=$879F
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD3_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD3_EXT=$87A0
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD4_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD4_EXT=$87A1
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD5_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD5_EXT=$87A2
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD6_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD6_EXT=$87A3
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD7_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD7_EXT=$87A4
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD8_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD8_EXT=$87A5
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD9_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD9_EXT=$87A6
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD10_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD10_EXT=$87A7
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD11_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD11_EXT=$87A8
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD12_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD12_EXT=$87A9
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD13_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD13_EXT=$87AA
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD14_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD14_EXT=$87AB
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD15_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD15_EXT=$87AC
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD16_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD16_EXT=$87AD
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD17_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD17_EXT=$87AE
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD18_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD18_EXT=$87AF
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD19_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD19_EXT=$87B0
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD20_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD20_EXT=$87B1
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD21_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD21_EXT=$87B2
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD22_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD22_EXT=$87B3
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD23_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD23_EXT=$87B4
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD24_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD24_EXT=$87B5
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD25_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD25_EXT=$87B6
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD26_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD26_EXT=$87B7
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD27_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD27_EXT=$87B8
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD28_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD28_EXT=$87B9
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD29_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD29_EXT=$87BA
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD30_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD30_EXT=$87BB
rem
bbdoc: GL Const GL_OUTPUT_TEXTURE_COORD31_EXT
endrem
Const GL_OUTPUT_TEXTURE_COORD31_EXT=$87BC
rem
bbdoc: GL Const GL_OUTPUT_FOG_EXT
endrem
Const GL_OUTPUT_FOG_EXT=$87BD
rem
bbdoc: GL Const GL_SCALAR_EXT
endrem
Const GL_SCALAR_EXT=$87BE
rem
bbdoc: GL Const GL_VECTOR_EXT
endrem
Const GL_VECTOR_EXT=$87BF
rem
bbdoc: GL Const GL_MATRIX_EXT
endrem
Const GL_MATRIX_EXT=$87C0
rem
bbdoc: GL Const GL_VARIANT_EXT
endrem
Const GL_VARIANT_EXT=$87C1
rem
bbdoc: GL Const GL_INVARIANT_EXT
endrem
Const GL_INVARIANT_EXT=$87C2
rem
bbdoc: GL Const GL_LOCAL_CONSTANT_EXT
endrem
Const GL_LOCAL_CONSTANT_EXT=$87C3
rem
bbdoc: GL Const GL_LOCAL_EXT
endrem
Const GL_LOCAL_EXT=$87C4
rem
bbdoc: GL Const GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT
endrem
Const GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT=$87C5
rem
bbdoc: GL Const GL_MAX_VERTEX_SHADER_VARIANTS_EXT
endrem
Const GL_MAX_VERTEX_SHADER_VARIANTS_EXT=$87C6
rem
bbdoc: GL Const GL_MAX_VERTEX_SHADER_INVARIANTS_EXT
endrem
Const GL_MAX_VERTEX_SHADER_INVARIANTS_EXT=$87C7
rem
bbdoc: GL Const GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT
endrem
Const GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT=$87C8
rem
bbdoc: GL Const GL_MAX_VERTEX_SHADER_LOCALS_EXT
endrem
Const GL_MAX_VERTEX_SHADER_LOCALS_EXT=$87C9
rem
bbdoc: GL Const GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT
endrem
Const GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT=$87CA
rem
bbdoc: GL Const GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT
endrem
Const GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT=$87CB
rem
bbdoc: GL Const GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT
endrem
Const GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT=$87CC
rem
bbdoc: GL Const GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT
endrem
Const GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT=$87CD
rem
bbdoc: GL Const GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT
endrem
Const GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT=$87CE
rem
bbdoc: GL Const GL_VERTEX_SHADER_INSTRUCTIONS_EXT
endrem
Const GL_VERTEX_SHADER_INSTRUCTIONS_EXT=$87CF
rem
bbdoc: GL Const GL_VERTEX_SHADER_VARIANTS_EXT
endrem
Const GL_VERTEX_SHADER_VARIANTS_EXT=$87D0
rem
bbdoc: GL Const GL_VERTEX_SHADER_INVARIANTS_EXT
endrem
Const GL_VERTEX_SHADER_INVARIANTS_EXT=$87D1
rem
bbdoc: GL Const GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT
endrem
Const GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT=$87D2
rem
bbdoc: GL Const GL_VERTEX_SHADER_LOCALS_EXT
endrem
Const GL_VERTEX_SHADER_LOCALS_EXT=$87D3
rem
bbdoc: GL Const GL_VERTEX_SHADER_OPTIMIZED_EXT
endrem
Const GL_VERTEX_SHADER_OPTIMIZED_EXT=$87D4
rem
bbdoc: GL Const GL_X_EXT
endrem
Const GL_X_EXT=$87D5
rem
bbdoc: GL Const GL_Y_EXT
endrem
Const GL_Y_EXT=$87D6
rem
bbdoc: GL Const GL_Z_EXT
endrem
Const GL_Z_EXT=$87D7
rem
bbdoc: GL Const GL_W_EXT
endrem
Const GL_W_EXT=$87D8
rem
bbdoc: GL Const GL_NEGATIVE_X_EXT
endrem
Const GL_NEGATIVE_X_EXT=$87D9
rem
bbdoc: GL Const GL_NEGATIVE_Y_EXT
endrem
Const GL_NEGATIVE_Y_EXT=$87DA
rem
bbdoc: GL Const GL_NEGATIVE_Z_EXT
endrem
Const GL_NEGATIVE_Z_EXT=$87DB
rem
bbdoc: GL Const GL_NEGATIVE_W_EXT
endrem
Const GL_NEGATIVE_W_EXT=$87DC
rem
bbdoc: GL Const GL_ZERO_EXT
endrem
Const GL_ZERO_EXT=$87DD
rem
bbdoc: GL Const GL_ONE_EXT
endrem
Const GL_ONE_EXT=$87DE
rem
bbdoc: GL Const GL_NEGATIVE_ONE_EXT
endrem
Const GL_NEGATIVE_ONE_EXT=$87DF
rem
bbdoc: GL Const GL_NORMALIZED_RANGE_EXT
endrem
Const GL_NORMALIZED_RANGE_EXT=$87E0
rem
bbdoc: GL Const GL_FULL_RANGE_EXT
endrem
Const GL_FULL_RANGE_EXT=$87E1
rem
bbdoc: GL Const GL_CURRENT_VERTEX_EXT
endrem
Const GL_CURRENT_VERTEX_EXT=$87E2
rem
bbdoc: GL Const GL_MVP_MATRIX_EXT
endrem
Const GL_MVP_MATRIX_EXT=$87E3
rem
bbdoc: GL Const GL_VARIANT_VALUE_EXT
endrem
Const GL_VARIANT_VALUE_EXT=$87E4
rem
bbdoc: GL Const GL_VARIANT_DATATYPE_EXT
endrem
Const GL_VARIANT_DATATYPE_EXT=$87E5
rem
bbdoc: GL Const GL_VARIANT_ARRAY_STRIDE_EXT
endrem
Const GL_VARIANT_ARRAY_STRIDE_EXT=$87E6
rem
bbdoc: GL Const GL_VARIANT_ARRAY_TYPE_EXT
endrem
Const GL_VARIANT_ARRAY_TYPE_EXT=$87E7
rem
bbdoc: GL Const GL_VARIANT_ARRAY_EXT
endrem
Const GL_VARIANT_ARRAY_EXT=$87E8
rem
bbdoc: GL Const GL_VARIANT_ARRAY_POINTER_EXT
endrem
Const GL_VARIANT_ARRAY_POINTER_EXT=$87E9
rem
bbdoc: GL Const GL_INVARIANT_VALUE_EXT
endrem
Const GL_INVARIANT_VALUE_EXT=$87EA
rem
bbdoc: GL Const GL_INVARIANT_DATATYPE_EXT
endrem
Const GL_INVARIANT_DATATYPE_EXT=$87EB
rem
bbdoc: GL Const GL_LOCAL_CONSTANT_VALUE_EXT
endrem
Const GL_LOCAL_CONSTANT_VALUE_EXT=$87EC
rem
bbdoc: GL Const GL_LOCAL_CONSTANT_DATATYPE_EXT
endrem
Const GL_LOCAL_CONSTANT_DATATYPE_EXT=$87ED
rem
bbdoc: GL Global glBeginVertexShaderEXT()
endrem
Global glBeginVertexShaderEXT()="__glewBeginVertexShaderEXT"
rem
bbdoc: GL Global glBindLightParameterEXT:Int(light_:Int,value_:Int)
endrem
Global glBindLightParameterEXT:Int(light_:Int,value_:Int)="__glewBindLightParameterEXT"
rem
bbdoc: GL Global glBindMaterialParameterEXT:Int(face_:Int,value_:Int)
endrem
Global glBindMaterialParameterEXT:Int(face_:Int,value_:Int)="__glewBindMaterialParameterEXT"
rem
bbdoc: GL Global glBindParameterEXT:Int(value_:Int)
endrem
Global glBindParameterEXT:Int(value_:Int)="__glewBindParameterEXT"
rem
bbdoc: GL Global glBindTexGenParameterEXT:Int(unit_:Int,coord_:Int,value_:Int)
endrem
Global glBindTexGenParameterEXT:Int(unit_:Int,coord_:Int,value_:Int)="__glewBindTexGenParameterEXT"
rem
bbdoc: GL Global glBindTextureUnitParameterEXT:Int(unit_:Int,value_:Int)
endrem
Global glBindTextureUnitParameterEXT:Int(unit_:Int,value_:Int)="__glewBindTextureUnitParameterEXT"
rem
bbdoc: GL Global glBindVertexShaderEXT(id_:Int)
endrem
Global glBindVertexShaderEXT(id_:Int)="__glewBindVertexShaderEXT"
rem
bbdoc: GL Global glDeleteVertexShaderEXT(id_:Int)
endrem
Global glDeleteVertexShaderEXT(id_:Int)="__glewDeleteVertexShaderEXT"
rem
bbdoc: GL Global glDisableVariantClientStateEXT(id_:Int)
endrem
Global glDisableVariantClientStateEXT(id_:Int)="__glewDisableVariantClientStateEXT"
rem
bbdoc: GL Global glEnableVariantClientStateEXT(id_:Int)
endrem
Global glEnableVariantClientStateEXT(id_:Int)="__glewEnableVariantClientStateEXT"
rem
bbdoc: GL Global glEndVertexShaderEXT()
endrem
Global glEndVertexShaderEXT()="__glewEndVertexShaderEXT"
rem
bbdoc: GL Global glExtractComponentEXT(res_:Int,src_:Int,num_:Int)
endrem
Global glExtractComponentEXT(res_:Int,src_:Int,num_:Int)="__glewExtractComponentEXT"
rem
bbdoc: GL Global glGenSymbolsEXT:Int(dataType_:Int,storageType_:Int,range_:Int,components_:Int)
endrem
Global glGenSymbolsEXT:Int(dataType_:Int,storageType_:Int,range_:Int,components_:Int)="__glewGenSymbolsEXT"
rem
bbdoc: GL Global glGenVertexShadersEXT:Int(range_:Int)
endrem
Global glGenVertexShadersEXT:Int(range_:Int)="__glewGenVertexShadersEXT"
rem
bbdoc: GL Global glGetInvariantBooleanvEXT(id_:Int,value_:Int,data_:Byte Ptr)
endrem
Global glGetInvariantBooleanvEXT(id_:Int,value_:Int,data_:Byte Ptr)="__glewGetInvariantBooleanvEXT"
rem
bbdoc: GL Global glGetInvariantFloatvEXT(id_:Int,value_:Int,data_:Float Ptr)
endrem
Global glGetInvariantFloatvEXT(id_:Int,value_:Int,data_:Float Ptr)="__glewGetInvariantFloatvEXT"
rem
bbdoc: GL Global glGetInvariantIntegervEXT(id_:Int,value_:Int,data_:Int Ptr)
endrem
Global glGetInvariantIntegervEXT(id_:Int,value_:Int,data_:Int Ptr)="__glewGetInvariantIntegervEXT"
rem
bbdoc: GL Global glGetLocalConstantBooleanvEXT(id_:Int,value_:Int,data_:Byte Ptr)
endrem
Global glGetLocalConstantBooleanvEXT(id_:Int,value_:Int,data_:Byte Ptr)="__glewGetLocalConstantBooleanvEXT"
rem
bbdoc: GL Global glGetLocalConstantFloatvEXT(id_:Int,value_:Int,data_:Float Ptr)
endrem
Global glGetLocalConstantFloatvEXT(id_:Int,value_:Int,data_:Float Ptr)="__glewGetLocalConstantFloatvEXT"
rem
bbdoc: GL Global glGetLocalConstantIntegervEXT(id_:Int,value_:Int,data_:Int Ptr)
endrem
Global glGetLocalConstantIntegervEXT(id_:Int,value_:Int,data_:Int Ptr)="__glewGetLocalConstantIntegervEXT"
rem
bbdoc: GL Global glGetVariantBooleanvEXT(id_:Int,value_:Int,data_:Byte Ptr)
endrem
Global glGetVariantBooleanvEXT(id_:Int,value_:Int,data_:Byte Ptr)="__glewGetVariantBooleanvEXT"
rem
bbdoc: GL Global glGetVariantFloatvEXT(id_:Int,value_:Int,data_:Float Ptr)
endrem
Global glGetVariantFloatvEXT(id_:Int,value_:Int,data_:Float Ptr)="__glewGetVariantFloatvEXT"
rem
bbdoc: GL Global glGetVariantIntegervEXT(id_:Int,value_:Int,data_:Int Ptr)
endrem
Global glGetVariantIntegervEXT(id_:Int,value_:Int,data_:Int Ptr)="__glewGetVariantIntegervEXT"
rem
bbdoc: GL Global glGetVariantPointervEXT(id_:Int,value_:Int,data_:Byte Ptr Ptr)
endrem
Global glGetVariantPointervEXT(id_:Int,value_:Int,data_:Byte Ptr Ptr)="__glewGetVariantPointervEXT"
rem
bbdoc: GL Global glInsertComponentEXT(res_:Int,src_:Int,num_:Int)
endrem
Global glInsertComponentEXT(res_:Int,src_:Int,num_:Int)="__glewInsertComponentEXT"
rem
bbdoc: GL Global glIsVariantEnabledEXT:Byte(id_:Int,cap_:Int)
endrem
Global glIsVariantEnabledEXT:Byte(id_:Int,cap_:Int)="__glewIsVariantEnabledEXT"
rem
bbdoc: GL Global glSetInvariantEXT(id_:Int,type_:Int,addr_:Byte Ptr)
endrem
Global glSetInvariantEXT(id_:Int,type_:Int,addr_:Byte Ptr)="__glewSetInvariantEXT"
rem
bbdoc: GL Global glSetLocalConstantEXT(id_:Int,type_:Int,addr_:Byte Ptr)
endrem
Global glSetLocalConstantEXT(id_:Int,type_:Int,addr_:Byte Ptr)="__glewSetLocalConstantEXT"
rem
bbdoc: GL Global glShaderOp1EXT(op_:Int,res_:Int,arg1_:Int)
endrem
Global glShaderOp1EXT(op_:Int,res_:Int,arg1_:Int)="__glewShaderOp1EXT"
rem
bbdoc: GL Global glShaderOp2EXT(op_:Int,res_:Int,arg1_:Int,arg2_:Int)
endrem
Global glShaderOp2EXT(op_:Int,res_:Int,arg1_:Int,arg2_:Int)="__glewShaderOp2EXT"
rem
bbdoc: GL Global glShaderOp3EXT(op_:Int,res_:Int,arg1_:Int,arg2_:Int,arg3_:Int)
endrem
Global glShaderOp3EXT(op_:Int,res_:Int,arg1_:Int,arg2_:Int,arg3_:Int)="__glewShaderOp3EXT"
rem
bbdoc: GL Global glSwizzleEXT(res_:Int,in_:Int,outX_:Int,outY_:Int,outZ_:Int,outW_:Int)
endrem
Global glSwizzleEXT(res_:Int,in_:Int,outX_:Int,outY_:Int,outZ_:Int,outW_:Int)="__glewSwizzleEXT"
rem
bbdoc: GL Global glVariantPointerEXT(id_:Int,type_:Int,stride_:Int,addr_:Byte Ptr)
endrem
Global glVariantPointerEXT(id_:Int,type_:Int,stride_:Int,addr_:Byte Ptr)="__glewVariantPointerEXT"
rem
bbdoc: GL Global glVariantbvEXT(id_:Int,addr_:Byte Ptr)
endrem
Global glVariantbvEXT(id_:Int,addr_:Byte Ptr)="__glewVariantbvEXT"
rem
bbdoc: GL Global glVariantdvEXT(id_:Int,addr_:Double Ptr)
endrem
Global glVariantdvEXT(id_:Int,addr_:Double Ptr)="__glewVariantdvEXT"
rem
bbdoc: GL Global glVariantfvEXT(id_:Int,addr_:Float Ptr)
endrem
Global glVariantfvEXT(id_:Int,addr_:Float Ptr)="__glewVariantfvEXT"
rem
bbdoc: GL Global glVariantivEXT(id_:Int,addr_:Int Ptr)
endrem
Global glVariantivEXT(id_:Int,addr_:Int Ptr)="__glewVariantivEXT"
rem
bbdoc: GL Global glVariantsvEXT(id_:Int,addr_:Short Ptr)
endrem
Global glVariantsvEXT(id_:Int,addr_:Short Ptr)="__glewVariantsvEXT"
rem
bbdoc: GL Global glVariantubvEXT(id_:Int,addr_:Byte Ptr)
endrem
Global glVariantubvEXT(id_:Int,addr_:Byte Ptr)="__glewVariantubvEXT"
rem
bbdoc: GL Global glVariantuivEXT(id_:Int,addr_:Int Ptr)
endrem
Global glVariantuivEXT(id_:Int,addr_:Int Ptr)="__glewVariantuivEXT"
rem
bbdoc: GL Global glVariantusvEXT(id_:Int,addr_:Short Ptr)
endrem
Global glVariantusvEXT(id_:Int,addr_:Short Ptr)="__glewVariantusvEXT"
rem
bbdoc: GL Global glWriteMaskEXT(res_:Int,in_:Int,outX_:Int,outY_:Int,outZ_:Int,outW_:Int)
endrem
Global glWriteMaskEXT(res_:Int,in_:Int,outX_:Int,outY_:Int,outZ_:Int,outW_:Int)="__glewWriteMaskEXT"
rem
bbdoc: GL Const GL_EXT_vertex_weighting
endrem
Const GL_EXT_vertex_weighting=1
rem
bbdoc: GL Const GL_MODELVIEW0_STACK_DEPTH_EXT
endrem
Const GL_MODELVIEW0_STACK_DEPTH_EXT=$0BA3
rem
bbdoc: GL Const GL_MODELVIEW0_MATRIX_EXT
endrem
Const GL_MODELVIEW0_MATRIX_EXT=$0BA6
rem
bbdoc: GL Const GL_MODELVIEW0_EXT
endrem
Const GL_MODELVIEW0_EXT=$1700
rem
bbdoc: GL Const GL_MODELVIEW1_STACK_DEPTH_EXT
endrem
Const GL_MODELVIEW1_STACK_DEPTH_EXT=$8502
rem
bbdoc: GL Const GL_MODELVIEW1_MATRIX_EXT
endrem
Const GL_MODELVIEW1_MATRIX_EXT=$8506
rem
bbdoc: GL Const GL_VERTEX_WEIGHTING_EXT
endrem
Const GL_VERTEX_WEIGHTING_EXT=$8509
rem
bbdoc: GL Const GL_MODELVIEW1_EXT
endrem
Const GL_MODELVIEW1_EXT=$850A
rem
bbdoc: GL Const GL_CURRENT_VERTEX_WEIGHT_EXT
endrem
Const GL_CURRENT_VERTEX_WEIGHT_EXT=$850B
rem
bbdoc: GL Const GL_VERTEX_WEIGHT_ARRAY_EXT
endrem
Const GL_VERTEX_WEIGHT_ARRAY_EXT=$850C
rem
bbdoc: GL Const GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT
endrem
Const GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT=$850D
rem
bbdoc: GL Const GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT
endrem
Const GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT=$850E
rem
bbdoc: GL Const GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT
endrem
Const GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT=$850F
rem
bbdoc: GL Const GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT
endrem
Const GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT=$8510
rem
bbdoc: GL Global glVertexWeightPointerEXT(size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)
endrem
Global glVertexWeightPointerEXT(size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)="__glewVertexWeightPointerEXT"
rem
bbdoc: GL Global glVertexWeightfEXT(weight_:Float)
endrem
Global glVertexWeightfEXT(weight_:Float)="__glewVertexWeightfEXT"
rem
bbdoc: GL Global glVertexWeightfvEXT(weight_:Float Ptr)
endrem
Global glVertexWeightfvEXT(weight_:Float Ptr)="__glewVertexWeightfvEXT"
rem
bbdoc: GL Const GL_EXT_x11_sync_object
endrem
Const GL_EXT_x11_sync_object=1
rem
bbdoc: GL Const GL_SYNC_X11_FENCE_EXT
endrem
Const GL_SYNC_X11_FENCE_EXT=$90E1
rem
bbdoc: GL Const GL_GREMEDY_frame_terminator
endrem
Const GL_GREMEDY_frame_terminator=1
rem
bbdoc: GL Global glFrameTerminatorGREMEDY()
endrem
Global glFrameTerminatorGREMEDY()="__glewFrameTerminatorGREMEDY"
rem
bbdoc: GL Const GL_GREMEDY_string_marker
endrem
Const GL_GREMEDY_string_marker=1
rem
bbdoc: GL Global glStringMarkerGREMEDY(len_:Int,string_:Byte Ptr)
endrem
Global glStringMarkerGREMEDY(len_:Int,string_:Byte Ptr)="__glewStringMarkerGREMEDY"
rem
bbdoc: GL Const GL_HP_convolution_border_modes
endrem
Const GL_HP_convolution_border_modes=1
rem
bbdoc: GL Const GL_HP_image_transform
endrem
Const GL_HP_image_transform=1
rem
bbdoc: GL Global glGetImageTransformParameterfvHP(target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetImageTransformParameterfvHP(target_:Int,pname_:Int,params_:Float Ptr)="__glewGetImageTransformParameterfvHP"
rem
bbdoc: GL Global glGetImageTransformParameterivHP(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetImageTransformParameterivHP(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetImageTransformParameterivHP"
rem
bbdoc: GL Global glImageTransformParameterfHP(target_:Int,pname_:Int,param_:Float)
endrem
Global glImageTransformParameterfHP(target_:Int,pname_:Int,param_:Float)="__glewImageTransformParameterfHP"
rem
bbdoc: GL Global glImageTransformParameterfvHP(target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glImageTransformParameterfvHP(target_:Int,pname_:Int,params_:Float Ptr)="__glewImageTransformParameterfvHP"
rem
bbdoc: GL Global glImageTransformParameteriHP(target_:Int,pname_:Int,param_:Int)
endrem
Global glImageTransformParameteriHP(target_:Int,pname_:Int,param_:Int)="__glewImageTransformParameteriHP"
rem
bbdoc: GL Global glImageTransformParameterivHP(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glImageTransformParameterivHP(target_:Int,pname_:Int,params_:Int Ptr)="__glewImageTransformParameterivHP"
rem
bbdoc: GL Const GL_HP_occlusion_test
endrem
Const GL_HP_occlusion_test=1
rem
bbdoc: GL Const GL_HP_texture_lighting
endrem
Const GL_HP_texture_lighting=1
rem
bbdoc: GL Const GL_IBM_cull_vertex
endrem
Const GL_IBM_cull_vertex=1
rem
bbdoc: GL Const GL_CULL_VERTEX_IBM
endrem
Const GL_CULL_VERTEX_IBM=103050
rem
bbdoc: GL Const GL_IBM_multimode_draw_arrays
endrem
Const GL_IBM_multimode_draw_arrays=1
rem
bbdoc: GL Global glMultiModeDrawArraysIBM(mode_:Int Ptr,first_:Int Ptr,count_:Int Ptr,primcount_:Int,modestride_:Int)
endrem
Global glMultiModeDrawArraysIBM(mode_:Int Ptr,first_:Int Ptr,count_:Int Ptr,primcount_:Int,modestride_:Int)="__glewMultiModeDrawArraysIBM"
rem
bbdoc: GL Global glMultiModeDrawElementsIBM(mode_:Int Ptr,count_:Int Ptr,type_:Int,indices_:Byte Ptr Ptr,primcount_:Int,modestride_:Int)
endrem
Global glMultiModeDrawElementsIBM(mode_:Int Ptr,count_:Int Ptr,type_:Int,indices_:Byte Ptr Ptr,primcount_:Int,modestride_:Int)="__glewMultiModeDrawElementsIBM"
rem
bbdoc: GL Const GL_IBM_rasterpos_clip
endrem
Const GL_IBM_rasterpos_clip=1
rem
bbdoc: GL Const GL_RASTER_POSITION_UNCLIPPED_IBM
endrem
Const GL_RASTER_POSITION_UNCLIPPED_IBM=103010
rem
bbdoc: GL Const GL_IBM_static_data
endrem
Const GL_IBM_static_data=1
rem
bbdoc: GL Const GL_ALL_STATIC_DATA_IBM
endrem
Const GL_ALL_STATIC_DATA_IBM=103060
rem
bbdoc: GL Const GL_STATIC_VERTEX_ARRAY_IBM
endrem
Const GL_STATIC_VERTEX_ARRAY_IBM=103061
rem
bbdoc: GL Const GL_IBM_texture_mirrored_repeat
endrem
Const GL_IBM_texture_mirrored_repeat=1
rem
bbdoc: GL Const GL_MIRRORED_REPEAT_IBM
endrem
Const GL_MIRRORED_REPEAT_IBM=$8370
rem
bbdoc: GL Const GL_IBM_vertex_array_lists
endrem
Const GL_IBM_vertex_array_lists=1
rem
bbdoc: GL Const GL_VERTEX_ARRAY_LIST_IBM
endrem
Const GL_VERTEX_ARRAY_LIST_IBM=103070
rem
bbdoc: GL Const GL_NORMAL_ARRAY_LIST_IBM
endrem
Const GL_NORMAL_ARRAY_LIST_IBM=103071
rem
bbdoc: GL Const GL_COLOR_ARRAY_LIST_IBM
endrem
Const GL_COLOR_ARRAY_LIST_IBM=103072
rem
bbdoc: GL Const GL_INDEX_ARRAY_LIST_IBM
endrem
Const GL_INDEX_ARRAY_LIST_IBM=103073
rem
bbdoc: GL Const GL_TEXTURE_COORD_ARRAY_LIST_IBM
endrem
Const GL_TEXTURE_COORD_ARRAY_LIST_IBM=103074
rem
bbdoc: GL Const GL_EDGE_FLAG_ARRAY_LIST_IBM
endrem
Const GL_EDGE_FLAG_ARRAY_LIST_IBM=103075
rem
bbdoc: GL Const GL_FOG_COORDINATE_ARRAY_LIST_IBM
endrem
Const GL_FOG_COORDINATE_ARRAY_LIST_IBM=103076
rem
bbdoc: GL Const GL_SECONDARY_COLOR_ARRAY_LIST_IBM
endrem
Const GL_SECONDARY_COLOR_ARRAY_LIST_IBM=103077
rem
bbdoc: GL Const GL_VERTEX_ARRAY_LIST_STRIDE_IBM
endrem
Const GL_VERTEX_ARRAY_LIST_STRIDE_IBM=103080
rem
bbdoc: GL Const GL_NORMAL_ARRAY_LIST_STRIDE_IBM
endrem
Const GL_NORMAL_ARRAY_LIST_STRIDE_IBM=103081
rem
bbdoc: GL Const GL_COLOR_ARRAY_LIST_STRIDE_IBM
endrem
Const GL_COLOR_ARRAY_LIST_STRIDE_IBM=103082
rem
bbdoc: GL Const GL_INDEX_ARRAY_LIST_STRIDE_IBM
endrem
Const GL_INDEX_ARRAY_LIST_STRIDE_IBM=103083
rem
bbdoc: GL Const GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM
endrem
Const GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM=103084
rem
bbdoc: GL Const GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM
endrem
Const GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM=103085
rem
bbdoc: GL Const GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM
endrem
Const GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM=103086
rem
bbdoc: GL Const GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM
endrem
Const GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM=103087
rem
bbdoc: GL Global glColorPointerListIBM(size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr Ptr,ptrstride_:Int)
endrem
Global glColorPointerListIBM(size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr Ptr,ptrstride_:Int)="__glewColorPointerListIBM"
rem
bbdoc: GL Global glEdgeFlagPointerListIBM(stride_:Int,pointer_:Byte Ptr Ptr,ptrstride_:Int)
endrem
Global glEdgeFlagPointerListIBM(stride_:Int,pointer_:Byte Ptr Ptr,ptrstride_:Int)="__glewEdgeFlagPointerListIBM"
rem
bbdoc: GL Global glFogCoordPointerListIBM(type_:Int,stride_:Int,pointer_:Byte Ptr Ptr,ptrstride_:Int)
endrem
Global glFogCoordPointerListIBM(type_:Int,stride_:Int,pointer_:Byte Ptr Ptr,ptrstride_:Int)="__glewFogCoordPointerListIBM"
rem
bbdoc: GL Global glIndexPointerListIBM(type_:Int,stride_:Int,pointer_:Byte Ptr Ptr,ptrstride_:Int)
endrem
Global glIndexPointerListIBM(type_:Int,stride_:Int,pointer_:Byte Ptr Ptr,ptrstride_:Int)="__glewIndexPointerListIBM"
rem
bbdoc: GL Global glNormalPointerListIBM(type_:Int,stride_:Int,pointer_:Byte Ptr Ptr,ptrstride_:Int)
endrem
Global glNormalPointerListIBM(type_:Int,stride_:Int,pointer_:Byte Ptr Ptr,ptrstride_:Int)="__glewNormalPointerListIBM"
rem
bbdoc: GL Global glSecondaryColorPointerListIBM(size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr Ptr,ptrstride_:Int)
endrem
Global glSecondaryColorPointerListIBM(size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr Ptr,ptrstride_:Int)="__glewSecondaryColorPointerListIBM"
rem
bbdoc: GL Global glTexCoordPointerListIBM(size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr Ptr,ptrstride_:Int)
endrem
Global glTexCoordPointerListIBM(size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr Ptr,ptrstride_:Int)="__glewTexCoordPointerListIBM"
rem
bbdoc: GL Global glVertexPointerListIBM(size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr Ptr,ptrstride_:Int)
endrem
Global glVertexPointerListIBM(size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr Ptr,ptrstride_:Int)="__glewVertexPointerListIBM"
rem
bbdoc: GL Const GL_INGR_color_clamp
endrem
Const GL_INGR_color_clamp=1
rem
bbdoc: GL Const GL_RED_MIN_CLAMP_INGR
endrem
Const GL_RED_MIN_CLAMP_INGR=$8560
rem
bbdoc: GL Const GL_GREEN_MIN_CLAMP_INGR
endrem
Const GL_GREEN_MIN_CLAMP_INGR=$8561
rem
bbdoc: GL Const GL_BLUE_MIN_CLAMP_INGR
endrem
Const GL_BLUE_MIN_CLAMP_INGR=$8562
rem
bbdoc: GL Const GL_ALPHA_MIN_CLAMP_INGR
endrem
Const GL_ALPHA_MIN_CLAMP_INGR=$8563
rem
bbdoc: GL Const GL_RED_MAX_CLAMP_INGR
endrem
Const GL_RED_MAX_CLAMP_INGR=$8564
rem
bbdoc: GL Const GL_GREEN_MAX_CLAMP_INGR
endrem
Const GL_GREEN_MAX_CLAMP_INGR=$8565
rem
bbdoc: GL Const GL_BLUE_MAX_CLAMP_INGR
endrem
Const GL_BLUE_MAX_CLAMP_INGR=$8566
rem
bbdoc: GL Const GL_ALPHA_MAX_CLAMP_INGR
endrem
Const GL_ALPHA_MAX_CLAMP_INGR=$8567
rem
bbdoc: GL Const GL_INGR_interlace_read
endrem
Const GL_INGR_interlace_read=1
rem
bbdoc: GL Const GL_INTERLACE_READ_INGR
endrem
Const GL_INTERLACE_READ_INGR=$8568
rem
bbdoc: GL Const GL_INTEL_fragment_shader_ordering
endrem
Const GL_INTEL_fragment_shader_ordering=1
rem
bbdoc: GL Const GL_INTEL_map_texture
endrem
Const GL_INTEL_map_texture=1
rem
bbdoc: GL Const GL_LAYOUT_DEFAULT_INTEL
endrem
Const GL_LAYOUT_DEFAULT_INTEL=0
rem
bbdoc: GL Const GL_LAYOUT_LINEAR_INTEL
endrem
Const GL_LAYOUT_LINEAR_INTEL=1
rem
bbdoc: GL Const GL_LAYOUT_LINEAR_CPU_CACHED_INTEL
endrem
Const GL_LAYOUT_LINEAR_CPU_CACHED_INTEL=2
rem
bbdoc: GL Const GL_TEXTURE_MEMORY_LAYOUT_INTEL
endrem
Const GL_TEXTURE_MEMORY_LAYOUT_INTEL=$83FF
rem
bbdoc: GL Global glMapTexture2DINTEL:Byte Ptr(texture_:Int,level_:Int,access_:Int,stride_:Int Ptr,layout_:Int Ptr)
endrem
Global glMapTexture2DINTEL:Byte Ptr(texture_:Int,level_:Int,access_:Int,stride_:Int Ptr,layout_:Int Ptr)="__glewMapTexture2DINTEL"
rem
bbdoc: GL Global glSyncTextureINTEL(texture_:Int)
endrem
Global glSyncTextureINTEL(texture_:Int)="__glewSyncTextureINTEL"
rem
bbdoc: GL Global glUnmapTexture2DINTEL(texture_:Int,level_:Int)
endrem
Global glUnmapTexture2DINTEL(texture_:Int,level_:Int)="__glewUnmapTexture2DINTEL"
rem
bbdoc: GL Const GL_INTEL_parallel_arrays
endrem
Const GL_INTEL_parallel_arrays=1
rem
bbdoc: GL Const GL_PARALLEL_ARRAYS_INTEL
endrem
Const GL_PARALLEL_ARRAYS_INTEL=$83F4
rem
bbdoc: GL Const GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL
endrem
Const GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL=$83F5
rem
bbdoc: GL Const GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL
endrem
Const GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL=$83F6
rem
bbdoc: GL Const GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL
endrem
Const GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL=$83F7
rem
bbdoc: GL Const GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL
endrem
Const GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL=$83F8
rem
bbdoc: GL Global glColorPointervINTEL(size_:Int,type_:Int,pointer_:Byte Ptr Ptr)
endrem
Global glColorPointervINTEL(size_:Int,type_:Int,pointer_:Byte Ptr Ptr)="__glewColorPointervINTEL"
rem
bbdoc: GL Global glNormalPointervINTEL(type_:Int,pointer_:Byte Ptr Ptr)
endrem
Global glNormalPointervINTEL(type_:Int,pointer_:Byte Ptr Ptr)="__glewNormalPointervINTEL"
rem
bbdoc: GL Global glTexCoordPointervINTEL(size_:Int,type_:Int,pointer_:Byte Ptr Ptr)
endrem
Global glTexCoordPointervINTEL(size_:Int,type_:Int,pointer_:Byte Ptr Ptr)="__glewTexCoordPointervINTEL"
rem
bbdoc: GL Global glVertexPointervINTEL(size_:Int,type_:Int,pointer_:Byte Ptr Ptr)
endrem
Global glVertexPointervINTEL(size_:Int,type_:Int,pointer_:Byte Ptr Ptr)="__glewVertexPointervINTEL"
rem
bbdoc: GL Const GL_INTEL_performance_query
endrem
Const GL_INTEL_performance_query=1
rem
bbdoc: GL Const GL_PERFQUERY_SINGLE_CONTEXT_INTEL
endrem
Const GL_PERFQUERY_SINGLE_CONTEXT_INTEL=$0000
rem
bbdoc: GL Const GL_PERFQUERY_GLOBAL_CONTEXT_INTEL
endrem
Const GL_PERFQUERY_GLOBAL_CONTEXT_INTEL=$0001
rem
bbdoc: GL Const GL_PERFQUERY_DONOT_FLUSH_INTEL
endrem
Const GL_PERFQUERY_DONOT_FLUSH_INTEL=$83F9
rem
bbdoc: GL Const GL_PERFQUERY_FLUSH_INTEL
endrem
Const GL_PERFQUERY_FLUSH_INTEL=$83FA
rem
bbdoc: GL Const GL_PERFQUERY_WAIT_INTEL
endrem
Const GL_PERFQUERY_WAIT_INTEL=$83FB
rem
bbdoc: GL Const GL_PERFQUERY_COUNTER_EVENT_INTEL
endrem
Const GL_PERFQUERY_COUNTER_EVENT_INTEL=$94F0
rem
bbdoc: GL Const GL_PERFQUERY_COUNTER_DURATION_NORM_INTEL
endrem
Const GL_PERFQUERY_COUNTER_DURATION_NORM_INTEL=$94F1
rem
bbdoc: GL Const GL_PERFQUERY_COUNTER_DURATION_RAW_INTEL
endrem
Const GL_PERFQUERY_COUNTER_DURATION_RAW_INTEL=$94F2
rem
bbdoc: GL Const GL_PERFQUERY_COUNTER_THROUGHPUT_INTEL
endrem
Const GL_PERFQUERY_COUNTER_THROUGHPUT_INTEL=$94F3
rem
bbdoc: GL Const GL_PERFQUERY_COUNTER_RAW_INTEL
endrem
Const GL_PERFQUERY_COUNTER_RAW_INTEL=$94F4
rem
bbdoc: GL Const GL_PERFQUERY_COUNTER_TIMESTAMP_INTEL
endrem
Const GL_PERFQUERY_COUNTER_TIMESTAMP_INTEL=$94F5
rem
bbdoc: GL Const GL_PERFQUERY_COUNTER_DATA_UINT32_INTEL
endrem
Const GL_PERFQUERY_COUNTER_DATA_UINT32_INTEL=$94F8
rem
bbdoc: GL Const GL_PERFQUERY_COUNTER_DATA_UINT64_INTEL
endrem
Const GL_PERFQUERY_COUNTER_DATA_UINT64_INTEL=$94F9
rem
bbdoc: GL Const GL_PERFQUERY_COUNTER_DATA_FLOAT_INTEL
endrem
Const GL_PERFQUERY_COUNTER_DATA_FLOAT_INTEL=$94FA
rem
bbdoc: GL Const GL_PERFQUERY_COUNTER_DATA_DOUBLE_INTEL
endrem
Const GL_PERFQUERY_COUNTER_DATA_DOUBLE_INTEL=$94FB
rem
bbdoc: GL Const GL_PERFQUERY_COUNTER_DATA_BOOL32_INTEL
endrem
Const GL_PERFQUERY_COUNTER_DATA_BOOL32_INTEL=$94FC
rem
bbdoc: GL Const GL_PERFQUERY_QUERY_NAME_LENGTH_MAX_INTEL
endrem
Const GL_PERFQUERY_QUERY_NAME_LENGTH_MAX_INTEL=$94FD
rem
bbdoc: GL Const GL_PERFQUERY_COUNTER_NAME_LENGTH_MAX_INTEL
endrem
Const GL_PERFQUERY_COUNTER_NAME_LENGTH_MAX_INTEL=$94FE
rem
bbdoc: GL Const GL_PERFQUERY_COUNTER_DESC_LENGTH_MAX_INTEL
endrem
Const GL_PERFQUERY_COUNTER_DESC_LENGTH_MAX_INTEL=$94FF
rem
bbdoc: GL Const GL_PERFQUERY_GPA_EXTENDED_COUNTERS_INTEL
endrem
Const GL_PERFQUERY_GPA_EXTENDED_COUNTERS_INTEL=$9500
rem
bbdoc: GL Global glBeginPerfQueryINTEL(queryHandle_:Int)
endrem
Global glBeginPerfQueryINTEL(queryHandle_:Int)="__glewBeginPerfQueryINTEL"
rem
bbdoc: GL Global glCreatePerfQueryINTEL(queryId_:Int,queryHandle_:Int Ptr)
endrem
Global glCreatePerfQueryINTEL(queryId_:Int,queryHandle_:Int Ptr)="__glewCreatePerfQueryINTEL"
rem
bbdoc: GL Global glDeletePerfQueryINTEL(queryHandle_:Int)
endrem
Global glDeletePerfQueryINTEL(queryHandle_:Int)="__glewDeletePerfQueryINTEL"
rem
bbdoc: GL Global glEndPerfQueryINTEL(queryHandle_:Int)
endrem
Global glEndPerfQueryINTEL(queryHandle_:Int)="__glewEndPerfQueryINTEL"
rem
bbdoc: GL Global glGetFirstPerfQueryIdINTEL(queryId_:Int Ptr)
endrem
Global glGetFirstPerfQueryIdINTEL(queryId_:Int Ptr)="__glewGetFirstPerfQueryIdINTEL"
rem
bbdoc: GL Global glGetNextPerfQueryIdINTEL(queryId_:Int,nextQueryId_:Int Ptr)
endrem
Global glGetNextPerfQueryIdINTEL(queryId_:Int,nextQueryId_:Int Ptr)="__glewGetNextPerfQueryIdINTEL"
rem
bbdoc: GL Global glGetPerfCounterInfoINTEL(queryId_:Int,counterId_:Int,counterNameLength_:Int,counterName_:Byte Ptr,counterDescLength_:Int,counterDesc_:Byte Ptr,counterOffset_:Int Ptr,counterDataSize_:Int Ptr,counterTypeEnum_:Int Ptr,counterDataTypeEnum_:Int Ptr,rawCounterMaxValue_:Long Ptr)
endrem
Global glGetPerfCounterInfoINTEL(queryId_:Int,counterId_:Int,counterNameLength_:Int,counterName_:Byte Ptr,counterDescLength_:Int,counterDesc_:Byte Ptr,counterOffset_:Int Ptr,counterDataSize_:Int Ptr,counterTypeEnum_:Int Ptr,counterDataTypeEnum_:Int Ptr,rawCounterMaxValue_:Long Ptr)="__glewGetPerfCounterInfoINTEL"
rem
bbdoc: GL Global glGetPerfQueryDataINTEL(queryHandle_:Int,flags_:Int,dataSize_:Int,data_:Byte Ptr,bytesWritten_:Int Ptr)
endrem
Global glGetPerfQueryDataINTEL(queryHandle_:Int,flags_:Int,dataSize_:Int,data_:Byte Ptr,bytesWritten_:Int Ptr)="__glewGetPerfQueryDataINTEL"
rem
bbdoc: GL Global glGetPerfQueryIdByNameINTEL(queryName_:Byte Ptr,queryId_:Int Ptr)
endrem
Global glGetPerfQueryIdByNameINTEL(queryName_:Byte Ptr,queryId_:Int Ptr)="__glewGetPerfQueryIdByNameINTEL"
rem
bbdoc: GL Global glGetPerfQueryInfoINTEL(queryId_:Int,queryNameLength_:Int,queryName_:Byte Ptr,dataSize_:Int Ptr,noCounters_:Int Ptr,noInstances_:Int Ptr,capsMask_:Int Ptr)
endrem
Global glGetPerfQueryInfoINTEL(queryId_:Int,queryNameLength_:Int,queryName_:Byte Ptr,dataSize_:Int Ptr,noCounters_:Int Ptr,noInstances_:Int Ptr,capsMask_:Int Ptr)="__glewGetPerfQueryInfoINTEL"
rem
bbdoc: GL Const GL_INTEL_texture_scissor
endrem
Const GL_INTEL_texture_scissor=1
rem
bbdoc: GL Global glTexScissorFuncINTEL(target_:Int,lfunc_:Int,hfunc_:Int)
endrem
Global glTexScissorFuncINTEL(target_:Int,lfunc_:Int,hfunc_:Int)="__glewTexScissorFuncINTEL"
rem
bbdoc: GL Global glTexScissorINTEL(target_:Int,tlow_:Float,thigh_:Float)
endrem
Global glTexScissorINTEL(target_:Int,tlow_:Float,thigh_:Float)="__glewTexScissorINTEL"
rem
bbdoc: GL Const GL_KHR_blend_equation_advanced
endrem
Const GL_KHR_blend_equation_advanced=1
rem
bbdoc: GL Const GL_BLEND_ADVANCED_COHERENT_KHR
endrem
Const GL_BLEND_ADVANCED_COHERENT_KHR=$9285
rem
bbdoc: GL Const GL_MULTIPLY_KHR
endrem
Const GL_MULTIPLY_KHR=$9294
rem
bbdoc: GL Const GL_SCREEN_KHR
endrem
Const GL_SCREEN_KHR=$9295
rem
bbdoc: GL Const GL_OVERLAY_KHR
endrem
Const GL_OVERLAY_KHR=$9296
rem
bbdoc: GL Const GL_DARKEN_KHR
endrem
Const GL_DARKEN_KHR=$9297
rem
bbdoc: GL Const GL_LIGHTEN_KHR
endrem
Const GL_LIGHTEN_KHR=$9298
rem
bbdoc: GL Const GL_COLORDODGE_KHR
endrem
Const GL_COLORDODGE_KHR=$9299
rem
bbdoc: GL Const GL_COLORBURN_KHR
endrem
Const GL_COLORBURN_KHR=$929A
rem
bbdoc: GL Const GL_HARDLIGHT_KHR
endrem
Const GL_HARDLIGHT_KHR=$929B
rem
bbdoc: GL Const GL_SOFTLIGHT_KHR
endrem
Const GL_SOFTLIGHT_KHR=$929C
rem
bbdoc: GL Const GL_DIFFERENCE_KHR
endrem
Const GL_DIFFERENCE_KHR=$929E
rem
bbdoc: GL Const GL_EXCLUSION_KHR
endrem
Const GL_EXCLUSION_KHR=$92A0
rem
bbdoc: GL Const GL_HSL_HUE_KHR
endrem
Const GL_HSL_HUE_KHR=$92AD
rem
bbdoc: GL Const GL_HSL_SATURATION_KHR
endrem
Const GL_HSL_SATURATION_KHR=$92AE
rem
bbdoc: GL Const GL_HSL_COLOR_KHR
endrem
Const GL_HSL_COLOR_KHR=$92AF
rem
bbdoc: GL Const GL_HSL_LUMINOSITY_KHR
endrem
Const GL_HSL_LUMINOSITY_KHR=$92B0
rem
bbdoc: GL Global glBlendBarrierKHR()
endrem
Global glBlendBarrierKHR()="__glewBlendBarrierKHR"
rem
bbdoc: GL Const GL_KHR_blend_equation_advanced_coherent
endrem
Const GL_KHR_blend_equation_advanced_coherent=1
rem
bbdoc: GL Const GL_KHR_context_flush_control
endrem
Const GL_KHR_context_flush_control=1
rem
bbdoc: GL Const GL_KHR_debug
endrem
Const GL_KHR_debug=1
rem
bbdoc: GL Const GL_CONTEXT_FLAG_DEBUG_BIT
endrem
Const GL_CONTEXT_FLAG_DEBUG_BIT=$00000002
rem
bbdoc: GL Const GL_DEBUG_OUTPUT_SYNCHRONOUS
endrem
Const GL_DEBUG_OUTPUT_SYNCHRONOUS=$8242
rem
bbdoc: GL Const GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH
endrem
Const GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH=$8243
rem
bbdoc: GL Const GL_DEBUG_CALLBACK_FUNCTION
endrem
Const GL_DEBUG_CALLBACK_FUNCTION=$8244
rem
bbdoc: GL Const GL_DEBUG_CALLBACK_USER_PARAM
endrem
Const GL_DEBUG_CALLBACK_USER_PARAM=$8245
rem
bbdoc: GL Const GL_DEBUG_SOURCE_API
endrem
Const GL_DEBUG_SOURCE_API=$8246
rem
bbdoc: GL Const GL_DEBUG_SOURCE_WINDOW_SYSTEM
endrem
Const GL_DEBUG_SOURCE_WINDOW_SYSTEM=$8247
rem
bbdoc: GL Const GL_DEBUG_SOURCE_SHADER_COMPILER
endrem
Const GL_DEBUG_SOURCE_SHADER_COMPILER=$8248
rem
bbdoc: GL Const GL_DEBUG_SOURCE_THIRD_PARTY
endrem
Const GL_DEBUG_SOURCE_THIRD_PARTY=$8249
rem
bbdoc: GL Const GL_DEBUG_SOURCE_APPLICATION
endrem
Const GL_DEBUG_SOURCE_APPLICATION=$824A
rem
bbdoc: GL Const GL_DEBUG_SOURCE_OTHER
endrem
Const GL_DEBUG_SOURCE_OTHER=$824B
rem
bbdoc: GL Const GL_DEBUG_TYPE_ERROR
endrem
Const GL_DEBUG_TYPE_ERROR=$824C
rem
bbdoc: GL Const GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR
endrem
Const GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR=$824D
rem
bbdoc: GL Const GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR
endrem
Const GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR=$824E
rem
bbdoc: GL Const GL_DEBUG_TYPE_PORTABILITY
endrem
Const GL_DEBUG_TYPE_PORTABILITY=$824F
rem
bbdoc: GL Const GL_DEBUG_TYPE_PERFORMANCE
endrem
Const GL_DEBUG_TYPE_PERFORMANCE=$8250
rem
bbdoc: GL Const GL_DEBUG_TYPE_OTHER
endrem
Const GL_DEBUG_TYPE_OTHER=$8251
rem
bbdoc: GL Const GL_DEBUG_TYPE_MARKER
endrem
Const GL_DEBUG_TYPE_MARKER=$8268
rem
bbdoc: GL Const GL_DEBUG_TYPE_PUSH_GROUP
endrem
Const GL_DEBUG_TYPE_PUSH_GROUP=$8269
rem
bbdoc: GL Const GL_DEBUG_TYPE_POP_GROUP
endrem
Const GL_DEBUG_TYPE_POP_GROUP=$826A
rem
bbdoc: GL Const GL_DEBUG_SEVERITY_NOTIFICATION
endrem
Const GL_DEBUG_SEVERITY_NOTIFICATION=$826B
rem
bbdoc: GL Const GL_MAX_DEBUG_GROUP_STACK_DEPTH
endrem
Const GL_MAX_DEBUG_GROUP_STACK_DEPTH=$826C
rem
bbdoc: GL Const GL_DEBUG_GROUP_STACK_DEPTH
endrem
Const GL_DEBUG_GROUP_STACK_DEPTH=$826D
rem
bbdoc: GL Const GL_BUFFER
endrem
Const GL_BUFFER=$82E0
rem
bbdoc: GL Const GL_SHADER
endrem
Const GL_SHADER=$82E1
rem
bbdoc: GL Const GL_PROGRAM
endrem
Const GL_PROGRAM=$82E2
rem
bbdoc: GL Const GL_QUERY
endrem
Const GL_QUERY=$82E3
rem
bbdoc: GL Const GL_PROGRAM_PIPELINE
endrem
Const GL_PROGRAM_PIPELINE=$82E4
rem
bbdoc: GL Const GL_SAMPLER
endrem
Const GL_SAMPLER=$82E6
rem
bbdoc: GL Const GL_DISPLAY_LIST
endrem
Const GL_DISPLAY_LIST=$82E7
rem
bbdoc: GL Const GL_MAX_LABEL_LENGTH
endrem
Const GL_MAX_LABEL_LENGTH=$82E8
rem
bbdoc: GL Const GL_MAX_DEBUG_MESSAGE_LENGTH
endrem
Const GL_MAX_DEBUG_MESSAGE_LENGTH=$9143
rem
bbdoc: GL Const GL_MAX_DEBUG_LOGGED_MESSAGES
endrem
Const GL_MAX_DEBUG_LOGGED_MESSAGES=$9144
rem
bbdoc: GL Const GL_DEBUG_LOGGED_MESSAGES
endrem
Const GL_DEBUG_LOGGED_MESSAGES=$9145
rem
bbdoc: GL Const GL_DEBUG_SEVERITY_HIGH
endrem
Const GL_DEBUG_SEVERITY_HIGH=$9146
rem
bbdoc: GL Const GL_DEBUG_SEVERITY_MEDIUM
endrem
Const GL_DEBUG_SEVERITY_MEDIUM=$9147
rem
bbdoc: GL Const GL_DEBUG_SEVERITY_LOW
endrem
Const GL_DEBUG_SEVERITY_LOW=$9148
rem
bbdoc: GL Const GL_DEBUG_OUTPUT
endrem
Const GL_DEBUG_OUTPUT=$92E0
rem
bbdoc: GL Global glDebugMessageControl(source_:Int,type_:Int,severity_:Int,count_:Int,ids_:Int Ptr,enabled_:Byte)
endrem
Global glDebugMessageControl(source_:Int,type_:Int,severity_:Int,count_:Int,ids_:Int Ptr,enabled_:Byte)="__glewDebugMessageControl"
rem
bbdoc: GL Global glDebugMessageInsert(source_:Int,type_:Int,id_:Int,severity_:Int,length_:Int,buf_:Byte Ptr)
endrem
Global glDebugMessageInsert(source_:Int,type_:Int,id_:Int,severity_:Int,length_:Int,buf_:Byte Ptr)="__glewDebugMessageInsert"
rem
bbdoc: GL Global glGetDebugMessageLog:Int(count_:Int,bufSize_:Int,sources_:Int Ptr,types_:Int Ptr,ids_:Int Ptr,severities_:Int Ptr,lengths_:Int Ptr,messageLog_:Byte Ptr)
endrem
Global glGetDebugMessageLog:Int(count_:Int,bufSize_:Int,sources_:Int Ptr,types_:Int Ptr,ids_:Int Ptr,severities_:Int Ptr,lengths_:Int Ptr,messageLog_:Byte Ptr)="__glewGetDebugMessageLog"
rem
bbdoc: GL Global glGetObjectLabel(identifier_:Int,name_:Int,bufSize_:Int,length_:Int Ptr,label_:Byte Ptr)
endrem
Global glGetObjectLabel(identifier_:Int,name_:Int,bufSize_:Int,length_:Int Ptr,label_:Byte Ptr)="__glewGetObjectLabel"
rem
bbdoc: GL Global glGetObjectPtrLabel(ptr_:Byte Ptr,bufSize_:Int,length_:Int Ptr,label_:Byte Ptr)
endrem
Global glGetObjectPtrLabel(ptr_:Byte Ptr,bufSize_:Int,length_:Int Ptr,label_:Byte Ptr)="__glewGetObjectPtrLabel"
rem
bbdoc: GL Global glObjectLabel(identifier_:Int,name_:Int,length_:Int,label_:Byte Ptr)
endrem
Global glObjectLabel(identifier_:Int,name_:Int,length_:Int,label_:Byte Ptr)="__glewObjectLabel"
rem
bbdoc: GL Global glObjectPtrLabel(ptr_:Byte Ptr,length_:Int,label_:Byte Ptr)
endrem
Global glObjectPtrLabel(ptr_:Byte Ptr,length_:Int,label_:Byte Ptr)="__glewObjectPtrLabel"
rem
bbdoc: GL Global glPopDebugGroup()
endrem
Global glPopDebugGroup()="__glewPopDebugGroup"
rem
bbdoc: GL Global glPushDebugGroup(source_:Int,id_:Int,length_:Int,message_:Byte Ptr)
endrem
Global glPushDebugGroup(source_:Int,id_:Int,length_:Int,message_:Byte Ptr)="__glewPushDebugGroup"
rem
bbdoc: GL Const GL_KHR_robust_buffer_access_behavior
endrem
Const GL_KHR_robust_buffer_access_behavior=1
rem
bbdoc: GL Const GL_KHR_robustness
endrem
Const GL_KHR_robustness=1
rem
bbdoc: GL Const GL_CONTEXT_LOST
endrem
Const GL_CONTEXT_LOST=$0507
rem
bbdoc: GL Const GL_LOSE_CONTEXT_ON_RESET
endrem
Const GL_LOSE_CONTEXT_ON_RESET=$8252
rem
bbdoc: GL Const GL_GUILTY_CONTEXT_RESET
endrem
Const GL_GUILTY_CONTEXT_RESET=$8253
rem
bbdoc: GL Const GL_INNOCENT_CONTEXT_RESET
endrem
Const GL_INNOCENT_CONTEXT_RESET=$8254
rem
bbdoc: GL Const GL_UNKNOWN_CONTEXT_RESET
endrem
Const GL_UNKNOWN_CONTEXT_RESET=$8255
rem
bbdoc: GL Const GL_RESET_NOTIFICATION_STRATEGY
endrem
Const GL_RESET_NOTIFICATION_STRATEGY=$8256
rem
bbdoc: GL Const GL_NO_RESET_NOTIFICATION
endrem
Const GL_NO_RESET_NOTIFICATION=$8261
rem
bbdoc: GL Const GL_CONTEXT_ROBUST_ACCESS
endrem
Const GL_CONTEXT_ROBUST_ACCESS=$90F3
rem
bbdoc: GL Global glGetnUniformfv(program_:Int,location_:Int,bufSize_:Int,params_:Float Ptr)
endrem
Global glGetnUniformfv(program_:Int,location_:Int,bufSize_:Int,params_:Float Ptr)="__glewGetnUniformfv"
rem
bbdoc: GL Global glGetnUniformiv(program_:Int,location_:Int,bufSize_:Int,params_:Int Ptr)
endrem
Global glGetnUniformiv(program_:Int,location_:Int,bufSize_:Int,params_:Int Ptr)="__glewGetnUniformiv"
rem
bbdoc: GL Global glGetnUniformuiv(program_:Int,location_:Int,bufSize_:Int,params_:Int Ptr)
endrem
Global glGetnUniformuiv(program_:Int,location_:Int,bufSize_:Int,params_:Int Ptr)="__glewGetnUniformuiv"
rem
bbdoc: GL Global glReadnPixels(x_:Int,y_:Int,width_:Int,height_:Int,format_:Int,type_:Int,bufSize_:Int,data_:Byte Ptr)
endrem
Global glReadnPixels(x_:Int,y_:Int,width_:Int,height_:Int,format_:Int,type_:Int,bufSize_:Int,data_:Byte Ptr)="__glewReadnPixels"
rem
bbdoc: GL Const GL_KHR_texture_compression_astc_hdr
endrem
Const GL_KHR_texture_compression_astc_hdr=1
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_ASTC_4x4_KHR
endrem
Const GL_COMPRESSED_RGBA_ASTC_4x4_KHR=$93B0
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_ASTC_5x4_KHR
endrem
Const GL_COMPRESSED_RGBA_ASTC_5x4_KHR=$93B1
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_ASTC_5x5_KHR
endrem
Const GL_COMPRESSED_RGBA_ASTC_5x5_KHR=$93B2
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_ASTC_6x5_KHR
endrem
Const GL_COMPRESSED_RGBA_ASTC_6x5_KHR=$93B3
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_ASTC_6x6_KHR
endrem
Const GL_COMPRESSED_RGBA_ASTC_6x6_KHR=$93B4
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_ASTC_8x5_KHR
endrem
Const GL_COMPRESSED_RGBA_ASTC_8x5_KHR=$93B5
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_ASTC_8x6_KHR
endrem
Const GL_COMPRESSED_RGBA_ASTC_8x6_KHR=$93B6
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_ASTC_8x8_KHR
endrem
Const GL_COMPRESSED_RGBA_ASTC_8x8_KHR=$93B7
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_ASTC_10x5_KHR
endrem
Const GL_COMPRESSED_RGBA_ASTC_10x5_KHR=$93B8
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_ASTC_10x6_KHR
endrem
Const GL_COMPRESSED_RGBA_ASTC_10x6_KHR=$93B9
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_ASTC_10x8_KHR
endrem
Const GL_COMPRESSED_RGBA_ASTC_10x8_KHR=$93BA
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_ASTC_10x10_KHR
endrem
Const GL_COMPRESSED_RGBA_ASTC_10x10_KHR=$93BB
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_ASTC_12x10_KHR
endrem
Const GL_COMPRESSED_RGBA_ASTC_12x10_KHR=$93BC
rem
bbdoc: GL Const GL_COMPRESSED_RGBA_ASTC_12x12_KHR
endrem
Const GL_COMPRESSED_RGBA_ASTC_12x12_KHR=$93BD
rem
bbdoc: GL Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR
endrem
Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR=$93D0
rem
bbdoc: GL Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR
endrem
Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR=$93D1
rem
bbdoc: GL Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR
endrem
Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR=$93D2
rem
bbdoc: GL Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR
endrem
Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR=$93D3
rem
bbdoc: GL Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR
endrem
Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR=$93D4
rem
bbdoc: GL Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR
endrem
Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR=$93D5
rem
bbdoc: GL Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR
endrem
Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR=$93D6
rem
bbdoc: GL Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR
endrem
Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR=$93D7
rem
bbdoc: GL Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR
endrem
Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR=$93D8
rem
bbdoc: GL Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR
endrem
Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR=$93D9
rem
bbdoc: GL Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR
endrem
Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR=$93DA
rem
bbdoc: GL Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR
endrem
Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR=$93DB
rem
bbdoc: GL Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR
endrem
Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR=$93DC
rem
bbdoc: GL Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR
endrem
Const GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR=$93DD
rem
bbdoc: GL Const GL_KHR_texture_compression_astc_ldr
endrem
Const GL_KHR_texture_compression_astc_ldr=1
rem
bbdoc: GL Const GL_KTX_buffer_region
endrem
Const GL_KTX_buffer_region=1
rem
bbdoc: GL Const GL_KTX_FRONT_REGION
endrem
Const GL_KTX_FRONT_REGION=$0
rem
bbdoc: GL Const GL_KTX_BACK_REGION
endrem
Const GL_KTX_BACK_REGION=$1
rem
bbdoc: GL Const GL_KTX_Z_REGION
endrem
Const GL_KTX_Z_REGION=$2
rem
bbdoc: GL Const GL_KTX_STENCIL_REGION
endrem
Const GL_KTX_STENCIL_REGION=$3
rem
bbdoc: GL Global glBufferRegionEnabled:Int()
endrem
Global glBufferRegionEnabled:Int()="__glewBufferRegionEnabled"
rem
bbdoc: GL Global glDeleteBufferRegion(region_:Int)
endrem
Global glDeleteBufferRegion(region_:Int)="__glewDeleteBufferRegion"
rem
bbdoc: GL Global glDrawBufferRegion(region_:Int,x_:Int,y_:Int,width_:Int,height_:Int,xDest_:Int,yDest_:Int)
endrem
Global glDrawBufferRegion(region_:Int,x_:Int,y_:Int,width_:Int,height_:Int,xDest_:Int,yDest_:Int)="__glewDrawBufferRegion"
rem
bbdoc: GL Global glNewBufferRegion:Int(region_:Int)
endrem
Global glNewBufferRegion:Int(region_:Int)="__glewNewBufferRegion"
rem
bbdoc: GL Global glReadBufferRegion(region_:Int,x_:Int,y_:Int,width_:Int,height_:Int)
endrem
Global glReadBufferRegion(region_:Int,x_:Int,y_:Int,width_:Int,height_:Int)="__glewReadBufferRegion"
rem
bbdoc: GL Const GL_MESAX_texture_stack
endrem
Const GL_MESAX_texture_stack=1
rem
bbdoc: GL Const GL_TEXTURE_1D_STACK_MESAX
endrem
Const GL_TEXTURE_1D_STACK_MESAX=$8759
rem
bbdoc: GL Const GL_TEXTURE_2D_STACK_MESAX
endrem
Const GL_TEXTURE_2D_STACK_MESAX=$875A
rem
bbdoc: GL Const GL_PROXY_TEXTURE_1D_STACK_MESAX
endrem
Const GL_PROXY_TEXTURE_1D_STACK_MESAX=$875B
rem
bbdoc: GL Const GL_PROXY_TEXTURE_2D_STACK_MESAX
endrem
Const GL_PROXY_TEXTURE_2D_STACK_MESAX=$875C
rem
bbdoc: GL Const GL_TEXTURE_1D_STACK_BINDING_MESAX
endrem
Const GL_TEXTURE_1D_STACK_BINDING_MESAX=$875D
rem
bbdoc: GL Const GL_TEXTURE_2D_STACK_BINDING_MESAX
endrem
Const GL_TEXTURE_2D_STACK_BINDING_MESAX=$875E
rem
bbdoc: GL Const GL_MESA_pack_invert
endrem
Const GL_MESA_pack_invert=1
rem
bbdoc: GL Const GL_PACK_INVERT_MESA
endrem
Const GL_PACK_INVERT_MESA=$8758
rem
bbdoc: GL Const GL_MESA_resize_buffers
endrem
Const GL_MESA_resize_buffers=1
rem
bbdoc: GL Global glResizeBuffersMESA()
endrem
Global glResizeBuffersMESA()="__glewResizeBuffersMESA"
rem
bbdoc: GL Const GL_MESA_window_pos
endrem
Const GL_MESA_window_pos=1
rem
bbdoc: GL Global glWindowPos2dMESA(x_:Double,y_:Double)
endrem
Global glWindowPos2dMESA(x_:Double,y_:Double)="__glewWindowPos2dMESA"
rem
bbdoc: GL Global glWindowPos2dvMESA(p_:Double Ptr)
endrem
Global glWindowPos2dvMESA(p_:Double Ptr)="__glewWindowPos2dvMESA"
rem
bbdoc: GL Global glWindowPos2fMESA(x_:Float,y_:Float)
endrem
Global glWindowPos2fMESA(x_:Float,y_:Float)="__glewWindowPos2fMESA"
rem
bbdoc: GL Global glWindowPos2fvMESA(p_:Float Ptr)
endrem
Global glWindowPos2fvMESA(p_:Float Ptr)="__glewWindowPos2fvMESA"
rem
bbdoc: GL Global glWindowPos2iMESA(x_:Int,y_:Int)
endrem
Global glWindowPos2iMESA(x_:Int,y_:Int)="__glewWindowPos2iMESA"
rem
bbdoc: GL Global glWindowPos2ivMESA(p_:Int Ptr)
endrem
Global glWindowPos2ivMESA(p_:Int Ptr)="__glewWindowPos2ivMESA"
rem
bbdoc: GL Global glWindowPos2sMESA(x_:Short,y_:Short)
endrem
Global glWindowPos2sMESA(x_:Short,y_:Short)="__glewWindowPos2sMESA"
rem
bbdoc: GL Global glWindowPos2svMESA(p_:Short Ptr)
endrem
Global glWindowPos2svMESA(p_:Short Ptr)="__glewWindowPos2svMESA"
rem
bbdoc: GL Global glWindowPos3dMESA(x_:Double,y_:Double,z_:Double)
endrem
Global glWindowPos3dMESA(x_:Double,y_:Double,z_:Double)="__glewWindowPos3dMESA"
rem
bbdoc: GL Global glWindowPos3dvMESA(p_:Double Ptr)
endrem
Global glWindowPos3dvMESA(p_:Double Ptr)="__glewWindowPos3dvMESA"
rem
bbdoc: GL Global glWindowPos3fMESA(x_:Float,y_:Float,z_:Float)
endrem
Global glWindowPos3fMESA(x_:Float,y_:Float,z_:Float)="__glewWindowPos3fMESA"
rem
bbdoc: GL Global glWindowPos3fvMESA(p_:Float Ptr)
endrem
Global glWindowPos3fvMESA(p_:Float Ptr)="__glewWindowPos3fvMESA"
rem
bbdoc: GL Global glWindowPos3iMESA(x_:Int,y_:Int,z_:Int)
endrem
Global glWindowPos3iMESA(x_:Int,y_:Int,z_:Int)="__glewWindowPos3iMESA"
rem
bbdoc: GL Global glWindowPos3ivMESA(p_:Int Ptr)
endrem
Global glWindowPos3ivMESA(p_:Int Ptr)="__glewWindowPos3ivMESA"
rem
bbdoc: GL Global glWindowPos3sMESA(x_:Short,y_:Short,z_:Short)
endrem
Global glWindowPos3sMESA(x_:Short,y_:Short,z_:Short)="__glewWindowPos3sMESA"
rem
bbdoc: GL Global glWindowPos3svMESA(p_:Short Ptr)
endrem
Global glWindowPos3svMESA(p_:Short Ptr)="__glewWindowPos3svMESA"
rem
bbdoc: GL Global glWindowPos4dMESA(x_:Double,y_:Double,z_:Double,arg3_:Double)
endrem
Global glWindowPos4dMESA(x_:Double,y_:Double,z_:Double,arg3_:Double)="__glewWindowPos4dMESA"
rem
bbdoc: GL Global glWindowPos4dvMESA(p_:Double Ptr)
endrem
Global glWindowPos4dvMESA(p_:Double Ptr)="__glewWindowPos4dvMESA"
rem
bbdoc: GL Global glWindowPos4fMESA(x_:Float,y_:Float,z_:Float,w_:Float)
endrem
Global glWindowPos4fMESA(x_:Float,y_:Float,z_:Float,w_:Float)="__glewWindowPos4fMESA"
rem
bbdoc: GL Global glWindowPos4fvMESA(p_:Float Ptr)
endrem
Global glWindowPos4fvMESA(p_:Float Ptr)="__glewWindowPos4fvMESA"
rem
bbdoc: GL Global glWindowPos4iMESA(x_:Int,y_:Int,z_:Int,w_:Int)
endrem
Global glWindowPos4iMESA(x_:Int,y_:Int,z_:Int,w_:Int)="__glewWindowPos4iMESA"
rem
bbdoc: GL Global glWindowPos4ivMESA(p_:Int Ptr)
endrem
Global glWindowPos4ivMESA(p_:Int Ptr)="__glewWindowPos4ivMESA"
rem
bbdoc: GL Global glWindowPos4sMESA(x_:Short,y_:Short,z_:Short,w_:Short)
endrem
Global glWindowPos4sMESA(x_:Short,y_:Short,z_:Short,w_:Short)="__glewWindowPos4sMESA"
rem
bbdoc: GL Global glWindowPos4svMESA(p_:Short Ptr)
endrem
Global glWindowPos4svMESA(p_:Short Ptr)="__glewWindowPos4svMESA"
rem
bbdoc: GL Const GL_MESA_ycbcr_texture
endrem
Const GL_MESA_ycbcr_texture=1
rem
bbdoc: GL Const GL_UNSIGNED_SHORT_8_8_MESA
endrem
Const GL_UNSIGNED_SHORT_8_8_MESA=$85BA
rem
bbdoc: GL Const GL_UNSIGNED_SHORT_8_8_REV_MESA
endrem
Const GL_UNSIGNED_SHORT_8_8_REV_MESA=$85BB
rem
bbdoc: GL Const GL_YCBCR_MESA
endrem
Const GL_YCBCR_MESA=$8757
rem
bbdoc: GL Const GL_NVX_conditional_render
endrem
Const GL_NVX_conditional_render=1
rem
bbdoc: GL Global glBeginConditionalRenderNVX(id_:Int)
endrem
Global glBeginConditionalRenderNVX(id_:Int)="__glewBeginConditionalRenderNVX"
rem
bbdoc: GL Global glEndConditionalRenderNVX()
endrem
Global glEndConditionalRenderNVX()="__glewEndConditionalRenderNVX"
rem
bbdoc: GL Const GL_NVX_gpu_memory_info
endrem
Const GL_NVX_gpu_memory_info=1
rem
bbdoc: GL Const GL_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX
endrem
Const GL_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX=$9047
rem
bbdoc: GL Const GL_GPU_MEMORY_INFO_TOTAL_AVAILABLE_MEMORY_NVX
endrem
Const GL_GPU_MEMORY_INFO_TOTAL_AVAILABLE_MEMORY_NVX=$9048
rem
bbdoc: GL Const GL_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX
endrem
Const GL_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX=$9049
rem
bbdoc: GL Const GL_GPU_MEMORY_INFO_EVICTION_COUNT_NVX
endrem
Const GL_GPU_MEMORY_INFO_EVICTION_COUNT_NVX=$904A
rem
bbdoc: GL Const GL_GPU_MEMORY_INFO_EVICTED_MEMORY_NVX
endrem
Const GL_GPU_MEMORY_INFO_EVICTED_MEMORY_NVX=$904B
rem
bbdoc: GL Const GL_NV_bindless_multi_draw_indirect
endrem
Const GL_NV_bindless_multi_draw_indirect=1
rem
bbdoc: GL Global glMultiDrawArraysIndirectBindlessNV(mode_:Int,indirect_:Byte Ptr,drawCount_:Int,stride_:Int,vertexBufferCount_:Int)
endrem
Global glMultiDrawArraysIndirectBindlessNV(mode_:Int,indirect_:Byte Ptr,drawCount_:Int,stride_:Int,vertexBufferCount_:Int)="__glewMultiDrawArraysIndirectBindlessNV"
rem
bbdoc: GL Global glMultiDrawElementsIndirectBindlessNV(mode_:Int,type_:Int,indirect_:Byte Ptr,drawCount_:Int,stride_:Int,vertexBufferCount_:Int)
endrem
Global glMultiDrawElementsIndirectBindlessNV(mode_:Int,type_:Int,indirect_:Byte Ptr,drawCount_:Int,stride_:Int,vertexBufferCount_:Int)="__glewMultiDrawElementsIndirectBindlessNV"
rem
bbdoc: GL Const GL_NV_bindless_multi_draw_indirect_count
endrem
Const GL_NV_bindless_multi_draw_indirect_count=1
rem
bbdoc: GL Global glMultiDrawArraysIndirectBindlessCountNV(mode_:Int,indirect_:Byte Ptr,drawCount_:Int,maxDrawCount_:Int,stride_:Int,vertexBufferCount_:Int)
endrem
Global glMultiDrawArraysIndirectBindlessCountNV(mode_:Int,indirect_:Byte Ptr,drawCount_:Int,maxDrawCount_:Int,stride_:Int,vertexBufferCount_:Int)="__glewMultiDrawArraysIndirectBindlessCountNV"
rem
bbdoc: GL Global glMultiDrawElementsIndirectBindlessCountNV(mode_:Int,type_:Int,indirect_:Byte Ptr,drawCount_:Int,maxDrawCount_:Int,stride_:Int,vertexBufferCount_:Int)
endrem
Global glMultiDrawElementsIndirectBindlessCountNV(mode_:Int,type_:Int,indirect_:Byte Ptr,drawCount_:Int,maxDrawCount_:Int,stride_:Int,vertexBufferCount_:Int)="__glewMultiDrawElementsIndirectBindlessCountNV"
rem
bbdoc: GL Const GL_NV_bindless_texture
endrem
Const GL_NV_bindless_texture=1
rem
bbdoc: GL Global glGetImageHandleNV:Long(texture_:Int,level_:Int,layered_:Byte,layer_:Int,format_:Int)
endrem
Global glGetImageHandleNV:Long(texture_:Int,level_:Int,layered_:Byte,layer_:Int,format_:Int)="__glewGetImageHandleNV"
rem
bbdoc: GL Global glGetTextureHandleNV:Long(texture_:Int)
endrem
Global glGetTextureHandleNV:Long(texture_:Int)="__glewGetTextureHandleNV"
rem
bbdoc: GL Global glGetTextureSamplerHandleNV:Long(texture_:Int,sampler_:Int)
endrem
Global glGetTextureSamplerHandleNV:Long(texture_:Int,sampler_:Int)="__glewGetTextureSamplerHandleNV"
rem
bbdoc: GL Global glIsImageHandleResidentNV:Byte(handle_:Long)
endrem
Global glIsImageHandleResidentNV:Byte(handle_:Long)="__glewIsImageHandleResidentNV"
rem
bbdoc: GL Global glIsTextureHandleResidentNV:Byte(handle_:Long)
endrem
Global glIsTextureHandleResidentNV:Byte(handle_:Long)="__glewIsTextureHandleResidentNV"
rem
bbdoc: GL Global glMakeImageHandleNonResidentNV(handle_:Long)
endrem
Global glMakeImageHandleNonResidentNV(handle_:Long)="__glewMakeImageHandleNonResidentNV"
rem
bbdoc: GL Global glMakeImageHandleResidentNV(handle_:Long,access_:Int)
endrem
Global glMakeImageHandleResidentNV(handle_:Long,access_:Int)="__glewMakeImageHandleResidentNV"
rem
bbdoc: GL Global glMakeTextureHandleNonResidentNV(handle_:Long)
endrem
Global glMakeTextureHandleNonResidentNV(handle_:Long)="__glewMakeTextureHandleNonResidentNV"
rem
bbdoc: GL Global glMakeTextureHandleResidentNV(handle_:Long)
endrem
Global glMakeTextureHandleResidentNV(handle_:Long)="__glewMakeTextureHandleResidentNV"
rem
bbdoc: GL Global glProgramUniformHandleui64NV(program_:Int,location_:Int,value_:Long)
endrem
Global glProgramUniformHandleui64NV(program_:Int,location_:Int,value_:Long)="__glewProgramUniformHandleui64NV"
rem
bbdoc: GL Global glProgramUniformHandleui64vNV(program_:Int,location_:Int,count_:Int,values_:Long Ptr)
endrem
Global glProgramUniformHandleui64vNV(program_:Int,location_:Int,count_:Int,values_:Long Ptr)="__glewProgramUniformHandleui64vNV"
rem
bbdoc: GL Global glUniformHandleui64NV(location_:Int,value_:Long)
endrem
Global glUniformHandleui64NV(location_:Int,value_:Long)="__glewUniformHandleui64NV"
rem
bbdoc: GL Global glUniformHandleui64vNV(location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glUniformHandleui64vNV(location_:Int,count_:Int,value_:Long Ptr)="__glewUniformHandleui64vNV"
rem
bbdoc: GL Const GL_NV_blend_equation_advanced
endrem
Const GL_NV_blend_equation_advanced=1
rem
bbdoc: GL Const GL_XOR_NV
endrem
Const GL_XOR_NV=$1506
rem
bbdoc: GL Const GL_RED_NV
endrem
Const GL_RED_NV=$1903
rem
bbdoc: GL Const GL_GREEN_NV
endrem
Const GL_GREEN_NV=$1904
rem
bbdoc: GL Const GL_BLUE_NV
endrem
Const GL_BLUE_NV=$1905
rem
bbdoc: GL Const GL_BLEND_PREMULTIPLIED_SRC_NV
endrem
Const GL_BLEND_PREMULTIPLIED_SRC_NV=$9280
rem
bbdoc: GL Const GL_BLEND_OVERLAP_NV
endrem
Const GL_BLEND_OVERLAP_NV=$9281
rem
bbdoc: GL Const GL_UNCORRELATED_NV
endrem
Const GL_UNCORRELATED_NV=$9282
rem
bbdoc: GL Const GL_DISJOINT_NV
endrem
Const GL_DISJOINT_NV=$9283
rem
bbdoc: GL Const GL_CONJOINT_NV
endrem
Const GL_CONJOINT_NV=$9284
rem
bbdoc: GL Const GL_BLEND_ADVANCED_COHERENT_NV
endrem
Const GL_BLEND_ADVANCED_COHERENT_NV=$9285
rem
bbdoc: GL Const GL_SRC_NV
endrem
Const GL_SRC_NV=$9286
rem
bbdoc: GL Const GL_DST_NV
endrem
Const GL_DST_NV=$9287
rem
bbdoc: GL Const GL_SRC_OVER_NV
endrem
Const GL_SRC_OVER_NV=$9288
rem
bbdoc: GL Const GL_DST_OVER_NV
endrem
Const GL_DST_OVER_NV=$9289
rem
bbdoc: GL Const GL_SRC_IN_NV
endrem
Const GL_SRC_IN_NV=$928A
rem
bbdoc: GL Const GL_DST_IN_NV
endrem
Const GL_DST_IN_NV=$928B
rem
bbdoc: GL Const GL_SRC_OUT_NV
endrem
Const GL_SRC_OUT_NV=$928C
rem
bbdoc: GL Const GL_DST_OUT_NV
endrem
Const GL_DST_OUT_NV=$928D
rem
bbdoc: GL Const GL_SRC_ATOP_NV
endrem
Const GL_SRC_ATOP_NV=$928E
rem
bbdoc: GL Const GL_DST_ATOP_NV
endrem
Const GL_DST_ATOP_NV=$928F
rem
bbdoc: GL Const GL_PLUS_NV
endrem
Const GL_PLUS_NV=$9291
rem
bbdoc: GL Const GL_PLUS_DARKER_NV
endrem
Const GL_PLUS_DARKER_NV=$9292
rem
bbdoc: GL Const GL_MULTIPLY_NV
endrem
Const GL_MULTIPLY_NV=$9294
rem
bbdoc: GL Const GL_SCREEN_NV
endrem
Const GL_SCREEN_NV=$9295
rem
bbdoc: GL Const GL_OVERLAY_NV
endrem
Const GL_OVERLAY_NV=$9296
rem
bbdoc: GL Const GL_DARKEN_NV
endrem
Const GL_DARKEN_NV=$9297
rem
bbdoc: GL Const GL_LIGHTEN_NV
endrem
Const GL_LIGHTEN_NV=$9298
rem
bbdoc: GL Const GL_COLORDODGE_NV
endrem
Const GL_COLORDODGE_NV=$9299
rem
bbdoc: GL Const GL_COLORBURN_NV
endrem
Const GL_COLORBURN_NV=$929A
rem
bbdoc: GL Const GL_HARDLIGHT_NV
endrem
Const GL_HARDLIGHT_NV=$929B
rem
bbdoc: GL Const GL_SOFTLIGHT_NV
endrem
Const GL_SOFTLIGHT_NV=$929C
rem
bbdoc: GL Const GL_DIFFERENCE_NV
endrem
Const GL_DIFFERENCE_NV=$929E
rem
bbdoc: GL Const GL_MINUS_NV
endrem
Const GL_MINUS_NV=$929F
rem
bbdoc: GL Const GL_EXCLUSION_NV
endrem
Const GL_EXCLUSION_NV=$92A0
rem
bbdoc: GL Const GL_CONTRAST_NV
endrem
Const GL_CONTRAST_NV=$92A1
rem
bbdoc: GL Const GL_INVERT_RGB_NV
endrem
Const GL_INVERT_RGB_NV=$92A3
rem
bbdoc: GL Const GL_LINEARDODGE_NV
endrem
Const GL_LINEARDODGE_NV=$92A4
rem
bbdoc: GL Const GL_LINEARBURN_NV
endrem
Const GL_LINEARBURN_NV=$92A5
rem
bbdoc: GL Const GL_VIVIDLIGHT_NV
endrem
Const GL_VIVIDLIGHT_NV=$92A6
rem
bbdoc: GL Const GL_LINEARLIGHT_NV
endrem
Const GL_LINEARLIGHT_NV=$92A7
rem
bbdoc: GL Const GL_PINLIGHT_NV
endrem
Const GL_PINLIGHT_NV=$92A8
rem
bbdoc: GL Const GL_HARDMIX_NV
endrem
Const GL_HARDMIX_NV=$92A9
rem
bbdoc: GL Const GL_HSL_HUE_NV
endrem
Const GL_HSL_HUE_NV=$92AD
rem
bbdoc: GL Const GL_HSL_SATURATION_NV
endrem
Const GL_HSL_SATURATION_NV=$92AE
rem
bbdoc: GL Const GL_HSL_COLOR_NV
endrem
Const GL_HSL_COLOR_NV=$92AF
rem
bbdoc: GL Const GL_HSL_LUMINOSITY_NV
endrem
Const GL_HSL_LUMINOSITY_NV=$92B0
rem
bbdoc: GL Const GL_PLUS_CLAMPED_NV
endrem
Const GL_PLUS_CLAMPED_NV=$92B1
rem
bbdoc: GL Const GL_PLUS_CLAMPED_ALPHA_NV
endrem
Const GL_PLUS_CLAMPED_ALPHA_NV=$92B2
rem
bbdoc: GL Const GL_MINUS_CLAMPED_NV
endrem
Const GL_MINUS_CLAMPED_NV=$92B3
rem
bbdoc: GL Const GL_INVERT_OVG_NV
endrem
Const GL_INVERT_OVG_NV=$92B4
rem
bbdoc: GL Global glBlendBarrierNV()
endrem
Global glBlendBarrierNV()="__glewBlendBarrierNV"
rem
bbdoc: GL Global glBlendParameteriNV(pname_:Int,value_:Int)
endrem
Global glBlendParameteriNV(pname_:Int,value_:Int)="__glewBlendParameteriNV"
rem
bbdoc: GL Const GL_NV_blend_equation_advanced_coherent
endrem
Const GL_NV_blend_equation_advanced_coherent=1
rem
bbdoc: GL Const GL_NV_blend_square
endrem
Const GL_NV_blend_square=1
rem
bbdoc: GL Const GL_NV_compute_program5
endrem
Const GL_NV_compute_program5=1
rem
bbdoc: GL Const GL_COMPUTE_PROGRAM_NV
endrem
Const GL_COMPUTE_PROGRAM_NV=$90FB
rem
bbdoc: GL Const GL_COMPUTE_PROGRAM_PARAMETER_BUFFER_NV
endrem
Const GL_COMPUTE_PROGRAM_PARAMETER_BUFFER_NV=$90FC
rem
bbdoc: GL Const GL_NV_conditional_render
endrem
Const GL_NV_conditional_render=1
rem
bbdoc: GL Const GL_QUERY_WAIT_NV
endrem
Const GL_QUERY_WAIT_NV=$8E13
rem
bbdoc: GL Const GL_QUERY_NO_WAIT_NV
endrem
Const GL_QUERY_NO_WAIT_NV=$8E14
rem
bbdoc: GL Const GL_QUERY_BY_REGION_WAIT_NV
endrem
Const GL_QUERY_BY_REGION_WAIT_NV=$8E15
rem
bbdoc: GL Const GL_QUERY_BY_REGION_NO_WAIT_NV
endrem
Const GL_QUERY_BY_REGION_NO_WAIT_NV=$8E16
rem
bbdoc: GL Global glBeginConditionalRenderNV(id_:Int,mode_:Int)
endrem
Global glBeginConditionalRenderNV(id_:Int,mode_:Int)="__glewBeginConditionalRenderNV"
rem
bbdoc: GL Global glEndConditionalRenderNV()
endrem
Global glEndConditionalRenderNV()="__glewEndConditionalRenderNV"
rem
bbdoc: GL Const GL_NV_copy_depth_to_color
endrem
Const GL_NV_copy_depth_to_color=1
rem
bbdoc: GL Const GL_DEPTH_STENCIL_TO_RGBA_NV
endrem
Const GL_DEPTH_STENCIL_TO_RGBA_NV=$886E
rem
bbdoc: GL Const GL_DEPTH_STENCIL_TO_BGRA_NV
endrem
Const GL_DEPTH_STENCIL_TO_BGRA_NV=$886F
rem
bbdoc: GL Const GL_NV_copy_image
endrem
Const GL_NV_copy_image=1
rem
bbdoc: GL Global glCopyImageSubDataNV(srcName_:Int,srcTarget_:Int,srcLevel_:Int,srcX_:Int,srcY_:Int,srcZ_:Int,dstName_:Int,dstTarget_:Int,dstLevel_:Int,dstX_:Int,dstY_:Int,dstZ_:Int,width_:Int,height_:Int,depth_:Int)
endrem
Global glCopyImageSubDataNV(srcName_:Int,srcTarget_:Int,srcLevel_:Int,srcX_:Int,srcY_:Int,srcZ_:Int,dstName_:Int,dstTarget_:Int,dstLevel_:Int,dstX_:Int,dstY_:Int,dstZ_:Int,width_:Int,height_:Int,depth_:Int)="__glewCopyImageSubDataNV"
rem
bbdoc: GL Const GL_NV_deep_texture3D
endrem
Const GL_NV_deep_texture3D=1
rem
bbdoc: GL Const GL_MAX_DEEP_3D_TEXTURE_WIDTH_HEIGHT_NV
endrem
Const GL_MAX_DEEP_3D_TEXTURE_WIDTH_HEIGHT_NV=$90D0
rem
bbdoc: GL Const GL_MAX_DEEP_3D_TEXTURE_DEPTH_NV
endrem
Const GL_MAX_DEEP_3D_TEXTURE_DEPTH_NV=$90D1
rem
bbdoc: GL Const GL_NV_depth_buffer_float
endrem
Const GL_NV_depth_buffer_float=1
rem
bbdoc: GL Const GL_DEPTH_COMPONENT32F_NV
endrem
Const GL_DEPTH_COMPONENT32F_NV=$8DAB
rem
bbdoc: GL Const GL_DEPTH32F_STENCIL8_NV
endrem
Const GL_DEPTH32F_STENCIL8_NV=$8DAC
rem
bbdoc: GL Const GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV
endrem
Const GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV=$8DAD
rem
bbdoc: GL Const GL_DEPTH_BUFFER_FLOAT_MODE_NV
endrem
Const GL_DEPTH_BUFFER_FLOAT_MODE_NV=$8DAF
rem
bbdoc: GL Global glClearDepthdNV(depth_:Double)
endrem
Global glClearDepthdNV(depth_:Double)="__glewClearDepthdNV"
rem
bbdoc: GL Global glDepthBoundsdNV(zmin_:Double,zmax_:Double)
endrem
Global glDepthBoundsdNV(zmin_:Double,zmax_:Double)="__glewDepthBoundsdNV"
rem
bbdoc: GL Global glDepthRangedNV(zNear_:Double,zFar_:Double)
endrem
Global glDepthRangedNV(zNear_:Double,zFar_:Double)="__glewDepthRangedNV"
rem
bbdoc: GL Const GL_NV_depth_clamp
endrem
Const GL_NV_depth_clamp=1
rem
bbdoc: GL Const GL_DEPTH_CLAMP_NV
endrem
Const GL_DEPTH_CLAMP_NV=$864F
rem
bbdoc: GL Const GL_NV_depth_range_unclamped
endrem
Const GL_NV_depth_range_unclamped=1
rem
bbdoc: GL Const GL_SAMPLE_COUNT_BITS_NV
endrem
Const GL_SAMPLE_COUNT_BITS_NV=$8864
rem
bbdoc: GL Const GL_CURRENT_SAMPLE_COUNT_QUERY_NV
endrem
Const GL_CURRENT_SAMPLE_COUNT_QUERY_NV=$8865
rem
bbdoc: GL Const GL_QUERY_RESULT_NV
endrem
Const GL_QUERY_RESULT_NV=$8866
rem
bbdoc: GL Const GL_QUERY_RESULT_AVAILABLE_NV
endrem
Const GL_QUERY_RESULT_AVAILABLE_NV=$8867
rem
bbdoc: GL Const GL_SAMPLE_COUNT_NV
endrem
Const GL_SAMPLE_COUNT_NV=$8914
rem
bbdoc: GL Const GL_NV_draw_texture
endrem
Const GL_NV_draw_texture=1
rem
bbdoc: GL Global glDrawTextureNV(texture_:Int,sampler_:Int,x0_:Float,y0_:Float,x1_:Float,y1_:Float,z_:Float,s0_:Float,t0_:Float,s1_:Float,t1_:Float)
endrem
Global glDrawTextureNV(texture_:Int,sampler_:Int,x0_:Float,y0_:Float,x1_:Float,y1_:Float,z_:Float,s0_:Float,t0_:Float,s1_:Float,t1_:Float)="__glewDrawTextureNV"
rem
bbdoc: GL Const GL_NV_evaluators
endrem
Const GL_NV_evaluators=1
rem
bbdoc: GL Const GL_EVAL_2D_NV
endrem
Const GL_EVAL_2D_NV=$86C0
rem
bbdoc: GL Const GL_EVAL_TRIANGULAR_2D_NV
endrem
Const GL_EVAL_TRIANGULAR_2D_NV=$86C1
rem
bbdoc: GL Const GL_MAP_TESSELLATION_NV
endrem
Const GL_MAP_TESSELLATION_NV=$86C2
rem
bbdoc: GL Const GL_MAP_ATTRIB_U_ORDER_NV
endrem
Const GL_MAP_ATTRIB_U_ORDER_NV=$86C3
rem
bbdoc: GL Const GL_MAP_ATTRIB_V_ORDER_NV
endrem
Const GL_MAP_ATTRIB_V_ORDER_NV=$86C4
rem
bbdoc: GL Const GL_EVAL_FRACTIONAL_TESSELLATION_NV
endrem
Const GL_EVAL_FRACTIONAL_TESSELLATION_NV=$86C5
rem
bbdoc: GL Const GL_EVAL_VERTEX_ATTRIB0_NV
endrem
Const GL_EVAL_VERTEX_ATTRIB0_NV=$86C6
rem
bbdoc: GL Const GL_EVAL_VERTEX_ATTRIB1_NV
endrem
Const GL_EVAL_VERTEX_ATTRIB1_NV=$86C7
rem
bbdoc: GL Const GL_EVAL_VERTEX_ATTRIB2_NV
endrem
Const GL_EVAL_VERTEX_ATTRIB2_NV=$86C8
rem
bbdoc: GL Const GL_EVAL_VERTEX_ATTRIB3_NV
endrem
Const GL_EVAL_VERTEX_ATTRIB3_NV=$86C9
rem
bbdoc: GL Const GL_EVAL_VERTEX_ATTRIB4_NV
endrem
Const GL_EVAL_VERTEX_ATTRIB4_NV=$86CA
rem
bbdoc: GL Const GL_EVAL_VERTEX_ATTRIB5_NV
endrem
Const GL_EVAL_VERTEX_ATTRIB5_NV=$86CB
rem
bbdoc: GL Const GL_EVAL_VERTEX_ATTRIB6_NV
endrem
Const GL_EVAL_VERTEX_ATTRIB6_NV=$86CC
rem
bbdoc: GL Const GL_EVAL_VERTEX_ATTRIB7_NV
endrem
Const GL_EVAL_VERTEX_ATTRIB7_NV=$86CD
rem
bbdoc: GL Const GL_EVAL_VERTEX_ATTRIB8_NV
endrem
Const GL_EVAL_VERTEX_ATTRIB8_NV=$86CE
rem
bbdoc: GL Const GL_EVAL_VERTEX_ATTRIB9_NV
endrem
Const GL_EVAL_VERTEX_ATTRIB9_NV=$86CF
rem
bbdoc: GL Const GL_EVAL_VERTEX_ATTRIB10_NV
endrem
Const GL_EVAL_VERTEX_ATTRIB10_NV=$86D0
rem
bbdoc: GL Const GL_EVAL_VERTEX_ATTRIB11_NV
endrem
Const GL_EVAL_VERTEX_ATTRIB11_NV=$86D1
rem
bbdoc: GL Const GL_EVAL_VERTEX_ATTRIB12_NV
endrem
Const GL_EVAL_VERTEX_ATTRIB12_NV=$86D2
rem
bbdoc: GL Const GL_EVAL_VERTEX_ATTRIB13_NV
endrem
Const GL_EVAL_VERTEX_ATTRIB13_NV=$86D3
rem
bbdoc: GL Const GL_EVAL_VERTEX_ATTRIB14_NV
endrem
Const GL_EVAL_VERTEX_ATTRIB14_NV=$86D4
rem
bbdoc: GL Const GL_EVAL_VERTEX_ATTRIB15_NV
endrem
Const GL_EVAL_VERTEX_ATTRIB15_NV=$86D5
rem
bbdoc: GL Const GL_MAX_MAP_TESSELLATION_NV
endrem
Const GL_MAX_MAP_TESSELLATION_NV=$86D6
rem
bbdoc: GL Const GL_MAX_RATIONAL_EVAL_ORDER_NV
endrem
Const GL_MAX_RATIONAL_EVAL_ORDER_NV=$86D7
rem
bbdoc: GL Global glEvalMapsNV(target_:Int,mode_:Int)
endrem
Global glEvalMapsNV(target_:Int,mode_:Int)="__glewEvalMapsNV"
rem
bbdoc: GL Global glGetMapAttribParameterfvNV(target_:Int,index_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetMapAttribParameterfvNV(target_:Int,index_:Int,pname_:Int,params_:Float Ptr)="__glewGetMapAttribParameterfvNV"
rem
bbdoc: GL Global glGetMapAttribParameterivNV(target_:Int,index_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetMapAttribParameterivNV(target_:Int,index_:Int,pname_:Int,params_:Int Ptr)="__glewGetMapAttribParameterivNV"
rem
bbdoc: GL Global glGetMapControlPointsNV(target_:Int,index_:Int,type_:Int,ustride_:Int,vstride_:Int,packed_:Byte,points_:Byte Ptr)
endrem
Global glGetMapControlPointsNV(target_:Int,index_:Int,type_:Int,ustride_:Int,vstride_:Int,packed_:Byte,points_:Byte Ptr)="__glewGetMapControlPointsNV"
rem
bbdoc: GL Global glGetMapParameterfvNV(target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetMapParameterfvNV(target_:Int,pname_:Int,params_:Float Ptr)="__glewGetMapParameterfvNV"
rem
bbdoc: GL Global glGetMapParameterivNV(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetMapParameterivNV(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetMapParameterivNV"
rem
bbdoc: GL Global glMapControlPointsNV(target_:Int,index_:Int,type_:Int,ustride_:Int,vstride_:Int,uorder_:Int,vorder_:Int,packed_:Byte,points_:Byte Ptr)
endrem
Global glMapControlPointsNV(target_:Int,index_:Int,type_:Int,ustride_:Int,vstride_:Int,uorder_:Int,vorder_:Int,packed_:Byte,points_:Byte Ptr)="__glewMapControlPointsNV"
rem
bbdoc: GL Global glMapParameterfvNV(target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glMapParameterfvNV(target_:Int,pname_:Int,params_:Float Ptr)="__glewMapParameterfvNV"
rem
bbdoc: GL Global glMapParameterivNV(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glMapParameterivNV(target_:Int,pname_:Int,params_:Int Ptr)="__glewMapParameterivNV"
rem
bbdoc: GL Const GL_NV_explicit_multisample
endrem
Const GL_NV_explicit_multisample=1
rem
bbdoc: GL Const GL_SAMPLE_POSITION_NV
endrem
Const GL_SAMPLE_POSITION_NV=$8E50
rem
bbdoc: GL Const GL_SAMPLE_MASK_NV
endrem
Const GL_SAMPLE_MASK_NV=$8E51
rem
bbdoc: GL Const GL_SAMPLE_MASK_VALUE_NV
endrem
Const GL_SAMPLE_MASK_VALUE_NV=$8E52
rem
bbdoc: GL Const GL_TEXTURE_BINDING_RENDERBUFFER_NV
endrem
Const GL_TEXTURE_BINDING_RENDERBUFFER_NV=$8E53
rem
bbdoc: GL Const GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV
endrem
Const GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV=$8E54
rem
bbdoc: GL Const GL_TEXTURE_RENDERBUFFER_NV
endrem
Const GL_TEXTURE_RENDERBUFFER_NV=$8E55
rem
bbdoc: GL Const GL_SAMPLER_RENDERBUFFER_NV
endrem
Const GL_SAMPLER_RENDERBUFFER_NV=$8E56
rem
bbdoc: GL Const GL_INT_SAMPLER_RENDERBUFFER_NV
endrem
Const GL_INT_SAMPLER_RENDERBUFFER_NV=$8E57
rem
bbdoc: GL Const GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV
endrem
Const GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV=$8E58
rem
bbdoc: GL Const GL_MAX_SAMPLE_MASK_WORDS_NV
endrem
Const GL_MAX_SAMPLE_MASK_WORDS_NV=$8E59
rem
bbdoc: GL Global glGetMultisamplefvNV(pname_:Int,index_:Int,val_:Float Ptr)
endrem
Global glGetMultisamplefvNV(pname_:Int,index_:Int,val_:Float Ptr)="__glewGetMultisamplefvNV"
rem
bbdoc: GL Global glSampleMaskIndexedNV(index_:Int,mask_:Int)
endrem
Global glSampleMaskIndexedNV(index_:Int,mask_:Int)="__glewSampleMaskIndexedNV"
rem
bbdoc: GL Global glTexRenderbufferNV(target_:Int,renderbuffer_:Int)
endrem
Global glTexRenderbufferNV(target_:Int,renderbuffer_:Int)="__glewTexRenderbufferNV"
rem
bbdoc: GL Const GL_NV_fence
endrem
Const GL_NV_fence=1
rem
bbdoc: GL Const GL_ALL_COMPLETED_NV
endrem
Const GL_ALL_COMPLETED_NV=$84F2
rem
bbdoc: GL Const GL_FENCE_STATUS_NV
endrem
Const GL_FENCE_STATUS_NV=$84F3
rem
bbdoc: GL Const GL_FENCE_CONDITION_NV
endrem
Const GL_FENCE_CONDITION_NV=$84F4
rem
bbdoc: GL Global glDeleteFencesNV(n_:Int,fences_:Int Ptr)
endrem
Global glDeleteFencesNV(n_:Int,fences_:Int Ptr)="__glewDeleteFencesNV"
rem
bbdoc: GL Global glFinishFenceNV(fence_:Int)
endrem
Global glFinishFenceNV(fence_:Int)="__glewFinishFenceNV"
rem
bbdoc: GL Global glGenFencesNV(n_:Int,fences_:Int Ptr)
endrem
Global glGenFencesNV(n_:Int,fences_:Int Ptr)="__glewGenFencesNV"
rem
bbdoc: GL Global glGetFenceivNV(fence_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetFenceivNV(fence_:Int,pname_:Int,params_:Int Ptr)="__glewGetFenceivNV"
rem
bbdoc: GL Global glIsFenceNV:Byte(fence_:Int)
endrem
Global glIsFenceNV:Byte(fence_:Int)="__glewIsFenceNV"
rem
bbdoc: GL Global glSetFenceNV(fence_:Int,condition_:Int)
endrem
Global glSetFenceNV(fence_:Int,condition_:Int)="__glewSetFenceNV"
rem
bbdoc: GL Global glTestFenceNV:Byte(fence_:Int)
endrem
Global glTestFenceNV:Byte(fence_:Int)="__glewTestFenceNV"
rem
bbdoc: GL Const GL_NV_float_buffer
endrem
Const GL_NV_float_buffer=1
rem
bbdoc: GL Const GL_FLOAT_R_NV
endrem
Const GL_FLOAT_R_NV=$8880
rem
bbdoc: GL Const GL_FLOAT_RG_NV
endrem
Const GL_FLOAT_RG_NV=$8881
rem
bbdoc: GL Const GL_FLOAT_RGB_NV
endrem
Const GL_FLOAT_RGB_NV=$8882
rem
bbdoc: GL Const GL_FLOAT_RGBA_NV
endrem
Const GL_FLOAT_RGBA_NV=$8883
rem
bbdoc: GL Const GL_FLOAT_R16_NV
endrem
Const GL_FLOAT_R16_NV=$8884
rem
bbdoc: GL Const GL_FLOAT_R32_NV
endrem
Const GL_FLOAT_R32_NV=$8885
rem
bbdoc: GL Const GL_FLOAT_RG16_NV
endrem
Const GL_FLOAT_RG16_NV=$8886
rem
bbdoc: GL Const GL_FLOAT_RG32_NV
endrem
Const GL_FLOAT_RG32_NV=$8887
rem
bbdoc: GL Const GL_FLOAT_RGB16_NV
endrem
Const GL_FLOAT_RGB16_NV=$8888
rem
bbdoc: GL Const GL_FLOAT_RGB32_NV
endrem
Const GL_FLOAT_RGB32_NV=$8889
rem
bbdoc: GL Const GL_FLOAT_RGBA16_NV
endrem
Const GL_FLOAT_RGBA16_NV=$888A
rem
bbdoc: GL Const GL_FLOAT_RGBA32_NV
endrem
Const GL_FLOAT_RGBA32_NV=$888B
rem
bbdoc: GL Const GL_TEXTURE_FLOAT_COMPONENTS_NV
endrem
Const GL_TEXTURE_FLOAT_COMPONENTS_NV=$888C
rem
bbdoc: GL Const GL_FLOAT_CLEAR_COLOR_VALUE_NV
endrem
Const GL_FLOAT_CLEAR_COLOR_VALUE_NV=$888D
rem
bbdoc: GL Const GL_FLOAT_RGBA_MODE_NV
endrem
Const GL_FLOAT_RGBA_MODE_NV=$888E
rem
bbdoc: GL Const GL_NV_fog_distance
endrem
Const GL_NV_fog_distance=1
rem
bbdoc: GL Const GL_FOG_DISTANCE_MODE_NV
endrem
Const GL_FOG_DISTANCE_MODE_NV=$855A
rem
bbdoc: GL Const GL_EYE_RADIAL_NV
endrem
Const GL_EYE_RADIAL_NV=$855B
rem
bbdoc: GL Const GL_EYE_PLANE_ABSOLUTE_NV
endrem
Const GL_EYE_PLANE_ABSOLUTE_NV=$855C
rem
bbdoc: GL Const GL_NV_fragment_program
endrem
Const GL_NV_fragment_program=1
rem
bbdoc: GL Const GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV
endrem
Const GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV=$8868
rem
bbdoc: GL Const GL_FRAGMENT_PROGRAM_NV
endrem
Const GL_FRAGMENT_PROGRAM_NV=$8870
rem
bbdoc: GL Const GL_MAX_TEXTURE_COORDS_NV
endrem
Const GL_MAX_TEXTURE_COORDS_NV=$8871
rem
bbdoc: GL Const GL_MAX_TEXTURE_IMAGE_UNITS_NV
endrem
Const GL_MAX_TEXTURE_IMAGE_UNITS_NV=$8872
rem
bbdoc: GL Const GL_FRAGMENT_PROGRAM_BINDING_NV
endrem
Const GL_FRAGMENT_PROGRAM_BINDING_NV=$8873
rem
bbdoc: GL Const GL_PROGRAM_ERROR_STRING_NV
endrem
Const GL_PROGRAM_ERROR_STRING_NV=$8874
rem
bbdoc: GL Global glGetProgramNamedParameterdvNV(id_:Int,len_:Int,name_:Byte Ptr,params_:Double Ptr)
endrem
Global glGetProgramNamedParameterdvNV(id_:Int,len_:Int,name_:Byte Ptr,params_:Double Ptr)="__glewGetProgramNamedParameterdvNV"
rem
bbdoc: GL Global glGetProgramNamedParameterfvNV(id_:Int,len_:Int,name_:Byte Ptr,params_:Float Ptr)
endrem
Global glGetProgramNamedParameterfvNV(id_:Int,len_:Int,name_:Byte Ptr,params_:Float Ptr)="__glewGetProgramNamedParameterfvNV"
rem
bbdoc: GL Global glProgramNamedParameter4dNV(id_:Int,len_:Int,name_:Byte Ptr,x_:Double,y_:Double,z_:Double,w_:Double)
endrem
Global glProgramNamedParameter4dNV(id_:Int,len_:Int,name_:Byte Ptr,x_:Double,y_:Double,z_:Double,w_:Double)="__glewProgramNamedParameter4dNV"
rem
bbdoc: GL Global glProgramNamedParameter4dvNV(id_:Int,len_:Int,name_:Byte Ptr,v_:Double Ptr)
endrem
Global glProgramNamedParameter4dvNV(id_:Int,len_:Int,name_:Byte Ptr,v_:Double Ptr)="__glewProgramNamedParameter4dvNV"
rem
bbdoc: GL Global glProgramNamedParameter4fNV(id_:Int,len_:Int,name_:Byte Ptr,x_:Float,y_:Float,z_:Float,w_:Float)
endrem
Global glProgramNamedParameter4fNV(id_:Int,len_:Int,name_:Byte Ptr,x_:Float,y_:Float,z_:Float,w_:Float)="__glewProgramNamedParameter4fNV"
rem
bbdoc: GL Global glProgramNamedParameter4fvNV(id_:Int,len_:Int,name_:Byte Ptr,v_:Float Ptr)
endrem
Global glProgramNamedParameter4fvNV(id_:Int,len_:Int,name_:Byte Ptr,v_:Float Ptr)="__glewProgramNamedParameter4fvNV"
rem
bbdoc: GL Const GL_NV_fragment_program2
endrem
Const GL_NV_fragment_program2=1
rem
bbdoc: GL Const GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV
endrem
Const GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV=$88F4
rem
bbdoc: GL Const GL_MAX_PROGRAM_CALL_DEPTH_NV
endrem
Const GL_MAX_PROGRAM_CALL_DEPTH_NV=$88F5
rem
bbdoc: GL Const GL_MAX_PROGRAM_IF_DEPTH_NV
endrem
Const GL_MAX_PROGRAM_IF_DEPTH_NV=$88F6
rem
bbdoc: GL Const GL_MAX_PROGRAM_LOOP_DEPTH_NV
endrem
Const GL_MAX_PROGRAM_LOOP_DEPTH_NV=$88F7
rem
bbdoc: GL Const GL_MAX_PROGRAM_LOOP_COUNT_NV
endrem
Const GL_MAX_PROGRAM_LOOP_COUNT_NV=$88F8
rem
bbdoc: GL Const GL_NV_fragment_program4
endrem
Const GL_NV_fragment_program4=1
rem
bbdoc: GL Const GL_NV_fragment_program_option
endrem
Const GL_NV_fragment_program_option=1
rem
bbdoc: GL Const GL_NV_framebuffer_multisample_coverage
endrem
Const GL_NV_framebuffer_multisample_coverage=1
rem
bbdoc: GL Const GL_RENDERBUFFER_COVERAGE_SAMPLES_NV
endrem
Const GL_RENDERBUFFER_COVERAGE_SAMPLES_NV=$8CAB
rem
bbdoc: GL Const GL_RENDERBUFFER_COLOR_SAMPLES_NV
endrem
Const GL_RENDERBUFFER_COLOR_SAMPLES_NV=$8E10
rem
bbdoc: GL Const GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV
endrem
Const GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV=$8E11
rem
bbdoc: GL Const GL_MULTISAMPLE_COVERAGE_MODES_NV
endrem
Const GL_MULTISAMPLE_COVERAGE_MODES_NV=$8E12
rem
bbdoc: GL Global glRenderbufferStorageMultisampleCoverageNV(target_:Int,coverageSamples_:Int,colorSamples_:Int,internalformat_:Int,width_:Int,height_:Int)
endrem
Global glRenderbufferStorageMultisampleCoverageNV(target_:Int,coverageSamples_:Int,colorSamples_:Int,internalformat_:Int,width_:Int,height_:Int)="__glewRenderbufferStorageMultisampleCoverageNV"
rem
bbdoc: GL Const GL_NV_geometry_program4
endrem
Const GL_NV_geometry_program4=1
rem
bbdoc: GL Const GL_GEOMETRY_PROGRAM_NV
endrem
Const GL_GEOMETRY_PROGRAM_NV=$8C26
rem
bbdoc: GL Const GL_MAX_PROGRAM_OUTPUT_VERTICES_NV
endrem
Const GL_MAX_PROGRAM_OUTPUT_VERTICES_NV=$8C27
rem
bbdoc: GL Const GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV
endrem
Const GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV=$8C28
rem
bbdoc: GL Global glProgramVertexLimitNV(target_:Int,limit_:Int)
endrem
Global glProgramVertexLimitNV(target_:Int,limit_:Int)="__glewProgramVertexLimitNV"
rem
bbdoc: GL Const GL_NV_geometry_shader4
endrem
Const GL_NV_geometry_shader4=1
rem
bbdoc: GL Const GL_NV_gpu_program4
endrem
Const GL_NV_gpu_program4=1
rem
bbdoc: GL Const GL_MIN_PROGRAM_TEXEL_OFFSET_NV
endrem
Const GL_MIN_PROGRAM_TEXEL_OFFSET_NV=$8904
rem
bbdoc: GL Const GL_MAX_PROGRAM_TEXEL_OFFSET_NV
endrem
Const GL_MAX_PROGRAM_TEXEL_OFFSET_NV=$8905
rem
bbdoc: GL Const GL_PROGRAM_ATTRIB_COMPONENTS_NV
endrem
Const GL_PROGRAM_ATTRIB_COMPONENTS_NV=$8906
rem
bbdoc: GL Const GL_PROGRAM_RESULT_COMPONENTS_NV
endrem
Const GL_PROGRAM_RESULT_COMPONENTS_NV=$8907
rem
bbdoc: GL Const GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV
endrem
Const GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV=$8908
rem
bbdoc: GL Const GL_MAX_PROGRAM_RESULT_COMPONENTS_NV
endrem
Const GL_MAX_PROGRAM_RESULT_COMPONENTS_NV=$8909
rem
bbdoc: GL Const GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV
endrem
Const GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV=$8DA5
rem
bbdoc: GL Const GL_MAX_PROGRAM_GENERIC_RESULTS_NV
endrem
Const GL_MAX_PROGRAM_GENERIC_RESULTS_NV=$8DA6
rem
bbdoc: GL Global glProgramEnvParameterI4iNV(target_:Int,index_:Int,x_:Int,y_:Int,z_:Int,w_:Int)
endrem
Global glProgramEnvParameterI4iNV(target_:Int,index_:Int,x_:Int,y_:Int,z_:Int,w_:Int)="__glewProgramEnvParameterI4iNV"
rem
bbdoc: GL Global glProgramEnvParameterI4ivNV(target_:Int,index_:Int,params_:Int Ptr)
endrem
Global glProgramEnvParameterI4ivNV(target_:Int,index_:Int,params_:Int Ptr)="__glewProgramEnvParameterI4ivNV"
rem
bbdoc: GL Global glProgramEnvParameterI4uiNV(target_:Int,index_:Int,x_:Int,y_:Int,z_:Int,w_:Int)
endrem
Global glProgramEnvParameterI4uiNV(target_:Int,index_:Int,x_:Int,y_:Int,z_:Int,w_:Int)="__glewProgramEnvParameterI4uiNV"
rem
bbdoc: GL Global glProgramEnvParameterI4uivNV(target_:Int,index_:Int,params_:Int Ptr)
endrem
Global glProgramEnvParameterI4uivNV(target_:Int,index_:Int,params_:Int Ptr)="__glewProgramEnvParameterI4uivNV"
rem
bbdoc: GL Global glProgramEnvParametersI4ivNV(target_:Int,index_:Int,count_:Int,params_:Int Ptr)
endrem
Global glProgramEnvParametersI4ivNV(target_:Int,index_:Int,count_:Int,params_:Int Ptr)="__glewProgramEnvParametersI4ivNV"
rem
bbdoc: GL Global glProgramEnvParametersI4uivNV(target_:Int,index_:Int,count_:Int,params_:Int Ptr)
endrem
Global glProgramEnvParametersI4uivNV(target_:Int,index_:Int,count_:Int,params_:Int Ptr)="__glewProgramEnvParametersI4uivNV"
rem
bbdoc: GL Global glProgramLocalParameterI4iNV(target_:Int,index_:Int,x_:Int,y_:Int,z_:Int,w_:Int)
endrem
Global glProgramLocalParameterI4iNV(target_:Int,index_:Int,x_:Int,y_:Int,z_:Int,w_:Int)="__glewProgramLocalParameterI4iNV"
rem
bbdoc: GL Global glProgramLocalParameterI4ivNV(target_:Int,index_:Int,params_:Int Ptr)
endrem
Global glProgramLocalParameterI4ivNV(target_:Int,index_:Int,params_:Int Ptr)="__glewProgramLocalParameterI4ivNV"
rem
bbdoc: GL Global glProgramLocalParameterI4uiNV(target_:Int,index_:Int,x_:Int,y_:Int,z_:Int,w_:Int)
endrem
Global glProgramLocalParameterI4uiNV(target_:Int,index_:Int,x_:Int,y_:Int,z_:Int,w_:Int)="__glewProgramLocalParameterI4uiNV"
rem
bbdoc: GL Global glProgramLocalParameterI4uivNV(target_:Int,index_:Int,params_:Int Ptr)
endrem
Global glProgramLocalParameterI4uivNV(target_:Int,index_:Int,params_:Int Ptr)="__glewProgramLocalParameterI4uivNV"
rem
bbdoc: GL Global glProgramLocalParametersI4ivNV(target_:Int,index_:Int,count_:Int,params_:Int Ptr)
endrem
Global glProgramLocalParametersI4ivNV(target_:Int,index_:Int,count_:Int,params_:Int Ptr)="__glewProgramLocalParametersI4ivNV"
rem
bbdoc: GL Global glProgramLocalParametersI4uivNV(target_:Int,index_:Int,count_:Int,params_:Int Ptr)
endrem
Global glProgramLocalParametersI4uivNV(target_:Int,index_:Int,count_:Int,params_:Int Ptr)="__glewProgramLocalParametersI4uivNV"
rem
bbdoc: GL Const GL_NV_gpu_program5
endrem
Const GL_NV_gpu_program5=1
rem
bbdoc: GL Const GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV
endrem
Const GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV=$8E5A
rem
bbdoc: GL Const GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV
endrem
Const GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV=$8E5B
rem
bbdoc: GL Const GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV
endrem
Const GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV=$8E5C
rem
bbdoc: GL Const GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV
endrem
Const GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV=$8E5D
rem
bbdoc: GL Const GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV
endrem
Const GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV=$8E5E
rem
bbdoc: GL Const GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV
endrem
Const GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV=$8E5F
rem
bbdoc: GL Const GL_NV_gpu_program5_mem_extended
endrem
Const GL_NV_gpu_program5_mem_extended=1
rem
bbdoc: GL Const GL_NV_gpu_program_fp64
endrem
Const GL_NV_gpu_program_fp64=1
rem
bbdoc: GL Const GL_NV_gpu_shader5
endrem
Const GL_NV_gpu_shader5=1
rem
bbdoc: GL Const GL_INT64_NV
endrem
Const GL_INT64_NV=$140E
rem
bbdoc: GL Const GL_UNSIGNED_INT64_NV
endrem
Const GL_UNSIGNED_INT64_NV=$140F
rem
bbdoc: GL Const GL_INT8_NV
endrem
Const GL_INT8_NV=$8FE0
rem
bbdoc: GL Const GL_INT8_VEC2_NV
endrem
Const GL_INT8_VEC2_NV=$8FE1
rem
bbdoc: GL Const GL_INT8_VEC3_NV
endrem
Const GL_INT8_VEC3_NV=$8FE2
rem
bbdoc: GL Const GL_INT8_VEC4_NV
endrem
Const GL_INT8_VEC4_NV=$8FE3
rem
bbdoc: GL Const GL_INT16_NV
endrem
Const GL_INT16_NV=$8FE4
rem
bbdoc: GL Const GL_INT16_VEC2_NV
endrem
Const GL_INT16_VEC2_NV=$8FE5
rem
bbdoc: GL Const GL_INT16_VEC3_NV
endrem
Const GL_INT16_VEC3_NV=$8FE6
rem
bbdoc: GL Const GL_INT16_VEC4_NV
endrem
Const GL_INT16_VEC4_NV=$8FE7
rem
bbdoc: GL Const GL_INT64_VEC2_NV
endrem
Const GL_INT64_VEC2_NV=$8FE9
rem
bbdoc: GL Const GL_INT64_VEC3_NV
endrem
Const GL_INT64_VEC3_NV=$8FEA
rem
bbdoc: GL Const GL_INT64_VEC4_NV
endrem
Const GL_INT64_VEC4_NV=$8FEB
rem
bbdoc: GL Const GL_UNSIGNED_INT8_NV
endrem
Const GL_UNSIGNED_INT8_NV=$8FEC
rem
bbdoc: GL Const GL_UNSIGNED_INT8_VEC2_NV
endrem
Const GL_UNSIGNED_INT8_VEC2_NV=$8FED
rem
bbdoc: GL Const GL_UNSIGNED_INT8_VEC3_NV
endrem
Const GL_UNSIGNED_INT8_VEC3_NV=$8FEE
rem
bbdoc: GL Const GL_UNSIGNED_INT8_VEC4_NV
endrem
Const GL_UNSIGNED_INT8_VEC4_NV=$8FEF
rem
bbdoc: GL Const GL_UNSIGNED_INT16_NV
endrem
Const GL_UNSIGNED_INT16_NV=$8FF0
rem
bbdoc: GL Const GL_UNSIGNED_INT16_VEC2_NV
endrem
Const GL_UNSIGNED_INT16_VEC2_NV=$8FF1
rem
bbdoc: GL Const GL_UNSIGNED_INT16_VEC3_NV
endrem
Const GL_UNSIGNED_INT16_VEC3_NV=$8FF2
rem
bbdoc: GL Const GL_UNSIGNED_INT16_VEC4_NV
endrem
Const GL_UNSIGNED_INT16_VEC4_NV=$8FF3
rem
bbdoc: GL Const GL_UNSIGNED_INT64_VEC2_NV
endrem
Const GL_UNSIGNED_INT64_VEC2_NV=$8FF5
rem
bbdoc: GL Const GL_UNSIGNED_INT64_VEC3_NV
endrem
Const GL_UNSIGNED_INT64_VEC3_NV=$8FF6
rem
bbdoc: GL Const GL_UNSIGNED_INT64_VEC4_NV
endrem
Const GL_UNSIGNED_INT64_VEC4_NV=$8FF7
rem
bbdoc: GL Const GL_FLOAT16_NV
endrem
Const GL_FLOAT16_NV=$8FF8
rem
bbdoc: GL Const GL_FLOAT16_VEC2_NV
endrem
Const GL_FLOAT16_VEC2_NV=$8FF9
rem
bbdoc: GL Const GL_FLOAT16_VEC3_NV
endrem
Const GL_FLOAT16_VEC3_NV=$8FFA
rem
bbdoc: GL Const GL_FLOAT16_VEC4_NV
endrem
Const GL_FLOAT16_VEC4_NV=$8FFB
rem
bbdoc: GL Global glGetUniformi64vNV(program_:Int,location_:Int,params_:Long Ptr)
endrem
Global glGetUniformi64vNV(program_:Int,location_:Int,params_:Long Ptr)="__glewGetUniformi64vNV"
rem
bbdoc: GL Global glGetUniformui64vNV(program_:Int,location_:Int,params_:Long Ptr)
endrem
Global glGetUniformui64vNV(program_:Int,location_:Int,params_:Long Ptr)="__glewGetUniformui64vNV"
rem
bbdoc: GL Global glProgramUniform1i64NV(program_:Int,location_:Int,x_:Long)
endrem
Global glProgramUniform1i64NV(program_:Int,location_:Int,x_:Long)="__glewProgramUniform1i64NV"
rem
bbdoc: GL Global glProgramUniform1i64vNV(program_:Int,location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glProgramUniform1i64vNV(program_:Int,location_:Int,count_:Int,value_:Long Ptr)="__glewProgramUniform1i64vNV"
rem
bbdoc: GL Global glProgramUniform1ui64NV(program_:Int,location_:Int,x_:Long)
endrem
Global glProgramUniform1ui64NV(program_:Int,location_:Int,x_:Long)="__glewProgramUniform1ui64NV"
rem
bbdoc: GL Global glProgramUniform1ui64vNV(program_:Int,location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glProgramUniform1ui64vNV(program_:Int,location_:Int,count_:Int,value_:Long Ptr)="__glewProgramUniform1ui64vNV"
rem
bbdoc: GL Global glProgramUniform2i64NV(program_:Int,location_:Int,x_:Long,y_:Long)
endrem
Global glProgramUniform2i64NV(program_:Int,location_:Int,x_:Long,y_:Long)="__glewProgramUniform2i64NV"
rem
bbdoc: GL Global glProgramUniform2i64vNV(program_:Int,location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glProgramUniform2i64vNV(program_:Int,location_:Int,count_:Int,value_:Long Ptr)="__glewProgramUniform2i64vNV"
rem
bbdoc: GL Global glProgramUniform2ui64NV(program_:Int,location_:Int,x_:Long,y_:Long)
endrem
Global glProgramUniform2ui64NV(program_:Int,location_:Int,x_:Long,y_:Long)="__glewProgramUniform2ui64NV"
rem
bbdoc: GL Global glProgramUniform2ui64vNV(program_:Int,location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glProgramUniform2ui64vNV(program_:Int,location_:Int,count_:Int,value_:Long Ptr)="__glewProgramUniform2ui64vNV"
rem
bbdoc: GL Global glProgramUniform3i64NV(program_:Int,location_:Int,x_:Long,y_:Long,z_:Long)
endrem
Global glProgramUniform3i64NV(program_:Int,location_:Int,x_:Long,y_:Long,z_:Long)="__glewProgramUniform3i64NV"
rem
bbdoc: GL Global glProgramUniform3i64vNV(program_:Int,location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glProgramUniform3i64vNV(program_:Int,location_:Int,count_:Int,value_:Long Ptr)="__glewProgramUniform3i64vNV"
rem
bbdoc: GL Global glProgramUniform3ui64NV(program_:Int,location_:Int,x_:Long,y_:Long,z_:Long)
endrem
Global glProgramUniform3ui64NV(program_:Int,location_:Int,x_:Long,y_:Long,z_:Long)="__glewProgramUniform3ui64NV"
rem
bbdoc: GL Global glProgramUniform3ui64vNV(program_:Int,location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glProgramUniform3ui64vNV(program_:Int,location_:Int,count_:Int,value_:Long Ptr)="__glewProgramUniform3ui64vNV"
rem
bbdoc: GL Global glProgramUniform4i64NV(program_:Int,location_:Int,x_:Long,y_:Long,z_:Long,w_:Long)
endrem
Global glProgramUniform4i64NV(program_:Int,location_:Int,x_:Long,y_:Long,z_:Long,w_:Long)="__glewProgramUniform4i64NV"
rem
bbdoc: GL Global glProgramUniform4i64vNV(program_:Int,location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glProgramUniform4i64vNV(program_:Int,location_:Int,count_:Int,value_:Long Ptr)="__glewProgramUniform4i64vNV"
rem
bbdoc: GL Global glProgramUniform4ui64NV(program_:Int,location_:Int,x_:Long,y_:Long,z_:Long,w_:Long)
endrem
Global glProgramUniform4ui64NV(program_:Int,location_:Int,x_:Long,y_:Long,z_:Long,w_:Long)="__glewProgramUniform4ui64NV"
rem
bbdoc: GL Global glProgramUniform4ui64vNV(program_:Int,location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glProgramUniform4ui64vNV(program_:Int,location_:Int,count_:Int,value_:Long Ptr)="__glewProgramUniform4ui64vNV"
rem
bbdoc: GL Global glUniform1i64NV(location_:Int,x_:Long)
endrem
Global glUniform1i64NV(location_:Int,x_:Long)="__glewUniform1i64NV"
rem
bbdoc: GL Global glUniform1i64vNV(location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glUniform1i64vNV(location_:Int,count_:Int,value_:Long Ptr)="__glewUniform1i64vNV"
rem
bbdoc: GL Global glUniform1ui64NV(location_:Int,x_:Long)
endrem
Global glUniform1ui64NV(location_:Int,x_:Long)="__glewUniform1ui64NV"
rem
bbdoc: GL Global glUniform1ui64vNV(location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glUniform1ui64vNV(location_:Int,count_:Int,value_:Long Ptr)="__glewUniform1ui64vNV"
rem
bbdoc: GL Global glUniform2i64NV(location_:Int,x_:Long,y_:Long)
endrem
Global glUniform2i64NV(location_:Int,x_:Long,y_:Long)="__glewUniform2i64NV"
rem
bbdoc: GL Global glUniform2i64vNV(location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glUniform2i64vNV(location_:Int,count_:Int,value_:Long Ptr)="__glewUniform2i64vNV"
rem
bbdoc: GL Global glUniform2ui64NV(location_:Int,x_:Long,y_:Long)
endrem
Global glUniform2ui64NV(location_:Int,x_:Long,y_:Long)="__glewUniform2ui64NV"
rem
bbdoc: GL Global glUniform2ui64vNV(location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glUniform2ui64vNV(location_:Int,count_:Int,value_:Long Ptr)="__glewUniform2ui64vNV"
rem
bbdoc: GL Global glUniform3i64NV(location_:Int,x_:Long,y_:Long,z_:Long)
endrem
Global glUniform3i64NV(location_:Int,x_:Long,y_:Long,z_:Long)="__glewUniform3i64NV"
rem
bbdoc: GL Global glUniform3i64vNV(location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glUniform3i64vNV(location_:Int,count_:Int,value_:Long Ptr)="__glewUniform3i64vNV"
rem
bbdoc: GL Global glUniform3ui64NV(location_:Int,x_:Long,y_:Long,z_:Long)
endrem
Global glUniform3ui64NV(location_:Int,x_:Long,y_:Long,z_:Long)="__glewUniform3ui64NV"
rem
bbdoc: GL Global glUniform3ui64vNV(location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glUniform3ui64vNV(location_:Int,count_:Int,value_:Long Ptr)="__glewUniform3ui64vNV"
rem
bbdoc: GL Global glUniform4i64NV(location_:Int,x_:Long,y_:Long,z_:Long,w_:Long)
endrem
Global glUniform4i64NV(location_:Int,x_:Long,y_:Long,z_:Long,w_:Long)="__glewUniform4i64NV"
rem
bbdoc: GL Global glUniform4i64vNV(location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glUniform4i64vNV(location_:Int,count_:Int,value_:Long Ptr)="__glewUniform4i64vNV"
rem
bbdoc: GL Global glUniform4ui64NV(location_:Int,x_:Long,y_:Long,z_:Long,w_:Long)
endrem
Global glUniform4ui64NV(location_:Int,x_:Long,y_:Long,z_:Long,w_:Long)="__glewUniform4ui64NV"
rem
bbdoc: GL Global glUniform4ui64vNV(location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glUniform4ui64vNV(location_:Int,count_:Int,value_:Long Ptr)="__glewUniform4ui64vNV"
rem
bbdoc: GL Const GL_NV_half_float
endrem
Const GL_NV_half_float=1
rem
bbdoc: GL Const GL_HALF_FLOAT_NV
endrem
Const GL_HALF_FLOAT_NV=$140B
rem
bbdoc: GL Global glColor3hNV(red_:Short,green_:Short,blue_:Short)
endrem
Global glColor3hNV(red_:Short,green_:Short,blue_:Short)="__glewColor3hNV"
rem
bbdoc: GL Global glColor3hvNV(v_:Short Ptr)
endrem
Global glColor3hvNV(v_:Short Ptr)="__glewColor3hvNV"
rem
bbdoc: GL Global glColor4hNV(red_:Short,green_:Short,blue_:Short,alpha_:Short)
endrem
Global glColor4hNV(red_:Short,green_:Short,blue_:Short,alpha_:Short)="__glewColor4hNV"
rem
bbdoc: GL Global glColor4hvNV(v_:Short Ptr)
endrem
Global glColor4hvNV(v_:Short Ptr)="__glewColor4hvNV"
rem
bbdoc: GL Global glFogCoordhNV(fog_:Short)
endrem
Global glFogCoordhNV(fog_:Short)="__glewFogCoordhNV"
rem
bbdoc: GL Global glFogCoordhvNV(fog_:Short Ptr)
endrem
Global glFogCoordhvNV(fog_:Short Ptr)="__glewFogCoordhvNV"
rem
bbdoc: GL Global glMultiTexCoord1hNV(target_:Int,s_:Short)
endrem
Global glMultiTexCoord1hNV(target_:Int,s_:Short)="__glewMultiTexCoord1hNV"
rem
bbdoc: GL Global glMultiTexCoord1hvNV(target_:Int,v_:Short Ptr)
endrem
Global glMultiTexCoord1hvNV(target_:Int,v_:Short Ptr)="__glewMultiTexCoord1hvNV"
rem
bbdoc: GL Global glMultiTexCoord2hNV(target_:Int,s_:Short,t_:Short)
endrem
Global glMultiTexCoord2hNV(target_:Int,s_:Short,t_:Short)="__glewMultiTexCoord2hNV"
rem
bbdoc: GL Global glMultiTexCoord2hvNV(target_:Int,v_:Short Ptr)
endrem
Global glMultiTexCoord2hvNV(target_:Int,v_:Short Ptr)="__glewMultiTexCoord2hvNV"
rem
bbdoc: GL Global glMultiTexCoord3hNV(target_:Int,s_:Short,t_:Short,r_:Short)
endrem
Global glMultiTexCoord3hNV(target_:Int,s_:Short,t_:Short,r_:Short)="__glewMultiTexCoord3hNV"
rem
bbdoc: GL Global glMultiTexCoord3hvNV(target_:Int,v_:Short Ptr)
endrem
Global glMultiTexCoord3hvNV(target_:Int,v_:Short Ptr)="__glewMultiTexCoord3hvNV"
rem
bbdoc: GL Global glMultiTexCoord4hNV(target_:Int,s_:Short,t_:Short,r_:Short,q_:Short)
endrem
Global glMultiTexCoord4hNV(target_:Int,s_:Short,t_:Short,r_:Short,q_:Short)="__glewMultiTexCoord4hNV"
rem
bbdoc: GL Global glMultiTexCoord4hvNV(target_:Int,v_:Short Ptr)
endrem
Global glMultiTexCoord4hvNV(target_:Int,v_:Short Ptr)="__glewMultiTexCoord4hvNV"
rem
bbdoc: GL Global glNormal3hNV(nx_:Short,ny_:Short,nz_:Short)
endrem
Global glNormal3hNV(nx_:Short,ny_:Short,nz_:Short)="__glewNormal3hNV"
rem
bbdoc: GL Global glNormal3hvNV(v_:Short Ptr)
endrem
Global glNormal3hvNV(v_:Short Ptr)="__glewNormal3hvNV"
rem
bbdoc: GL Global glSecondaryColor3hNV(red_:Short,green_:Short,blue_:Short)
endrem
Global glSecondaryColor3hNV(red_:Short,green_:Short,blue_:Short)="__glewSecondaryColor3hNV"
rem
bbdoc: GL Global glSecondaryColor3hvNV(v_:Short Ptr)
endrem
Global glSecondaryColor3hvNV(v_:Short Ptr)="__glewSecondaryColor3hvNV"
rem
bbdoc: GL Global glTexCoord1hNV(s_:Short)
endrem
Global glTexCoord1hNV(s_:Short)="__glewTexCoord1hNV"
rem
bbdoc: GL Global glTexCoord1hvNV(v_:Short Ptr)
endrem
Global glTexCoord1hvNV(v_:Short Ptr)="__glewTexCoord1hvNV"
rem
bbdoc: GL Global glTexCoord2hNV(s_:Short,t_:Short)
endrem
Global glTexCoord2hNV(s_:Short,t_:Short)="__glewTexCoord2hNV"
rem
bbdoc: GL Global glTexCoord2hvNV(v_:Short Ptr)
endrem
Global glTexCoord2hvNV(v_:Short Ptr)="__glewTexCoord2hvNV"
rem
bbdoc: GL Global glTexCoord3hNV(s_:Short,t_:Short,r_:Short)
endrem
Global glTexCoord3hNV(s_:Short,t_:Short,r_:Short)="__glewTexCoord3hNV"
rem
bbdoc: GL Global glTexCoord3hvNV(v_:Short Ptr)
endrem
Global glTexCoord3hvNV(v_:Short Ptr)="__glewTexCoord3hvNV"
rem
bbdoc: GL Global glTexCoord4hNV(s_:Short,t_:Short,r_:Short,q_:Short)
endrem
Global glTexCoord4hNV(s_:Short,t_:Short,r_:Short,q_:Short)="__glewTexCoord4hNV"
rem
bbdoc: GL Global glTexCoord4hvNV(v_:Short Ptr)
endrem
Global glTexCoord4hvNV(v_:Short Ptr)="__glewTexCoord4hvNV"
rem
bbdoc: GL Global glVertex2hNV(x_:Short,y_:Short)
endrem
Global glVertex2hNV(x_:Short,y_:Short)="__glewVertex2hNV"
rem
bbdoc: GL Global glVertex2hvNV(v_:Short Ptr)
endrem
Global glVertex2hvNV(v_:Short Ptr)="__glewVertex2hvNV"
rem
bbdoc: GL Global glVertex3hNV(x_:Short,y_:Short,z_:Short)
endrem
Global glVertex3hNV(x_:Short,y_:Short,z_:Short)="__glewVertex3hNV"
rem
bbdoc: GL Global glVertex3hvNV(v_:Short Ptr)
endrem
Global glVertex3hvNV(v_:Short Ptr)="__glewVertex3hvNV"
rem
bbdoc: GL Global glVertex4hNV(x_:Short,y_:Short,z_:Short,w_:Short)
endrem
Global glVertex4hNV(x_:Short,y_:Short,z_:Short,w_:Short)="__glewVertex4hNV"
rem
bbdoc: GL Global glVertex4hvNV(v_:Short Ptr)
endrem
Global glVertex4hvNV(v_:Short Ptr)="__glewVertex4hvNV"
rem
bbdoc: GL Global glVertexAttrib1hNV(index_:Int,x_:Short)
endrem
Global glVertexAttrib1hNV(index_:Int,x_:Short)="__glewVertexAttrib1hNV"
rem
bbdoc: GL Global glVertexAttrib1hvNV(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib1hvNV(index_:Int,v_:Short Ptr)="__glewVertexAttrib1hvNV"
rem
bbdoc: GL Global glVertexAttrib2hNV(index_:Int,x_:Short,y_:Short)
endrem
Global glVertexAttrib2hNV(index_:Int,x_:Short,y_:Short)="__glewVertexAttrib2hNV"
rem
bbdoc: GL Global glVertexAttrib2hvNV(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib2hvNV(index_:Int,v_:Short Ptr)="__glewVertexAttrib2hvNV"
rem
bbdoc: GL Global glVertexAttrib3hNV(index_:Int,x_:Short,y_:Short,z_:Short)
endrem
Global glVertexAttrib3hNV(index_:Int,x_:Short,y_:Short,z_:Short)="__glewVertexAttrib3hNV"
rem
bbdoc: GL Global glVertexAttrib3hvNV(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib3hvNV(index_:Int,v_:Short Ptr)="__glewVertexAttrib3hvNV"
rem
bbdoc: GL Global glVertexAttrib4hNV(index_:Int,x_:Short,y_:Short,z_:Short,w_:Short)
endrem
Global glVertexAttrib4hNV(index_:Int,x_:Short,y_:Short,z_:Short,w_:Short)="__glewVertexAttrib4hNV"
rem
bbdoc: GL Global glVertexAttrib4hvNV(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib4hvNV(index_:Int,v_:Short Ptr)="__glewVertexAttrib4hvNV"
rem
bbdoc: GL Global glVertexAttribs1hvNV(index_:Int,n_:Int,v_:Short Ptr)
endrem
Global glVertexAttribs1hvNV(index_:Int,n_:Int,v_:Short Ptr)="__glewVertexAttribs1hvNV"
rem
bbdoc: GL Global glVertexAttribs2hvNV(index_:Int,n_:Int,v_:Short Ptr)
endrem
Global glVertexAttribs2hvNV(index_:Int,n_:Int,v_:Short Ptr)="__glewVertexAttribs2hvNV"
rem
bbdoc: GL Global glVertexAttribs3hvNV(index_:Int,n_:Int,v_:Short Ptr)
endrem
Global glVertexAttribs3hvNV(index_:Int,n_:Int,v_:Short Ptr)="__glewVertexAttribs3hvNV"
rem
bbdoc: GL Global glVertexAttribs4hvNV(index_:Int,n_:Int,v_:Short Ptr)
endrem
Global glVertexAttribs4hvNV(index_:Int,n_:Int,v_:Short Ptr)="__glewVertexAttribs4hvNV"
rem
bbdoc: GL Global glVertexWeighthNV(weight_:Short)
endrem
Global glVertexWeighthNV(weight_:Short)="__glewVertexWeighthNV"
rem
bbdoc: GL Global glVertexWeighthvNV(weight_:Short Ptr)
endrem
Global glVertexWeighthvNV(weight_:Short Ptr)="__glewVertexWeighthvNV"
rem
bbdoc: GL Const GL_NV_light_max_exponent
endrem
Const GL_NV_light_max_exponent=1
rem
bbdoc: GL Const GL_MAX_SHININESS_NV
endrem
Const GL_MAX_SHININESS_NV=$8504
rem
bbdoc: GL Const GL_MAX_SPOT_EXPONENT_NV
endrem
Const GL_MAX_SPOT_EXPONENT_NV=$8505
rem
bbdoc: GL Const GL_NV_multisample_coverage
endrem
Const GL_NV_multisample_coverage=1
rem
bbdoc: GL Const GL_COLOR_SAMPLES_NV
endrem
Const GL_COLOR_SAMPLES_NV=$8E20
rem
bbdoc: GL Const GL_NV_multisample_filter_hint
endrem
Const GL_NV_multisample_filter_hint=1
rem
bbdoc: GL Const GL_MULTISAMPLE_FILTER_HINT_NV
endrem
Const GL_MULTISAMPLE_FILTER_HINT_NV=$8534
rem
bbdoc: GL Const GL_NV_occlusion_query
endrem
Const GL_NV_occlusion_query=1
rem
bbdoc: GL Const GL_PIXEL_COUNTER_BITS_NV
endrem
Const GL_PIXEL_COUNTER_BITS_NV=$8864
rem
bbdoc: GL Const GL_CURRENT_OCCLUSION_QUERY_ID_NV
endrem
Const GL_CURRENT_OCCLUSION_QUERY_ID_NV=$8865
rem
bbdoc: GL Const GL_PIXEL_COUNT_NV
endrem
Const GL_PIXEL_COUNT_NV=$8866
rem
bbdoc: GL Const GL_PIXEL_COUNT_AVAILABLE_NV
endrem
Const GL_PIXEL_COUNT_AVAILABLE_NV=$8867
rem
bbdoc: GL Global glBeginOcclusionQueryNV(id_:Int)
endrem
Global glBeginOcclusionQueryNV(id_:Int)="__glewBeginOcclusionQueryNV"
rem
bbdoc: GL Global glDeleteOcclusionQueriesNV(n_:Int,ids_:Int Ptr)
endrem
Global glDeleteOcclusionQueriesNV(n_:Int,ids_:Int Ptr)="__glewDeleteOcclusionQueriesNV"
rem
bbdoc: GL Global glEndOcclusionQueryNV()
endrem
Global glEndOcclusionQueryNV()="__glewEndOcclusionQueryNV"
rem
bbdoc: GL Global glGenOcclusionQueriesNV(n_:Int,ids_:Int Ptr)
endrem
Global glGenOcclusionQueriesNV(n_:Int,ids_:Int Ptr)="__glewGenOcclusionQueriesNV"
rem
bbdoc: GL Global glGetOcclusionQueryivNV(id_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetOcclusionQueryivNV(id_:Int,pname_:Int,params_:Int Ptr)="__glewGetOcclusionQueryivNV"
rem
bbdoc: GL Global glGetOcclusionQueryuivNV(id_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetOcclusionQueryuivNV(id_:Int,pname_:Int,params_:Int Ptr)="__glewGetOcclusionQueryuivNV"
rem
bbdoc: GL Global glIsOcclusionQueryNV:Byte(id_:Int)
endrem
Global glIsOcclusionQueryNV:Byte(id_:Int)="__glewIsOcclusionQueryNV"
rem
bbdoc: GL Const GL_NV_packed_depth_stencil
endrem
Const GL_NV_packed_depth_stencil=1
rem
bbdoc: GL Const GL_DEPTH_STENCIL_NV
endrem
Const GL_DEPTH_STENCIL_NV=$84F9
rem
bbdoc: GL Const GL_UNSIGNED_INT_24_8_NV
endrem
Const GL_UNSIGNED_INT_24_8_NV=$84FA
rem
bbdoc: GL Const GL_NV_parameter_buffer_object
endrem
Const GL_NV_parameter_buffer_object=1
rem
bbdoc: GL Const GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV
endrem
Const GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV=$8DA0
rem
bbdoc: GL Const GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV
endrem
Const GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV=$8DA1
rem
bbdoc: GL Const GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV
endrem
Const GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV=$8DA2
rem
bbdoc: GL Const GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV
endrem
Const GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV=$8DA3
rem
bbdoc: GL Const GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV
endrem
Const GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV=$8DA4
rem
bbdoc: GL Global glProgramBufferParametersIivNV(target_:Int,buffer_:Int,index_:Int,count_:Int,params_:Int Ptr)
endrem
Global glProgramBufferParametersIivNV(target_:Int,buffer_:Int,index_:Int,count_:Int,params_:Int Ptr)="__glewProgramBufferParametersIivNV"
rem
bbdoc: GL Global glProgramBufferParametersIuivNV(target_:Int,buffer_:Int,index_:Int,count_:Int,params_:Int Ptr)
endrem
Global glProgramBufferParametersIuivNV(target_:Int,buffer_:Int,index_:Int,count_:Int,params_:Int Ptr)="__glewProgramBufferParametersIuivNV"
rem
bbdoc: GL Global glProgramBufferParametersfvNV(target_:Int,buffer_:Int,index_:Int,count_:Int,params_:Float Ptr)
endrem
Global glProgramBufferParametersfvNV(target_:Int,buffer_:Int,index_:Int,count_:Int,params_:Float Ptr)="__glewProgramBufferParametersfvNV"
rem
bbdoc: GL Const GL_NV_parameter_buffer_object2
endrem
Const GL_NV_parameter_buffer_object2=1
rem
bbdoc: GL Const GL_NV_path_rendering
endrem
Const GL_NV_path_rendering=1
rem
bbdoc: GL Const GL_CLOSE_PATH_NV
endrem
Const GL_CLOSE_PATH_NV=$00
rem
bbdoc: GL Const GL_BOLD_BIT_NV
endrem
Const GL_BOLD_BIT_NV=$01
rem
bbdoc: GL Const GL_GLYPH_WIDTH_BIT_NV
endrem
Const GL_GLYPH_WIDTH_BIT_NV=$01
rem
bbdoc: GL Const GL_GLYPH_HEIGHT_BIT_NV
endrem
Const GL_GLYPH_HEIGHT_BIT_NV=$02
rem
bbdoc: GL Const GL_ITALIC_BIT_NV
endrem
Const GL_ITALIC_BIT_NV=$02
rem
bbdoc: GL Const GL_MOVE_TO_NV
endrem
Const GL_MOVE_TO_NV=$02
rem
bbdoc: GL Const GL_RELATIVE_MOVE_TO_NV
endrem
Const GL_RELATIVE_MOVE_TO_NV=$03
rem
bbdoc: GL Const GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV
endrem
Const GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV=$04
rem
bbdoc: GL Const GL_LINE_TO_NV
endrem
Const GL_LINE_TO_NV=$04
rem
bbdoc: GL Const GL_RELATIVE_LINE_TO_NV
endrem
Const GL_RELATIVE_LINE_TO_NV=$05
rem
bbdoc: GL Const GL_HORIZONTAL_LINE_TO_NV
endrem
Const GL_HORIZONTAL_LINE_TO_NV=$06
rem
bbdoc: GL Const GL_RELATIVE_HORIZONTAL_LINE_TO_NV
endrem
Const GL_RELATIVE_HORIZONTAL_LINE_TO_NV=$07
rem
bbdoc: GL Const GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV
endrem
Const GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV=$08
rem
bbdoc: GL Const GL_VERTICAL_LINE_TO_NV
endrem
Const GL_VERTICAL_LINE_TO_NV=$08
rem
bbdoc: GL Const GL_RELATIVE_VERTICAL_LINE_TO_NV
endrem
Const GL_RELATIVE_VERTICAL_LINE_TO_NV=$09
rem
bbdoc: GL Const GL_QUADRATIC_CURVE_TO_NV
endrem
Const GL_QUADRATIC_CURVE_TO_NV=$0A
rem
bbdoc: GL Const GL_RELATIVE_QUADRATIC_CURVE_TO_NV
endrem
Const GL_RELATIVE_QUADRATIC_CURVE_TO_NV=$0B
rem
bbdoc: GL Const GL_CUBIC_CURVE_TO_NV
endrem
Const GL_CUBIC_CURVE_TO_NV=$0C
rem
bbdoc: GL Const GL_RELATIVE_CUBIC_CURVE_TO_NV
endrem
Const GL_RELATIVE_CUBIC_CURVE_TO_NV=$0D
rem
bbdoc: GL Const GL_SMOOTH_QUADRATIC_CURVE_TO_NV
endrem
Const GL_SMOOTH_QUADRATIC_CURVE_TO_NV=$0E
rem
bbdoc: GL Const GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV
endrem
Const GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV=$0F
rem
bbdoc: GL Const GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV
endrem
Const GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV=$10
rem
bbdoc: GL Const GL_SMOOTH_CUBIC_CURVE_TO_NV
endrem
Const GL_SMOOTH_CUBIC_CURVE_TO_NV=$10
rem
bbdoc: GL Const GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV
endrem
Const GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV=$11
rem
bbdoc: GL Const GL_SMALL_CCW_ARC_TO_NV
endrem
Const GL_SMALL_CCW_ARC_TO_NV=$12
rem
bbdoc: GL Const GL_RELATIVE_SMALL_CCW_ARC_TO_NV
endrem
Const GL_RELATIVE_SMALL_CCW_ARC_TO_NV=$13
rem
bbdoc: GL Const GL_SMALL_CW_ARC_TO_NV
endrem
Const GL_SMALL_CW_ARC_TO_NV=$14
rem
bbdoc: GL Const GL_RELATIVE_SMALL_CW_ARC_TO_NV
endrem
Const GL_RELATIVE_SMALL_CW_ARC_TO_NV=$15
rem
bbdoc: GL Const GL_LARGE_CCW_ARC_TO_NV
endrem
Const GL_LARGE_CCW_ARC_TO_NV=$16
rem
bbdoc: GL Const GL_RELATIVE_LARGE_CCW_ARC_TO_NV
endrem
Const GL_RELATIVE_LARGE_CCW_ARC_TO_NV=$17
rem
bbdoc: GL Const GL_LARGE_CW_ARC_TO_NV
endrem
Const GL_LARGE_CW_ARC_TO_NV=$18
rem
bbdoc: GL Const GL_RELATIVE_LARGE_CW_ARC_TO_NV
endrem
Const GL_RELATIVE_LARGE_CW_ARC_TO_NV=$19
rem
bbdoc: GL Const GL_GLYPH_VERTICAL_BEARING_X_BIT_NV
endrem
Const GL_GLYPH_VERTICAL_BEARING_X_BIT_NV=$20
rem
bbdoc: GL Const GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV
endrem
Const GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV=$40
rem
bbdoc: GL Const GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV
endrem
Const GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV=$80
rem
bbdoc: GL Const GL_RESTART_PATH_NV
endrem
Const GL_RESTART_PATH_NV=$F0
rem
bbdoc: GL Const GL_DUP_FIRST_CUBIC_CURVE_TO_NV
endrem
Const GL_DUP_FIRST_CUBIC_CURVE_TO_NV=$F2
rem
bbdoc: GL Const GL_DUP_LAST_CUBIC_CURVE_TO_NV
endrem
Const GL_DUP_LAST_CUBIC_CURVE_TO_NV=$F4
rem
bbdoc: GL Const GL_RECT_NV
endrem
Const GL_RECT_NV=$F6
rem
bbdoc: GL Const GL_CIRCULAR_CCW_ARC_TO_NV
endrem
Const GL_CIRCULAR_CCW_ARC_TO_NV=$F8
rem
bbdoc: GL Const GL_CIRCULAR_CW_ARC_TO_NV
endrem
Const GL_CIRCULAR_CW_ARC_TO_NV=$FA
rem
bbdoc: GL Const GL_CIRCULAR_TANGENT_ARC_TO_NV
endrem
Const GL_CIRCULAR_TANGENT_ARC_TO_NV=$FC
rem
bbdoc: GL Const GL_ARC_TO_NV
endrem
Const GL_ARC_TO_NV=$FE
rem
bbdoc: GL Const GL_RELATIVE_ARC_TO_NV
endrem
Const GL_RELATIVE_ARC_TO_NV=$FF
rem
bbdoc: GL Const GL_GLYPH_HAS_KERNING_BIT_NV
endrem
Const GL_GLYPH_HAS_KERNING_BIT_NV=$100
rem
bbdoc: GL Const GL_PATH_FORMAT_SVG_NV
endrem
Const GL_PATH_FORMAT_SVG_NV=$9070
rem
bbdoc: GL Const GL_PATH_FORMAT_PS_NV
endrem
Const GL_PATH_FORMAT_PS_NV=$9071
rem
bbdoc: GL Const GL_STANDARD_FONT_NAME_NV
endrem
Const GL_STANDARD_FONT_NAME_NV=$9072
rem
bbdoc: GL Const GL_SYSTEM_FONT_NAME_NV
endrem
Const GL_SYSTEM_FONT_NAME_NV=$9073
rem
bbdoc: GL Const GL_FILE_NAME_NV
endrem
Const GL_FILE_NAME_NV=$9074
rem
bbdoc: GL Const GL_PATH_STROKE_WIDTH_NV
endrem
Const GL_PATH_STROKE_WIDTH_NV=$9075
rem
bbdoc: GL Const GL_PATH_END_CAPS_NV
endrem
Const GL_PATH_END_CAPS_NV=$9076
rem
bbdoc: GL Const GL_PATH_INITIAL_END_CAP_NV
endrem
Const GL_PATH_INITIAL_END_CAP_NV=$9077
rem
bbdoc: GL Const GL_PATH_TERMINAL_END_CAP_NV
endrem
Const GL_PATH_TERMINAL_END_CAP_NV=$9078
rem
bbdoc: GL Const GL_PATH_JOIN_STYLE_NV
endrem
Const GL_PATH_JOIN_STYLE_NV=$9079
rem
bbdoc: GL Const GL_PATH_MITER_LIMIT_NV
endrem
Const GL_PATH_MITER_LIMIT_NV=$907A
rem
bbdoc: GL Const GL_PATH_DASH_CAPS_NV
endrem
Const GL_PATH_DASH_CAPS_NV=$907B
rem
bbdoc: GL Const GL_PATH_INITIAL_DASH_CAP_NV
endrem
Const GL_PATH_INITIAL_DASH_CAP_NV=$907C
rem
bbdoc: GL Const GL_PATH_TERMINAL_DASH_CAP_NV
endrem
Const GL_PATH_TERMINAL_DASH_CAP_NV=$907D
rem
bbdoc: GL Const GL_PATH_DASH_OFFSET_NV
endrem
Const GL_PATH_DASH_OFFSET_NV=$907E
rem
bbdoc: GL Const GL_PATH_CLIENT_LENGTH_NV
endrem
Const GL_PATH_CLIENT_LENGTH_NV=$907F
rem
bbdoc: GL Const GL_PATH_FILL_MODE_NV
endrem
Const GL_PATH_FILL_MODE_NV=$9080
rem
bbdoc: GL Const GL_PATH_FILL_MASK_NV
endrem
Const GL_PATH_FILL_MASK_NV=$9081
rem
bbdoc: GL Const GL_PATH_FILL_COVER_MODE_NV
endrem
Const GL_PATH_FILL_COVER_MODE_NV=$9082
rem
bbdoc: GL Const GL_PATH_STROKE_COVER_MODE_NV
endrem
Const GL_PATH_STROKE_COVER_MODE_NV=$9083
rem
bbdoc: GL Const GL_PATH_STROKE_MASK_NV
endrem
Const GL_PATH_STROKE_MASK_NV=$9084
rem
bbdoc: GL Const GL_COUNT_UP_NV
endrem
Const GL_COUNT_UP_NV=$9088
rem
bbdoc: GL Const GL_COUNT_DOWN_NV
endrem
Const GL_COUNT_DOWN_NV=$9089
rem
bbdoc: GL Const GL_PATH_OBJECT_BOUNDING_BOX_NV
endrem
Const GL_PATH_OBJECT_BOUNDING_BOX_NV=$908A
rem
bbdoc: GL Const GL_CONVEX_HULL_NV
endrem
Const GL_CONVEX_HULL_NV=$908B
rem
bbdoc: GL Const GL_BOUNDING_BOX_NV
endrem
Const GL_BOUNDING_BOX_NV=$908D
rem
bbdoc: GL Const GL_TRANSLATE_X_NV
endrem
Const GL_TRANSLATE_X_NV=$908E
rem
bbdoc: GL Const GL_TRANSLATE_Y_NV
endrem
Const GL_TRANSLATE_Y_NV=$908F
rem
bbdoc: GL Const GL_TRANSLATE_2D_NV
endrem
Const GL_TRANSLATE_2D_NV=$9090
rem
bbdoc: GL Const GL_TRANSLATE_3D_NV
endrem
Const GL_TRANSLATE_3D_NV=$9091
rem
bbdoc: GL Const GL_AFFINE_2D_NV
endrem
Const GL_AFFINE_2D_NV=$9092
rem
bbdoc: GL Const GL_AFFINE_3D_NV
endrem
Const GL_AFFINE_3D_NV=$9094
rem
bbdoc: GL Const GL_TRANSPOSE_AFFINE_2D_NV
endrem
Const GL_TRANSPOSE_AFFINE_2D_NV=$9096
rem
bbdoc: GL Const GL_TRANSPOSE_AFFINE_3D_NV
endrem
Const GL_TRANSPOSE_AFFINE_3D_NV=$9098
rem
bbdoc: GL Const GL_UTF8_NV
endrem
Const GL_UTF8_NV=$909A
rem
bbdoc: GL Const GL_UTF16_NV
endrem
Const GL_UTF16_NV=$909B
rem
bbdoc: GL Const GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV
endrem
Const GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV=$909C
rem
bbdoc: GL Const GL_PATH_COMMAND_COUNT_NV
endrem
Const GL_PATH_COMMAND_COUNT_NV=$909D
rem
bbdoc: GL Const GL_PATH_COORD_COUNT_NV
endrem
Const GL_PATH_COORD_COUNT_NV=$909E
rem
bbdoc: GL Const GL_PATH_DASH_ARRAY_COUNT_NV
endrem
Const GL_PATH_DASH_ARRAY_COUNT_NV=$909F
rem
bbdoc: GL Const GL_PATH_COMPUTED_LENGTH_NV
endrem
Const GL_PATH_COMPUTED_LENGTH_NV=$90A0
rem
bbdoc: GL Const GL_PATH_FILL_BOUNDING_BOX_NV
endrem
Const GL_PATH_FILL_BOUNDING_BOX_NV=$90A1
rem
bbdoc: GL Const GL_PATH_STROKE_BOUNDING_BOX_NV
endrem
Const GL_PATH_STROKE_BOUNDING_BOX_NV=$90A2
rem
bbdoc: GL Const GL_SQUARE_NV
endrem
Const GL_SQUARE_NV=$90A3
rem
bbdoc: GL Const GL_ROUND_NV
endrem
Const GL_ROUND_NV=$90A4
rem
bbdoc: GL Const GL_TRIANGULAR_NV
endrem
Const GL_TRIANGULAR_NV=$90A5
rem
bbdoc: GL Const GL_BEVEL_NV
endrem
Const GL_BEVEL_NV=$90A6
rem
bbdoc: GL Const GL_MITER_REVERT_NV
endrem
Const GL_MITER_REVERT_NV=$90A7
rem
bbdoc: GL Const GL_MITER_TRUNCATE_NV
endrem
Const GL_MITER_TRUNCATE_NV=$90A8
rem
bbdoc: GL Const GL_SKIP_MISSING_GLYPH_NV
endrem
Const GL_SKIP_MISSING_GLYPH_NV=$90A9
rem
bbdoc: GL Const GL_USE_MISSING_GLYPH_NV
endrem
Const GL_USE_MISSING_GLYPH_NV=$90AA
rem
bbdoc: GL Const GL_PATH_ERROR_POSITION_NV
endrem
Const GL_PATH_ERROR_POSITION_NV=$90AB
rem
bbdoc: GL Const GL_PATH_FOG_GEN_MODE_NV
endrem
Const GL_PATH_FOG_GEN_MODE_NV=$90AC
rem
bbdoc: GL Const GL_ACCUM_ADJACENT_PAIRS_NV
endrem
Const GL_ACCUM_ADJACENT_PAIRS_NV=$90AD
rem
bbdoc: GL Const GL_ADJACENT_PAIRS_NV
endrem
Const GL_ADJACENT_PAIRS_NV=$90AE
rem
bbdoc: GL Const GL_FIRST_TO_REST_NV
endrem
Const GL_FIRST_TO_REST_NV=$90AF
rem
bbdoc: GL Const GL_PATH_GEN_MODE_NV
endrem
Const GL_PATH_GEN_MODE_NV=$90B0
rem
bbdoc: GL Const GL_PATH_GEN_COEFF_NV
endrem
Const GL_PATH_GEN_COEFF_NV=$90B1
rem
bbdoc: GL Const GL_PATH_GEN_COLOR_FORMAT_NV
endrem
Const GL_PATH_GEN_COLOR_FORMAT_NV=$90B2
rem
bbdoc: GL Const GL_PATH_GEN_COMPONENTS_NV
endrem
Const GL_PATH_GEN_COMPONENTS_NV=$90B3
rem
bbdoc: GL Const GL_PATH_DASH_OFFSET_RESET_NV
endrem
Const GL_PATH_DASH_OFFSET_RESET_NV=$90B4
rem
bbdoc: GL Const GL_MOVE_TO_RESETS_NV
endrem
Const GL_MOVE_TO_RESETS_NV=$90B5
rem
bbdoc: GL Const GL_MOVE_TO_CONTINUES_NV
endrem
Const GL_MOVE_TO_CONTINUES_NV=$90B6
rem
bbdoc: GL Const GL_PATH_STENCIL_FUNC_NV
endrem
Const GL_PATH_STENCIL_FUNC_NV=$90B7
rem
bbdoc: GL Const GL_PATH_STENCIL_REF_NV
endrem
Const GL_PATH_STENCIL_REF_NV=$90B8
rem
bbdoc: GL Const GL_PATH_STENCIL_VALUE_MASK_NV
endrem
Const GL_PATH_STENCIL_VALUE_MASK_NV=$90B9
rem
bbdoc: GL Const GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV
endrem
Const GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV=$90BD
rem
bbdoc: GL Const GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV
endrem
Const GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV=$90BE
rem
bbdoc: GL Const GL_PATH_COVER_DEPTH_FUNC_NV
endrem
Const GL_PATH_COVER_DEPTH_FUNC_NV=$90BF
rem
bbdoc: GL Const GL_FONT_X_MIN_BOUNDS_BIT_NV
endrem
Const GL_FONT_X_MIN_BOUNDS_BIT_NV=$00010000
rem
bbdoc: GL Const GL_FONT_Y_MIN_BOUNDS_BIT_NV
endrem
Const GL_FONT_Y_MIN_BOUNDS_BIT_NV=$00020000
rem
bbdoc: GL Const GL_FONT_X_MAX_BOUNDS_BIT_NV
endrem
Const GL_FONT_X_MAX_BOUNDS_BIT_NV=$00040000
rem
bbdoc: GL Const GL_FONT_Y_MAX_BOUNDS_BIT_NV
endrem
Const GL_FONT_Y_MAX_BOUNDS_BIT_NV=$00080000
rem
bbdoc: GL Const GL_FONT_UNITS_PER_EM_BIT_NV
endrem
Const GL_FONT_UNITS_PER_EM_BIT_NV=$00100000
rem
bbdoc: GL Const GL_FONT_ASCENDER_BIT_NV
endrem
Const GL_FONT_ASCENDER_BIT_NV=$00200000
rem
bbdoc: GL Const GL_FONT_DESCENDER_BIT_NV
endrem
Const GL_FONT_DESCENDER_BIT_NV=$00400000
rem
bbdoc: GL Const GL_FONT_HEIGHT_BIT_NV
endrem
Const GL_FONT_HEIGHT_BIT_NV=$00800000
rem
bbdoc: GL Const GL_FONT_MAX_ADVANCE_WIDTH_BIT_NV
endrem
Const GL_FONT_MAX_ADVANCE_WIDTH_BIT_NV=$01000000
rem
bbdoc: GL Const GL_FONT_MAX_ADVANCE_HEIGHT_BIT_NV
endrem
Const GL_FONT_MAX_ADVANCE_HEIGHT_BIT_NV=$02000000
rem
bbdoc: GL Const GL_FONT_UNDERLINE_POSITION_BIT_NV
endrem
Const GL_FONT_UNDERLINE_POSITION_BIT_NV=$04000000
rem
bbdoc: GL Const GL_FONT_UNDERLINE_THICKNESS_BIT_NV
endrem
Const GL_FONT_UNDERLINE_THICKNESS_BIT_NV=$08000000
rem
bbdoc: GL Const GL_FONT_HAS_KERNING_BIT_NV
endrem
Const GL_FONT_HAS_KERNING_BIT_NV=$10000000
rem
bbdoc: GL Global glCopyPathNV(resultPath_:Int,srcPath_:Int)
endrem
Global glCopyPathNV(resultPath_:Int,srcPath_:Int)="__glewCopyPathNV"
rem
bbdoc: GL Global glCoverFillPathInstancedNV(numPaths_:Int,pathNameType_:Int,paths_:Byte Ptr,pathBase_:Int,coverMode_:Int,transformType_:Int,transformValues_:Float Ptr)
endrem
Global glCoverFillPathInstancedNV(numPaths_:Int,pathNameType_:Int,paths_:Byte Ptr,pathBase_:Int,coverMode_:Int,transformType_:Int,transformValues_:Float Ptr)="__glewCoverFillPathInstancedNV"
rem
bbdoc: GL Global glCoverFillPathNV(path_:Int,coverMode_:Int)
endrem
Global glCoverFillPathNV(path_:Int,coverMode_:Int)="__glewCoverFillPathNV"
rem
bbdoc: GL Global glCoverStrokePathInstancedNV(numPaths_:Int,pathNameType_:Int,paths_:Byte Ptr,pathBase_:Int,coverMode_:Int,transformType_:Int,transformValues_:Float Ptr)
endrem
Global glCoverStrokePathInstancedNV(numPaths_:Int,pathNameType_:Int,paths_:Byte Ptr,pathBase_:Int,coverMode_:Int,transformType_:Int,transformValues_:Float Ptr)="__glewCoverStrokePathInstancedNV"
rem
bbdoc: GL Global glCoverStrokePathNV(name_:Int,coverMode_:Int)
endrem
Global glCoverStrokePathNV(name_:Int,coverMode_:Int)="__glewCoverStrokePathNV"
rem
bbdoc: GL Global glDeletePathsNV(path_:Int,range_:Int)
endrem
Global glDeletePathsNV(path_:Int,range_:Int)="__glewDeletePathsNV"
rem
bbdoc: GL Global glGenPathsNV:Int(range_:Int)
endrem
Global glGenPathsNV:Int(range_:Int)="__glewGenPathsNV"
rem
bbdoc: GL Global glGetPathColorGenfvNV(color_:Int,pname_:Int,value_:Float Ptr)
endrem
Global glGetPathColorGenfvNV(color_:Int,pname_:Int,value_:Float Ptr)="__glewGetPathColorGenfvNV"
rem
bbdoc: GL Global glGetPathColorGenivNV(color_:Int,pname_:Int,value_:Int Ptr)
endrem
Global glGetPathColorGenivNV(color_:Int,pname_:Int,value_:Int Ptr)="__glewGetPathColorGenivNV"
rem
bbdoc: GL Global glGetPathCommandsNV(name_:Int,commands_:Byte Ptr)
endrem
Global glGetPathCommandsNV(name_:Int,commands_:Byte Ptr)="__glewGetPathCommandsNV"
rem
bbdoc: GL Global glGetPathCoordsNV(name_:Int,coords_:Float Ptr)
endrem
Global glGetPathCoordsNV(name_:Int,coords_:Float Ptr)="__glewGetPathCoordsNV"
rem
bbdoc: GL Global glGetPathDashArrayNV(name_:Int,dashArray_:Float Ptr)
endrem
Global glGetPathDashArrayNV(name_:Int,dashArray_:Float Ptr)="__glewGetPathDashArrayNV"
rem
bbdoc: GL Global glGetPathLengthNV:Float(path_:Int,startSegment_:Int,numSegments_:Int)
endrem
Global glGetPathLengthNV:Float(path_:Int,startSegment_:Int,numSegments_:Int)="__glewGetPathLengthNV"
rem
bbdoc: GL Global glGetPathMetricRangeNV(metricQueryMask_:Int,fistPathName_:Int,numPaths_:Int,stride_:Int,metrics_:Float Ptr)
endrem
Global glGetPathMetricRangeNV(metricQueryMask_:Int,fistPathName_:Int,numPaths_:Int,stride_:Int,metrics_:Float Ptr)="__glewGetPathMetricRangeNV"
rem
bbdoc: GL Global glGetPathMetricsNV(metricQueryMask_:Int,numPaths_:Int,pathNameType_:Int,paths_:Byte Ptr,pathBase_:Int,stride_:Int,metrics_:Float Ptr)
endrem
Global glGetPathMetricsNV(metricQueryMask_:Int,numPaths_:Int,pathNameType_:Int,paths_:Byte Ptr,pathBase_:Int,stride_:Int,metrics_:Float Ptr)="__glewGetPathMetricsNV"
rem
bbdoc: GL Global glGetPathParameterfvNV(name_:Int,param_:Int,value_:Float Ptr)
endrem
Global glGetPathParameterfvNV(name_:Int,param_:Int,value_:Float Ptr)="__glewGetPathParameterfvNV"
rem
bbdoc: GL Global glGetPathParameterivNV(name_:Int,param_:Int,value_:Int Ptr)
endrem
Global glGetPathParameterivNV(name_:Int,param_:Int,value_:Int Ptr)="__glewGetPathParameterivNV"
rem
bbdoc: GL Global glGetPathSpacingNV(pathListMode_:Int,numPaths_:Int,pathNameType_:Int,paths_:Byte Ptr,pathBase_:Int,advanceScale_:Float,kerningScale_:Float,transformType_:Int,returnedSpacing_:Float Ptr)
endrem
Global glGetPathSpacingNV(pathListMode_:Int,numPaths_:Int,pathNameType_:Int,paths_:Byte Ptr,pathBase_:Int,advanceScale_:Float,kerningScale_:Float,transformType_:Int,returnedSpacing_:Float Ptr)="__glewGetPathSpacingNV"
rem
bbdoc: GL Global glGetPathTexGenfvNV(texCoordSet_:Int,pname_:Int,value_:Float Ptr)
endrem
Global glGetPathTexGenfvNV(texCoordSet_:Int,pname_:Int,value_:Float Ptr)="__glewGetPathTexGenfvNV"
rem
bbdoc: GL Global glGetPathTexGenivNV(texCoordSet_:Int,pname_:Int,value_:Int Ptr)
endrem
Global glGetPathTexGenivNV(texCoordSet_:Int,pname_:Int,value_:Int Ptr)="__glewGetPathTexGenivNV"
rem
bbdoc: GL Global glInterpolatePathsNV(resultPath_:Int,pathA_:Int,pathB_:Int,weight_:Float)
endrem
Global glInterpolatePathsNV(resultPath_:Int,pathA_:Int,pathB_:Int,weight_:Float)="__glewInterpolatePathsNV"
rem
bbdoc: GL Global glIsPathNV:Byte(path_:Int)
endrem
Global glIsPathNV:Byte(path_:Int)="__glewIsPathNV"
rem
bbdoc: GL Global glIsPointInFillPathNV:Byte(path_:Int,mask_:Int,x_:Float,y_:Float)
endrem
Global glIsPointInFillPathNV:Byte(path_:Int,mask_:Int,x_:Float,y_:Float)="__glewIsPointInFillPathNV"
rem
bbdoc: GL Global glIsPointInStrokePathNV:Byte(path_:Int,x_:Float,y_:Float)
endrem
Global glIsPointInStrokePathNV:Byte(path_:Int,x_:Float,y_:Float)="__glewIsPointInStrokePathNV"
rem
bbdoc: GL Global glPathColorGenNV(color_:Int,genMode_:Int,colorFormat_:Int,coeffs_:Float Ptr)
endrem
Global glPathColorGenNV(color_:Int,genMode_:Int,colorFormat_:Int,coeffs_:Float Ptr)="__glewPathColorGenNV"
rem
bbdoc: GL Global glPathCommandsNV(path_:Int,numCommands_:Int,commands_:Byte Ptr,numCoords_:Int,coordType_:Int,coords_:Byte Ptr)
endrem
Global glPathCommandsNV(path_:Int,numCommands_:Int,commands_:Byte Ptr,numCoords_:Int,coordType_:Int,coords_:Byte Ptr)="__glewPathCommandsNV"
rem
bbdoc: GL Global glPathCoordsNV(path_:Int,numCoords_:Int,coordType_:Int,coords_:Byte Ptr)
endrem
Global glPathCoordsNV(path_:Int,numCoords_:Int,coordType_:Int,coords_:Byte Ptr)="__glewPathCoordsNV"
rem
bbdoc: GL Global glPathCoverDepthFuncNV(zfunc_:Int)
endrem
Global glPathCoverDepthFuncNV(zfunc_:Int)="__glewPathCoverDepthFuncNV"
rem
bbdoc: GL Global glPathDashArrayNV(path_:Int,dashCount_:Int,dashArray_:Float Ptr)
endrem
Global glPathDashArrayNV(path_:Int,dashCount_:Int,dashArray_:Float Ptr)="__glewPathDashArrayNV"
rem
bbdoc: GL Global glPathFogGenNV(genMode_:Int)
endrem
Global glPathFogGenNV(genMode_:Int)="__glewPathFogGenNV"
rem
bbdoc: GL Global glPathGlyphRangeNV(firstPathName_:Int,fontTarget_:Int,fontName_:Byte Ptr,fontStyle_:Int,firstGlyph_:Int,numGlyphs_:Int,handleMissingGlyphs_:Int,pathParameterTemplate_:Int,emScale_:Float)
endrem
Global glPathGlyphRangeNV(firstPathName_:Int,fontTarget_:Int,fontName_:Byte Ptr,fontStyle_:Int,firstGlyph_:Int,numGlyphs_:Int,handleMissingGlyphs_:Int,pathParameterTemplate_:Int,emScale_:Float)="__glewPathGlyphRangeNV"
rem
bbdoc: GL Global glPathGlyphsNV(firstPathName_:Int,fontTarget_:Int,fontName_:Byte Ptr,fontStyle_:Int,numGlyphs_:Int,type_:Int,charcodes_:Byte Ptr,handleMissingGlyphs_:Int,pathParameterTemplate_:Int,emScale_:Float)
endrem
Global glPathGlyphsNV(firstPathName_:Int,fontTarget_:Int,fontName_:Byte Ptr,fontStyle_:Int,numGlyphs_:Int,type_:Int,charcodes_:Byte Ptr,handleMissingGlyphs_:Int,pathParameterTemplate_:Int,emScale_:Float)="__glewPathGlyphsNV"
rem
bbdoc: GL Global glPathParameterfNV(path_:Int,pname_:Int,value_:Float)
endrem
Global glPathParameterfNV(path_:Int,pname_:Int,value_:Float)="__glewPathParameterfNV"
rem
bbdoc: GL Global glPathParameterfvNV(path_:Int,pname_:Int,value_:Float Ptr)
endrem
Global glPathParameterfvNV(path_:Int,pname_:Int,value_:Float Ptr)="__glewPathParameterfvNV"
rem
bbdoc: GL Global glPathParameteriNV(path_:Int,pname_:Int,value_:Int)
endrem
Global glPathParameteriNV(path_:Int,pname_:Int,value_:Int)="__glewPathParameteriNV"
rem
bbdoc: GL Global glPathParameterivNV(path_:Int,pname_:Int,value_:Int Ptr)
endrem
Global glPathParameterivNV(path_:Int,pname_:Int,value_:Int Ptr)="__glewPathParameterivNV"
rem
bbdoc: GL Global glPathStencilDepthOffsetNV(factor_:Float,units_:Float)
endrem
Global glPathStencilDepthOffsetNV(factor_:Float,units_:Float)="__glewPathStencilDepthOffsetNV"
rem
bbdoc: GL Global glPathStencilFuncNV(func_:Int,ref_:Int,mask_:Int)
endrem
Global glPathStencilFuncNV(func_:Int,ref_:Int,mask_:Int)="__glewPathStencilFuncNV"
rem
bbdoc: GL Global glPathStringNV(path_:Int,format_:Int,length_:Int,pathString_:Byte Ptr)
endrem
Global glPathStringNV(path_:Int,format_:Int,length_:Int,pathString_:Byte Ptr)="__glewPathStringNV"
rem
bbdoc: GL Global glPathSubCommandsNV(path_:Int,commandStart_:Int,commandsToDelete_:Int,numCommands_:Int,commands_:Byte Ptr,numCoords_:Int,coordType_:Int,coords_:Byte Ptr)
endrem
Global glPathSubCommandsNV(path_:Int,commandStart_:Int,commandsToDelete_:Int,numCommands_:Int,commands_:Byte Ptr,numCoords_:Int,coordType_:Int,coords_:Byte Ptr)="__glewPathSubCommandsNV"
rem
bbdoc: GL Global glPathSubCoordsNV(path_:Int,coordStart_:Int,numCoords_:Int,coordType_:Int,coords_:Byte Ptr)
endrem
Global glPathSubCoordsNV(path_:Int,coordStart_:Int,numCoords_:Int,coordType_:Int,coords_:Byte Ptr)="__glewPathSubCoordsNV"
rem
bbdoc: GL Global glPathTexGenNV(texCoordSet_:Int,genMode_:Int,components_:Int,coeffs_:Float Ptr)
endrem
Global glPathTexGenNV(texCoordSet_:Int,genMode_:Int,components_:Int,coeffs_:Float Ptr)="__glewPathTexGenNV"
rem
bbdoc: GL Global glPointAlongPathNV:Byte(path_:Int,startSegment_:Int,numSegments_:Int,distance_:Float,x_:Float Ptr,y_:Float Ptr,tangentX_:Float Ptr,tangentY_:Float Ptr)
endrem
Global glPointAlongPathNV:Byte(path_:Int,startSegment_:Int,numSegments_:Int,distance_:Float,x_:Float Ptr,y_:Float Ptr,tangentX_:Float Ptr,tangentY_:Float Ptr)="__glewPointAlongPathNV"
rem
bbdoc: GL Global glStencilFillPathInstancedNV(numPaths_:Int,pathNameType_:Int,paths_:Byte Ptr,pathBase_:Int,fillMode_:Int,mask_:Int,transformType_:Int,transformValues_:Float Ptr)
endrem
Global glStencilFillPathInstancedNV(numPaths_:Int,pathNameType_:Int,paths_:Byte Ptr,pathBase_:Int,fillMode_:Int,mask_:Int,transformType_:Int,transformValues_:Float Ptr)="__glewStencilFillPathInstancedNV"
rem
bbdoc: GL Global glStencilFillPathNV(path_:Int,fillMode_:Int,mask_:Int)
endrem
Global glStencilFillPathNV(path_:Int,fillMode_:Int,mask_:Int)="__glewStencilFillPathNV"
rem
bbdoc: GL Global glStencilStrokePathInstancedNV(numPaths_:Int,pathNameType_:Int,paths_:Byte Ptr,pathBase_:Int,reference_:Int,mask_:Int,transformType_:Int,transformValues_:Float Ptr)
endrem
Global glStencilStrokePathInstancedNV(numPaths_:Int,pathNameType_:Int,paths_:Byte Ptr,pathBase_:Int,reference_:Int,mask_:Int,transformType_:Int,transformValues_:Float Ptr)="__glewStencilStrokePathInstancedNV"
rem
bbdoc: GL Global glStencilStrokePathNV(path_:Int,reference_:Int,mask_:Int)
endrem
Global glStencilStrokePathNV(path_:Int,reference_:Int,mask_:Int)="__glewStencilStrokePathNV"
rem
bbdoc: GL Global glTransformPathNV(resultPath_:Int,srcPath_:Int,transformType_:Int,transformValues_:Float Ptr)
endrem
Global glTransformPathNV(resultPath_:Int,srcPath_:Int,transformType_:Int,transformValues_:Float Ptr)="__glewTransformPathNV"
rem
bbdoc: GL Global glWeightPathsNV(resultPath_:Int,numPaths_:Int,paths_:Int Ptr,weights_:Float Ptr)
endrem
Global glWeightPathsNV(resultPath_:Int,numPaths_:Int,paths_:Int Ptr,weights_:Float Ptr)="__glewWeightPathsNV"
rem
bbdoc: GL Const GL_NV_pixel_data_range
endrem
Const GL_NV_pixel_data_range=1
rem
bbdoc: GL Const GL_WRITE_PIXEL_DATA_RANGE_NV
endrem
Const GL_WRITE_PIXEL_DATA_RANGE_NV=$8878
rem
bbdoc: GL Const GL_READ_PIXEL_DATA_RANGE_NV
endrem
Const GL_READ_PIXEL_DATA_RANGE_NV=$8879
rem
bbdoc: GL Const GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV
endrem
Const GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV=$887A
rem
bbdoc: GL Const GL_READ_PIXEL_DATA_RANGE_LENGTH_NV
endrem
Const GL_READ_PIXEL_DATA_RANGE_LENGTH_NV=$887B
rem
bbdoc: GL Const GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV
endrem
Const GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV=$887C
rem
bbdoc: GL Const GL_READ_PIXEL_DATA_RANGE_POINTER_NV
endrem
Const GL_READ_PIXEL_DATA_RANGE_POINTER_NV=$887D
rem
bbdoc: GL Global glFlushPixelDataRangeNV(target_:Int)
endrem
Global glFlushPixelDataRangeNV(target_:Int)="__glewFlushPixelDataRangeNV"
rem
bbdoc: GL Global glPixelDataRangeNV(target_:Int,length_:Int,pointer_:Byte Ptr)
endrem
Global glPixelDataRangeNV(target_:Int,length_:Int,pointer_:Byte Ptr)="__glewPixelDataRangeNV"
rem
bbdoc: GL Const GL_NV_point_sprite
endrem
Const GL_NV_point_sprite=1
rem
bbdoc: GL Const GL_POINT_SPRITE_NV
endrem
Const GL_POINT_SPRITE_NV=$8861
rem
bbdoc: GL Const GL_COORD_REPLACE_NV
endrem
Const GL_COORD_REPLACE_NV=$8862
rem
bbdoc: GL Const GL_POINT_SPRITE_R_MODE_NV
endrem
Const GL_POINT_SPRITE_R_MODE_NV=$8863
rem
bbdoc: GL Global glPointParameteriNV(pname_:Int,param_:Int)
endrem
Global glPointParameteriNV(pname_:Int,param_:Int)="__glewPointParameteriNV"
rem
bbdoc: GL Global glPointParameterivNV(pname_:Int,params_:Int Ptr)
endrem
Global glPointParameterivNV(pname_:Int,params_:Int Ptr)="__glewPointParameterivNV"
rem
bbdoc: GL Const GL_NV_present_video
endrem
Const GL_NV_present_video=1
rem
bbdoc: GL Const GL_FRAME_NV
endrem
Const GL_FRAME_NV=$8E26
rem
bbdoc: GL Const GL_FIELDS_NV
endrem
Const GL_FIELDS_NV=$8E27
rem
bbdoc: GL Const GL_CURRENT_TIME_NV
endrem
Const GL_CURRENT_TIME_NV=$8E28
rem
bbdoc: GL Const GL_NUM_FILL_STREAMS_NV
endrem
Const GL_NUM_FILL_STREAMS_NV=$8E29
rem
bbdoc: GL Const GL_PRESENT_TIME_NV
endrem
Const GL_PRESENT_TIME_NV=$8E2A
rem
bbdoc: GL Const GL_PRESENT_DURATION_NV
endrem
Const GL_PRESENT_DURATION_NV=$8E2B
rem
bbdoc: GL Global glGetVideoi64vNV(video_slot_:Int,pname_:Int,params_:Long Ptr)
endrem
Global glGetVideoi64vNV(video_slot_:Int,pname_:Int,params_:Long Ptr)="__glewGetVideoi64vNV"
rem
bbdoc: GL Global glGetVideoivNV(video_slot_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetVideoivNV(video_slot_:Int,pname_:Int,params_:Int Ptr)="__glewGetVideoivNV"
rem
bbdoc: GL Global glGetVideoui64vNV(video_slot_:Int,pname_:Int,params_:Long Ptr)
endrem
Global glGetVideoui64vNV(video_slot_:Int,pname_:Int,params_:Long Ptr)="__glewGetVideoui64vNV"
rem
bbdoc: GL Global glGetVideouivNV(video_slot_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetVideouivNV(video_slot_:Int,pname_:Int,params_:Int Ptr)="__glewGetVideouivNV"
rem
bbdoc: GL Global glPresentFrameDualFillNV(video_slot_:Int,minPresentTime_:Long,beginPresentTimeId_:Int,presentDurationId_:Int,type_:Int,target0_:Int,fill0_:Int,target1_:Int,fill1_:Int,target2_:Int,fill2_:Int,target3_:Int,fill3_:Int)
endrem
Global glPresentFrameDualFillNV(video_slot_:Int,minPresentTime_:Long,beginPresentTimeId_:Int,presentDurationId_:Int,type_:Int,target0_:Int,fill0_:Int,target1_:Int,fill1_:Int,target2_:Int,fill2_:Int,target3_:Int,fill3_:Int)="__glewPresentFrameDualFillNV"
rem
bbdoc: GL Global glPresentFrameKeyedNV(video_slot_:Int,minPresentTime_:Long,beginPresentTimeId_:Int,presentDurationId_:Int,type_:Int,target0_:Int,fill0_:Int,key0_:Int,target1_:Int,fill1_:Int,key1_:Int)
endrem
Global glPresentFrameKeyedNV(video_slot_:Int,minPresentTime_:Long,beginPresentTimeId_:Int,presentDurationId_:Int,type_:Int,target0_:Int,fill0_:Int,key0_:Int,target1_:Int,fill1_:Int,key1_:Int)="__glewPresentFrameKeyedNV"
rem
bbdoc: GL Const GL_NV_primitive_restart
endrem
Const GL_NV_primitive_restart=1
rem
bbdoc: GL Const GL_PRIMITIVE_RESTART_NV
endrem
Const GL_PRIMITIVE_RESTART_NV=$8558
rem
bbdoc: GL Const GL_PRIMITIVE_RESTART_INDEX_NV
endrem
Const GL_PRIMITIVE_RESTART_INDEX_NV=$8559
rem
bbdoc: GL Global glPrimitiveRestartIndexNV(index_:Int)
endrem
Global glPrimitiveRestartIndexNV(index_:Int)="__glewPrimitiveRestartIndexNV"
rem
bbdoc: GL Global glPrimitiveRestartNV()
endrem
Global glPrimitiveRestartNV()="__glewPrimitiveRestartNV"
rem
bbdoc: GL Const GL_NV_register_combiners
endrem
Const GL_NV_register_combiners=1
rem
bbdoc: GL Const GL_REGISTER_COMBINERS_NV
endrem
Const GL_REGISTER_COMBINERS_NV=$8522
rem
bbdoc: GL Const GL_VARIABLE_A_NV
endrem
Const GL_VARIABLE_A_NV=$8523
rem
bbdoc: GL Const GL_VARIABLE_B_NV
endrem
Const GL_VARIABLE_B_NV=$8524
rem
bbdoc: GL Const GL_VARIABLE_C_NV
endrem
Const GL_VARIABLE_C_NV=$8525
rem
bbdoc: GL Const GL_VARIABLE_D_NV
endrem
Const GL_VARIABLE_D_NV=$8526
rem
bbdoc: GL Const GL_VARIABLE_E_NV
endrem
Const GL_VARIABLE_E_NV=$8527
rem
bbdoc: GL Const GL_VARIABLE_F_NV
endrem
Const GL_VARIABLE_F_NV=$8528
rem
bbdoc: GL Const GL_VARIABLE_G_NV
endrem
Const GL_VARIABLE_G_NV=$8529
rem
bbdoc: GL Const GL_CONSTANT_COLOR0_NV
endrem
Const GL_CONSTANT_COLOR0_NV=$852A
rem
bbdoc: GL Const GL_CONSTANT_COLOR1_NV
endrem
Const GL_CONSTANT_COLOR1_NV=$852B
rem
bbdoc: GL Const GL_PRIMARY_COLOR_NV
endrem
Const GL_PRIMARY_COLOR_NV=$852C
rem
bbdoc: GL Const GL_SECONDARY_COLOR_NV
endrem
Const GL_SECONDARY_COLOR_NV=$852D
rem
bbdoc: GL Const GL_SPARE0_NV
endrem
Const GL_SPARE0_NV=$852E
rem
bbdoc: GL Const GL_SPARE1_NV
endrem
Const GL_SPARE1_NV=$852F
rem
bbdoc: GL Const GL_DISCARD_NV
endrem
Const GL_DISCARD_NV=$8530
rem
bbdoc: GL Const GL_E_TIMES_F_NV
endrem
Const GL_E_TIMES_F_NV=$8531
rem
bbdoc: GL Const GL_SPARE0_PLUS_SECONDARY_COLOR_NV
endrem
Const GL_SPARE0_PLUS_SECONDARY_COLOR_NV=$8532
rem
bbdoc: GL Const GL_UNSIGNED_IDENTITY_NV
endrem
Const GL_UNSIGNED_IDENTITY_NV=$8536
rem
bbdoc: GL Const GL_UNSIGNED_INVERT_NV
endrem
Const GL_UNSIGNED_INVERT_NV=$8537
rem
bbdoc: GL Const GL_EXPAND_NORMAL_NV
endrem
Const GL_EXPAND_NORMAL_NV=$8538
rem
bbdoc: GL Const GL_EXPAND_NEGATE_NV
endrem
Const GL_EXPAND_NEGATE_NV=$8539
rem
bbdoc: GL Const GL_HALF_BIAS_NORMAL_NV
endrem
Const GL_HALF_BIAS_NORMAL_NV=$853A
rem
bbdoc: GL Const GL_HALF_BIAS_NEGATE_NV
endrem
Const GL_HALF_BIAS_NEGATE_NV=$853B
rem
bbdoc: GL Const GL_SIGNED_IDENTITY_NV
endrem
Const GL_SIGNED_IDENTITY_NV=$853C
rem
bbdoc: GL Const GL_SIGNED_NEGATE_NV
endrem
Const GL_SIGNED_NEGATE_NV=$853D
rem
bbdoc: GL Const GL_SCALE_BY_TWO_NV
endrem
Const GL_SCALE_BY_TWO_NV=$853E
rem
bbdoc: GL Const GL_SCALE_BY_FOUR_NV
endrem
Const GL_SCALE_BY_FOUR_NV=$853F
rem
bbdoc: GL Const GL_SCALE_BY_ONE_HALF_NV
endrem
Const GL_SCALE_BY_ONE_HALF_NV=$8540
rem
bbdoc: GL Const GL_BIAS_BY_NEGATIVE_ONE_HALF_NV
endrem
Const GL_BIAS_BY_NEGATIVE_ONE_HALF_NV=$8541
rem
bbdoc: GL Const GL_COMBINER_INPUT_NV
endrem
Const GL_COMBINER_INPUT_NV=$8542
rem
bbdoc: GL Const GL_COMBINER_MAPPING_NV
endrem
Const GL_COMBINER_MAPPING_NV=$8543
rem
bbdoc: GL Const GL_COMBINER_COMPONENT_USAGE_NV
endrem
Const GL_COMBINER_COMPONENT_USAGE_NV=$8544
rem
bbdoc: GL Const GL_COMBINER_AB_DOT_PRODUCT_NV
endrem
Const GL_COMBINER_AB_DOT_PRODUCT_NV=$8545
rem
bbdoc: GL Const GL_COMBINER_CD_DOT_PRODUCT_NV
endrem
Const GL_COMBINER_CD_DOT_PRODUCT_NV=$8546
rem
bbdoc: GL Const GL_COMBINER_MUX_SUM_NV
endrem
Const GL_COMBINER_MUX_SUM_NV=$8547
rem
bbdoc: GL Const GL_COMBINER_SCALE_NV
endrem
Const GL_COMBINER_SCALE_NV=$8548
rem
bbdoc: GL Const GL_COMBINER_BIAS_NV
endrem
Const GL_COMBINER_BIAS_NV=$8549
rem
bbdoc: GL Const GL_COMBINER_AB_OUTPUT_NV
endrem
Const GL_COMBINER_AB_OUTPUT_NV=$854A
rem
bbdoc: GL Const GL_COMBINER_CD_OUTPUT_NV
endrem
Const GL_COMBINER_CD_OUTPUT_NV=$854B
rem
bbdoc: GL Const GL_COMBINER_SUM_OUTPUT_NV
endrem
Const GL_COMBINER_SUM_OUTPUT_NV=$854C
rem
bbdoc: GL Const GL_MAX_GENERAL_COMBINERS_NV
endrem
Const GL_MAX_GENERAL_COMBINERS_NV=$854D
rem
bbdoc: GL Const GL_NUM_GENERAL_COMBINERS_NV
endrem
Const GL_NUM_GENERAL_COMBINERS_NV=$854E
rem
bbdoc: GL Const GL_COLOR_SUM_CLAMP_NV
endrem
Const GL_COLOR_SUM_CLAMP_NV=$854F
rem
bbdoc: GL Const GL_COMBINER0_NV
endrem
Const GL_COMBINER0_NV=$8550
rem
bbdoc: GL Const GL_COMBINER1_NV
endrem
Const GL_COMBINER1_NV=$8551
rem
bbdoc: GL Const GL_COMBINER2_NV
endrem
Const GL_COMBINER2_NV=$8552
rem
bbdoc: GL Const GL_COMBINER3_NV
endrem
Const GL_COMBINER3_NV=$8553
rem
bbdoc: GL Const GL_COMBINER4_NV
endrem
Const GL_COMBINER4_NV=$8554
rem
bbdoc: GL Const GL_COMBINER5_NV
endrem
Const GL_COMBINER5_NV=$8555
rem
bbdoc: GL Const GL_COMBINER6_NV
endrem
Const GL_COMBINER6_NV=$8556
rem
bbdoc: GL Const GL_COMBINER7_NV
endrem
Const GL_COMBINER7_NV=$8557
rem
bbdoc: GL Global glCombinerInputNV(stage_:Int,portion_:Int,variable_:Int,input_:Int,mapping_:Int,componentUsage_:Int)
endrem
Global glCombinerInputNV(stage_:Int,portion_:Int,variable_:Int,input_:Int,mapping_:Int,componentUsage_:Int)="__glewCombinerInputNV"
rem
bbdoc: GL Global glCombinerOutputNV(stage_:Int,portion_:Int,abOutput_:Int,cdOutput_:Int,sumOutput_:Int,scale_:Int,bias_:Int,abDotProduct_:Byte,cdDotProduct_:Byte,muxSum_:Byte)
endrem
Global glCombinerOutputNV(stage_:Int,portion_:Int,abOutput_:Int,cdOutput_:Int,sumOutput_:Int,scale_:Int,bias_:Int,abDotProduct_:Byte,cdDotProduct_:Byte,muxSum_:Byte)="__glewCombinerOutputNV"
rem
bbdoc: GL Global glCombinerParameterfNV(pname_:Int,param_:Float)
endrem
Global glCombinerParameterfNV(pname_:Int,param_:Float)="__glewCombinerParameterfNV"
rem
bbdoc: GL Global glCombinerParameterfvNV(pname_:Int,params_:Float Ptr)
endrem
Global glCombinerParameterfvNV(pname_:Int,params_:Float Ptr)="__glewCombinerParameterfvNV"
rem
bbdoc: GL Global glCombinerParameteriNV(pname_:Int,param_:Int)
endrem
Global glCombinerParameteriNV(pname_:Int,param_:Int)="__glewCombinerParameteriNV"
rem
bbdoc: GL Global glCombinerParameterivNV(pname_:Int,params_:Int Ptr)
endrem
Global glCombinerParameterivNV(pname_:Int,params_:Int Ptr)="__glewCombinerParameterivNV"
rem
bbdoc: GL Global glFinalCombinerInputNV(variable_:Int,input_:Int,mapping_:Int,componentUsage_:Int)
endrem
Global glFinalCombinerInputNV(variable_:Int,input_:Int,mapping_:Int,componentUsage_:Int)="__glewFinalCombinerInputNV"
rem
bbdoc: GL Global glGetCombinerInputParameterfvNV(stage_:Int,portion_:Int,variable_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetCombinerInputParameterfvNV(stage_:Int,portion_:Int,variable_:Int,pname_:Int,params_:Float Ptr)="__glewGetCombinerInputParameterfvNV"
rem
bbdoc: GL Global glGetCombinerInputParameterivNV(stage_:Int,portion_:Int,variable_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetCombinerInputParameterivNV(stage_:Int,portion_:Int,variable_:Int,pname_:Int,params_:Int Ptr)="__glewGetCombinerInputParameterivNV"
rem
bbdoc: GL Global glGetCombinerOutputParameterfvNV(stage_:Int,portion_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetCombinerOutputParameterfvNV(stage_:Int,portion_:Int,pname_:Int,params_:Float Ptr)="__glewGetCombinerOutputParameterfvNV"
rem
bbdoc: GL Global glGetCombinerOutputParameterivNV(stage_:Int,portion_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetCombinerOutputParameterivNV(stage_:Int,portion_:Int,pname_:Int,params_:Int Ptr)="__glewGetCombinerOutputParameterivNV"
rem
bbdoc: GL Global glGetFinalCombinerInputParameterfvNV(variable_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetFinalCombinerInputParameterfvNV(variable_:Int,pname_:Int,params_:Float Ptr)="__glewGetFinalCombinerInputParameterfvNV"
rem
bbdoc: GL Global glGetFinalCombinerInputParameterivNV(variable_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetFinalCombinerInputParameterivNV(variable_:Int,pname_:Int,params_:Int Ptr)="__glewGetFinalCombinerInputParameterivNV"
rem
bbdoc: GL Const GL_NV_register_combiners2
endrem
Const GL_NV_register_combiners2=1
rem
bbdoc: GL Const GL_PER_STAGE_CONSTANTS_NV
endrem
Const GL_PER_STAGE_CONSTANTS_NV=$8535
rem
bbdoc: GL Global glCombinerStageParameterfvNV(stage_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glCombinerStageParameterfvNV(stage_:Int,pname_:Int,params_:Float Ptr)="__glewCombinerStageParameterfvNV"
rem
bbdoc: GL Global glGetCombinerStageParameterfvNV(stage_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetCombinerStageParameterfvNV(stage_:Int,pname_:Int,params_:Float Ptr)="__glewGetCombinerStageParameterfvNV"
rem
bbdoc: GL Const GL_NV_shader_atomic_counters
endrem
Const GL_NV_shader_atomic_counters=1
rem
bbdoc: GL Const GL_NV_shader_atomic_float
endrem
Const GL_NV_shader_atomic_float=1
rem
bbdoc: GL Const GL_NV_shader_atomic_int64
endrem
Const GL_NV_shader_atomic_int64=1
rem
bbdoc: GL Const GL_NV_shader_buffer_load
endrem
Const GL_NV_shader_buffer_load=1
rem
bbdoc: GL Const GL_BUFFER_GPU_ADDRESS_NV
endrem
Const GL_BUFFER_GPU_ADDRESS_NV=$8F1D
rem
bbdoc: GL Const GL_GPU_ADDRESS_NV
endrem
Const GL_GPU_ADDRESS_NV=$8F34
rem
bbdoc: GL Const GL_MAX_SHADER_BUFFER_ADDRESS_NV
endrem
Const GL_MAX_SHADER_BUFFER_ADDRESS_NV=$8F35
rem
bbdoc: GL Global glGetBufferParameterui64vNV(target_:Int,pname_:Int,params_:Long Ptr)
endrem
Global glGetBufferParameterui64vNV(target_:Int,pname_:Int,params_:Long Ptr)="__glewGetBufferParameterui64vNV"
rem
bbdoc: GL Global glGetIntegerui64vNV(value_:Int,result_:Long Ptr)
endrem
Global glGetIntegerui64vNV(value_:Int,result_:Long Ptr)="__glewGetIntegerui64vNV"
rem
bbdoc: GL Global glGetNamedBufferParameterui64vNV(buffer_:Int,pname_:Int,params_:Long Ptr)
endrem
Global glGetNamedBufferParameterui64vNV(buffer_:Int,pname_:Int,params_:Long Ptr)="__glewGetNamedBufferParameterui64vNV"
rem
bbdoc: GL Global glIsBufferResidentNV:Byte(target_:Int)
endrem
Global glIsBufferResidentNV:Byte(target_:Int)="__glewIsBufferResidentNV"
rem
bbdoc: GL Global glIsNamedBufferResidentNV:Byte(buffer_:Int)
endrem
Global glIsNamedBufferResidentNV:Byte(buffer_:Int)="__glewIsNamedBufferResidentNV"
rem
bbdoc: GL Global glMakeBufferNonResidentNV(target_:Int)
endrem
Global glMakeBufferNonResidentNV(target_:Int)="__glewMakeBufferNonResidentNV"
rem
bbdoc: GL Global glMakeBufferResidentNV(target_:Int,access_:Int)
endrem
Global glMakeBufferResidentNV(target_:Int,access_:Int)="__glewMakeBufferResidentNV"
rem
bbdoc: GL Global glMakeNamedBufferNonResidentNV(buffer_:Int)
endrem
Global glMakeNamedBufferNonResidentNV(buffer_:Int)="__glewMakeNamedBufferNonResidentNV"
rem
bbdoc: GL Global glMakeNamedBufferResidentNV(buffer_:Int,access_:Int)
endrem
Global glMakeNamedBufferResidentNV(buffer_:Int,access_:Int)="__glewMakeNamedBufferResidentNV"
rem
bbdoc: GL Global glProgramUniformui64NV(program_:Int,location_:Int,value_:Long)
endrem
Global glProgramUniformui64NV(program_:Int,location_:Int,value_:Long)="__glewProgramUniformui64NV"
rem
bbdoc: GL Global glProgramUniformui64vNV(program_:Int,location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glProgramUniformui64vNV(program_:Int,location_:Int,count_:Int,value_:Long Ptr)="__glewProgramUniformui64vNV"
rem
bbdoc: GL Global glUniformui64NV(location_:Int,value_:Long)
endrem
Global glUniformui64NV(location_:Int,value_:Long)="__glewUniformui64NV"
rem
bbdoc: GL Global glUniformui64vNV(location_:Int,count_:Int,value_:Long Ptr)
endrem
Global glUniformui64vNV(location_:Int,count_:Int,value_:Long Ptr)="__glewUniformui64vNV"
rem
bbdoc: GL Const GL_NV_shader_storage_buffer_object
endrem
Const GL_NV_shader_storage_buffer_object=1
rem
bbdoc: GL Const GL_NV_shader_thread_group
endrem
Const GL_NV_shader_thread_group=1
rem
bbdoc: GL Const GL_WARP_SIZE_NV
endrem
Const GL_WARP_SIZE_NV=$9339
rem
bbdoc: GL Const GL_WARPS_PER_SM_NV
endrem
Const GL_WARPS_PER_SM_NV=$933A
rem
bbdoc: GL Const GL_SM_COUNT_NV
endrem
Const GL_SM_COUNT_NV=$933B
rem
bbdoc: GL Const GL_NV_shader_thread_shuffle
endrem
Const GL_NV_shader_thread_shuffle=1
rem
bbdoc: GL Const GL_NV_tessellation_program5
endrem
Const GL_NV_tessellation_program5=1
rem
bbdoc: GL Const GL_MAX_PROGRAM_PATCH_ATTRIBS_NV
endrem
Const GL_MAX_PROGRAM_PATCH_ATTRIBS_NV=$86D8
rem
bbdoc: GL Const GL_TESS_CONTROL_PROGRAM_NV
endrem
Const GL_TESS_CONTROL_PROGRAM_NV=$891E
rem
bbdoc: GL Const GL_TESS_EVALUATION_PROGRAM_NV
endrem
Const GL_TESS_EVALUATION_PROGRAM_NV=$891F
rem
bbdoc: GL Const GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV
endrem
Const GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV=$8C74
rem
bbdoc: GL Const GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV
endrem
Const GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV=$8C75
rem
bbdoc: GL Const GL_NV_texgen_emboss
endrem
Const GL_NV_texgen_emboss=1
rem
bbdoc: GL Const GL_EMBOSS_LIGHT_NV
endrem
Const GL_EMBOSS_LIGHT_NV=$855D
rem
bbdoc: GL Const GL_EMBOSS_CONSTANT_NV
endrem
Const GL_EMBOSS_CONSTANT_NV=$855E
rem
bbdoc: GL Const GL_EMBOSS_MAP_NV
endrem
Const GL_EMBOSS_MAP_NV=$855F
rem
bbdoc: GL Const GL_NV_texgen_reflection
endrem
Const GL_NV_texgen_reflection=1
rem
bbdoc: GL Const GL_NORMAL_MAP_NV
endrem
Const GL_NORMAL_MAP_NV=$8511
rem
bbdoc: GL Const GL_REFLECTION_MAP_NV
endrem
Const GL_REFLECTION_MAP_NV=$8512
rem
bbdoc: GL Const GL_NV_texture_barrier
endrem
Const GL_NV_texture_barrier=1
rem
bbdoc: GL Global glTextureBarrierNV()
endrem
Global glTextureBarrierNV()="__glewTextureBarrierNV"
rem
bbdoc: GL Const GL_NV_texture_compression_vtc
endrem
Const GL_NV_texture_compression_vtc=1
rem
bbdoc: GL Const GL_NV_texture_env_combine4
endrem
Const GL_NV_texture_env_combine4=1
rem
bbdoc: GL Const GL_COMBINE4_NV
endrem
Const GL_COMBINE4_NV=$8503
rem
bbdoc: GL Const GL_SOURCE3_RGB_NV
endrem
Const GL_SOURCE3_RGB_NV=$8583
rem
bbdoc: GL Const GL_SOURCE3_ALPHA_NV
endrem
Const GL_SOURCE3_ALPHA_NV=$858B
rem
bbdoc: GL Const GL_OPERAND3_RGB_NV
endrem
Const GL_OPERAND3_RGB_NV=$8593
rem
bbdoc: GL Const GL_OPERAND3_ALPHA_NV
endrem
Const GL_OPERAND3_ALPHA_NV=$859B
rem
bbdoc: GL Const GL_NV_texture_expand_normal
endrem
Const GL_NV_texture_expand_normal=1
rem
bbdoc: GL Const GL_TEXTURE_UNSIGNED_REMAP_MODE_NV
endrem
Const GL_TEXTURE_UNSIGNED_REMAP_MODE_NV=$888F
rem
bbdoc: GL Const GL_NV_texture_multisample
endrem
Const GL_NV_texture_multisample=1
rem
bbdoc: GL Const GL_TEXTURE_COVERAGE_SAMPLES_NV
endrem
Const GL_TEXTURE_COVERAGE_SAMPLES_NV=$9045
rem
bbdoc: GL Const GL_TEXTURE_COLOR_SAMPLES_NV
endrem
Const GL_TEXTURE_COLOR_SAMPLES_NV=$9046
rem
bbdoc: GL Global glTexImage2DMultisampleCoverageNV(target_:Int,coverageSamples_:Int,colorSamples_:Int,internalFormat_:Int,width_:Int,height_:Int,fixedSampleLocations_:Byte)
endrem
Global glTexImage2DMultisampleCoverageNV(target_:Int,coverageSamples_:Int,colorSamples_:Int,internalFormat_:Int,width_:Int,height_:Int,fixedSampleLocations_:Byte)="__glewTexImage2DMultisampleCoverageNV"
rem
bbdoc: GL Global glTexImage3DMultisampleCoverageNV(target_:Int,coverageSamples_:Int,colorSamples_:Int,internalFormat_:Int,width_:Int,height_:Int,depth_:Int,fixedSampleLocations_:Byte)
endrem
Global glTexImage3DMultisampleCoverageNV(target_:Int,coverageSamples_:Int,colorSamples_:Int,internalFormat_:Int,width_:Int,height_:Int,depth_:Int,fixedSampleLocations_:Byte)="__glewTexImage3DMultisampleCoverageNV"
rem
bbdoc: GL Global glTextureImage2DMultisampleCoverageNV(texture_:Int,target_:Int,coverageSamples_:Int,colorSamples_:Int,internalFormat_:Int,width_:Int,height_:Int,fixedSampleLocations_:Byte)
endrem
Global glTextureImage2DMultisampleCoverageNV(texture_:Int,target_:Int,coverageSamples_:Int,colorSamples_:Int,internalFormat_:Int,width_:Int,height_:Int,fixedSampleLocations_:Byte)="__glewTextureImage2DMultisampleCoverageNV"
rem
bbdoc: GL Global glTextureImage2DMultisampleNV(texture_:Int,target_:Int,samples_:Int,internalFormat_:Int,width_:Int,height_:Int,fixedSampleLocations_:Byte)
endrem
Global glTextureImage2DMultisampleNV(texture_:Int,target_:Int,samples_:Int,internalFormat_:Int,width_:Int,height_:Int,fixedSampleLocations_:Byte)="__glewTextureImage2DMultisampleNV"
rem
bbdoc: GL Global glTextureImage3DMultisampleCoverageNV(texture_:Int,target_:Int,coverageSamples_:Int,colorSamples_:Int,internalFormat_:Int,width_:Int,height_:Int,depth_:Int,fixedSampleLocations_:Byte)
endrem
Global glTextureImage3DMultisampleCoverageNV(texture_:Int,target_:Int,coverageSamples_:Int,colorSamples_:Int,internalFormat_:Int,width_:Int,height_:Int,depth_:Int,fixedSampleLocations_:Byte)="__glewTextureImage3DMultisampleCoverageNV"
rem
bbdoc: GL Global glTextureImage3DMultisampleNV(texture_:Int,target_:Int,samples_:Int,internalFormat_:Int,width_:Int,height_:Int,depth_:Int,fixedSampleLocations_:Byte)
endrem
Global glTextureImage3DMultisampleNV(texture_:Int,target_:Int,samples_:Int,internalFormat_:Int,width_:Int,height_:Int,depth_:Int,fixedSampleLocations_:Byte)="__glewTextureImage3DMultisampleNV"
rem
bbdoc: GL Const GL_NV_texture_rectangle
endrem
Const GL_NV_texture_rectangle=1
rem
bbdoc: GL Const GL_TEXTURE_RECTANGLE_NV
endrem
Const GL_TEXTURE_RECTANGLE_NV=$84F5
rem
bbdoc: GL Const GL_TEXTURE_BINDING_RECTANGLE_NV
endrem
Const GL_TEXTURE_BINDING_RECTANGLE_NV=$84F6
rem
bbdoc: GL Const GL_PROXY_TEXTURE_RECTANGLE_NV
endrem
Const GL_PROXY_TEXTURE_RECTANGLE_NV=$84F7
rem
bbdoc: GL Const GL_MAX_RECTANGLE_TEXTURE_SIZE_NV
endrem
Const GL_MAX_RECTANGLE_TEXTURE_SIZE_NV=$84F8
rem
bbdoc: GL Const GL_NV_texture_shader
endrem
Const GL_NV_texture_shader=1
rem
bbdoc: GL Const GL_OFFSET_TEXTURE_RECTANGLE_NV
endrem
Const GL_OFFSET_TEXTURE_RECTANGLE_NV=$864C
rem
bbdoc: GL Const GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV
endrem
Const GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV=$864D
rem
bbdoc: GL Const GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV
endrem
Const GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV=$864E
rem
bbdoc: GL Const GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV
endrem
Const GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV=$86D9
rem
bbdoc: GL Const GL_UNSIGNED_INT_S8_S8_8_8_NV
endrem
Const GL_UNSIGNED_INT_S8_S8_8_8_NV=$86DA
rem
bbdoc: GL Const GL_UNSIGNED_INT_8_8_S8_S8_REV_NV
endrem
Const GL_UNSIGNED_INT_8_8_S8_S8_REV_NV=$86DB
rem
bbdoc: GL Const GL_DSDT_MAG_INTENSITY_NV
endrem
Const GL_DSDT_MAG_INTENSITY_NV=$86DC
rem
bbdoc: GL Const GL_SHADER_CONSISTENT_NV
endrem
Const GL_SHADER_CONSISTENT_NV=$86DD
rem
bbdoc: GL Const GL_TEXTURE_SHADER_NV
endrem
Const GL_TEXTURE_SHADER_NV=$86DE
rem
bbdoc: GL Const GL_SHADER_OPERATION_NV
endrem
Const GL_SHADER_OPERATION_NV=$86DF
rem
bbdoc: GL Const GL_CULL_MODES_NV
endrem
Const GL_CULL_MODES_NV=$86E0
rem
bbdoc: GL Const GL_OFFSET_TEXTURE_2D_MATRIX_NV
endrem
Const GL_OFFSET_TEXTURE_2D_MATRIX_NV=$86E1
rem
bbdoc: GL Const GL_OFFSET_TEXTURE_MATRIX_NV
endrem
Const GL_OFFSET_TEXTURE_MATRIX_NV=$86E1
rem
bbdoc: GL Const GL_OFFSET_TEXTURE_2D_SCALE_NV
endrem
Const GL_OFFSET_TEXTURE_2D_SCALE_NV=$86E2
rem
bbdoc: GL Const GL_OFFSET_TEXTURE_SCALE_NV
endrem
Const GL_OFFSET_TEXTURE_SCALE_NV=$86E2
rem
bbdoc: GL Const GL_OFFSET_TEXTURE_2D_BIAS_NV
endrem
Const GL_OFFSET_TEXTURE_2D_BIAS_NV=$86E3
rem
bbdoc: GL Const GL_OFFSET_TEXTURE_BIAS_NV
endrem
Const GL_OFFSET_TEXTURE_BIAS_NV=$86E3
rem
bbdoc: GL Const GL_PREVIOUS_TEXTURE_INPUT_NV
endrem
Const GL_PREVIOUS_TEXTURE_INPUT_NV=$86E4
rem
bbdoc: GL Const GL_CONST_EYE_NV
endrem
Const GL_CONST_EYE_NV=$86E5
rem
bbdoc: GL Const GL_PASS_THROUGH_NV
endrem
Const GL_PASS_THROUGH_NV=$86E6
rem
bbdoc: GL Const GL_CULL_FRAGMENT_NV
endrem
Const GL_CULL_FRAGMENT_NV=$86E7
rem
bbdoc: GL Const GL_OFFSET_TEXTURE_2D_NV
endrem
Const GL_OFFSET_TEXTURE_2D_NV=$86E8
rem
bbdoc: GL Const GL_DEPENDENT_AR_TEXTURE_2D_NV
endrem
Const GL_DEPENDENT_AR_TEXTURE_2D_NV=$86E9
rem
bbdoc: GL Const GL_DEPENDENT_GB_TEXTURE_2D_NV
endrem
Const GL_DEPENDENT_GB_TEXTURE_2D_NV=$86EA
rem
bbdoc: GL Const GL_DOT_PRODUCT_NV
endrem
Const GL_DOT_PRODUCT_NV=$86EC
rem
bbdoc: GL Const GL_DOT_PRODUCT_DEPTH_REPLACE_NV
endrem
Const GL_DOT_PRODUCT_DEPTH_REPLACE_NV=$86ED
rem
bbdoc: GL Const GL_DOT_PRODUCT_TEXTURE_2D_NV
endrem
Const GL_DOT_PRODUCT_TEXTURE_2D_NV=$86EE
rem
bbdoc: GL Const GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV
endrem
Const GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV=$86F0
rem
bbdoc: GL Const GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV
endrem
Const GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV=$86F1
rem
bbdoc: GL Const GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV
endrem
Const GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV=$86F2
rem
bbdoc: GL Const GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV
endrem
Const GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV=$86F3
rem
bbdoc: GL Const GL_HILO_NV
endrem
Const GL_HILO_NV=$86F4
rem
bbdoc: GL Const GL_DSDT_NV
endrem
Const GL_DSDT_NV=$86F5
rem
bbdoc: GL Const GL_DSDT_MAG_NV
endrem
Const GL_DSDT_MAG_NV=$86F6
rem
bbdoc: GL Const GL_DSDT_MAG_VIB_NV
endrem
Const GL_DSDT_MAG_VIB_NV=$86F7
rem
bbdoc: GL Const GL_HILO16_NV
endrem
Const GL_HILO16_NV=$86F8
rem
bbdoc: GL Const GL_SIGNED_HILO_NV
endrem
Const GL_SIGNED_HILO_NV=$86F9
rem
bbdoc: GL Const GL_SIGNED_HILO16_NV
endrem
Const GL_SIGNED_HILO16_NV=$86FA
rem
bbdoc: GL Const GL_SIGNED_RGBA_NV
endrem
Const GL_SIGNED_RGBA_NV=$86FB
rem
bbdoc: GL Const GL_SIGNED_RGBA8_NV
endrem
Const GL_SIGNED_RGBA8_NV=$86FC
rem
bbdoc: GL Const GL_SIGNED_RGB_NV
endrem
Const GL_SIGNED_RGB_NV=$86FE
rem
bbdoc: GL Const GL_SIGNED_RGB8_NV
endrem
Const GL_SIGNED_RGB8_NV=$86FF
rem
bbdoc: GL Const GL_SIGNED_LUMINANCE_NV
endrem
Const GL_SIGNED_LUMINANCE_NV=$8701
rem
bbdoc: GL Const GL_SIGNED_LUMINANCE8_NV
endrem
Const GL_SIGNED_LUMINANCE8_NV=$8702
rem
bbdoc: GL Const GL_SIGNED_LUMINANCE_ALPHA_NV
endrem
Const GL_SIGNED_LUMINANCE_ALPHA_NV=$8703
rem
bbdoc: GL Const GL_SIGNED_LUMINANCE8_ALPHA8_NV
endrem
Const GL_SIGNED_LUMINANCE8_ALPHA8_NV=$8704
rem
bbdoc: GL Const GL_SIGNED_ALPHA_NV
endrem
Const GL_SIGNED_ALPHA_NV=$8705
rem
bbdoc: GL Const GL_SIGNED_ALPHA8_NV
endrem
Const GL_SIGNED_ALPHA8_NV=$8706
rem
bbdoc: GL Const GL_SIGNED_INTENSITY_NV
endrem
Const GL_SIGNED_INTENSITY_NV=$8707
rem
bbdoc: GL Const GL_SIGNED_INTENSITY8_NV
endrem
Const GL_SIGNED_INTENSITY8_NV=$8708
rem
bbdoc: GL Const GL_DSDT8_NV
endrem
Const GL_DSDT8_NV=$8709
rem
bbdoc: GL Const GL_DSDT8_MAG8_NV
endrem
Const GL_DSDT8_MAG8_NV=$870A
rem
bbdoc: GL Const GL_DSDT8_MAG8_INTENSITY8_NV
endrem
Const GL_DSDT8_MAG8_INTENSITY8_NV=$870B
rem
bbdoc: GL Const GL_SIGNED_RGB_UNSIGNED_ALPHA_NV
endrem
Const GL_SIGNED_RGB_UNSIGNED_ALPHA_NV=$870C
rem
bbdoc: GL Const GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV
endrem
Const GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV=$870D
rem
bbdoc: GL Const GL_HI_SCALE_NV
endrem
Const GL_HI_SCALE_NV=$870E
rem
bbdoc: GL Const GL_LO_SCALE_NV
endrem
Const GL_LO_SCALE_NV=$870F
rem
bbdoc: GL Const GL_DS_SCALE_NV
endrem
Const GL_DS_SCALE_NV=$8710
rem
bbdoc: GL Const GL_DT_SCALE_NV
endrem
Const GL_DT_SCALE_NV=$8711
rem
bbdoc: GL Const GL_MAGNITUDE_SCALE_NV
endrem
Const GL_MAGNITUDE_SCALE_NV=$8712
rem
bbdoc: GL Const GL_VIBRANCE_SCALE_NV
endrem
Const GL_VIBRANCE_SCALE_NV=$8713
rem
bbdoc: GL Const GL_HI_BIAS_NV
endrem
Const GL_HI_BIAS_NV=$8714
rem
bbdoc: GL Const GL_LO_BIAS_NV
endrem
Const GL_LO_BIAS_NV=$8715
rem
bbdoc: GL Const GL_DS_BIAS_NV
endrem
Const GL_DS_BIAS_NV=$8716
rem
bbdoc: GL Const GL_DT_BIAS_NV
endrem
Const GL_DT_BIAS_NV=$8717
rem
bbdoc: GL Const GL_MAGNITUDE_BIAS_NV
endrem
Const GL_MAGNITUDE_BIAS_NV=$8718
rem
bbdoc: GL Const GL_VIBRANCE_BIAS_NV
endrem
Const GL_VIBRANCE_BIAS_NV=$8719
rem
bbdoc: GL Const GL_TEXTURE_BORDER_VALUES_NV
endrem
Const GL_TEXTURE_BORDER_VALUES_NV=$871A
rem
bbdoc: GL Const GL_TEXTURE_HI_SIZE_NV
endrem
Const GL_TEXTURE_HI_SIZE_NV=$871B
rem
bbdoc: GL Const GL_TEXTURE_LO_SIZE_NV
endrem
Const GL_TEXTURE_LO_SIZE_NV=$871C
rem
bbdoc: GL Const GL_TEXTURE_DS_SIZE_NV
endrem
Const GL_TEXTURE_DS_SIZE_NV=$871D
rem
bbdoc: GL Const GL_TEXTURE_DT_SIZE_NV
endrem
Const GL_TEXTURE_DT_SIZE_NV=$871E
rem
bbdoc: GL Const GL_TEXTURE_MAG_SIZE_NV
endrem
Const GL_TEXTURE_MAG_SIZE_NV=$871F
rem
bbdoc: GL Const GL_NV_texture_shader2
endrem
Const GL_NV_texture_shader2=1
rem
bbdoc: GL Const GL_DOT_PRODUCT_TEXTURE_3D_NV
endrem
Const GL_DOT_PRODUCT_TEXTURE_3D_NV=$86EF
rem
bbdoc: GL Const GL_NV_texture_shader3
endrem
Const GL_NV_texture_shader3=1
rem
bbdoc: GL Const GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV
endrem
Const GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV=$8850
rem
bbdoc: GL Const GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV
endrem
Const GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV=$8851
rem
bbdoc: GL Const GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV
endrem
Const GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV=$8852
rem
bbdoc: GL Const GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV
endrem
Const GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV=$8853
rem
bbdoc: GL Const GL_OFFSET_HILO_TEXTURE_2D_NV
endrem
Const GL_OFFSET_HILO_TEXTURE_2D_NV=$8854
rem
bbdoc: GL Const GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV
endrem
Const GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV=$8855
rem
bbdoc: GL Const GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV
endrem
Const GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV=$8856
rem
bbdoc: GL Const GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV
endrem
Const GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV=$8857
rem
bbdoc: GL Const GL_DEPENDENT_HILO_TEXTURE_2D_NV
endrem
Const GL_DEPENDENT_HILO_TEXTURE_2D_NV=$8858
rem
bbdoc: GL Const GL_DEPENDENT_RGB_TEXTURE_3D_NV
endrem
Const GL_DEPENDENT_RGB_TEXTURE_3D_NV=$8859
rem
bbdoc: GL Const GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV
endrem
Const GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV=$885A
rem
bbdoc: GL Const GL_DOT_PRODUCT_PASS_THROUGH_NV
endrem
Const GL_DOT_PRODUCT_PASS_THROUGH_NV=$885B
rem
bbdoc: GL Const GL_DOT_PRODUCT_TEXTURE_1D_NV
endrem
Const GL_DOT_PRODUCT_TEXTURE_1D_NV=$885C
rem
bbdoc: GL Const GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV
endrem
Const GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV=$885D
rem
bbdoc: GL Const GL_HILO8_NV
endrem
Const GL_HILO8_NV=$885E
rem
bbdoc: GL Const GL_SIGNED_HILO8_NV
endrem
Const GL_SIGNED_HILO8_NV=$885F
rem
bbdoc: GL Const GL_FORCE_BLUE_TO_ONE_NV
endrem
Const GL_FORCE_BLUE_TO_ONE_NV=$8860
rem
bbdoc: GL Const GL_NV_transform_feedback
endrem
Const GL_NV_transform_feedback=1
rem
bbdoc: GL Const GL_BACK_PRIMARY_COLOR_NV
endrem
Const GL_BACK_PRIMARY_COLOR_NV=$8C77
rem
bbdoc: GL Const GL_BACK_SECONDARY_COLOR_NV
endrem
Const GL_BACK_SECONDARY_COLOR_NV=$8C78
rem
bbdoc: GL Const GL_TEXTURE_COORD_NV
endrem
Const GL_TEXTURE_COORD_NV=$8C79
rem
bbdoc: GL Const GL_CLIP_DISTANCE_NV
endrem
Const GL_CLIP_DISTANCE_NV=$8C7A
rem
bbdoc: GL Const GL_VERTEX_ID_NV
endrem
Const GL_VERTEX_ID_NV=$8C7B
rem
bbdoc: GL Const GL_PRIMITIVE_ID_NV
endrem
Const GL_PRIMITIVE_ID_NV=$8C7C
rem
bbdoc: GL Const GL_GENERIC_ATTRIB_NV
endrem
Const GL_GENERIC_ATTRIB_NV=$8C7D
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_ATTRIBS_NV
endrem
Const GL_TRANSFORM_FEEDBACK_ATTRIBS_NV=$8C7E
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV=$8C7F
rem
bbdoc: GL Const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV
endrem
Const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV=$8C80
rem
bbdoc: GL Const GL_ACTIVE_VARYINGS_NV
endrem
Const GL_ACTIVE_VARYINGS_NV=$8C81
rem
bbdoc: GL Const GL_ACTIVE_VARYING_MAX_LENGTH_NV
endrem
Const GL_ACTIVE_VARYING_MAX_LENGTH_NV=$8C82
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_VARYINGS_NV
endrem
Const GL_TRANSFORM_FEEDBACK_VARYINGS_NV=$8C83
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_START_NV
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_START_NV=$8C84
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV=$8C85
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_RECORD_NV
endrem
Const GL_TRANSFORM_FEEDBACK_RECORD_NV=$8C86
rem
bbdoc: GL Const GL_PRIMITIVES_GENERATED_NV
endrem
Const GL_PRIMITIVES_GENERATED_NV=$8C87
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV
endrem
Const GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV=$8C88
rem
bbdoc: GL Const GL_RASTERIZER_DISCARD_NV
endrem
Const GL_RASTERIZER_DISCARD_NV=$8C89
rem
bbdoc: GL Const GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV
endrem
Const GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV=$8C8A
rem
bbdoc: GL Const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV
endrem
Const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV=$8C8B
rem
bbdoc: GL Const GL_INTERLEAVED_ATTRIBS_NV
endrem
Const GL_INTERLEAVED_ATTRIBS_NV=$8C8C
rem
bbdoc: GL Const GL_SEPARATE_ATTRIBS_NV
endrem
Const GL_SEPARATE_ATTRIBS_NV=$8C8D
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_NV
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_NV=$8C8E
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV=$8C8F
rem
bbdoc: GL Global glActiveVaryingNV(program_:Int,name_:Byte Ptr)
endrem
Global glActiveVaryingNV(program_:Int,name_:Byte Ptr)="__glewActiveVaryingNV"
rem
bbdoc: GL Global glBeginTransformFeedbackNV(primitiveMode_:Int)
endrem
Global glBeginTransformFeedbackNV(primitiveMode_:Int)="__glewBeginTransformFeedbackNV"
rem
bbdoc: GL Global glBindBufferBaseNV(target_:Int,index_:Int,buffer_:Int)
endrem
Global glBindBufferBaseNV(target_:Int,index_:Int,buffer_:Int)="__glewBindBufferBaseNV"
rem
bbdoc: GL Global glBindBufferOffsetNV(target_:Int,index_:Int,buffer_:Int,offset_:Int)
endrem
Global glBindBufferOffsetNV(target_:Int,index_:Int,buffer_:Int,offset_:Int)="__glewBindBufferOffsetNV"
rem
bbdoc: GL Global glBindBufferRangeNV(target_:Int,index_:Int,buffer_:Int,offset_:Int,size_:Int)
endrem
Global glBindBufferRangeNV(target_:Int,index_:Int,buffer_:Int,offset_:Int,size_:Int)="__glewBindBufferRangeNV"
rem
bbdoc: GL Global glEndTransformFeedbackNV()
endrem
Global glEndTransformFeedbackNV()="__glewEndTransformFeedbackNV"
rem
bbdoc: GL Global glGetActiveVaryingNV(program_:Int,index_:Int,bufSize_:Int,length_:Int Ptr,size_:Int Ptr,type_:Int Ptr,name_:Byte Ptr)
endrem
Global glGetActiveVaryingNV(program_:Int,index_:Int,bufSize_:Int,length_:Int Ptr,size_:Int Ptr,type_:Int Ptr,name_:Byte Ptr)="__glewGetActiveVaryingNV"
rem
bbdoc: GL Global glGetTransformFeedbackVaryingNV(program_:Int,index_:Int,location_:Int Ptr)
endrem
Global glGetTransformFeedbackVaryingNV(program_:Int,index_:Int,location_:Int Ptr)="__glewGetTransformFeedbackVaryingNV"
rem
bbdoc: GL Global glGetVaryingLocationNV:Int(program_:Int,name_:Byte Ptr)
endrem
Global glGetVaryingLocationNV:Int(program_:Int,name_:Byte Ptr)="__glewGetVaryingLocationNV"
rem
bbdoc: GL Global glTransformFeedbackAttribsNV(count_:Int,attribs_:Int Ptr,bufferMode_:Int)
endrem
Global glTransformFeedbackAttribsNV(count_:Int,attribs_:Int Ptr,bufferMode_:Int)="__glewTransformFeedbackAttribsNV"
rem
bbdoc: GL Global glTransformFeedbackVaryingsNV(program_:Int,count_:Int,locations_:Int Ptr,bufferMode_:Int)
endrem
Global glTransformFeedbackVaryingsNV(program_:Int,count_:Int,locations_:Int Ptr,bufferMode_:Int)="__glewTransformFeedbackVaryingsNV"
rem
bbdoc: GL Const GL_NV_transform_feedback2
endrem
Const GL_NV_transform_feedback2=1
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_NV
endrem
Const GL_TRANSFORM_FEEDBACK_NV=$8E22
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV=$8E23
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV
endrem
Const GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV=$8E24
rem
bbdoc: GL Const GL_TRANSFORM_FEEDBACK_BINDING_NV
endrem
Const GL_TRANSFORM_FEEDBACK_BINDING_NV=$8E25
rem
bbdoc: GL Global glBindTransformFeedbackNV(target_:Int,id_:Int)
endrem
Global glBindTransformFeedbackNV(target_:Int,id_:Int)="__glewBindTransformFeedbackNV"
rem
bbdoc: GL Global glDeleteTransformFeedbacksNV(n_:Int,ids_:Int Ptr)
endrem
Global glDeleteTransformFeedbacksNV(n_:Int,ids_:Int Ptr)="__glewDeleteTransformFeedbacksNV"
rem
bbdoc: GL Global glDrawTransformFeedbackNV(mode_:Int,id_:Int)
endrem
Global glDrawTransformFeedbackNV(mode_:Int,id_:Int)="__glewDrawTransformFeedbackNV"
rem
bbdoc: GL Global glGenTransformFeedbacksNV(n_:Int,ids_:Int Ptr)
endrem
Global glGenTransformFeedbacksNV(n_:Int,ids_:Int Ptr)="__glewGenTransformFeedbacksNV"
rem
bbdoc: GL Global glIsTransformFeedbackNV:Byte(id_:Int)
endrem
Global glIsTransformFeedbackNV:Byte(id_:Int)="__glewIsTransformFeedbackNV"
rem
bbdoc: GL Global glPauseTransformFeedbackNV()
endrem
Global glPauseTransformFeedbackNV()="__glewPauseTransformFeedbackNV"
rem
bbdoc: GL Global glResumeTransformFeedbackNV()
endrem
Global glResumeTransformFeedbackNV()="__glewResumeTransformFeedbackNV"
rem
bbdoc: GL Const GL_NV_vdpau_interop
endrem
Const GL_NV_vdpau_interop=1
rem
bbdoc: GL Const GL_SURFACE_STATE_NV
endrem
Const GL_SURFACE_STATE_NV=$86EB
rem
bbdoc: GL Const GL_SURFACE_REGISTERED_NV
endrem
Const GL_SURFACE_REGISTERED_NV=$86FD
rem
bbdoc: GL Const GL_SURFACE_MAPPED_NV
endrem
Const GL_SURFACE_MAPPED_NV=$8700
rem
bbdoc: GL Const GL_WRITE_DISCARD_NV
endrem
Const GL_WRITE_DISCARD_NV=$88BE
rem
bbdoc: GL Global glVDPAUFiniNV()
endrem
Global glVDPAUFiniNV()="__glewVDPAUFiniNV"
rem
bbdoc: GL Global glVDPAUInitNV(vdpDevice_:Byte Ptr,getProcAddress_:Byte Ptr)
endrem
Global glVDPAUInitNV(vdpDevice_:Byte Ptr,getProcAddress_:Byte Ptr)="__glewVDPAUInitNV"
rem
bbdoc: GL Const GL_NV_vertex_array_range
endrem
Const GL_NV_vertex_array_range=1
rem
bbdoc: GL Const GL_VERTEX_ARRAY_RANGE_NV
endrem
Const GL_VERTEX_ARRAY_RANGE_NV=$851D
rem
bbdoc: GL Const GL_VERTEX_ARRAY_RANGE_LENGTH_NV
endrem
Const GL_VERTEX_ARRAY_RANGE_LENGTH_NV=$851E
rem
bbdoc: GL Const GL_VERTEX_ARRAY_RANGE_VALID_NV
endrem
Const GL_VERTEX_ARRAY_RANGE_VALID_NV=$851F
rem
bbdoc: GL Const GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV
endrem
Const GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV=$8520
rem
bbdoc: GL Const GL_VERTEX_ARRAY_RANGE_POINTER_NV
endrem
Const GL_VERTEX_ARRAY_RANGE_POINTER_NV=$8521
rem
bbdoc: GL Global glFlushVertexArrayRangeNV()
endrem
Global glFlushVertexArrayRangeNV()="__glewFlushVertexArrayRangeNV"
rem
bbdoc: GL Global glVertexArrayRangeNV(length_:Int,pointer_:Byte Ptr)
endrem
Global glVertexArrayRangeNV(length_:Int,pointer_:Byte Ptr)="__glewVertexArrayRangeNV"
rem
bbdoc: GL Const GL_NV_vertex_array_range2
endrem
Const GL_NV_vertex_array_range2=1
rem
bbdoc: GL Const GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV
endrem
Const GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV=$8533
rem
bbdoc: GL Const GL_NV_vertex_attrib_integer_64bit
endrem
Const GL_NV_vertex_attrib_integer_64bit=1
rem
bbdoc: GL Global glGetVertexAttribLi64vNV(index_:Int,pname_:Int,params_:Long Ptr)
endrem
Global glGetVertexAttribLi64vNV(index_:Int,pname_:Int,params_:Long Ptr)="__glewGetVertexAttribLi64vNV"
rem
bbdoc: GL Global glGetVertexAttribLui64vNV(index_:Int,pname_:Int,params_:Long Ptr)
endrem
Global glGetVertexAttribLui64vNV(index_:Int,pname_:Int,params_:Long Ptr)="__glewGetVertexAttribLui64vNV"
rem
bbdoc: GL Global glVertexAttribL1i64NV(index_:Int,x_:Long)
endrem
Global glVertexAttribL1i64NV(index_:Int,x_:Long)="__glewVertexAttribL1i64NV"
rem
bbdoc: GL Global glVertexAttribL1i64vNV(index_:Int,v_:Long Ptr)
endrem
Global glVertexAttribL1i64vNV(index_:Int,v_:Long Ptr)="__glewVertexAttribL1i64vNV"
rem
bbdoc: GL Global glVertexAttribL1ui64NV(index_:Int,x_:Long)
endrem
Global glVertexAttribL1ui64NV(index_:Int,x_:Long)="__glewVertexAttribL1ui64NV"
rem
bbdoc: GL Global glVertexAttribL1ui64vNV(index_:Int,v_:Long Ptr)
endrem
Global glVertexAttribL1ui64vNV(index_:Int,v_:Long Ptr)="__glewVertexAttribL1ui64vNV"
rem
bbdoc: GL Global glVertexAttribL2i64NV(index_:Int,x_:Long,y_:Long)
endrem
Global glVertexAttribL2i64NV(index_:Int,x_:Long,y_:Long)="__glewVertexAttribL2i64NV"
rem
bbdoc: GL Global glVertexAttribL2i64vNV(index_:Int,v_:Long Ptr)
endrem
Global glVertexAttribL2i64vNV(index_:Int,v_:Long Ptr)="__glewVertexAttribL2i64vNV"
rem
bbdoc: GL Global glVertexAttribL2ui64NV(index_:Int,x_:Long,y_:Long)
endrem
Global glVertexAttribL2ui64NV(index_:Int,x_:Long,y_:Long)="__glewVertexAttribL2ui64NV"
rem
bbdoc: GL Global glVertexAttribL2ui64vNV(index_:Int,v_:Long Ptr)
endrem
Global glVertexAttribL2ui64vNV(index_:Int,v_:Long Ptr)="__glewVertexAttribL2ui64vNV"
rem
bbdoc: GL Global glVertexAttribL3i64NV(index_:Int,x_:Long,y_:Long,z_:Long)
endrem
Global glVertexAttribL3i64NV(index_:Int,x_:Long,y_:Long,z_:Long)="__glewVertexAttribL3i64NV"
rem
bbdoc: GL Global glVertexAttribL3i64vNV(index_:Int,v_:Long Ptr)
endrem
Global glVertexAttribL3i64vNV(index_:Int,v_:Long Ptr)="__glewVertexAttribL3i64vNV"
rem
bbdoc: GL Global glVertexAttribL3ui64NV(index_:Int,x_:Long,y_:Long,z_:Long)
endrem
Global glVertexAttribL3ui64NV(index_:Int,x_:Long,y_:Long,z_:Long)="__glewVertexAttribL3ui64NV"
rem
bbdoc: GL Global glVertexAttribL3ui64vNV(index_:Int,v_:Long Ptr)
endrem
Global glVertexAttribL3ui64vNV(index_:Int,v_:Long Ptr)="__glewVertexAttribL3ui64vNV"
rem
bbdoc: GL Global glVertexAttribL4i64NV(index_:Int,x_:Long,y_:Long,z_:Long,w_:Long)
endrem
Global glVertexAttribL4i64NV(index_:Int,x_:Long,y_:Long,z_:Long,w_:Long)="__glewVertexAttribL4i64NV"
rem
bbdoc: GL Global glVertexAttribL4i64vNV(index_:Int,v_:Long Ptr)
endrem
Global glVertexAttribL4i64vNV(index_:Int,v_:Long Ptr)="__glewVertexAttribL4i64vNV"
rem
bbdoc: GL Global glVertexAttribL4ui64NV(index_:Int,x_:Long,y_:Long,z_:Long,w_:Long)
endrem
Global glVertexAttribL4ui64NV(index_:Int,x_:Long,y_:Long,z_:Long,w_:Long)="__glewVertexAttribL4ui64NV"
rem
bbdoc: GL Global glVertexAttribL4ui64vNV(index_:Int,v_:Long Ptr)
endrem
Global glVertexAttribL4ui64vNV(index_:Int,v_:Long Ptr)="__glewVertexAttribL4ui64vNV"
rem
bbdoc: GL Global glVertexAttribLFormatNV(index_:Int,size_:Int,type_:Int,stride_:Int)
endrem
Global glVertexAttribLFormatNV(index_:Int,size_:Int,type_:Int,stride_:Int)="__glewVertexAttribLFormatNV"
rem
bbdoc: GL Const GL_NV_vertex_buffer_unified_memory
endrem
Const GL_NV_vertex_buffer_unified_memory=1
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV=$8F1E
rem
bbdoc: GL Const GL_ELEMENT_ARRAY_UNIFIED_NV
endrem
Const GL_ELEMENT_ARRAY_UNIFIED_NV=$8F1F
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV=$8F20
rem
bbdoc: GL Const GL_VERTEX_ARRAY_ADDRESS_NV
endrem
Const GL_VERTEX_ARRAY_ADDRESS_NV=$8F21
rem
bbdoc: GL Const GL_NORMAL_ARRAY_ADDRESS_NV
endrem
Const GL_NORMAL_ARRAY_ADDRESS_NV=$8F22
rem
bbdoc: GL Const GL_COLOR_ARRAY_ADDRESS_NV
endrem
Const GL_COLOR_ARRAY_ADDRESS_NV=$8F23
rem
bbdoc: GL Const GL_INDEX_ARRAY_ADDRESS_NV
endrem
Const GL_INDEX_ARRAY_ADDRESS_NV=$8F24
rem
bbdoc: GL Const GL_TEXTURE_COORD_ARRAY_ADDRESS_NV
endrem
Const GL_TEXTURE_COORD_ARRAY_ADDRESS_NV=$8F25
rem
bbdoc: GL Const GL_EDGE_FLAG_ARRAY_ADDRESS_NV
endrem
Const GL_EDGE_FLAG_ARRAY_ADDRESS_NV=$8F26
rem
bbdoc: GL Const GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV
endrem
Const GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV=$8F27
rem
bbdoc: GL Const GL_FOG_COORD_ARRAY_ADDRESS_NV
endrem
Const GL_FOG_COORD_ARRAY_ADDRESS_NV=$8F28
rem
bbdoc: GL Const GL_ELEMENT_ARRAY_ADDRESS_NV
endrem
Const GL_ELEMENT_ARRAY_ADDRESS_NV=$8F29
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV=$8F2A
rem
bbdoc: GL Const GL_VERTEX_ARRAY_LENGTH_NV
endrem
Const GL_VERTEX_ARRAY_LENGTH_NV=$8F2B
rem
bbdoc: GL Const GL_NORMAL_ARRAY_LENGTH_NV
endrem
Const GL_NORMAL_ARRAY_LENGTH_NV=$8F2C
rem
bbdoc: GL Const GL_COLOR_ARRAY_LENGTH_NV
endrem
Const GL_COLOR_ARRAY_LENGTH_NV=$8F2D
rem
bbdoc: GL Const GL_INDEX_ARRAY_LENGTH_NV
endrem
Const GL_INDEX_ARRAY_LENGTH_NV=$8F2E
rem
bbdoc: GL Const GL_TEXTURE_COORD_ARRAY_LENGTH_NV
endrem
Const GL_TEXTURE_COORD_ARRAY_LENGTH_NV=$8F2F
rem
bbdoc: GL Const GL_EDGE_FLAG_ARRAY_LENGTH_NV
endrem
Const GL_EDGE_FLAG_ARRAY_LENGTH_NV=$8F30
rem
bbdoc: GL Const GL_SECONDARY_COLOR_ARRAY_LENGTH_NV
endrem
Const GL_SECONDARY_COLOR_ARRAY_LENGTH_NV=$8F31
rem
bbdoc: GL Const GL_FOG_COORD_ARRAY_LENGTH_NV
endrem
Const GL_FOG_COORD_ARRAY_LENGTH_NV=$8F32
rem
bbdoc: GL Const GL_ELEMENT_ARRAY_LENGTH_NV
endrem
Const GL_ELEMENT_ARRAY_LENGTH_NV=$8F33
rem
bbdoc: GL Const GL_DRAW_INDIRECT_UNIFIED_NV
endrem
Const GL_DRAW_INDIRECT_UNIFIED_NV=$8F40
rem
bbdoc: GL Const GL_DRAW_INDIRECT_ADDRESS_NV
endrem
Const GL_DRAW_INDIRECT_ADDRESS_NV=$8F41
rem
bbdoc: GL Const GL_DRAW_INDIRECT_LENGTH_NV
endrem
Const GL_DRAW_INDIRECT_LENGTH_NV=$8F42
rem
bbdoc: GL Global glBufferAddressRangeNV(pname_:Int,index_:Int,address_:Long,length_:Int)
endrem
Global glBufferAddressRangeNV(pname_:Int,index_:Int,address_:Long,length_:Int)="__glewBufferAddressRangeNV"
rem
bbdoc: GL Global glColorFormatNV(size_:Int,type_:Int,stride_:Int)
endrem
Global glColorFormatNV(size_:Int,type_:Int,stride_:Int)="__glewColorFormatNV"
rem
bbdoc: GL Global glEdgeFlagFormatNV(stride_:Int)
endrem
Global glEdgeFlagFormatNV(stride_:Int)="__glewEdgeFlagFormatNV"
rem
bbdoc: GL Global glFogCoordFormatNV(type_:Int,stride_:Int)
endrem
Global glFogCoordFormatNV(type_:Int,stride_:Int)="__glewFogCoordFormatNV"
rem
bbdoc: GL Global glGetIntegerui64i_vNV(value_:Int,index_:Int,result_:Long Ptr)
endrem
Global glGetIntegerui64i_vNV(value_:Int,index_:Int,result_:Long Ptr)="__glewGetIntegerui64i_vNV"
rem
bbdoc: GL Global glIndexFormatNV(type_:Int,stride_:Int)
endrem
Global glIndexFormatNV(type_:Int,stride_:Int)="__glewIndexFormatNV"
rem
bbdoc: GL Global glNormalFormatNV(type_:Int,stride_:Int)
endrem
Global glNormalFormatNV(type_:Int,stride_:Int)="__glewNormalFormatNV"
rem
bbdoc: GL Global glSecondaryColorFormatNV(size_:Int,type_:Int,stride_:Int)
endrem
Global glSecondaryColorFormatNV(size_:Int,type_:Int,stride_:Int)="__glewSecondaryColorFormatNV"
rem
bbdoc: GL Global glTexCoordFormatNV(size_:Int,type_:Int,stride_:Int)
endrem
Global glTexCoordFormatNV(size_:Int,type_:Int,stride_:Int)="__glewTexCoordFormatNV"
rem
bbdoc: GL Global glVertexAttribFormatNV(index_:Int,size_:Int,type_:Int,normalized_:Byte,stride_:Int)
endrem
Global glVertexAttribFormatNV(index_:Int,size_:Int,type_:Int,normalized_:Byte,stride_:Int)="__glewVertexAttribFormatNV"
rem
bbdoc: GL Global glVertexAttribIFormatNV(index_:Int,size_:Int,type_:Int,stride_:Int)
endrem
Global glVertexAttribIFormatNV(index_:Int,size_:Int,type_:Int,stride_:Int)="__glewVertexAttribIFormatNV"
rem
bbdoc: GL Global glVertexFormatNV(size_:Int,type_:Int,stride_:Int)
endrem
Global glVertexFormatNV(size_:Int,type_:Int,stride_:Int)="__glewVertexFormatNV"
rem
bbdoc: GL Const GL_NV_vertex_program
endrem
Const GL_NV_vertex_program=1
rem
bbdoc: GL Const GL_VERTEX_PROGRAM_NV
endrem
Const GL_VERTEX_PROGRAM_NV=$8620
rem
bbdoc: GL Const GL_VERTEX_STATE_PROGRAM_NV
endrem
Const GL_VERTEX_STATE_PROGRAM_NV=$8621
rem
bbdoc: GL Const GL_ATTRIB_ARRAY_SIZE_NV
endrem
Const GL_ATTRIB_ARRAY_SIZE_NV=$8623
rem
bbdoc: GL Const GL_ATTRIB_ARRAY_STRIDE_NV
endrem
Const GL_ATTRIB_ARRAY_STRIDE_NV=$8624
rem
bbdoc: GL Const GL_ATTRIB_ARRAY_TYPE_NV
endrem
Const GL_ATTRIB_ARRAY_TYPE_NV=$8625
rem
bbdoc: GL Const GL_CURRENT_ATTRIB_NV
endrem
Const GL_CURRENT_ATTRIB_NV=$8626
rem
bbdoc: GL Const GL_PROGRAM_LENGTH_NV
endrem
Const GL_PROGRAM_LENGTH_NV=$8627
rem
bbdoc: GL Const GL_PROGRAM_STRING_NV
endrem
Const GL_PROGRAM_STRING_NV=$8628
rem
bbdoc: GL Const GL_MODELVIEW_PROJECTION_NV
endrem
Const GL_MODELVIEW_PROJECTION_NV=$8629
rem
bbdoc: GL Const GL_IDENTITY_NV
endrem
Const GL_IDENTITY_NV=$862A
rem
bbdoc: GL Const GL_INVERSE_NV
endrem
Const GL_INVERSE_NV=$862B
rem
bbdoc: GL Const GL_TRANSPOSE_NV
endrem
Const GL_TRANSPOSE_NV=$862C
rem
bbdoc: GL Const GL_INVERSE_TRANSPOSE_NV
endrem
Const GL_INVERSE_TRANSPOSE_NV=$862D
rem
bbdoc: GL Const GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV
endrem
Const GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV=$862E
rem
bbdoc: GL Const GL_MAX_TRACK_MATRICES_NV
endrem
Const GL_MAX_TRACK_MATRICES_NV=$862F
rem
bbdoc: GL Const GL_MATRIX0_NV
endrem
Const GL_MATRIX0_NV=$8630
rem
bbdoc: GL Const GL_MATRIX1_NV
endrem
Const GL_MATRIX1_NV=$8631
rem
bbdoc: GL Const GL_MATRIX2_NV
endrem
Const GL_MATRIX2_NV=$8632
rem
bbdoc: GL Const GL_MATRIX3_NV
endrem
Const GL_MATRIX3_NV=$8633
rem
bbdoc: GL Const GL_MATRIX4_NV
endrem
Const GL_MATRIX4_NV=$8634
rem
bbdoc: GL Const GL_MATRIX5_NV
endrem
Const GL_MATRIX5_NV=$8635
rem
bbdoc: GL Const GL_MATRIX6_NV
endrem
Const GL_MATRIX6_NV=$8636
rem
bbdoc: GL Const GL_MATRIX7_NV
endrem
Const GL_MATRIX7_NV=$8637
rem
bbdoc: GL Const GL_CURRENT_MATRIX_STACK_DEPTH_NV
endrem
Const GL_CURRENT_MATRIX_STACK_DEPTH_NV=$8640
rem
bbdoc: GL Const GL_CURRENT_MATRIX_NV
endrem
Const GL_CURRENT_MATRIX_NV=$8641
rem
bbdoc: GL Const GL_VERTEX_PROGRAM_POINT_SIZE_NV
endrem
Const GL_VERTEX_PROGRAM_POINT_SIZE_NV=$8642
rem
bbdoc: GL Const GL_VERTEX_PROGRAM_TWO_SIDE_NV
endrem
Const GL_VERTEX_PROGRAM_TWO_SIDE_NV=$8643
rem
bbdoc: GL Const GL_PROGRAM_PARAMETER_NV
endrem
Const GL_PROGRAM_PARAMETER_NV=$8644
rem
bbdoc: GL Const GL_ATTRIB_ARRAY_POINTER_NV
endrem
Const GL_ATTRIB_ARRAY_POINTER_NV=$8645
rem
bbdoc: GL Const GL_PROGRAM_TARGET_NV
endrem
Const GL_PROGRAM_TARGET_NV=$8646
rem
bbdoc: GL Const GL_PROGRAM_RESIDENT_NV
endrem
Const GL_PROGRAM_RESIDENT_NV=$8647
rem
bbdoc: GL Const GL_TRACK_MATRIX_NV
endrem
Const GL_TRACK_MATRIX_NV=$8648
rem
bbdoc: GL Const GL_TRACK_MATRIX_TRANSFORM_NV
endrem
Const GL_TRACK_MATRIX_TRANSFORM_NV=$8649
rem
bbdoc: GL Const GL_VERTEX_PROGRAM_BINDING_NV
endrem
Const GL_VERTEX_PROGRAM_BINDING_NV=$864A
rem
bbdoc: GL Const GL_PROGRAM_ERROR_POSITION_NV
endrem
Const GL_PROGRAM_ERROR_POSITION_NV=$864B
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY0_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY0_NV=$8650
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY1_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY1_NV=$8651
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY2_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY2_NV=$8652
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY3_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY3_NV=$8653
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY4_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY4_NV=$8654
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY5_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY5_NV=$8655
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY6_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY6_NV=$8656
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY7_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY7_NV=$8657
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY8_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY8_NV=$8658
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY9_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY9_NV=$8659
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY10_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY10_NV=$865A
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY11_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY11_NV=$865B
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY12_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY12_NV=$865C
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY13_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY13_NV=$865D
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY14_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY14_NV=$865E
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY15_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY15_NV=$865F
rem
bbdoc: GL Const GL_MAP1_VERTEX_ATTRIB0_4_NV
endrem
Const GL_MAP1_VERTEX_ATTRIB0_4_NV=$8660
rem
bbdoc: GL Const GL_MAP1_VERTEX_ATTRIB1_4_NV
endrem
Const GL_MAP1_VERTEX_ATTRIB1_4_NV=$8661
rem
bbdoc: GL Const GL_MAP1_VERTEX_ATTRIB2_4_NV
endrem
Const GL_MAP1_VERTEX_ATTRIB2_4_NV=$8662
rem
bbdoc: GL Const GL_MAP1_VERTEX_ATTRIB3_4_NV
endrem
Const GL_MAP1_VERTEX_ATTRIB3_4_NV=$8663
rem
bbdoc: GL Const GL_MAP1_VERTEX_ATTRIB4_4_NV
endrem
Const GL_MAP1_VERTEX_ATTRIB4_4_NV=$8664
rem
bbdoc: GL Const GL_MAP1_VERTEX_ATTRIB5_4_NV
endrem
Const GL_MAP1_VERTEX_ATTRIB5_4_NV=$8665
rem
bbdoc: GL Const GL_MAP1_VERTEX_ATTRIB6_4_NV
endrem
Const GL_MAP1_VERTEX_ATTRIB6_4_NV=$8666
rem
bbdoc: GL Const GL_MAP1_VERTEX_ATTRIB7_4_NV
endrem
Const GL_MAP1_VERTEX_ATTRIB7_4_NV=$8667
rem
bbdoc: GL Const GL_MAP1_VERTEX_ATTRIB8_4_NV
endrem
Const GL_MAP1_VERTEX_ATTRIB8_4_NV=$8668
rem
bbdoc: GL Const GL_MAP1_VERTEX_ATTRIB9_4_NV
endrem
Const GL_MAP1_VERTEX_ATTRIB9_4_NV=$8669
rem
bbdoc: GL Const GL_MAP1_VERTEX_ATTRIB10_4_NV
endrem
Const GL_MAP1_VERTEX_ATTRIB10_4_NV=$866A
rem
bbdoc: GL Const GL_MAP1_VERTEX_ATTRIB11_4_NV
endrem
Const GL_MAP1_VERTEX_ATTRIB11_4_NV=$866B
rem
bbdoc: GL Const GL_MAP1_VERTEX_ATTRIB12_4_NV
endrem
Const GL_MAP1_VERTEX_ATTRIB12_4_NV=$866C
rem
bbdoc: GL Const GL_MAP1_VERTEX_ATTRIB13_4_NV
endrem
Const GL_MAP1_VERTEX_ATTRIB13_4_NV=$866D
rem
bbdoc: GL Const GL_MAP1_VERTEX_ATTRIB14_4_NV
endrem
Const GL_MAP1_VERTEX_ATTRIB14_4_NV=$866E
rem
bbdoc: GL Const GL_MAP1_VERTEX_ATTRIB15_4_NV
endrem
Const GL_MAP1_VERTEX_ATTRIB15_4_NV=$866F
rem
bbdoc: GL Const GL_MAP2_VERTEX_ATTRIB0_4_NV
endrem
Const GL_MAP2_VERTEX_ATTRIB0_4_NV=$8670
rem
bbdoc: GL Const GL_MAP2_VERTEX_ATTRIB1_4_NV
endrem
Const GL_MAP2_VERTEX_ATTRIB1_4_NV=$8671
rem
bbdoc: GL Const GL_MAP2_VERTEX_ATTRIB2_4_NV
endrem
Const GL_MAP2_VERTEX_ATTRIB2_4_NV=$8672
rem
bbdoc: GL Const GL_MAP2_VERTEX_ATTRIB3_4_NV
endrem
Const GL_MAP2_VERTEX_ATTRIB3_4_NV=$8673
rem
bbdoc: GL Const GL_MAP2_VERTEX_ATTRIB4_4_NV
endrem
Const GL_MAP2_VERTEX_ATTRIB4_4_NV=$8674
rem
bbdoc: GL Const GL_MAP2_VERTEX_ATTRIB5_4_NV
endrem
Const GL_MAP2_VERTEX_ATTRIB5_4_NV=$8675
rem
bbdoc: GL Const GL_MAP2_VERTEX_ATTRIB6_4_NV
endrem
Const GL_MAP2_VERTEX_ATTRIB6_4_NV=$8676
rem
bbdoc: GL Const GL_MAP2_VERTEX_ATTRIB7_4_NV
endrem
Const GL_MAP2_VERTEX_ATTRIB7_4_NV=$8677
rem
bbdoc: GL Const GL_MAP2_VERTEX_ATTRIB8_4_NV
endrem
Const GL_MAP2_VERTEX_ATTRIB8_4_NV=$8678
rem
bbdoc: GL Const GL_MAP2_VERTEX_ATTRIB9_4_NV
endrem
Const GL_MAP2_VERTEX_ATTRIB9_4_NV=$8679
rem
bbdoc: GL Const GL_MAP2_VERTEX_ATTRIB10_4_NV
endrem
Const GL_MAP2_VERTEX_ATTRIB10_4_NV=$867A
rem
bbdoc: GL Const GL_MAP2_VERTEX_ATTRIB11_4_NV
endrem
Const GL_MAP2_VERTEX_ATTRIB11_4_NV=$867B
rem
bbdoc: GL Const GL_MAP2_VERTEX_ATTRIB12_4_NV
endrem
Const GL_MAP2_VERTEX_ATTRIB12_4_NV=$867C
rem
bbdoc: GL Const GL_MAP2_VERTEX_ATTRIB13_4_NV
endrem
Const GL_MAP2_VERTEX_ATTRIB13_4_NV=$867D
rem
bbdoc: GL Const GL_MAP2_VERTEX_ATTRIB14_4_NV
endrem
Const GL_MAP2_VERTEX_ATTRIB14_4_NV=$867E
rem
bbdoc: GL Const GL_MAP2_VERTEX_ATTRIB15_4_NV
endrem
Const GL_MAP2_VERTEX_ATTRIB15_4_NV=$867F
rem
bbdoc: GL Global glAreProgramsResidentNV:Byte(n_:Int,ids_:Int Ptr,residences_:Byte Ptr)
endrem
Global glAreProgramsResidentNV:Byte(n_:Int,ids_:Int Ptr,residences_:Byte Ptr)="__glewAreProgramsResidentNV"
rem
bbdoc: GL Global glBindProgramNV(target_:Int,id_:Int)
endrem
Global glBindProgramNV(target_:Int,id_:Int)="__glewBindProgramNV"
rem
bbdoc: GL Global glDeleteProgramsNV(n_:Int,ids_:Int Ptr)
endrem
Global glDeleteProgramsNV(n_:Int,ids_:Int Ptr)="__glewDeleteProgramsNV"
rem
bbdoc: GL Global glExecuteProgramNV(target_:Int,id_:Int,params_:Float Ptr)
endrem
Global glExecuteProgramNV(target_:Int,id_:Int,params_:Float Ptr)="__glewExecuteProgramNV"
rem
bbdoc: GL Global glGenProgramsNV(n_:Int,ids_:Int Ptr)
endrem
Global glGenProgramsNV(n_:Int,ids_:Int Ptr)="__glewGenProgramsNV"
rem
bbdoc: GL Global glGetProgramParameterdvNV(target_:Int,index_:Int,pname_:Int,params_:Double Ptr)
endrem
Global glGetProgramParameterdvNV(target_:Int,index_:Int,pname_:Int,params_:Double Ptr)="__glewGetProgramParameterdvNV"
rem
bbdoc: GL Global glGetProgramParameterfvNV(target_:Int,index_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetProgramParameterfvNV(target_:Int,index_:Int,pname_:Int,params_:Float Ptr)="__glewGetProgramParameterfvNV"
rem
bbdoc: GL Global glGetProgramStringNV(id_:Int,pname_:Int,program_:Byte Ptr)
endrem
Global glGetProgramStringNV(id_:Int,pname_:Int,program_:Byte Ptr)="__glewGetProgramStringNV"
rem
bbdoc: GL Global glGetProgramivNV(id_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetProgramivNV(id_:Int,pname_:Int,params_:Int Ptr)="__glewGetProgramivNV"
rem
bbdoc: GL Global glGetTrackMatrixivNV(target_:Int,address_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetTrackMatrixivNV(target_:Int,address_:Int,pname_:Int,params_:Int Ptr)="__glewGetTrackMatrixivNV"
rem
bbdoc: GL Global glGetVertexAttribPointervNV(index_:Int,pname_:Int,pointer_:Byte Ptr Ptr)
endrem
Global glGetVertexAttribPointervNV(index_:Int,pname_:Int,pointer_:Byte Ptr Ptr)="__glewGetVertexAttribPointervNV"
rem
bbdoc: GL Global glGetVertexAttribdvNV(index_:Int,pname_:Int,params_:Double Ptr)
endrem
Global glGetVertexAttribdvNV(index_:Int,pname_:Int,params_:Double Ptr)="__glewGetVertexAttribdvNV"
rem
bbdoc: GL Global glGetVertexAttribfvNV(index_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetVertexAttribfvNV(index_:Int,pname_:Int,params_:Float Ptr)="__glewGetVertexAttribfvNV"
rem
bbdoc: GL Global glGetVertexAttribivNV(index_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetVertexAttribivNV(index_:Int,pname_:Int,params_:Int Ptr)="__glewGetVertexAttribivNV"
rem
bbdoc: GL Global glIsProgramNV:Byte(id_:Int)
endrem
Global glIsProgramNV:Byte(id_:Int)="__glewIsProgramNV"
rem
bbdoc: GL Global glLoadProgramNV(target_:Int,id_:Int,len_:Int,program_:Byte Ptr)
endrem
Global glLoadProgramNV(target_:Int,id_:Int,len_:Int,program_:Byte Ptr)="__glewLoadProgramNV"
rem
bbdoc: GL Global glProgramParameter4dNV(target_:Int,index_:Int,x_:Double,y_:Double,z_:Double,w_:Double)
endrem
Global glProgramParameter4dNV(target_:Int,index_:Int,x_:Double,y_:Double,z_:Double,w_:Double)="__glewProgramParameter4dNV"
rem
bbdoc: GL Global glProgramParameter4dvNV(target_:Int,index_:Int,params_:Double Ptr)
endrem
Global glProgramParameter4dvNV(target_:Int,index_:Int,params_:Double Ptr)="__glewProgramParameter4dvNV"
rem
bbdoc: GL Global glProgramParameter4fNV(target_:Int,index_:Int,x_:Float,y_:Float,z_:Float,w_:Float)
endrem
Global glProgramParameter4fNV(target_:Int,index_:Int,x_:Float,y_:Float,z_:Float,w_:Float)="__glewProgramParameter4fNV"
rem
bbdoc: GL Global glProgramParameter4fvNV(target_:Int,index_:Int,params_:Float Ptr)
endrem
Global glProgramParameter4fvNV(target_:Int,index_:Int,params_:Float Ptr)="__glewProgramParameter4fvNV"
rem
bbdoc: GL Global glProgramParameters4dvNV(target_:Int,index_:Int,num_:Int,params_:Double Ptr)
endrem
Global glProgramParameters4dvNV(target_:Int,index_:Int,num_:Int,params_:Double Ptr)="__glewProgramParameters4dvNV"
rem
bbdoc: GL Global glProgramParameters4fvNV(target_:Int,index_:Int,num_:Int,params_:Float Ptr)
endrem
Global glProgramParameters4fvNV(target_:Int,index_:Int,num_:Int,params_:Float Ptr)="__glewProgramParameters4fvNV"
rem
bbdoc: GL Global glRequestResidentProgramsNV(n_:Int,ids_:Int Ptr)
endrem
Global glRequestResidentProgramsNV(n_:Int,ids_:Int Ptr)="__glewRequestResidentProgramsNV"
rem
bbdoc: GL Global glTrackMatrixNV(target_:Int,address_:Int,matrix_:Int,transform_:Int)
endrem
Global glTrackMatrixNV(target_:Int,address_:Int,matrix_:Int,transform_:Int)="__glewTrackMatrixNV"
rem
bbdoc: GL Global glVertexAttrib1dNV(index_:Int,x_:Double)
endrem
Global glVertexAttrib1dNV(index_:Int,x_:Double)="__glewVertexAttrib1dNV"
rem
bbdoc: GL Global glVertexAttrib1dvNV(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttrib1dvNV(index_:Int,v_:Double Ptr)="__glewVertexAttrib1dvNV"
rem
bbdoc: GL Global glVertexAttrib1fNV(index_:Int,x_:Float)
endrem
Global glVertexAttrib1fNV(index_:Int,x_:Float)="__glewVertexAttrib1fNV"
rem
bbdoc: GL Global glVertexAttrib1fvNV(index_:Int,v_:Float Ptr)
endrem
Global glVertexAttrib1fvNV(index_:Int,v_:Float Ptr)="__glewVertexAttrib1fvNV"
rem
bbdoc: GL Global glVertexAttrib1sNV(index_:Int,x_:Short)
endrem
Global glVertexAttrib1sNV(index_:Int,x_:Short)="__glewVertexAttrib1sNV"
rem
bbdoc: GL Global glVertexAttrib1svNV(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib1svNV(index_:Int,v_:Short Ptr)="__glewVertexAttrib1svNV"
rem
bbdoc: GL Global glVertexAttrib2dNV(index_:Int,x_:Double,y_:Double)
endrem
Global glVertexAttrib2dNV(index_:Int,x_:Double,y_:Double)="__glewVertexAttrib2dNV"
rem
bbdoc: GL Global glVertexAttrib2dvNV(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttrib2dvNV(index_:Int,v_:Double Ptr)="__glewVertexAttrib2dvNV"
rem
bbdoc: GL Global glVertexAttrib2fNV(index_:Int,x_:Float,y_:Float)
endrem
Global glVertexAttrib2fNV(index_:Int,x_:Float,y_:Float)="__glewVertexAttrib2fNV"
rem
bbdoc: GL Global glVertexAttrib2fvNV(index_:Int,v_:Float Ptr)
endrem
Global glVertexAttrib2fvNV(index_:Int,v_:Float Ptr)="__glewVertexAttrib2fvNV"
rem
bbdoc: GL Global glVertexAttrib2sNV(index_:Int,x_:Short,y_:Short)
endrem
Global glVertexAttrib2sNV(index_:Int,x_:Short,y_:Short)="__glewVertexAttrib2sNV"
rem
bbdoc: GL Global glVertexAttrib2svNV(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib2svNV(index_:Int,v_:Short Ptr)="__glewVertexAttrib2svNV"
rem
bbdoc: GL Global glVertexAttrib3dNV(index_:Int,x_:Double,y_:Double,z_:Double)
endrem
Global glVertexAttrib3dNV(index_:Int,x_:Double,y_:Double,z_:Double)="__glewVertexAttrib3dNV"
rem
bbdoc: GL Global glVertexAttrib3dvNV(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttrib3dvNV(index_:Int,v_:Double Ptr)="__glewVertexAttrib3dvNV"
rem
bbdoc: GL Global glVertexAttrib3fNV(index_:Int,x_:Float,y_:Float,z_:Float)
endrem
Global glVertexAttrib3fNV(index_:Int,x_:Float,y_:Float,z_:Float)="__glewVertexAttrib3fNV"
rem
bbdoc: GL Global glVertexAttrib3fvNV(index_:Int,v_:Float Ptr)
endrem
Global glVertexAttrib3fvNV(index_:Int,v_:Float Ptr)="__glewVertexAttrib3fvNV"
rem
bbdoc: GL Global glVertexAttrib3sNV(index_:Int,x_:Short,y_:Short,z_:Short)
endrem
Global glVertexAttrib3sNV(index_:Int,x_:Short,y_:Short,z_:Short)="__glewVertexAttrib3sNV"
rem
bbdoc: GL Global glVertexAttrib3svNV(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib3svNV(index_:Int,v_:Short Ptr)="__glewVertexAttrib3svNV"
rem
bbdoc: GL Global glVertexAttrib4dNV(index_:Int,x_:Double,y_:Double,z_:Double,w_:Double)
endrem
Global glVertexAttrib4dNV(index_:Int,x_:Double,y_:Double,z_:Double,w_:Double)="__glewVertexAttrib4dNV"
rem
bbdoc: GL Global glVertexAttrib4dvNV(index_:Int,v_:Double Ptr)
endrem
Global glVertexAttrib4dvNV(index_:Int,v_:Double Ptr)="__glewVertexAttrib4dvNV"
rem
bbdoc: GL Global glVertexAttrib4fNV(index_:Int,x_:Float,y_:Float,z_:Float,w_:Float)
endrem
Global glVertexAttrib4fNV(index_:Int,x_:Float,y_:Float,z_:Float,w_:Float)="__glewVertexAttrib4fNV"
rem
bbdoc: GL Global glVertexAttrib4fvNV(index_:Int,v_:Float Ptr)
endrem
Global glVertexAttrib4fvNV(index_:Int,v_:Float Ptr)="__glewVertexAttrib4fvNV"
rem
bbdoc: GL Global glVertexAttrib4sNV(index_:Int,x_:Short,y_:Short,z_:Short,w_:Short)
endrem
Global glVertexAttrib4sNV(index_:Int,x_:Short,y_:Short,z_:Short,w_:Short)="__glewVertexAttrib4sNV"
rem
bbdoc: GL Global glVertexAttrib4svNV(index_:Int,v_:Short Ptr)
endrem
Global glVertexAttrib4svNV(index_:Int,v_:Short Ptr)="__glewVertexAttrib4svNV"
rem
bbdoc: GL Global glVertexAttrib4ubNV(index_:Int,x_:Byte,y_:Byte,z_:Byte,w_:Byte)
endrem
Global glVertexAttrib4ubNV(index_:Int,x_:Byte,y_:Byte,z_:Byte,w_:Byte)="__glewVertexAttrib4ubNV"
rem
bbdoc: GL Global glVertexAttrib4ubvNV(index_:Int,v_:Byte Ptr)
endrem
Global glVertexAttrib4ubvNV(index_:Int,v_:Byte Ptr)="__glewVertexAttrib4ubvNV"
rem
bbdoc: GL Global glVertexAttribPointerNV(index_:Int,size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)
endrem
Global glVertexAttribPointerNV(index_:Int,size_:Int,type_:Int,stride_:Int,pointer_:Byte Ptr)="__glewVertexAttribPointerNV"
rem
bbdoc: GL Global glVertexAttribs1dvNV(index_:Int,n_:Int,v_:Double Ptr)
endrem
Global glVertexAttribs1dvNV(index_:Int,n_:Int,v_:Double Ptr)="__glewVertexAttribs1dvNV"
rem
bbdoc: GL Global glVertexAttribs1fvNV(index_:Int,n_:Int,v_:Float Ptr)
endrem
Global glVertexAttribs1fvNV(index_:Int,n_:Int,v_:Float Ptr)="__glewVertexAttribs1fvNV"
rem
bbdoc: GL Global glVertexAttribs1svNV(index_:Int,n_:Int,v_:Short Ptr)
endrem
Global glVertexAttribs1svNV(index_:Int,n_:Int,v_:Short Ptr)="__glewVertexAttribs1svNV"
rem
bbdoc: GL Global glVertexAttribs2dvNV(index_:Int,n_:Int,v_:Double Ptr)
endrem
Global glVertexAttribs2dvNV(index_:Int,n_:Int,v_:Double Ptr)="__glewVertexAttribs2dvNV"
rem
bbdoc: GL Global glVertexAttribs2fvNV(index_:Int,n_:Int,v_:Float Ptr)
endrem
Global glVertexAttribs2fvNV(index_:Int,n_:Int,v_:Float Ptr)="__glewVertexAttribs2fvNV"
rem
bbdoc: GL Global glVertexAttribs2svNV(index_:Int,n_:Int,v_:Short Ptr)
endrem
Global glVertexAttribs2svNV(index_:Int,n_:Int,v_:Short Ptr)="__glewVertexAttribs2svNV"
rem
bbdoc: GL Global glVertexAttribs3dvNV(index_:Int,n_:Int,v_:Double Ptr)
endrem
Global glVertexAttribs3dvNV(index_:Int,n_:Int,v_:Double Ptr)="__glewVertexAttribs3dvNV"
rem
bbdoc: GL Global glVertexAttribs3fvNV(index_:Int,n_:Int,v_:Float Ptr)
endrem
Global glVertexAttribs3fvNV(index_:Int,n_:Int,v_:Float Ptr)="__glewVertexAttribs3fvNV"
rem
bbdoc: GL Global glVertexAttribs3svNV(index_:Int,n_:Int,v_:Short Ptr)
endrem
Global glVertexAttribs3svNV(index_:Int,n_:Int,v_:Short Ptr)="__glewVertexAttribs3svNV"
rem
bbdoc: GL Global glVertexAttribs4dvNV(index_:Int,n_:Int,v_:Double Ptr)
endrem
Global glVertexAttribs4dvNV(index_:Int,n_:Int,v_:Double Ptr)="__glewVertexAttribs4dvNV"
rem
bbdoc: GL Global glVertexAttribs4fvNV(index_:Int,n_:Int,v_:Float Ptr)
endrem
Global glVertexAttribs4fvNV(index_:Int,n_:Int,v_:Float Ptr)="__glewVertexAttribs4fvNV"
rem
bbdoc: GL Global glVertexAttribs4svNV(index_:Int,n_:Int,v_:Short Ptr)
endrem
Global glVertexAttribs4svNV(index_:Int,n_:Int,v_:Short Ptr)="__glewVertexAttribs4svNV"
rem
bbdoc: GL Global glVertexAttribs4ubvNV(index_:Int,n_:Int,v_:Byte Ptr)
endrem
Global glVertexAttribs4ubvNV(index_:Int,n_:Int,v_:Byte Ptr)="__glewVertexAttribs4ubvNV"
rem
bbdoc: GL Const GL_NV_vertex_program1_1
endrem
Const GL_NV_vertex_program1_1=1
rem
bbdoc: GL Const GL_NV_vertex_program2
endrem
Const GL_NV_vertex_program2=1
rem
bbdoc: GL Const GL_NV_vertex_program2_option
endrem
Const GL_NV_vertex_program2_option=1
rem
bbdoc: GL Const GL_NV_vertex_program3
endrem
Const GL_NV_vertex_program3=1
rem
bbdoc: GL Const GL_NV_vertex_program4
endrem
Const GL_NV_vertex_program4=1
rem
bbdoc: GL Const GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV
endrem
Const GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV=$88FD
rem
bbdoc: GL Const GL_NV_video_capture
endrem
Const GL_NV_video_capture=1
rem
bbdoc: GL Const GL_VIDEO_BUFFER_NV
endrem
Const GL_VIDEO_BUFFER_NV=$9020
rem
bbdoc: GL Const GL_VIDEO_BUFFER_BINDING_NV
endrem
Const GL_VIDEO_BUFFER_BINDING_NV=$9021
rem
bbdoc: GL Const GL_FIELD_UPPER_NV
endrem
Const GL_FIELD_UPPER_NV=$9022
rem
bbdoc: GL Const GL_FIELD_LOWER_NV
endrem
Const GL_FIELD_LOWER_NV=$9023
rem
bbdoc: GL Const GL_NUM_VIDEO_CAPTURE_STREAMS_NV
endrem
Const GL_NUM_VIDEO_CAPTURE_STREAMS_NV=$9024
rem
bbdoc: GL Const GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV
endrem
Const GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV=$9025
rem
bbdoc: GL Const GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV
endrem
Const GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV=$9026
rem
bbdoc: GL Const GL_LAST_VIDEO_CAPTURE_STATUS_NV
endrem
Const GL_LAST_VIDEO_CAPTURE_STATUS_NV=$9027
rem
bbdoc: GL Const GL_VIDEO_BUFFER_PITCH_NV
endrem
Const GL_VIDEO_BUFFER_PITCH_NV=$9028
rem
bbdoc: GL Const GL_VIDEO_COLOR_CONVERSION_MATRIX_NV
endrem
Const GL_VIDEO_COLOR_CONVERSION_MATRIX_NV=$9029
rem
bbdoc: GL Const GL_VIDEO_COLOR_CONVERSION_MAX_NV
endrem
Const GL_VIDEO_COLOR_CONVERSION_MAX_NV=$902A
rem
bbdoc: GL Const GL_VIDEO_COLOR_CONVERSION_MIN_NV
endrem
Const GL_VIDEO_COLOR_CONVERSION_MIN_NV=$902B
rem
bbdoc: GL Const GL_VIDEO_COLOR_CONVERSION_OFFSET_NV
endrem
Const GL_VIDEO_COLOR_CONVERSION_OFFSET_NV=$902C
rem
bbdoc: GL Const GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV
endrem
Const GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV=$902D
rem
bbdoc: GL Const GL_PARTIAL_SUCCESS_NV
endrem
Const GL_PARTIAL_SUCCESS_NV=$902E
rem
bbdoc: GL Const GL_SUCCESS_NV
endrem
Const GL_SUCCESS_NV=$902F
rem
bbdoc: GL Const GL_FAILURE_NV
endrem
Const GL_FAILURE_NV=$9030
rem
bbdoc: GL Const GL_YCBYCR8_422_NV
endrem
Const GL_YCBYCR8_422_NV=$9031
rem
bbdoc: GL Const GL_YCBAYCR8A_4224_NV
endrem
Const GL_YCBAYCR8A_4224_NV=$9032
rem
bbdoc: GL Const GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV
endrem
Const GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV=$9033
rem
bbdoc: GL Const GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV
endrem
Const GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV=$9034
rem
bbdoc: GL Const GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV
endrem
Const GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV=$9035
rem
bbdoc: GL Const GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV
endrem
Const GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV=$9036
rem
bbdoc: GL Const GL_Z4Y12Z4CB12Z4CR12_444_NV
endrem
Const GL_Z4Y12Z4CB12Z4CR12_444_NV=$9037
rem
bbdoc: GL Const GL_VIDEO_CAPTURE_FRAME_WIDTH_NV
endrem
Const GL_VIDEO_CAPTURE_FRAME_WIDTH_NV=$9038
rem
bbdoc: GL Const GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV
endrem
Const GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV=$9039
rem
bbdoc: GL Const GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV
endrem
Const GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV=$903A
rem
bbdoc: GL Const GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV
endrem
Const GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV=$903B
rem
bbdoc: GL Const GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV
endrem
Const GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV=$903C
rem
bbdoc: GL Global glBeginVideoCaptureNV(video_capture_slot_:Int)
endrem
Global glBeginVideoCaptureNV(video_capture_slot_:Int)="__glewBeginVideoCaptureNV"
rem
bbdoc: GL Global glBindVideoCaptureStreamBufferNV(video_capture_slot_:Int,stream_:Int,frame_region_:Int,offset_:Int)
endrem
Global glBindVideoCaptureStreamBufferNV(video_capture_slot_:Int,stream_:Int,frame_region_:Int,offset_:Int)="__glewBindVideoCaptureStreamBufferNV"
rem
bbdoc: GL Global glBindVideoCaptureStreamTextureNV(video_capture_slot_:Int,stream_:Int,frame_region_:Int,target_:Int,texture_:Int)
endrem
Global glBindVideoCaptureStreamTextureNV(video_capture_slot_:Int,stream_:Int,frame_region_:Int,target_:Int,texture_:Int)="__glewBindVideoCaptureStreamTextureNV"
rem
bbdoc: GL Global glEndVideoCaptureNV(video_capture_slot_:Int)
endrem
Global glEndVideoCaptureNV(video_capture_slot_:Int)="__glewEndVideoCaptureNV"
rem
bbdoc: GL Global glGetVideoCaptureStreamdvNV(video_capture_slot_:Int,stream_:Int,pname_:Int,params_:Double Ptr)
endrem
Global glGetVideoCaptureStreamdvNV(video_capture_slot_:Int,stream_:Int,pname_:Int,params_:Double Ptr)="__glewGetVideoCaptureStreamdvNV"
rem
bbdoc: GL Global glGetVideoCaptureStreamfvNV(video_capture_slot_:Int,stream_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetVideoCaptureStreamfvNV(video_capture_slot_:Int,stream_:Int,pname_:Int,params_:Float Ptr)="__glewGetVideoCaptureStreamfvNV"
rem
bbdoc: GL Global glGetVideoCaptureStreamivNV(video_capture_slot_:Int,stream_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetVideoCaptureStreamivNV(video_capture_slot_:Int,stream_:Int,pname_:Int,params_:Int Ptr)="__glewGetVideoCaptureStreamivNV"
rem
bbdoc: GL Global glGetVideoCaptureivNV(video_capture_slot_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetVideoCaptureivNV(video_capture_slot_:Int,pname_:Int,params_:Int Ptr)="__glewGetVideoCaptureivNV"
rem
bbdoc: GL Global glVideoCaptureNV:Int(video_capture_slot_:Int,sequence_num_:Int Ptr,capture_time_:Long Ptr)
endrem
Global glVideoCaptureNV:Int(video_capture_slot_:Int,sequence_num_:Int Ptr,capture_time_:Long Ptr)="__glewVideoCaptureNV"
rem
bbdoc: GL Global glVideoCaptureStreamParameterdvNV(video_capture_slot_:Int,stream_:Int,pname_:Int,params_:Double Ptr)
endrem
Global glVideoCaptureStreamParameterdvNV(video_capture_slot_:Int,stream_:Int,pname_:Int,params_:Double Ptr)="__glewVideoCaptureStreamParameterdvNV"
rem
bbdoc: GL Global glVideoCaptureStreamParameterfvNV(video_capture_slot_:Int,stream_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glVideoCaptureStreamParameterfvNV(video_capture_slot_:Int,stream_:Int,pname_:Int,params_:Float Ptr)="__glewVideoCaptureStreamParameterfvNV"
rem
bbdoc: GL Global glVideoCaptureStreamParameterivNV(video_capture_slot_:Int,stream_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glVideoCaptureStreamParameterivNV(video_capture_slot_:Int,stream_:Int,pname_:Int,params_:Int Ptr)="__glewVideoCaptureStreamParameterivNV"
rem
bbdoc: GL Const GL_OES_byte_coordinates
endrem
Const GL_OES_byte_coordinates=1
rem
bbdoc: GL Const GL_OES_compressed_paletted_texture
endrem
Const GL_OES_compressed_paletted_texture=1
rem
bbdoc: GL Const GL_PALETTE4_RGB8_OES
endrem
Const GL_PALETTE4_RGB8_OES=$8B90
rem
bbdoc: GL Const GL_PALETTE4_RGBA8_OES
endrem
Const GL_PALETTE4_RGBA8_OES=$8B91
rem
bbdoc: GL Const GL_PALETTE4_R5_G6_B5_OES
endrem
Const GL_PALETTE4_R5_G6_B5_OES=$8B92
rem
bbdoc: GL Const GL_PALETTE4_RGBA4_OES
endrem
Const GL_PALETTE4_RGBA4_OES=$8B93
rem
bbdoc: GL Const GL_PALETTE4_RGB5_A1_OES
endrem
Const GL_PALETTE4_RGB5_A1_OES=$8B94
rem
bbdoc: GL Const GL_PALETTE8_RGB8_OES
endrem
Const GL_PALETTE8_RGB8_OES=$8B95
rem
bbdoc: GL Const GL_PALETTE8_RGBA8_OES
endrem
Const GL_PALETTE8_RGBA8_OES=$8B96
rem
bbdoc: GL Const GL_PALETTE8_R5_G6_B5_OES
endrem
Const GL_PALETTE8_R5_G6_B5_OES=$8B97
rem
bbdoc: GL Const GL_PALETTE8_RGBA4_OES
endrem
Const GL_PALETTE8_RGBA4_OES=$8B98
rem
bbdoc: GL Const GL_PALETTE8_RGB5_A1_OES
endrem
Const GL_PALETTE8_RGB5_A1_OES=$8B99
rem
bbdoc: GL Const GL_OES_read_format
endrem
Const GL_OES_read_format=1
rem
bbdoc: GL Const GL_IMPLEMENTATION_COLOR_READ_TYPE_OES
endrem
Const GL_IMPLEMENTATION_COLOR_READ_TYPE_OES=$8B9A
rem
bbdoc: GL Const GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES
endrem
Const GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES=$8B9B
rem
bbdoc: GL Const GL_OES_single_precision
endrem
Const GL_OES_single_precision=1
rem
bbdoc: GL Global glClearDepthfOES(depth_:Double)
endrem
Global glClearDepthfOES(depth_:Double)="__glewClearDepthfOES"
rem
bbdoc: GL Global glClipPlanefOES(plane_:Int,equation_:Float Ptr)
endrem
Global glClipPlanefOES(plane_:Int,equation_:Float Ptr)="__glewClipPlanefOES"
rem
bbdoc: GL Global glDepthRangefOES(n_:Float,f_:Float)
endrem
Global glDepthRangefOES(n_:Float,f_:Float)="__glewDepthRangefOES"
rem
bbdoc: GL Global glFrustumfOES(l_:Float,r_:Float,b_:Float,t_:Float,n_:Float,f_:Float)
endrem
Global glFrustumfOES(l_:Float,r_:Float,b_:Float,t_:Float,n_:Float,f_:Float)="__glewFrustumfOES"
rem
bbdoc: GL Global glGetClipPlanefOES(plane_:Int,equation_:Float Ptr)
endrem
Global glGetClipPlanefOES(plane_:Int,equation_:Float Ptr)="__glewGetClipPlanefOES"
rem
bbdoc: GL Global glOrthofOES(l_:Float,r_:Float,b_:Float,t_:Float,n_:Float,f_:Float)
endrem
Global glOrthofOES(l_:Float,r_:Float,b_:Float,t_:Float,n_:Float,f_:Float)="__glewOrthofOES"
rem
bbdoc: GL Const GL_OML_interlace
endrem
Const GL_OML_interlace=1
rem
bbdoc: GL Const GL_INTERLACE_OML
endrem
Const GL_INTERLACE_OML=$8980
rem
bbdoc: GL Const GL_INTERLACE_READ_OML
endrem
Const GL_INTERLACE_READ_OML=$8981
rem
bbdoc: GL Const GL_OML_resample
endrem
Const GL_OML_resample=1
rem
bbdoc: GL Const GL_PACK_RESAMPLE_OML
endrem
Const GL_PACK_RESAMPLE_OML=$8984
rem
bbdoc: GL Const GL_UNPACK_RESAMPLE_OML
endrem
Const GL_UNPACK_RESAMPLE_OML=$8985
rem
bbdoc: GL Const GL_RESAMPLE_REPLICATE_OML
endrem
Const GL_RESAMPLE_REPLICATE_OML=$8986
rem
bbdoc: GL Const GL_RESAMPLE_ZERO_FILL_OML
endrem
Const GL_RESAMPLE_ZERO_FILL_OML=$8987
rem
bbdoc: GL Const GL_RESAMPLE_AVERAGE_OML
endrem
Const GL_RESAMPLE_AVERAGE_OML=$8988
rem
bbdoc: GL Const GL_RESAMPLE_DECIMATE_OML
endrem
Const GL_RESAMPLE_DECIMATE_OML=$8989
rem
bbdoc: GL Const GL_OML_subsample
endrem
Const GL_OML_subsample=1
rem
bbdoc: GL Const GL_FORMAT_SUBSAMPLE_24_24_OML
endrem
Const GL_FORMAT_SUBSAMPLE_24_24_OML=$8982
rem
bbdoc: GL Const GL_FORMAT_SUBSAMPLE_244_244_OML
endrem
Const GL_FORMAT_SUBSAMPLE_244_244_OML=$8983
rem
bbdoc: GL Const GL_PGI_misc_hints
endrem
Const GL_PGI_misc_hints=1
rem
bbdoc: GL Const GL_PREFER_DOUBLEBUFFER_HINT_PGI
endrem
Const GL_PREFER_DOUBLEBUFFER_HINT_PGI=107000
rem
bbdoc: GL Const GL_CONSERVE_MEMORY_HINT_PGI
endrem
Const GL_CONSERVE_MEMORY_HINT_PGI=107005
rem
bbdoc: GL Const GL_RECLAIM_MEMORY_HINT_PGI
endrem
Const GL_RECLAIM_MEMORY_HINT_PGI=107006
rem
bbdoc: GL Const GL_NATIVE_GRAPHICS_HANDLE_PGI
endrem
Const GL_NATIVE_GRAPHICS_HANDLE_PGI=107010
rem
bbdoc: GL Const GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI
endrem
Const GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI=107011
rem
bbdoc: GL Const GL_NATIVE_GRAPHICS_END_HINT_PGI
endrem
Const GL_NATIVE_GRAPHICS_END_HINT_PGI=107012
rem
bbdoc: GL Const GL_ALWAYS_FAST_HINT_PGI
endrem
Const GL_ALWAYS_FAST_HINT_PGI=107020
rem
bbdoc: GL Const GL_ALWAYS_SOFT_HINT_PGI
endrem
Const GL_ALWAYS_SOFT_HINT_PGI=107021
rem
bbdoc: GL Const GL_ALLOW_DRAW_OBJ_HINT_PGI
endrem
Const GL_ALLOW_DRAW_OBJ_HINT_PGI=107022
rem
bbdoc: GL Const GL_ALLOW_DRAW_WIN_HINT_PGI
endrem
Const GL_ALLOW_DRAW_WIN_HINT_PGI=107023
rem
bbdoc: GL Const GL_ALLOW_DRAW_FRG_HINT_PGI
endrem
Const GL_ALLOW_DRAW_FRG_HINT_PGI=107024
rem
bbdoc: GL Const GL_ALLOW_DRAW_MEM_HINT_PGI
endrem
Const GL_ALLOW_DRAW_MEM_HINT_PGI=107025
rem
bbdoc: GL Const GL_STRICT_DEPTHFUNC_HINT_PGI
endrem
Const GL_STRICT_DEPTHFUNC_HINT_PGI=107030
rem
bbdoc: GL Const GL_STRICT_LIGHTING_HINT_PGI
endrem
Const GL_STRICT_LIGHTING_HINT_PGI=107031
rem
bbdoc: GL Const GL_STRICT_SCISSOR_HINT_PGI
endrem
Const GL_STRICT_SCISSOR_HINT_PGI=107032
rem
bbdoc: GL Const GL_FULL_STIPPLE_HINT_PGI
endrem
Const GL_FULL_STIPPLE_HINT_PGI=107033
rem
bbdoc: GL Const GL_CLIP_NEAR_HINT_PGI
endrem
Const GL_CLIP_NEAR_HINT_PGI=107040
rem
bbdoc: GL Const GL_CLIP_FAR_HINT_PGI
endrem
Const GL_CLIP_FAR_HINT_PGI=107041
rem
bbdoc: GL Const GL_WIDE_LINE_HINT_PGI
endrem
Const GL_WIDE_LINE_HINT_PGI=107042
rem
bbdoc: GL Const GL_BACK_NORMALS_HINT_PGI
endrem
Const GL_BACK_NORMALS_HINT_PGI=107043
rem
bbdoc: GL Const GL_PGI_vertex_hints
endrem
Const GL_PGI_vertex_hints=1
rem
bbdoc: GL Const GL_VERTEX23_BIT_PGI
endrem
Const GL_VERTEX23_BIT_PGI=$00000004
rem
bbdoc: GL Const GL_VERTEX4_BIT_PGI
endrem
Const GL_VERTEX4_BIT_PGI=$00000008
rem
bbdoc: GL Const GL_COLOR3_BIT_PGI
endrem
Const GL_COLOR3_BIT_PGI=$00010000
rem
bbdoc: GL Const GL_COLOR4_BIT_PGI
endrem
Const GL_COLOR4_BIT_PGI=$00020000
rem
bbdoc: GL Const GL_EDGEFLAG_BIT_PGI
endrem
Const GL_EDGEFLAG_BIT_PGI=$00040000
rem
bbdoc: GL Const GL_INDEX_BIT_PGI
endrem
Const GL_INDEX_BIT_PGI=$00080000
rem
bbdoc: GL Const GL_MAT_AMBIENT_BIT_PGI
endrem
Const GL_MAT_AMBIENT_BIT_PGI=$00100000
rem
bbdoc: GL Const GL_VERTEX_DATA_HINT_PGI
endrem
Const GL_VERTEX_DATA_HINT_PGI=107050
rem
bbdoc: GL Const GL_VERTEX_CONSISTENT_HINT_PGI
endrem
Const GL_VERTEX_CONSISTENT_HINT_PGI=107051
rem
bbdoc: GL Const GL_MATERIAL_SIDE_HINT_PGI
endrem
Const GL_MATERIAL_SIDE_HINT_PGI=107052
rem
bbdoc: GL Const GL_MAX_VERTEX_HINT_PGI
endrem
Const GL_MAX_VERTEX_HINT_PGI=107053
rem
bbdoc: GL Const GL_MAT_AMBIENT_AND_DIFFUSE_BIT_PGI
endrem
Const GL_MAT_AMBIENT_AND_DIFFUSE_BIT_PGI=$00200000
rem
bbdoc: GL Const GL_MAT_DIFFUSE_BIT_PGI
endrem
Const GL_MAT_DIFFUSE_BIT_PGI=$00400000
rem
bbdoc: GL Const GL_MAT_EMISSION_BIT_PGI
endrem
Const GL_MAT_EMISSION_BIT_PGI=$00800000
rem
bbdoc: GL Const GL_MAT_COLOR_INDEXES_BIT_PGI
endrem
Const GL_MAT_COLOR_INDEXES_BIT_PGI=$01000000
rem
bbdoc: GL Const GL_MAT_SHININESS_BIT_PGI
endrem
Const GL_MAT_SHININESS_BIT_PGI=$02000000
rem
bbdoc: GL Const GL_MAT_SPECULAR_BIT_PGI
endrem
Const GL_MAT_SPECULAR_BIT_PGI=$04000000
rem
bbdoc: GL Const GL_NORMAL_BIT_PGI
endrem
Const GL_NORMAL_BIT_PGI=$08000000
rem
bbdoc: GL Const GL_TEXCOORD1_BIT_PGI
endrem
Const GL_TEXCOORD1_BIT_PGI=$10000000
rem
bbdoc: GL Const GL_TEXCOORD2_BIT_PGI
endrem
Const GL_TEXCOORD2_BIT_PGI=$20000000
rem
bbdoc: GL Const GL_TEXCOORD3_BIT_PGI
endrem
Const GL_TEXCOORD3_BIT_PGI=$40000000
rem
bbdoc: GL Const GL_TEXCOORD4_BIT_PGI
endrem
Const GL_TEXCOORD4_BIT_PGI=$80000000
rem
bbdoc: GL Const GL_REGAL_ES1_0_compatibility
endrem
Const GL_REGAL_ES1_0_compatibility=1
rem
bbdoc: GL Global glFrustumf(left_:Float,right_:Float,bottom_:Float,top_:Float,zNear_:Float,zFar_:Float)
endrem
Global glFrustumf(left_:Float,right_:Float,bottom_:Float,top_:Float,zNear_:Float,zFar_:Float)="__glewFrustumf"
rem
bbdoc: GL Global glOrthof(left_:Float,right_:Float,bottom_:Float,top_:Float,zNear_:Float,zFar_:Float)
endrem
Global glOrthof(left_:Float,right_:Float,bottom_:Float,top_:Float,zNear_:Float,zFar_:Float)="__glewOrthof"
rem
bbdoc: GL Const GL_REGAL_ES1_1_compatibility
endrem
Const GL_REGAL_ES1_1_compatibility=1
rem
bbdoc: GL Global glClipPlanef(plane_:Int,equation_:Float Ptr)
endrem
Global glClipPlanef(plane_:Int,equation_:Float Ptr)="__glewClipPlanef"
rem
bbdoc: GL Global glGetClipPlanef(pname_:Int,eqn_:Float Ptr)
endrem
Global glGetClipPlanef(pname_:Int,eqn_:Float Ptr)="__glewGetClipPlanef"
rem
bbdoc: GL Global glPointSizePointerOES(type_:Int,stride_:Int,pointer_:Byte Ptr)
endrem
Global glPointSizePointerOES(type_:Int,stride_:Int,pointer_:Byte Ptr)="__glewPointSizePointerOES"
rem
bbdoc: GL Const GL_REGAL_enable
endrem
Const GL_REGAL_enable=1
rem
bbdoc: GL Const GL_ERROR_REGAL
endrem
Const GL_ERROR_REGAL=$9322
rem
bbdoc: GL Const GL_DEBUG_REGAL
endrem
Const GL_DEBUG_REGAL=$9323
rem
bbdoc: GL Const GL_LOG_REGAL
endrem
Const GL_LOG_REGAL=$9324
rem
bbdoc: GL Const GL_EMULATION_REGAL
endrem
Const GL_EMULATION_REGAL=$9325
rem
bbdoc: GL Const GL_DRIVER_REGAL
endrem
Const GL_DRIVER_REGAL=$9326
rem
bbdoc: GL Const GL_MISSING_REGAL
endrem
Const GL_MISSING_REGAL=$9360
rem
bbdoc: GL Const GL_TRACE_REGAL
endrem
Const GL_TRACE_REGAL=$9361
rem
bbdoc: GL Const GL_CACHE_REGAL
endrem
Const GL_CACHE_REGAL=$9362
rem
bbdoc: GL Const GL_CODE_REGAL
endrem
Const GL_CODE_REGAL=$9363
rem
bbdoc: GL Const GL_STATISTICS_REGAL
endrem
Const GL_STATISTICS_REGAL=$9364
rem
bbdoc: GL Const GL_REGAL_error_string
endrem
Const GL_REGAL_error_string=1
rem
bbdoc: GL Global glErrorStringREGAL:Byte Ptr(error_:Int)
endrem
Global glErrorStringREGAL:Byte Ptr(error_:Int)="__glewErrorStringREGAL"
rem
bbdoc: GL Const GL_REGAL_extension_query
endrem
Const GL_REGAL_extension_query=1
rem
bbdoc: GL Global glGetExtensionREGAL:Byte(ext_:Byte Ptr)
endrem
Global glGetExtensionREGAL:Byte(ext_:Byte Ptr)="__glewGetExtensionREGAL"
rem
bbdoc: GL Global glIsSupportedREGAL:Byte(ext_:Byte Ptr)
endrem
Global glIsSupportedREGAL:Byte(ext_:Byte Ptr)="__glewIsSupportedREGAL"
rem
bbdoc: GL Const GL_REGAL_log
endrem
Const GL_REGAL_log=1
rem
bbdoc: GL Const GL_LOG_ERROR_REGAL
endrem
Const GL_LOG_ERROR_REGAL=$9319
rem
bbdoc: GL Const GL_LOG_WARNING_REGAL
endrem
Const GL_LOG_WARNING_REGAL=$931A
rem
bbdoc: GL Const GL_LOG_INFO_REGAL
endrem
Const GL_LOG_INFO_REGAL=$931B
rem
bbdoc: GL Const GL_LOG_APP_REGAL
endrem
Const GL_LOG_APP_REGAL=$931C
rem
bbdoc: GL Const GL_LOG_DRIVER_REGAL
endrem
Const GL_LOG_DRIVER_REGAL=$931D
rem
bbdoc: GL Const GL_LOG_INTERNAL_REGAL
endrem
Const GL_LOG_INTERNAL_REGAL=$931E
rem
bbdoc: GL Const GL_LOG_DEBUG_REGAL
endrem
Const GL_LOG_DEBUG_REGAL=$931F
rem
bbdoc: GL Const GL_LOG_STATUS_REGAL
endrem
Const GL_LOG_STATUS_REGAL=$9320
rem
bbdoc: GL Const GL_LOG_HTTP_REGAL
endrem
Const GL_LOG_HTTP_REGAL=$9321
rem
bbdoc: GL Const GL_REGAL_proc_address
endrem
Const GL_REGAL_proc_address=1
rem
bbdoc: GL Global glGetProcAddressREGAL:Byte Ptr(name_:Byte Ptr)
endrem
Global glGetProcAddressREGAL:Byte Ptr(name_:Byte Ptr)="__glewGetProcAddressREGAL"
rem
bbdoc: GL Const GL_REND_screen_coordinates
endrem
Const GL_REND_screen_coordinates=1
rem
bbdoc: GL Const GL_SCREEN_COORDINATES_REND
endrem
Const GL_SCREEN_COORDINATES_REND=$8490
rem
bbdoc: GL Const GL_INVERTED_SCREEN_W_REND
endrem
Const GL_INVERTED_SCREEN_W_REND=$8491
rem
bbdoc: GL Const GL_S3_s3tc
endrem
Const GL_S3_s3tc=1
rem
bbdoc: GL Const GL_RGB_S3TC
endrem
Const GL_RGB_S3TC=$83A0
rem
bbdoc: GL Const GL_RGB4_S3TC
endrem
Const GL_RGB4_S3TC=$83A1
rem
bbdoc: GL Const GL_RGBA_S3TC
endrem
Const GL_RGBA_S3TC=$83A2
rem
bbdoc: GL Const GL_RGBA4_S3TC
endrem
Const GL_RGBA4_S3TC=$83A3
rem
bbdoc: GL Const GL_RGBA_DXT5_S3TC
endrem
Const GL_RGBA_DXT5_S3TC=$83A4
rem
bbdoc: GL Const GL_RGBA4_DXT5_S3TC
endrem
Const GL_RGBA4_DXT5_S3TC=$83A5
rem
bbdoc: GL Const GL_SGIS_color_range
endrem
Const GL_SGIS_color_range=1
rem
bbdoc: GL Const GL_EXTENDED_RANGE_SGIS
endrem
Const GL_EXTENDED_RANGE_SGIS=$85A5
rem
bbdoc: GL Const GL_MIN_RED_SGIS
endrem
Const GL_MIN_RED_SGIS=$85A6
rem
bbdoc: GL Const GL_MAX_RED_SGIS
endrem
Const GL_MAX_RED_SGIS=$85A7
rem
bbdoc: GL Const GL_MIN_GREEN_SGIS
endrem
Const GL_MIN_GREEN_SGIS=$85A8
rem
bbdoc: GL Const GL_MAX_GREEN_SGIS
endrem
Const GL_MAX_GREEN_SGIS=$85A9
rem
bbdoc: GL Const GL_MIN_BLUE_SGIS
endrem
Const GL_MIN_BLUE_SGIS=$85AA
rem
bbdoc: GL Const GL_MAX_BLUE_SGIS
endrem
Const GL_MAX_BLUE_SGIS=$85AB
rem
bbdoc: GL Const GL_MIN_ALPHA_SGIS
endrem
Const GL_MIN_ALPHA_SGIS=$85AC
rem
bbdoc: GL Const GL_MAX_ALPHA_SGIS
endrem
Const GL_MAX_ALPHA_SGIS=$85AD
rem
bbdoc: GL Const GL_SGIS_detail_texture
endrem
Const GL_SGIS_detail_texture=1
rem
bbdoc: GL Global glDetailTexFuncSGIS(target_:Int,n_:Int,points_:Float Ptr)
endrem
Global glDetailTexFuncSGIS(target_:Int,n_:Int,points_:Float Ptr)="__glewDetailTexFuncSGIS"
rem
bbdoc: GL Global glGetDetailTexFuncSGIS(target_:Int,points_:Float Ptr)
endrem
Global glGetDetailTexFuncSGIS(target_:Int,points_:Float Ptr)="__glewGetDetailTexFuncSGIS"
rem
bbdoc: GL Const GL_SGIS_fog_function
endrem
Const GL_SGIS_fog_function=1
rem
bbdoc: GL Global glFogFuncSGIS(n_:Int,points_:Float Ptr)
endrem
Global glFogFuncSGIS(n_:Int,points_:Float Ptr)="__glewFogFuncSGIS"
rem
bbdoc: GL Global glGetFogFuncSGIS(points_:Float Ptr)
endrem
Global glGetFogFuncSGIS(points_:Float Ptr)="__glewGetFogFuncSGIS"
rem
bbdoc: GL Const GL_SGIS_generate_mipmap
endrem
Const GL_SGIS_generate_mipmap=1
rem
bbdoc: GL Const GL_GENERATE_MIPMAP_SGIS
endrem
Const GL_GENERATE_MIPMAP_SGIS=$8191
rem
bbdoc: GL Const GL_GENERATE_MIPMAP_HINT_SGIS
endrem
Const GL_GENERATE_MIPMAP_HINT_SGIS=$8192
rem
bbdoc: GL Const GL_SGIS_multisample
endrem
Const GL_SGIS_multisample=1
rem
bbdoc: GL Const GL_MULTISAMPLE_SGIS
endrem
Const GL_MULTISAMPLE_SGIS=$809D
rem
bbdoc: GL Const GL_SAMPLE_ALPHA_TO_MASK_SGIS
endrem
Const GL_SAMPLE_ALPHA_TO_MASK_SGIS=$809E
rem
bbdoc: GL Const GL_SAMPLE_ALPHA_TO_ONE_SGIS
endrem
Const GL_SAMPLE_ALPHA_TO_ONE_SGIS=$809F
rem
bbdoc: GL Const GL_SAMPLE_MASK_SGIS
endrem
Const GL_SAMPLE_MASK_SGIS=$80A0
rem
bbdoc: GL Const GL_1PASS_SGIS
endrem
Const GL_1PASS_SGIS=$80A1
rem
bbdoc: GL Const GL_2PASS_0_SGIS
endrem
Const GL_2PASS_0_SGIS=$80A2
rem
bbdoc: GL Const GL_2PASS_1_SGIS
endrem
Const GL_2PASS_1_SGIS=$80A3
rem
bbdoc: GL Const GL_4PASS_0_SGIS
endrem
Const GL_4PASS_0_SGIS=$80A4
rem
bbdoc: GL Const GL_4PASS_1_SGIS
endrem
Const GL_4PASS_1_SGIS=$80A5
rem
bbdoc: GL Const GL_4PASS_2_SGIS
endrem
Const GL_4PASS_2_SGIS=$80A6
rem
bbdoc: GL Const GL_4PASS_3_SGIS
endrem
Const GL_4PASS_3_SGIS=$80A7
rem
bbdoc: GL Const GL_SAMPLE_BUFFERS_SGIS
endrem
Const GL_SAMPLE_BUFFERS_SGIS=$80A8
rem
bbdoc: GL Const GL_SAMPLES_SGIS
endrem
Const GL_SAMPLES_SGIS=$80A9
rem
bbdoc: GL Const GL_SAMPLE_MASK_VALUE_SGIS
endrem
Const GL_SAMPLE_MASK_VALUE_SGIS=$80AA
rem
bbdoc: GL Const GL_SAMPLE_MASK_INVERT_SGIS
endrem
Const GL_SAMPLE_MASK_INVERT_SGIS=$80AB
rem
bbdoc: GL Const GL_SAMPLE_PATTERN_SGIS
endrem
Const GL_SAMPLE_PATTERN_SGIS=$80AC
rem
bbdoc: GL Global glSampleMaskSGIS(value_:Float,invert_:Byte)
endrem
Global glSampleMaskSGIS(value_:Float,invert_:Byte)="__glewSampleMaskSGIS"
rem
bbdoc: GL Global glSamplePatternSGIS(pattern_:Int)
endrem
Global glSamplePatternSGIS(pattern_:Int)="__glewSamplePatternSGIS"
rem
bbdoc: GL Const GL_SGIS_pixel_texture
endrem
Const GL_SGIS_pixel_texture=1
rem
bbdoc: GL Const GL_SGIS_point_line_texgen
endrem
Const GL_SGIS_point_line_texgen=1
rem
bbdoc: GL Const GL_EYE_DISTANCE_TO_POINT_SGIS
endrem
Const GL_EYE_DISTANCE_TO_POINT_SGIS=$81F0
rem
bbdoc: GL Const GL_OBJECT_DISTANCE_TO_POINT_SGIS
endrem
Const GL_OBJECT_DISTANCE_TO_POINT_SGIS=$81F1
rem
bbdoc: GL Const GL_EYE_DISTANCE_TO_LINE_SGIS
endrem
Const GL_EYE_DISTANCE_TO_LINE_SGIS=$81F2
rem
bbdoc: GL Const GL_OBJECT_DISTANCE_TO_LINE_SGIS
endrem
Const GL_OBJECT_DISTANCE_TO_LINE_SGIS=$81F3
rem
bbdoc: GL Const GL_EYE_POINT_SGIS
endrem
Const GL_EYE_POINT_SGIS=$81F4
rem
bbdoc: GL Const GL_OBJECT_POINT_SGIS
endrem
Const GL_OBJECT_POINT_SGIS=$81F5
rem
bbdoc: GL Const GL_EYE_LINE_SGIS
endrem
Const GL_EYE_LINE_SGIS=$81F6
rem
bbdoc: GL Const GL_OBJECT_LINE_SGIS
endrem
Const GL_OBJECT_LINE_SGIS=$81F7
rem
bbdoc: GL Const GL_SGIS_sharpen_texture
endrem
Const GL_SGIS_sharpen_texture=1
rem
bbdoc: GL Global glGetSharpenTexFuncSGIS(target_:Int,points_:Float Ptr)
endrem
Global glGetSharpenTexFuncSGIS(target_:Int,points_:Float Ptr)="__glewGetSharpenTexFuncSGIS"
rem
bbdoc: GL Global glSharpenTexFuncSGIS(target_:Int,n_:Int,points_:Float Ptr)
endrem
Global glSharpenTexFuncSGIS(target_:Int,n_:Int,points_:Float Ptr)="__glewSharpenTexFuncSGIS"
rem
bbdoc: GL Const GL_SGIS_texture4D
endrem
Const GL_SGIS_texture4D=1
rem
bbdoc: GL Global glTexImage4DSGIS(target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,extent_:Int,border_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glTexImage4DSGIS(target_:Int,level_:Int,internalformat_:Int,width_:Int,height_:Int,depth_:Int,extent_:Int,border_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewTexImage4DSGIS"
rem
bbdoc: GL Global glTexSubImage4DSGIS(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,woffset_:Int,width_:Int,height_:Int,depth_:Int,extent_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glTexSubImage4DSGIS(target_:Int,level_:Int,xoffset_:Int,yoffset_:Int,zoffset_:Int,woffset_:Int,width_:Int,height_:Int,depth_:Int,extent_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewTexSubImage4DSGIS"
rem
bbdoc: GL Const GL_SGIS_texture_border_clamp
endrem
Const GL_SGIS_texture_border_clamp=1
rem
bbdoc: GL Const GL_CLAMP_TO_BORDER_SGIS
endrem
Const GL_CLAMP_TO_BORDER_SGIS=$812D
rem
bbdoc: GL Const GL_SGIS_texture_edge_clamp
endrem
Const GL_SGIS_texture_edge_clamp=1
rem
bbdoc: GL Const GL_CLAMP_TO_EDGE_SGIS
endrem
Const GL_CLAMP_TO_EDGE_SGIS=$812F
rem
bbdoc: GL Const GL_SGIS_texture_filter4
endrem
Const GL_SGIS_texture_filter4=1
rem
bbdoc: GL Global glGetTexFilterFuncSGIS(target_:Int,filter_:Int,weights_:Float Ptr)
endrem
Global glGetTexFilterFuncSGIS(target_:Int,filter_:Int,weights_:Float Ptr)="__glewGetTexFilterFuncSGIS"
rem
bbdoc: GL Global glTexFilterFuncSGIS(target_:Int,filter_:Int,n_:Int,weights_:Float Ptr)
endrem
Global glTexFilterFuncSGIS(target_:Int,filter_:Int,n_:Int,weights_:Float Ptr)="__glewTexFilterFuncSGIS"
rem
bbdoc: GL Const GL_SGIS_texture_lod
endrem
Const GL_SGIS_texture_lod=1
rem
bbdoc: GL Const GL_TEXTURE_MIN_LOD_SGIS
endrem
Const GL_TEXTURE_MIN_LOD_SGIS=$813A
rem
bbdoc: GL Const GL_TEXTURE_MAX_LOD_SGIS
endrem
Const GL_TEXTURE_MAX_LOD_SGIS=$813B
rem
bbdoc: GL Const GL_TEXTURE_BASE_LEVEL_SGIS
endrem
Const GL_TEXTURE_BASE_LEVEL_SGIS=$813C
rem
bbdoc: GL Const GL_TEXTURE_MAX_LEVEL_SGIS
endrem
Const GL_TEXTURE_MAX_LEVEL_SGIS=$813D
rem
bbdoc: GL Const GL_SGIS_texture_select
endrem
Const GL_SGIS_texture_select=1
rem
bbdoc: GL Const GL_SGIX_async
endrem
Const GL_SGIX_async=1
rem
bbdoc: GL Const GL_ASYNC_MARKER_SGIX
endrem
Const GL_ASYNC_MARKER_SGIX=$8329
rem
bbdoc: GL Global glAsyncMarkerSGIX(marker_:Int)
endrem
Global glAsyncMarkerSGIX(marker_:Int)="__glewAsyncMarkerSGIX"
rem
bbdoc: GL Global glDeleteAsyncMarkersSGIX(marker_:Int,range_:Int)
endrem
Global glDeleteAsyncMarkersSGIX(marker_:Int,range_:Int)="__glewDeleteAsyncMarkersSGIX"
rem
bbdoc: GL Global glFinishAsyncSGIX:Int(markerp_:Int Ptr)
endrem
Global glFinishAsyncSGIX:Int(markerp_:Int Ptr)="__glewFinishAsyncSGIX"
rem
bbdoc: GL Global glGenAsyncMarkersSGIX:Int(range_:Int)
endrem
Global glGenAsyncMarkersSGIX:Int(range_:Int)="__glewGenAsyncMarkersSGIX"
rem
bbdoc: GL Global glIsAsyncMarkerSGIX:Byte(marker_:Int)
endrem
Global glIsAsyncMarkerSGIX:Byte(marker_:Int)="__glewIsAsyncMarkerSGIX"
rem
bbdoc: GL Global glPollAsyncSGIX:Int(markerp_:Int Ptr)
endrem
Global glPollAsyncSGIX:Int(markerp_:Int Ptr)="__glewPollAsyncSGIX"
rem
bbdoc: GL Const GL_SGIX_async_histogram
endrem
Const GL_SGIX_async_histogram=1
rem
bbdoc: GL Const GL_ASYNC_HISTOGRAM_SGIX
endrem
Const GL_ASYNC_HISTOGRAM_SGIX=$832C
rem
bbdoc: GL Const GL_MAX_ASYNC_HISTOGRAM_SGIX
endrem
Const GL_MAX_ASYNC_HISTOGRAM_SGIX=$832D
rem
bbdoc: GL Const GL_SGIX_async_pixel
endrem
Const GL_SGIX_async_pixel=1
rem
bbdoc: GL Const GL_ASYNC_TEX_IMAGE_SGIX
endrem
Const GL_ASYNC_TEX_IMAGE_SGIX=$835C
rem
bbdoc: GL Const GL_ASYNC_DRAW_PIXELS_SGIX
endrem
Const GL_ASYNC_DRAW_PIXELS_SGIX=$835D
rem
bbdoc: GL Const GL_ASYNC_READ_PIXELS_SGIX
endrem
Const GL_ASYNC_READ_PIXELS_SGIX=$835E
rem
bbdoc: GL Const GL_MAX_ASYNC_TEX_IMAGE_SGIX
endrem
Const GL_MAX_ASYNC_TEX_IMAGE_SGIX=$835F
rem
bbdoc: GL Const GL_MAX_ASYNC_DRAW_PIXELS_SGIX
endrem
Const GL_MAX_ASYNC_DRAW_PIXELS_SGIX=$8360
rem
bbdoc: GL Const GL_MAX_ASYNC_READ_PIXELS_SGIX
endrem
Const GL_MAX_ASYNC_READ_PIXELS_SGIX=$8361
rem
bbdoc: GL Const GL_SGIX_blend_alpha_minmax
endrem
Const GL_SGIX_blend_alpha_minmax=1
rem
bbdoc: GL Const GL_ALPHA_MIN_SGIX
endrem
Const GL_ALPHA_MIN_SGIX=$8320
rem
bbdoc: GL Const GL_ALPHA_MAX_SGIX
endrem
Const GL_ALPHA_MAX_SGIX=$8321
rem
bbdoc: GL Const GL_SGIX_clipmap
endrem
Const GL_SGIX_clipmap=1
rem
bbdoc: GL Const GL_SGIX_convolution_accuracy
endrem
Const GL_SGIX_convolution_accuracy=1
rem
bbdoc: GL Const GL_CONVOLUTION_HINT_SGIX
endrem
Const GL_CONVOLUTION_HINT_SGIX=$8316
rem
bbdoc: GL Const GL_SGIX_depth_texture
endrem
Const GL_SGIX_depth_texture=1
rem
bbdoc: GL Const GL_DEPTH_COMPONENT16_SGIX
endrem
Const GL_DEPTH_COMPONENT16_SGIX=$81A5
rem
bbdoc: GL Const GL_DEPTH_COMPONENT24_SGIX
endrem
Const GL_DEPTH_COMPONENT24_SGIX=$81A6
rem
bbdoc: GL Const GL_DEPTH_COMPONENT32_SGIX
endrem
Const GL_DEPTH_COMPONENT32_SGIX=$81A7
rem
bbdoc: GL Const GL_SGIX_flush_raster
endrem
Const GL_SGIX_flush_raster=1
rem
bbdoc: GL Global glFlushRasterSGIX()
endrem
Global glFlushRasterSGIX()="__glewFlushRasterSGIX"
rem
bbdoc: GL Const GL_SGIX_fog_offset
endrem
Const GL_SGIX_fog_offset=1
rem
bbdoc: GL Const GL_FOG_OFFSET_SGIX
endrem
Const GL_FOG_OFFSET_SGIX=$8198
rem
bbdoc: GL Const GL_FOG_OFFSET_VALUE_SGIX
endrem
Const GL_FOG_OFFSET_VALUE_SGIX=$8199
rem
bbdoc: GL Const GL_SGIX_fog_texture
endrem
Const GL_SGIX_fog_texture=1
rem
bbdoc: GL Const GL_FOG_PATCHY_FACTOR_SGIX
endrem
Const GL_FOG_PATCHY_FACTOR_SGIX=0
rem
bbdoc: GL Const GL_FRAGMENT_FOG_SGIX
endrem
Const GL_FRAGMENT_FOG_SGIX=0
rem
bbdoc: GL Const GL_TEXTURE_FOG_SGIX
endrem
Const GL_TEXTURE_FOG_SGIX=0
rem
bbdoc: GL Global glTextureFogSGIX(pname_:Int)
endrem
Global glTextureFogSGIX(pname_:Int)="__glewTextureFogSGIX"
rem
bbdoc: GL Const GL_SGIX_fragment_specular_lighting
endrem
Const GL_SGIX_fragment_specular_lighting=1
rem
bbdoc: GL Global glFragmentColorMaterialSGIX(face_:Int,mode_:Int)
endrem
Global glFragmentColorMaterialSGIX(face_:Int,mode_:Int)="__glewFragmentColorMaterialSGIX"
rem
bbdoc: GL Global glFragmentLightModelfSGIX(pname_:Int,param_:Float)
endrem
Global glFragmentLightModelfSGIX(pname_:Int,param_:Float)="__glewFragmentLightModelfSGIX"
rem
bbdoc: GL Global glFragmentLightModelfvSGIX(pname_:Int,params_:Float Ptr)
endrem
Global glFragmentLightModelfvSGIX(pname_:Int,params_:Float Ptr)="__glewFragmentLightModelfvSGIX"
rem
bbdoc: GL Global glFragmentLightModeliSGIX(pname_:Int,param_:Int)
endrem
Global glFragmentLightModeliSGIX(pname_:Int,param_:Int)="__glewFragmentLightModeliSGIX"
rem
bbdoc: GL Global glFragmentLightModelivSGIX(pname_:Int,params_:Int Ptr)
endrem
Global glFragmentLightModelivSGIX(pname_:Int,params_:Int Ptr)="__glewFragmentLightModelivSGIX"
rem
bbdoc: GL Global glFragmentLightfSGIX(light_:Int,pname_:Int,param_:Float)
endrem
Global glFragmentLightfSGIX(light_:Int,pname_:Int,param_:Float)="__glewFragmentLightfSGIX"
rem
bbdoc: GL Global glFragmentLightfvSGIX(light_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glFragmentLightfvSGIX(light_:Int,pname_:Int,params_:Float Ptr)="__glewFragmentLightfvSGIX"
rem
bbdoc: GL Global glFragmentLightiSGIX(light_:Int,pname_:Int,param_:Int)
endrem
Global glFragmentLightiSGIX(light_:Int,pname_:Int,param_:Int)="__glewFragmentLightiSGIX"
rem
bbdoc: GL Global glFragmentLightivSGIX(light_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glFragmentLightivSGIX(light_:Int,pname_:Int,params_:Int Ptr)="__glewFragmentLightivSGIX"
rem
bbdoc: GL Global glFragmentMaterialfSGIX(face_:Int,pname_:Int,param_:Float)
endrem
Global glFragmentMaterialfSGIX(face_:Int,pname_:Int,param_:Float)="__glewFragmentMaterialfSGIX"
rem
bbdoc: GL Global glFragmentMaterialfvSGIX(face_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glFragmentMaterialfvSGIX(face_:Int,pname_:Int,params_:Float Ptr)="__glewFragmentMaterialfvSGIX"
rem
bbdoc: GL Global glFragmentMaterialiSGIX(face_:Int,pname_:Int,param_:Int)
endrem
Global glFragmentMaterialiSGIX(face_:Int,pname_:Int,param_:Int)="__glewFragmentMaterialiSGIX"
rem
bbdoc: GL Global glFragmentMaterialivSGIX(face_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glFragmentMaterialivSGIX(face_:Int,pname_:Int,params_:Int Ptr)="__glewFragmentMaterialivSGIX"
rem
bbdoc: GL Global glGetFragmentLightfvSGIX(light_:Int,value_:Int,data_:Float Ptr)
endrem
Global glGetFragmentLightfvSGIX(light_:Int,value_:Int,data_:Float Ptr)="__glewGetFragmentLightfvSGIX"
rem
bbdoc: GL Global glGetFragmentLightivSGIX(light_:Int,value_:Int,data_:Int Ptr)
endrem
Global glGetFragmentLightivSGIX(light_:Int,value_:Int,data_:Int Ptr)="__glewGetFragmentLightivSGIX"
rem
bbdoc: GL Global glGetFragmentMaterialfvSGIX(face_:Int,pname_:Int,data_:Float Ptr)
endrem
Global glGetFragmentMaterialfvSGIX(face_:Int,pname_:Int,data_:Float Ptr)="__glewGetFragmentMaterialfvSGIX"
rem
bbdoc: GL Global glGetFragmentMaterialivSGIX(face_:Int,pname_:Int,data_:Int Ptr)
endrem
Global glGetFragmentMaterialivSGIX(face_:Int,pname_:Int,data_:Int Ptr)="__glewGetFragmentMaterialivSGIX"
rem
bbdoc: GL Const GL_SGIX_framezoom
endrem
Const GL_SGIX_framezoom=1
rem
bbdoc: GL Global glFrameZoomSGIX(factor_:Int)
endrem
Global glFrameZoomSGIX(factor_:Int)="__glewFrameZoomSGIX"
rem
bbdoc: GL Const GL_SGIX_interlace
endrem
Const GL_SGIX_interlace=1
rem
bbdoc: GL Const GL_INTERLACE_SGIX
endrem
Const GL_INTERLACE_SGIX=$8094
rem
bbdoc: GL Const GL_SGIX_ir_instrument1
endrem
Const GL_SGIX_ir_instrument1=1
rem
bbdoc: GL Const GL_SGIX_list_priority
endrem
Const GL_SGIX_list_priority=1
rem
bbdoc: GL Const GL_SGIX_pixel_texture
endrem
Const GL_SGIX_pixel_texture=1
rem
bbdoc: GL Global glPixelTexGenSGIX(mode_:Int)
endrem
Global glPixelTexGenSGIX(mode_:Int)="__glewPixelTexGenSGIX"
rem
bbdoc: GL Const GL_SGIX_pixel_texture_bits
endrem
Const GL_SGIX_pixel_texture_bits=1
rem
bbdoc: GL Const GL_SGIX_reference_plane
endrem
Const GL_SGIX_reference_plane=1
rem
bbdoc: GL Global glReferencePlaneSGIX(equation_:Double Ptr)
endrem
Global glReferencePlaneSGIX(equation_:Double Ptr)="__glewReferencePlaneSGIX"
rem
bbdoc: GL Const GL_SGIX_resample
endrem
Const GL_SGIX_resample=1
rem
bbdoc: GL Const GL_PACK_RESAMPLE_SGIX
endrem
Const GL_PACK_RESAMPLE_SGIX=$842E
rem
bbdoc: GL Const GL_UNPACK_RESAMPLE_SGIX
endrem
Const GL_UNPACK_RESAMPLE_SGIX=$842F
rem
bbdoc: GL Const GL_RESAMPLE_DECIMATE_SGIX
endrem
Const GL_RESAMPLE_DECIMATE_SGIX=$8430
rem
bbdoc: GL Const GL_RESAMPLE_REPLICATE_SGIX
endrem
Const GL_RESAMPLE_REPLICATE_SGIX=$8433
rem
bbdoc: GL Const GL_RESAMPLE_ZERO_FILL_SGIX
endrem
Const GL_RESAMPLE_ZERO_FILL_SGIX=$8434
rem
bbdoc: GL Const GL_SGIX_shadow
endrem
Const GL_SGIX_shadow=1
rem
bbdoc: GL Const GL_TEXTURE_COMPARE_SGIX
endrem
Const GL_TEXTURE_COMPARE_SGIX=$819A
rem
bbdoc: GL Const GL_TEXTURE_COMPARE_OPERATOR_SGIX
endrem
Const GL_TEXTURE_COMPARE_OPERATOR_SGIX=$819B
rem
bbdoc: GL Const GL_TEXTURE_LEQUAL_R_SGIX
endrem
Const GL_TEXTURE_LEQUAL_R_SGIX=$819C
rem
bbdoc: GL Const GL_TEXTURE_GEQUAL_R_SGIX
endrem
Const GL_TEXTURE_GEQUAL_R_SGIX=$819D
rem
bbdoc: GL Const GL_SGIX_shadow_ambient
endrem
Const GL_SGIX_shadow_ambient=1
rem
bbdoc: GL Const GL_SHADOW_AMBIENT_SGIX
endrem
Const GL_SHADOW_AMBIENT_SGIX=$80BF
rem
bbdoc: GL Const GL_SGIX_sprite
endrem
Const GL_SGIX_sprite=1
rem
bbdoc: GL Global glSpriteParameterfSGIX(pname_:Int,param_:Float)
endrem
Global glSpriteParameterfSGIX(pname_:Int,param_:Float)="__glewSpriteParameterfSGIX"
rem
bbdoc: GL Global glSpriteParameterfvSGIX(pname_:Int,params_:Float Ptr)
endrem
Global glSpriteParameterfvSGIX(pname_:Int,params_:Float Ptr)="__glewSpriteParameterfvSGIX"
rem
bbdoc: GL Global glSpriteParameteriSGIX(pname_:Int,param_:Int)
endrem
Global glSpriteParameteriSGIX(pname_:Int,param_:Int)="__glewSpriteParameteriSGIX"
rem
bbdoc: GL Global glSpriteParameterivSGIX(pname_:Int,params_:Int Ptr)
endrem
Global glSpriteParameterivSGIX(pname_:Int,params_:Int Ptr)="__glewSpriteParameterivSGIX"
rem
bbdoc: GL Const GL_SGIX_tag_sample_buffer
endrem
Const GL_SGIX_tag_sample_buffer=1
rem
bbdoc: GL Global glTagSampleBufferSGIX()
endrem
Global glTagSampleBufferSGIX()="__glewTagSampleBufferSGIX"
rem
bbdoc: GL Const GL_SGIX_texture_add_env
endrem
Const GL_SGIX_texture_add_env=1
rem
bbdoc: GL Const GL_SGIX_texture_coordinate_clamp
endrem
Const GL_SGIX_texture_coordinate_clamp=1
rem
bbdoc: GL Const GL_TEXTURE_MAX_CLAMP_S_SGIX
endrem
Const GL_TEXTURE_MAX_CLAMP_S_SGIX=$8369
rem
bbdoc: GL Const GL_TEXTURE_MAX_CLAMP_T_SGIX
endrem
Const GL_TEXTURE_MAX_CLAMP_T_SGIX=$836A
rem
bbdoc: GL Const GL_TEXTURE_MAX_CLAMP_R_SGIX
endrem
Const GL_TEXTURE_MAX_CLAMP_R_SGIX=$836B
rem
bbdoc: GL Const GL_SGIX_texture_lod_bias
endrem
Const GL_SGIX_texture_lod_bias=1
rem
bbdoc: GL Const GL_SGIX_texture_multi_buffer
endrem
Const GL_SGIX_texture_multi_buffer=1
rem
bbdoc: GL Const GL_TEXTURE_MULTI_BUFFER_HINT_SGIX
endrem
Const GL_TEXTURE_MULTI_BUFFER_HINT_SGIX=$812E
rem
bbdoc: GL Const GL_SGIX_texture_range
endrem
Const GL_SGIX_texture_range=1
rem
bbdoc: GL Const GL_RGB_SIGNED_SGIX
endrem
Const GL_RGB_SIGNED_SGIX=$85E0
rem
bbdoc: GL Const GL_RGBA_SIGNED_SGIX
endrem
Const GL_RGBA_SIGNED_SGIX=$85E1
rem
bbdoc: GL Const GL_ALPHA_SIGNED_SGIX
endrem
Const GL_ALPHA_SIGNED_SGIX=$85E2
rem
bbdoc: GL Const GL_LUMINANCE_SIGNED_SGIX
endrem
Const GL_LUMINANCE_SIGNED_SGIX=$85E3
rem
bbdoc: GL Const GL_INTENSITY_SIGNED_SGIX
endrem
Const GL_INTENSITY_SIGNED_SGIX=$85E4
rem
bbdoc: GL Const GL_LUMINANCE_ALPHA_SIGNED_SGIX
endrem
Const GL_LUMINANCE_ALPHA_SIGNED_SGIX=$85E5
rem
bbdoc: GL Const GL_RGB16_SIGNED_SGIX
endrem
Const GL_RGB16_SIGNED_SGIX=$85E6
rem
bbdoc: GL Const GL_RGBA16_SIGNED_SGIX
endrem
Const GL_RGBA16_SIGNED_SGIX=$85E7
rem
bbdoc: GL Const GL_ALPHA16_SIGNED_SGIX
endrem
Const GL_ALPHA16_SIGNED_SGIX=$85E8
rem
bbdoc: GL Const GL_LUMINANCE16_SIGNED_SGIX
endrem
Const GL_LUMINANCE16_SIGNED_SGIX=$85E9
rem
bbdoc: GL Const GL_INTENSITY16_SIGNED_SGIX
endrem
Const GL_INTENSITY16_SIGNED_SGIX=$85EA
rem
bbdoc: GL Const GL_LUMINANCE16_ALPHA16_SIGNED_SGIX
endrem
Const GL_LUMINANCE16_ALPHA16_SIGNED_SGIX=$85EB
rem
bbdoc: GL Const GL_RGB_EXTENDED_RANGE_SGIX
endrem
Const GL_RGB_EXTENDED_RANGE_SGIX=$85EC
rem
bbdoc: GL Const GL_RGBA_EXTENDED_RANGE_SGIX
endrem
Const GL_RGBA_EXTENDED_RANGE_SGIX=$85ED
rem
bbdoc: GL Const GL_ALPHA_EXTENDED_RANGE_SGIX
endrem
Const GL_ALPHA_EXTENDED_RANGE_SGIX=$85EE
rem
bbdoc: GL Const GL_LUMINANCE_EXTENDED_RANGE_SGIX
endrem
Const GL_LUMINANCE_EXTENDED_RANGE_SGIX=$85EF
rem
bbdoc: GL Const GL_INTENSITY_EXTENDED_RANGE_SGIX
endrem
Const GL_INTENSITY_EXTENDED_RANGE_SGIX=$85F0
rem
bbdoc: GL Const GL_LUMINANCE_ALPHA_EXTENDED_RANGE_SGIX
endrem
Const GL_LUMINANCE_ALPHA_EXTENDED_RANGE_SGIX=$85F1
rem
bbdoc: GL Const GL_RGB16_EXTENDED_RANGE_SGIX
endrem
Const GL_RGB16_EXTENDED_RANGE_SGIX=$85F2
rem
bbdoc: GL Const GL_RGBA16_EXTENDED_RANGE_SGIX
endrem
Const GL_RGBA16_EXTENDED_RANGE_SGIX=$85F3
rem
bbdoc: GL Const GL_ALPHA16_EXTENDED_RANGE_SGIX
endrem
Const GL_ALPHA16_EXTENDED_RANGE_SGIX=$85F4
rem
bbdoc: GL Const GL_LUMINANCE16_EXTENDED_RANGE_SGIX
endrem
Const GL_LUMINANCE16_EXTENDED_RANGE_SGIX=$85F5
rem
bbdoc: GL Const GL_INTENSITY16_EXTENDED_RANGE_SGIX
endrem
Const GL_INTENSITY16_EXTENDED_RANGE_SGIX=$85F6
rem
bbdoc: GL Const GL_LUMINANCE16_ALPHA16_EXTENDED_RANGE_SGIX
endrem
Const GL_LUMINANCE16_ALPHA16_EXTENDED_RANGE_SGIX=$85F7
rem
bbdoc: GL Const GL_MIN_LUMINANCE_SGIS
endrem
Const GL_MIN_LUMINANCE_SGIS=$85F8
rem
bbdoc: GL Const GL_MAX_LUMINANCE_SGIS
endrem
Const GL_MAX_LUMINANCE_SGIS=$85F9
rem
bbdoc: GL Const GL_MIN_INTENSITY_SGIS
endrem
Const GL_MIN_INTENSITY_SGIS=$85FA
rem
bbdoc: GL Const GL_MAX_INTENSITY_SGIS
endrem
Const GL_MAX_INTENSITY_SGIS=$85FB
rem
bbdoc: GL Const GL_SGIX_texture_scale_bias
endrem
Const GL_SGIX_texture_scale_bias=1
rem
bbdoc: GL Const GL_POST_TEXTURE_FILTER_BIAS_SGIX
endrem
Const GL_POST_TEXTURE_FILTER_BIAS_SGIX=$8179
rem
bbdoc: GL Const GL_POST_TEXTURE_FILTER_SCALE_SGIX
endrem
Const GL_POST_TEXTURE_FILTER_SCALE_SGIX=$817A
rem
bbdoc: GL Const GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX
endrem
Const GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX=$817B
rem
bbdoc: GL Const GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX
endrem
Const GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX=$817C
rem
bbdoc: GL Const GL_SGIX_vertex_preclip
endrem
Const GL_SGIX_vertex_preclip=1
rem
bbdoc: GL Const GL_VERTEX_PRECLIP_SGIX
endrem
Const GL_VERTEX_PRECLIP_SGIX=$83EE
rem
bbdoc: GL Const GL_VERTEX_PRECLIP_HINT_SGIX
endrem
Const GL_VERTEX_PRECLIP_HINT_SGIX=$83EF
rem
bbdoc: GL Const GL_SGIX_vertex_preclip_hint
endrem
Const GL_SGIX_vertex_preclip_hint=1
rem
bbdoc: GL Const GL_SGIX_ycrcb
endrem
Const GL_SGIX_ycrcb=1
rem
bbdoc: GL Const GL_SGI_color_matrix
endrem
Const GL_SGI_color_matrix=1
rem
bbdoc: GL Const GL_COLOR_MATRIX_SGI
endrem
Const GL_COLOR_MATRIX_SGI=$80B1
rem
bbdoc: GL Const GL_COLOR_MATRIX_STACK_DEPTH_SGI
endrem
Const GL_COLOR_MATRIX_STACK_DEPTH_SGI=$80B2
rem
bbdoc: GL Const GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI
endrem
Const GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI=$80B3
rem
bbdoc: GL Const GL_POST_COLOR_MATRIX_RED_SCALE_SGI
endrem
Const GL_POST_COLOR_MATRIX_RED_SCALE_SGI=$80B4
rem
bbdoc: GL Const GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI
endrem
Const GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI=$80B5
rem
bbdoc: GL Const GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI
endrem
Const GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI=$80B6
rem
bbdoc: GL Const GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI
endrem
Const GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI=$80B7
rem
bbdoc: GL Const GL_POST_COLOR_MATRIX_RED_BIAS_SGI
endrem
Const GL_POST_COLOR_MATRIX_RED_BIAS_SGI=$80B8
rem
bbdoc: GL Const GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI
endrem
Const GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI=$80B9
rem
bbdoc: GL Const GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI
endrem
Const GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI=$80BA
rem
bbdoc: GL Const GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI
endrem
Const GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI=$80BB
rem
bbdoc: GL Const GL_SGI_color_table
endrem
Const GL_SGI_color_table=1
rem
bbdoc: GL Const GL_COLOR_TABLE_SGI
endrem
Const GL_COLOR_TABLE_SGI=$80D0
rem
bbdoc: GL Const GL_POST_CONVOLUTION_COLOR_TABLE_SGI
endrem
Const GL_POST_CONVOLUTION_COLOR_TABLE_SGI=$80D1
rem
bbdoc: GL Const GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI
endrem
Const GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI=$80D2
rem
bbdoc: GL Const GL_PROXY_COLOR_TABLE_SGI
endrem
Const GL_PROXY_COLOR_TABLE_SGI=$80D3
rem
bbdoc: GL Const GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI
endrem
Const GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI=$80D4
rem
bbdoc: GL Const GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI
endrem
Const GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI=$80D5
rem
bbdoc: GL Const GL_COLOR_TABLE_SCALE_SGI
endrem
Const GL_COLOR_TABLE_SCALE_SGI=$80D6
rem
bbdoc: GL Const GL_COLOR_TABLE_BIAS_SGI
endrem
Const GL_COLOR_TABLE_BIAS_SGI=$80D7
rem
bbdoc: GL Const GL_COLOR_TABLE_FORMAT_SGI
endrem
Const GL_COLOR_TABLE_FORMAT_SGI=$80D8
rem
bbdoc: GL Const GL_COLOR_TABLE_WIDTH_SGI
endrem
Const GL_COLOR_TABLE_WIDTH_SGI=$80D9
rem
bbdoc: GL Const GL_COLOR_TABLE_RED_SIZE_SGI
endrem
Const GL_COLOR_TABLE_RED_SIZE_SGI=$80DA
rem
bbdoc: GL Const GL_COLOR_TABLE_GREEN_SIZE_SGI
endrem
Const GL_COLOR_TABLE_GREEN_SIZE_SGI=$80DB
rem
bbdoc: GL Const GL_COLOR_TABLE_BLUE_SIZE_SGI
endrem
Const GL_COLOR_TABLE_BLUE_SIZE_SGI=$80DC
rem
bbdoc: GL Const GL_COLOR_TABLE_ALPHA_SIZE_SGI
endrem
Const GL_COLOR_TABLE_ALPHA_SIZE_SGI=$80DD
rem
bbdoc: GL Const GL_COLOR_TABLE_LUMINANCE_SIZE_SGI
endrem
Const GL_COLOR_TABLE_LUMINANCE_SIZE_SGI=$80DE
rem
bbdoc: GL Const GL_COLOR_TABLE_INTENSITY_SIZE_SGI
endrem
Const GL_COLOR_TABLE_INTENSITY_SIZE_SGI=$80DF
rem
bbdoc: GL Global glColorTableParameterfvSGI(target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glColorTableParameterfvSGI(target_:Int,pname_:Int,params_:Float Ptr)="__glewColorTableParameterfvSGI"
rem
bbdoc: GL Global glColorTableParameterivSGI(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glColorTableParameterivSGI(target_:Int,pname_:Int,params_:Int Ptr)="__glewColorTableParameterivSGI"
rem
bbdoc: GL Global glColorTableSGI(target_:Int,internalformat_:Int,width_:Int,format_:Int,type_:Int,table_:Byte Ptr)
endrem
Global glColorTableSGI(target_:Int,internalformat_:Int,width_:Int,format_:Int,type_:Int,table_:Byte Ptr)="__glewColorTableSGI"
rem
bbdoc: GL Global glCopyColorTableSGI(target_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int)
endrem
Global glCopyColorTableSGI(target_:Int,internalformat_:Int,x_:Int,y_:Int,width_:Int)="__glewCopyColorTableSGI"
rem
bbdoc: GL Global glGetColorTableParameterfvSGI(target_:Int,pname_:Int,params_:Float Ptr)
endrem
Global glGetColorTableParameterfvSGI(target_:Int,pname_:Int,params_:Float Ptr)="__glewGetColorTableParameterfvSGI"
rem
bbdoc: GL Global glGetColorTableParameterivSGI(target_:Int,pname_:Int,params_:Int Ptr)
endrem
Global glGetColorTableParameterivSGI(target_:Int,pname_:Int,params_:Int Ptr)="__glewGetColorTableParameterivSGI"
rem
bbdoc: GL Global glGetColorTableSGI(target_:Int,format_:Int,type_:Int,table_:Byte Ptr)
endrem
Global glGetColorTableSGI(target_:Int,format_:Int,type_:Int,table_:Byte Ptr)="__glewGetColorTableSGI"
rem
bbdoc: GL Const GL_SGI_texture_color_table
endrem
Const GL_SGI_texture_color_table=1
rem
bbdoc: GL Const GL_TEXTURE_COLOR_TABLE_SGI
endrem
Const GL_TEXTURE_COLOR_TABLE_SGI=$80BC
rem
bbdoc: GL Const GL_PROXY_TEXTURE_COLOR_TABLE_SGI
endrem
Const GL_PROXY_TEXTURE_COLOR_TABLE_SGI=$80BD
rem
bbdoc: GL Const GL_SUNX_constant_data
endrem
Const GL_SUNX_constant_data=1
rem
bbdoc: GL Const GL_UNPACK_CONSTANT_DATA_SUNX
endrem
Const GL_UNPACK_CONSTANT_DATA_SUNX=$81D5
rem
bbdoc: GL Const GL_TEXTURE_CONSTANT_DATA_SUNX
endrem
Const GL_TEXTURE_CONSTANT_DATA_SUNX=$81D6
rem
bbdoc: GL Global glFinishTextureSUNX()
endrem
Global glFinishTextureSUNX()="__glewFinishTextureSUNX"
rem
bbdoc: GL Const GL_SUN_convolution_border_modes
endrem
Const GL_SUN_convolution_border_modes=1
rem
bbdoc: GL Const GL_WRAP_BORDER_SUN
endrem
Const GL_WRAP_BORDER_SUN=$81D4
rem
bbdoc: GL Const GL_SUN_global_alpha
endrem
Const GL_SUN_global_alpha=1
rem
bbdoc: GL Const GL_GLOBAL_ALPHA_SUN
endrem
Const GL_GLOBAL_ALPHA_SUN=$81D9
rem
bbdoc: GL Const GL_GLOBAL_ALPHA_FACTOR_SUN
endrem
Const GL_GLOBAL_ALPHA_FACTOR_SUN=$81DA
rem
bbdoc: GL Global glGlobalAlphaFactorbSUN(factor_:Byte)
endrem
Global glGlobalAlphaFactorbSUN(factor_:Byte)="__glewGlobalAlphaFactorbSUN"
rem
bbdoc: GL Global glGlobalAlphaFactordSUN(factor_:Double)
endrem
Global glGlobalAlphaFactordSUN(factor_:Double)="__glewGlobalAlphaFactordSUN"
rem
bbdoc: GL Global glGlobalAlphaFactorfSUN(factor_:Float)
endrem
Global glGlobalAlphaFactorfSUN(factor_:Float)="__glewGlobalAlphaFactorfSUN"
rem
bbdoc: GL Global glGlobalAlphaFactoriSUN(factor_:Int)
endrem
Global glGlobalAlphaFactoriSUN(factor_:Int)="__glewGlobalAlphaFactoriSUN"
rem
bbdoc: GL Global glGlobalAlphaFactorsSUN(factor_:Short)
endrem
Global glGlobalAlphaFactorsSUN(factor_:Short)="__glewGlobalAlphaFactorsSUN"
rem
bbdoc: GL Global glGlobalAlphaFactorubSUN(factor_:Byte)
endrem
Global glGlobalAlphaFactorubSUN(factor_:Byte)="__glewGlobalAlphaFactorubSUN"
rem
bbdoc: GL Global glGlobalAlphaFactoruiSUN(factor_:Int)
endrem
Global glGlobalAlphaFactoruiSUN(factor_:Int)="__glewGlobalAlphaFactoruiSUN"
rem
bbdoc: GL Global glGlobalAlphaFactorusSUN(factor_:Short)
endrem
Global glGlobalAlphaFactorusSUN(factor_:Short)="__glewGlobalAlphaFactorusSUN"
rem
bbdoc: GL Const GL_SUN_mesh_array
endrem
Const GL_SUN_mesh_array=1
rem
bbdoc: GL Const GL_QUAD_MESH_SUN
endrem
Const GL_QUAD_MESH_SUN=$8614
rem
bbdoc: GL Const GL_TRIANGLE_MESH_SUN
endrem
Const GL_TRIANGLE_MESH_SUN=$8615
rem
bbdoc: GL Const GL_SUN_read_video_pixels
endrem
Const GL_SUN_read_video_pixels=1
rem
bbdoc: GL Global glReadVideoPixelsSUN(x_:Int,y_:Int,width_:Int,height_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)
endrem
Global glReadVideoPixelsSUN(x_:Int,y_:Int,width_:Int,height_:Int,format_:Int,type_:Int,pixels_:Byte Ptr)="__glewReadVideoPixelsSUN"
rem
bbdoc: GL Const GL_SUN_slice_accum
endrem
Const GL_SUN_slice_accum=1
rem
bbdoc: GL Const GL_SLICE_ACCUM_SUN
endrem
Const GL_SLICE_ACCUM_SUN=$85CC
rem
bbdoc: GL Const GL_SUN_triangle_list
endrem
Const GL_SUN_triangle_list=1
rem
bbdoc: GL Const GL_RESTART_SUN
endrem
Const GL_RESTART_SUN=$01
rem
bbdoc: GL Const GL_REPLACE_MIDDLE_SUN
endrem
Const GL_REPLACE_MIDDLE_SUN=$02
rem
bbdoc: GL Const GL_REPLACE_OLDEST_SUN
endrem
Const GL_REPLACE_OLDEST_SUN=$03
rem
bbdoc: GL Const GL_TRIANGLE_LIST_SUN
endrem
Const GL_TRIANGLE_LIST_SUN=$81D7
rem
bbdoc: GL Const GL_REPLACEMENT_CODE_SUN
endrem
Const GL_REPLACEMENT_CODE_SUN=$81D8
rem
bbdoc: GL Const GL_REPLACEMENT_CODE_ARRAY_SUN
endrem
Const GL_REPLACEMENT_CODE_ARRAY_SUN=$85C0
rem
bbdoc: GL Const GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN
endrem
Const GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN=$85C1
rem
bbdoc: GL Const GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN
endrem
Const GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN=$85C2
rem
bbdoc: GL Const GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN
endrem
Const GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN=$85C3
rem
bbdoc: GL Const GL_R1UI_V3F_SUN
endrem
Const GL_R1UI_V3F_SUN=$85C4
rem
bbdoc: GL Const GL_R1UI_C4UB_V3F_SUN
endrem
Const GL_R1UI_C4UB_V3F_SUN=$85C5
rem
bbdoc: GL Const GL_R1UI_C3F_V3F_SUN
endrem
Const GL_R1UI_C3F_V3F_SUN=$85C6
rem
bbdoc: GL Const GL_R1UI_N3F_V3F_SUN
endrem
Const GL_R1UI_N3F_V3F_SUN=$85C7
rem
bbdoc: GL Const GL_R1UI_C4F_N3F_V3F_SUN
endrem
Const GL_R1UI_C4F_N3F_V3F_SUN=$85C8
rem
bbdoc: GL Const GL_R1UI_T2F_V3F_SUN
endrem
Const GL_R1UI_T2F_V3F_SUN=$85C9
rem
bbdoc: GL Const GL_R1UI_T2F_N3F_V3F_SUN
endrem
Const GL_R1UI_T2F_N3F_V3F_SUN=$85CA
rem
bbdoc: GL Const GL_R1UI_T2F_C4F_N3F_V3F_SUN
endrem
Const GL_R1UI_T2F_C4F_N3F_V3F_SUN=$85CB
rem
bbdoc: GL Global glReplacementCodePointerSUN(type_:Int,stride_:Int,pointer_:Byte Ptr)
endrem
Global glReplacementCodePointerSUN(type_:Int,stride_:Int,pointer_:Byte Ptr)="__glewReplacementCodePointerSUN"
rem
bbdoc: GL Global glReplacementCodeubSUN(code_:Byte)
endrem
Global glReplacementCodeubSUN(code_:Byte)="__glewReplacementCodeubSUN"
rem
bbdoc: GL Global glReplacementCodeubvSUN(code_:Byte Ptr)
endrem
Global glReplacementCodeubvSUN(code_:Byte Ptr)="__glewReplacementCodeubvSUN"
rem
bbdoc: GL Global glReplacementCodeuiSUN(code_:Int)
endrem
Global glReplacementCodeuiSUN(code_:Int)="__glewReplacementCodeuiSUN"
rem
bbdoc: GL Global glReplacementCodeuivSUN(code_:Int Ptr)
endrem
Global glReplacementCodeuivSUN(code_:Int Ptr)="__glewReplacementCodeuivSUN"
rem
bbdoc: GL Global glReplacementCodeusSUN(code_:Short)
endrem
Global glReplacementCodeusSUN(code_:Short)="__glewReplacementCodeusSUN"
rem
bbdoc: GL Global glReplacementCodeusvSUN(code_:Short Ptr)
endrem
Global glReplacementCodeusvSUN(code_:Short Ptr)="__glewReplacementCodeusvSUN"
rem
bbdoc: GL Const GL_SUN_vertex
endrem
Const GL_SUN_vertex=1
rem
bbdoc: GL Global glColor3fVertex3fSUN(r_:Float,g_:Float,b_:Float,x_:Float,y_:Float,z_:Float)
endrem
Global glColor3fVertex3fSUN(r_:Float,g_:Float,b_:Float,x_:Float,y_:Float,z_:Float)="__glewColor3fVertex3fSUN"
rem
bbdoc: GL Global glColor3fVertex3fvSUN(c_:Float Ptr,v_:Float Ptr)
endrem
Global glColor3fVertex3fvSUN(c_:Float Ptr,v_:Float Ptr)="__glewColor3fVertex3fvSUN"
rem
bbdoc: GL Global glColor4fNormal3fVertex3fSUN(r_:Float,g_:Float,b_:Float,a_:Float,nx_:Float,ny_:Float,nz_:Float,x_:Float,y_:Float,z_:Float)
endrem
Global glColor4fNormal3fVertex3fSUN(r_:Float,g_:Float,b_:Float,a_:Float,nx_:Float,ny_:Float,nz_:Float,x_:Float,y_:Float,z_:Float)="__glewColor4fNormal3fVertex3fSUN"
rem
bbdoc: GL Global glColor4fNormal3fVertex3fvSUN(c_:Float Ptr,n_:Float Ptr,v_:Float Ptr)
endrem
Global glColor4fNormal3fVertex3fvSUN(c_:Float Ptr,n_:Float Ptr,v_:Float Ptr)="__glewColor4fNormal3fVertex3fvSUN"
rem
bbdoc: GL Global glColor4ubVertex2fSUN(r_:Byte,g_:Byte,b_:Byte,a_:Byte,x_:Float,y_:Float)
endrem
Global glColor4ubVertex2fSUN(r_:Byte,g_:Byte,b_:Byte,a_:Byte,x_:Float,y_:Float)="__glewColor4ubVertex2fSUN"
rem
bbdoc: GL Global glColor4ubVertex2fvSUN(c_:Byte Ptr,v_:Float Ptr)
endrem
Global glColor4ubVertex2fvSUN(c_:Byte Ptr,v_:Float Ptr)="__glewColor4ubVertex2fvSUN"
rem
bbdoc: GL Global glColor4ubVertex3fSUN(r_:Byte,g_:Byte,b_:Byte,a_:Byte,x_:Float,y_:Float,z_:Float)
endrem
Global glColor4ubVertex3fSUN(r_:Byte,g_:Byte,b_:Byte,a_:Byte,x_:Float,y_:Float,z_:Float)="__glewColor4ubVertex3fSUN"
rem
bbdoc: GL Global glColor4ubVertex3fvSUN(c_:Byte Ptr,v_:Float Ptr)
endrem
Global glColor4ubVertex3fvSUN(c_:Byte Ptr,v_:Float Ptr)="__glewColor4ubVertex3fvSUN"
rem
bbdoc: GL Global glNormal3fVertex3fSUN(nx_:Float,ny_:Float,nz_:Float,x_:Float,y_:Float,z_:Float)
endrem
Global glNormal3fVertex3fSUN(nx_:Float,ny_:Float,nz_:Float,x_:Float,y_:Float,z_:Float)="__glewNormal3fVertex3fSUN"
rem
bbdoc: GL Global glNormal3fVertex3fvSUN(n_:Float Ptr,v_:Float Ptr)
endrem
Global glNormal3fVertex3fvSUN(n_:Float Ptr,v_:Float Ptr)="__glewNormal3fVertex3fvSUN"
rem
bbdoc: GL Global glReplacementCodeuiColor3fVertex3fSUN(rc_:Int,r_:Float,g_:Float,b_:Float,x_:Float,y_:Float,z_:Float)
endrem
Global glReplacementCodeuiColor3fVertex3fSUN(rc_:Int,r_:Float,g_:Float,b_:Float,x_:Float,y_:Float,z_:Float)="__glewReplacementCodeuiColor3fVertex3fSUN"
rem
bbdoc: GL Global glReplacementCodeuiColor3fVertex3fvSUN(rc_:Int Ptr,c_:Float Ptr,v_:Float Ptr)
endrem
Global glReplacementCodeuiColor3fVertex3fvSUN(rc_:Int Ptr,c_:Float Ptr,v_:Float Ptr)="__glewReplacementCodeuiColor3fVertex3fvSUN"
rem
bbdoc: GL Global glReplacementCodeuiColor4fNormal3fVertex3fSUN(rc_:Int,r_:Float,g_:Float,b_:Float,a_:Float,nx_:Float,ny_:Float,nz_:Float,x_:Float,y_:Float,z_:Float)
endrem
Global glReplacementCodeuiColor4fNormal3fVertex3fSUN(rc_:Int,r_:Float,g_:Float,b_:Float,a_:Float,nx_:Float,ny_:Float,nz_:Float,x_:Float,y_:Float,z_:Float)="__glewReplacementCodeuiColor4fNormal3fVertex3fSUN"
rem
bbdoc: GL Global glReplacementCodeuiColor4fNormal3fVertex3fvSUN(rc_:Int Ptr,c_:Float Ptr,n_:Float Ptr,v_:Float Ptr)
endrem
Global glReplacementCodeuiColor4fNormal3fVertex3fvSUN(rc_:Int Ptr,c_:Float Ptr,n_:Float Ptr,v_:Float Ptr)="__glewReplacementCodeuiColor4fNormal3fVertex3fvSUN"
rem
bbdoc: GL Global glReplacementCodeuiColor4ubVertex3fSUN(rc_:Int,r_:Byte,g_:Byte,b_:Byte,a_:Byte,x_:Float,y_:Float,z_:Float)
endrem
Global glReplacementCodeuiColor4ubVertex3fSUN(rc_:Int,r_:Byte,g_:Byte,b_:Byte,a_:Byte,x_:Float,y_:Float,z_:Float)="__glewReplacementCodeuiColor4ubVertex3fSUN"
rem
bbdoc: GL Global glReplacementCodeuiColor4ubVertex3fvSUN(rc_:Int Ptr,c_:Byte Ptr,v_:Float Ptr)
endrem
Global glReplacementCodeuiColor4ubVertex3fvSUN(rc_:Int Ptr,c_:Byte Ptr,v_:Float Ptr)="__glewReplacementCodeuiColor4ubVertex3fvSUN"
rem
bbdoc: GL Global glReplacementCodeuiNormal3fVertex3fSUN(rc_:Int,nx_:Float,ny_:Float,nz_:Float,x_:Float,y_:Float,z_:Float)
endrem
Global glReplacementCodeuiNormal3fVertex3fSUN(rc_:Int,nx_:Float,ny_:Float,nz_:Float,x_:Float,y_:Float,z_:Float)="__glewReplacementCodeuiNormal3fVertex3fSUN"
rem
bbdoc: GL Global glReplacementCodeuiNormal3fVertex3fvSUN(rc_:Int Ptr,n_:Float Ptr,v_:Float Ptr)
endrem
Global glReplacementCodeuiNormal3fVertex3fvSUN(rc_:Int Ptr,n_:Float Ptr,v_:Float Ptr)="__glewReplacementCodeuiNormal3fVertex3fvSUN"
rem
bbdoc: GL Global glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN(rc_:Int,s_:Float,t_:Float,r_:Float,g_:Float,b_:Float,a_:Float,nx_:Float,ny_:Float,nz_:Float,x_:Float,y_:Float,z_:Float)
endrem
Global glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN(rc_:Int,s_:Float,t_:Float,r_:Float,g_:Float,b_:Float,a_:Float,nx_:Float,ny_:Float,nz_:Float,x_:Float,y_:Float,z_:Float)="__glewReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN"
rem
bbdoc: GL Global glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN(rc_:Int Ptr,tc_:Float Ptr,c_:Float Ptr,n_:Float Ptr,v_:Float Ptr)
endrem
Global glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN(rc_:Int Ptr,tc_:Float Ptr,c_:Float Ptr,n_:Float Ptr,v_:Float Ptr)="__glewReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN"
rem
bbdoc: GL Global glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN(rc_:Int,s_:Float,t_:Float,nx_:Float,ny_:Float,nz_:Float,x_:Float,y_:Float,z_:Float)
endrem
Global glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN(rc_:Int,s_:Float,t_:Float,nx_:Float,ny_:Float,nz_:Float,x_:Float,y_:Float,z_:Float)="__glewReplacementCodeuiTexCoord2fNormal3fVertex3fSUN"
rem
bbdoc: GL Global glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN(rc_:Int Ptr,tc_:Float Ptr,n_:Float Ptr,v_:Float Ptr)
endrem
Global glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN(rc_:Int Ptr,tc_:Float Ptr,n_:Float Ptr,v_:Float Ptr)="__glewReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN"
rem
bbdoc: GL Global glReplacementCodeuiTexCoord2fVertex3fSUN(rc_:Int,s_:Float,t_:Float,x_:Float,y_:Float,z_:Float)
endrem
Global glReplacementCodeuiTexCoord2fVertex3fSUN(rc_:Int,s_:Float,t_:Float,x_:Float,y_:Float,z_:Float)="__glewReplacementCodeuiTexCoord2fVertex3fSUN"
rem
bbdoc: GL Global glReplacementCodeuiTexCoord2fVertex3fvSUN(rc_:Int Ptr,tc_:Float Ptr,v_:Float Ptr)
endrem
Global glReplacementCodeuiTexCoord2fVertex3fvSUN(rc_:Int Ptr,tc_:Float Ptr,v_:Float Ptr)="__glewReplacementCodeuiTexCoord2fVertex3fvSUN"
rem
bbdoc: GL Global glReplacementCodeuiVertex3fSUN(rc_:Int,x_:Float,y_:Float,z_:Float)
endrem
Global glReplacementCodeuiVertex3fSUN(rc_:Int,x_:Float,y_:Float,z_:Float)="__glewReplacementCodeuiVertex3fSUN"
rem
bbdoc: GL Global glReplacementCodeuiVertex3fvSUN(rc_:Int Ptr,v_:Float Ptr)
endrem
Global glReplacementCodeuiVertex3fvSUN(rc_:Int Ptr,v_:Float Ptr)="__glewReplacementCodeuiVertex3fvSUN"
rem
bbdoc: GL Global glTexCoord2fColor3fVertex3fSUN(s_:Float,t_:Float,r_:Float,g_:Float,b_:Float,x_:Float,y_:Float,z_:Float)
endrem
Global glTexCoord2fColor3fVertex3fSUN(s_:Float,t_:Float,r_:Float,g_:Float,b_:Float,x_:Float,y_:Float,z_:Float)="__glewTexCoord2fColor3fVertex3fSUN"
rem
bbdoc: GL Global glTexCoord2fColor3fVertex3fvSUN(tc_:Float Ptr,c_:Float Ptr,v_:Float Ptr)
endrem
Global glTexCoord2fColor3fVertex3fvSUN(tc_:Float Ptr,c_:Float Ptr,v_:Float Ptr)="__glewTexCoord2fColor3fVertex3fvSUN"
rem
bbdoc: GL Global glTexCoord2fColor4fNormal3fVertex3fSUN(s_:Float,t_:Float,r_:Float,g_:Float,b_:Float,a_:Float,nx_:Float,ny_:Float,nz_:Float,x_:Float,y_:Float,z_:Float)
endrem
Global glTexCoord2fColor4fNormal3fVertex3fSUN(s_:Float,t_:Float,r_:Float,g_:Float,b_:Float,a_:Float,nx_:Float,ny_:Float,nz_:Float,x_:Float,y_:Float,z_:Float)="__glewTexCoord2fColor4fNormal3fVertex3fSUN"
rem
bbdoc: GL Global glTexCoord2fColor4fNormal3fVertex3fvSUN(tc_:Float Ptr,c_:Float Ptr,n_:Float Ptr,v_:Float Ptr)
endrem
Global glTexCoord2fColor4fNormal3fVertex3fvSUN(tc_:Float Ptr,c_:Float Ptr,n_:Float Ptr,v_:Float Ptr)="__glewTexCoord2fColor4fNormal3fVertex3fvSUN"
rem
bbdoc: GL Global glTexCoord2fColor4ubVertex3fSUN(s_:Float,t_:Float,r_:Byte,g_:Byte,b_:Byte,a_:Byte,x_:Float,y_:Float,z_:Float)
endrem
Global glTexCoord2fColor4ubVertex3fSUN(s_:Float,t_:Float,r_:Byte,g_:Byte,b_:Byte,a_:Byte,x_:Float,y_:Float,z_:Float)="__glewTexCoord2fColor4ubVertex3fSUN"
rem
bbdoc: GL Global glTexCoord2fColor4ubVertex3fvSUN(tc_:Float Ptr,c_:Byte Ptr,v_:Float Ptr)
endrem
Global glTexCoord2fColor4ubVertex3fvSUN(tc_:Float Ptr,c_:Byte Ptr,v_:Float Ptr)="__glewTexCoord2fColor4ubVertex3fvSUN"
rem
bbdoc: GL Global glTexCoord2fNormal3fVertex3fSUN(s_:Float,t_:Float,nx_:Float,ny_:Float,nz_:Float,x_:Float,y_:Float,z_:Float)
endrem
Global glTexCoord2fNormal3fVertex3fSUN(s_:Float,t_:Float,nx_:Float,ny_:Float,nz_:Float,x_:Float,y_:Float,z_:Float)="__glewTexCoord2fNormal3fVertex3fSUN"
rem
bbdoc: GL Global glTexCoord2fNormal3fVertex3fvSUN(tc_:Float Ptr,n_:Float Ptr,v_:Float Ptr)
endrem
Global glTexCoord2fNormal3fVertex3fvSUN(tc_:Float Ptr,n_:Float Ptr,v_:Float Ptr)="__glewTexCoord2fNormal3fVertex3fvSUN"
rem
bbdoc: GL Global glTexCoord2fVertex3fSUN(s_:Float,t_:Float,x_:Float,y_:Float,z_:Float)
endrem
Global glTexCoord2fVertex3fSUN(s_:Float,t_:Float,x_:Float,y_:Float,z_:Float)="__glewTexCoord2fVertex3fSUN"
rem
bbdoc: GL Global glTexCoord2fVertex3fvSUN(tc_:Float Ptr,v_:Float Ptr)
endrem
Global glTexCoord2fVertex3fvSUN(tc_:Float Ptr,v_:Float Ptr)="__glewTexCoord2fVertex3fvSUN"
rem
bbdoc: GL Global glTexCoord4fColor4fNormal3fVertex4fSUN(s_:Float,t_:Float,p_:Float,q_:Float,r_:Float,g_:Float,b_:Float,a_:Float,nx_:Float,ny_:Float,nz_:Float,x_:Float,y_:Float,z_:Float,w_:Float)
endrem
Global glTexCoord4fColor4fNormal3fVertex4fSUN(s_:Float,t_:Float,p_:Float,q_:Float,r_:Float,g_:Float,b_:Float,a_:Float,nx_:Float,ny_:Float,nz_:Float,x_:Float,y_:Float,z_:Float,w_:Float)="__glewTexCoord4fColor4fNormal3fVertex4fSUN"
rem
bbdoc: GL Global glTexCoord4fColor4fNormal3fVertex4fvSUN(tc_:Float Ptr,c_:Float Ptr,n_:Float Ptr,v_:Float Ptr)
endrem
Global glTexCoord4fColor4fNormal3fVertex4fvSUN(tc_:Float Ptr,c_:Float Ptr,n_:Float Ptr,v_:Float Ptr)="__glewTexCoord4fColor4fNormal3fVertex4fvSUN"
rem
bbdoc: GL Global glTexCoord4fVertex4fSUN(s_:Float,t_:Float,p_:Float,q_:Float,x_:Float,y_:Float,z_:Float,w_:Float)
endrem
Global glTexCoord4fVertex4fSUN(s_:Float,t_:Float,p_:Float,q_:Float,x_:Float,y_:Float,z_:Float,w_:Float)="__glewTexCoord4fVertex4fSUN"
rem
bbdoc: GL Global glTexCoord4fVertex4fvSUN(tc_:Float Ptr,v_:Float Ptr)
endrem
Global glTexCoord4fVertex4fvSUN(tc_:Float Ptr,v_:Float Ptr)="__glewTexCoord4fVertex4fvSUN"
rem
bbdoc: GL Const GL_WIN_phong_shading
endrem
Const GL_WIN_phong_shading=1
rem
bbdoc: GL Const GL_PHONG_WIN
endrem
Const GL_PHONG_WIN=$80EA
rem
bbdoc: GL Const GL_PHONG_HINT_WIN
endrem
Const GL_PHONG_HINT_WIN=$80EB
rem
bbdoc: GL Const GL_WIN_specular_fog
endrem
Const GL_WIN_specular_fog=1
rem
bbdoc: GL Const GL_FOG_SPECULAR_TEXTURE_WIN
endrem
Const GL_FOG_SPECULAR_TEXTURE_WIN=$80EC
rem
bbdoc: GL Const GL_WIN_swap_hint
endrem
Const GL_WIN_swap_hint=1
rem
bbdoc: GL Global glAddSwapHintRectWIN(x_:Int,y_:Int,width_:Int,height_:Int)
endrem
Global glAddSwapHintRectWIN(x_:Int,y_:Int,width_:Int,height_:Int)="__glewAddSwapHintRectWIN"
End Extern

Extern "C"
Function glewInit()
End Extern
