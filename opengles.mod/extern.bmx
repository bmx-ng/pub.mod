' Copyright (c) 2014 Bruce A Henderson
' 
' Permission is hereby granted, free of charge, to any person obtaining a copy
' of this software and associated documentation files (the "Software"), to deal
' in the Software without restriction, including without limitation the rights
' to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
' copies of the Software, and to permit persons to whom the Software is
' furnished to do so, subject to the following conditions:
' 
' The above copyright notice and this permission notice shall be included in
' all copies or substantial portions of the Software.
' 
' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
' IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
' FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
' AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
' LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
' OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
' THE SOFTWARE.
' 
SuperStrict

Extern

	Const GL_DEPTH_BUFFER_BIT:Int = $00000100
	Const GL_STENCIL_BUFFER_BIT:Int = $00000400
	Const GL_COLOR_BUFFER_BIT:Int = $00004000
	Const GL_FALSE:Int = 0
	Const GL_TRUE:Int = 1
	Const GL_POINTS:Int = $0000
	Const GL_LINES:Int = $0001
	Const GL_LINE_LOOP:Int = $0002
	Const GL_LINE_STRIP:Int = $0003
	Const GL_TRIANGLES:Int = $0004
	Const GL_TRIANGLE_STRIP:Int = $0005
	Const GL_TRIANGLE_FAN:Int = $0006
	Const GL_ZERO:Int = 0
	Const GL_ONE:Int = 1
	Const GL_SRC_COLOR:Int = $0300
	Const GL_ONE_MINUS_SRC_COLOR:Int = $0301
	Const GL_SRC_ALPHA:Int = $0302
	Const GL_ONE_MINUS_SRC_ALPHA:Int = $0303
	Const GL_DST_ALPHA:Int = $0304
	Const GL_ONE_MINUS_DST_ALPHA:Int = $0305
	Const GL_DST_COLOR:Int = $0306
	Const GL_ONE_MINUS_DST_COLOR:Int = $0307
	Const GL_SRC_ALPHA_SATURATE:Int = $0308
	Const GL_FUNC_ADD:Int = $8006
	Const GL_BLEND_EQUATION:Int = $8009
	Const GL_BLEND_EQUATION_RGB:Int = $8009
	Const GL_BLEND_EQUATION_ALPHA:Int = $883D
	Const GL_FUNC_SUBTRACT:Int = $800A
	Const GL_FUNC_REVERSE_SUBTRACT:Int = $800B
	Const GL_BLEND_DST_RGB:Int = $80C8
	Const GL_BLEND_SRC_RGB:Int = $80C9
	Const GL_BLEND_DST_ALPHA:Int = $80CA
	Const GL_BLEND_SRC_ALPHA:Int = $80CB
	Const GL_CONSTANT_COLOR:Int = $8001
	Const GL_ONE_MINUS_CONSTANT_COLOR:Int = $8002
	Const GL_CONSTANT_ALPHA:Int = $8003
	Const GL_ONE_MINUS_CONSTANT_ALPHA:Int = $8004
	Const GL_BLEND_COLOR:Int = $8005
	Const GL_ARRAY_BUFFER:Int = $8892
	Const GL_ELEMENT_ARRAY_BUFFER:Int = $8893
	Const GL_ARRAY_BUFFER_BINDING:Int = $8894
	Const GL_ELEMENT_ARRAY_BUFFER_BINDING:Int = $8895
	Const GL_STREAM_DRAW:Int = $88E0
	Const GL_STATIC_DRAW:Int = $88E4
	Const GL_DYNAMIC_DRAW:Int = $88E8
	Const GL_BUFFER_SIZE:Int = $8764
	Const GL_BUFFER_USAGE:Int = $8765
	Const GL_CURRENT_VERTEX_ATTRIB:Int = $8626
	Const GL_FRONT:Int = $0404
	Const GL_BACK:Int = $0405
	Const GL_FRONT_AND_BACK:Int = $0408
	Const GL_TEXTURE_2D:Int = $0DE1
	Const GL_CULL_FACE:Int = $0B44
	Const GL_BLEND:Int = $0BE2
	Const GL_DITHER:Int = $0BD0
	Const GL_STENCIL_TEST:Int = $0B90
	Const GL_DEPTH_TEST:Int = $0B71
	Const GL_SCISSOR_TEST:Int = $0C11
	Const GL_POLYGON_OFFSET_FILL:Int = $8037
	Const GL_SAMPLE_ALPHA_TO_COVERAGE:Int = $809E
	Const GL_SAMPLE_COVERAGE:Int = $80A0
	Const GL_NO_ERROR:Int = 0
	Const GL_INVALID_ENUM:Int = $0500
	Const GL_INVALID_VALUE:Int = $0501
	Const GL_INVALID_OPERATION:Int = $0502
	Const GL_OUT_OF_MEMORY:Int = $0505
	Const GL_CW:Int = $0900
	Const GL_CCW:Int = $0901
	Const GL_LINE_WIDTH:Int = $0B21
	Const GL_ALIASED_POINT_SIZE_RANGE:Int = $846D
	Const GL_ALIASED_LINE_WIDTH_RANGE:Int = $846E
	Const GL_CULL_FACE_MODE:Int = $0B45
	Const GL_FRONT_FACE:Int = $0B46
	Const GL_DEPTH_RANGE:Int = $0B70
	Const GL_DEPTH_WRITEMASK:Int = $0B72
	Const GL_DEPTH_CLEAR_VALUE:Int = $0B73
	Const GL_DEPTH_FUNC:Int = $0B74
	Const GL_STENCIL_CLEAR_VALUE:Int = $0B91
	Const GL_STENCIL_FUNC:Int = $0B92
	Const GL_STENCIL_FAIL:Int = $0B94
	Const GL_STENCIL_PASS_DEPTH_FAIL:Int = $0B95
	Const GL_STENCIL_PASS_DEPTH_PASS:Int = $0B96
	Const GL_STENCIL_REF:Int = $0B97
	Const GL_STENCIL_VALUE_MASK:Int = $0B93
	Const GL_STENCIL_WRITEMASK:Int = $0B98
	Const GL_STENCIL_BACK_FUNC:Int = $8800
	Const GL_STENCIL_BACK_FAIL:Int = $8801
	Const GL_STENCIL_BACK_PASS_DEPTH_FAIL:Int = $8802
	Const GL_STENCIL_BACK_PASS_DEPTH_PASS:Int = $8803
	Const GL_STENCIL_BACK_REF:Int = $8CA3
	Const GL_STENCIL_BACK_VALUE_MASK:Int = $8CA4
	Const GL_STENCIL_BACK_WRITEMASK:Int = $8CA5
	Const GL_VIEWPORT:Int = $0BA2
	Const GL_SCISSOR_BOX:Int = $0C10
	Const GL_COLOR_CLEAR_VALUE:Int = $0C22
	Const GL_COLOR_WRITEMASK:Int = $0C23
	Const GL_UNPACK_ALIGNMENT:Int = $0CF5
	Const GL_PACK_ALIGNMENT:Int = $0D05
	Const GL_MAX_TEXTURE_SIZE:Int = $0D33
	Const GL_MAX_VIEWPORT_DIMS:Int = $0D3A
	Const GL_SUBPIXEL_BITS:Int = $0D50
	Const GL_RED_BITS:Int = $0D52
	Const GL_GREEN_BITS:Int = $0D53
	Const GL_BLUE_BITS:Int = $0D54
	Const GL_ALPHA_BITS:Int = $0D55
	Const GL_DEPTH_BITS:Int = $0D56
	Const GL_STENCIL_BITS:Int = $0D57
	Const GL_POLYGON_OFFSET_UNITS:Int = $2A00
	Const GL_POLYGON_OFFSET_FACTOR:Int = $8038
	Const GL_TEXTURE_BINDING_2D:Int = $8069
	Const GL_SAMPLE_BUFFERS:Int = $80A8
	Const GL_SAMPLES:Int = $80A9
	Const GL_SAMPLE_COVERAGE_VALUE:Int = $80AA
	Const GL_SAMPLE_COVERAGE_INVERT:Int = $80AB
	Const GL_NUM_COMPRESSED_TEXTURE_FORMATS:Int = $86A2
	Const GL_COMPRESSED_TEXTURE_FORMATS:Int = $86A3
	Const GL_DONT_CARE:Int = $1100
	Const GL_FASTEST:Int = $1101
	Const GL_NICEST:Int = $1102
	Const GL_GENERATE_MIPMAP_HINT:Int = $8192
	Const GL_BYTE:Int = $1400
	Const GL_UNSIGNED_BYTE:Int = $1401
	Const GL_SHORT:Int = $1402
	Const GL_UNSIGNED_SHORT:Int = $1403
	Const GL_INT:Int = $1404
	Const GL_UNSIGNED_INT:Int = $1405
	Const GL_FLOAT:Int = $1406
	Const GL_FIXED:Int = $140C
	Const GL_DEPTH_COMPONENT:Int = $1902
	Const GL_ALPHA:Int = $1906
	Const GL_RGB:Int = $1907
	Const GL_RGBA:Int = $1908
	Const GL_LUMINANCE:Int = $1909
	Const GL_LUMINANCE_ALPHA:Int = $190A
	Const GL_UNSIGNED_SHORT_4_4_4_4:Int = $8033
	Const GL_UNSIGNED_SHORT_5_5_5_1:Int = $8034
	Const GL_UNSIGNED_SHORT_5_6_5:Int = $8363
	Const GL_FRAGMENT_SHADER:Int = $8B30
	Const GL_VERTEX_SHADER:Int = $8B31
	Const GL_MAX_VERTEX_ATTRIBS:Int = $8869
	Const GL_MAX_VERTEX_UNIFORM_VECTORS:Int = $8DFB
	Const GL_MAX_VARYING_VECTORS:Int = $8DFC
	Const GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS:Int = $8B4D
	Const GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS:Int = $8B4C
	Const GL_MAX_TEXTURE_IMAGE_UNITS:Int = $8872
	Const GL_MAX_FRAGMENT_UNIFORM_VECTORS:Int = $8DFD
	Const GL_SHADER_TYPE:Int = $8B4F
	Const GL_DELETE_STATUS:Int = $8B80
	Const GL_LINK_STATUS:Int = $8B82
	Const GL_VALIDATE_STATUS:Int = $8B83
	Const GL_ATTACHED_SHADERS:Int = $8B85
	Const GL_ACTIVE_UNIFORMS:Int = $8B86
	Const GL_ACTIVE_UNIFORM_MAX_LENGTH:Int = $8B87
	Const GL_ACTIVE_ATTRIBUTES:Int = $8B89
	Const GL_ACTIVE_ATTRIBUTE_MAX_LENGTH:Int = $8B8A
	Const GL_SHADING_LANGUAGE_VERSION:Int = $8B8C
	Const GL_CURRENT_PROGRAM:Int = $8B8D
	Const GL_NEVER:Int = $0200
	Const GL_LESS:Int = $0201
	Const GL_EQUAL:Int = $0202
	Const GL_LEQUAL:Int = $0203
	Const GL_GREATER:Int = $0204
	Const GL_NOTEQUAL:Int = $0205
	Const GL_GEQUAL:Int = $0206
	Const GL_ALWAYS:Int = $0207
	Const GL_KEEP:Int = $1E00
	Const GL_REPLACE:Int = $1E01
	Const GL_INCR:Int = $1E02
	Const GL_DECR:Int = $1E03
	Const GL_INVERT:Int = $150A
	Const GL_INCR_WRAP:Int = $8507
	Const GL_DECR_WRAP:Int = $8508
	Const GL_VENDOR:Int = $1F00
	Const GL_RENDERER:Int = $1F01
	Const GL_VERSION:Int = $1F02
	Const GL_EXTENSIONS:Int = $1F03
	Const GL_NEAREST:Int = $2600
	Const GL_LINEAR:Int = $2601
	Const GL_NEAREST_MIPMAP_NEAREST:Int = $2700
	Const GL_LINEAR_MIPMAP_NEAREST:Int = $2701
	Const GL_NEAREST_MIPMAP_LINEAR:Int = $2702
	Const GL_LINEAR_MIPMAP_LINEAR:Int = $2703
	Const GL_TEXTURE_MAG_FILTER:Int = $2800
	Const GL_TEXTURE_MIN_FILTER:Int = $2801
	Const GL_TEXTURE_WRAP_S:Int = $2802
	Const GL_TEXTURE_WRAP_T:Int = $2803
	Const GL_TEXTURE:Int = $1702
	Const GL_TEXTURE_CUBE_MAP:Int = $8513
	Const GL_TEXTURE_BINDING_CUBE_MAP:Int = $8514
	Const GL_TEXTURE_CUBE_MAP_POSITIVE_X:Int = $8515
	Const GL_TEXTURE_CUBE_MAP_NEGATIVE_X:Int = $8516
	Const GL_TEXTURE_CUBE_MAP_POSITIVE_Y:Int = $8517
	Const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y:Int = $8518
	Const GL_TEXTURE_CUBE_MAP_POSITIVE_Z:Int = $8519
	Const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z:Int = $851A
	Const GL_MAX_CUBE_MAP_TEXTURE_SIZE:Int = $851C
	Const GL_TEXTURE0:Int = $84C0
	Const GL_TEXTURE1:Int = $84C1
	Const GL_TEXTURE2:Int = $84C2
	Const GL_TEXTURE3:Int = $84C3
	Const GL_TEXTURE4:Int = $84C4
	Const GL_TEXTURE5:Int = $84C5
	Const GL_TEXTURE6:Int = $84C6
	Const GL_TEXTURE7:Int = $84C7
	Const GL_TEXTURE8:Int = $84C8
	Const GL_TEXTURE9:Int = $84C9
	Const GL_TEXTURE10:Int = $84CA
	Const GL_TEXTURE11:Int = $84CB
	Const GL_TEXTURE12:Int = $84CC
	Const GL_TEXTURE13:Int = $84CD
	Const GL_TEXTURE14:Int = $84CE
	Const GL_TEXTURE15:Int = $84CF
	Const GL_TEXTURE16:Int = $84D0
	Const GL_TEXTURE17:Int = $84D1
	Const GL_TEXTURE18:Int = $84D2
	Const GL_TEXTURE19:Int = $84D3
	Const GL_TEXTURE20:Int = $84D4
	Const GL_TEXTURE21:Int = $84D5
	Const GL_TEXTURE22:Int = $84D6
	Const GL_TEXTURE23:Int = $84D7
	Const GL_TEXTURE24:Int = $84D8
	Const GL_TEXTURE25:Int = $84D9
	Const GL_TEXTURE26:Int = $84DA
	Const GL_TEXTURE27:Int = $84DB
	Const GL_TEXTURE28:Int = $84DC
	Const GL_TEXTURE29:Int = $84DD
	Const GL_TEXTURE30:Int = $84DE
	Const GL_TEXTURE31:Int = $84DF
	Const GL_ACTIVE_TEXTURE:Int = $84E0
	Const GL_REPEAT:Int = $2901
	Const GL_CLAMP_TO_EDGE:Int = $812F
	Const GL_MIRRORED_REPEAT:Int = $8370
	Const GL_FLOAT_VEC2:Int = $8B50
	Const GL_FLOAT_VEC3:Int = $8B51
	Const GL_FLOAT_VEC4:Int = $8B52
	Const GL_INT_VEC2:Int = $8B53
	Const GL_INT_VEC3:Int = $8B54
	Const GL_INT_VEC4:Int = $8B55
	Const GL_BOOL:Int = $8B56
	Const GL_BOOL_VEC2:Int = $8B57
	Const GL_BOOL_VEC3:Int = $8B58
	Const GL_BOOL_VEC4:Int = $8B59
	Const GL_FLOAT_MAT2:Int = $8B5A
	Const GL_FLOAT_MAT3:Int = $8B5B
	Const GL_FLOAT_MAT4:Int = $8B5C
	Const GL_SAMPLER_2D:Int = $8B5E
	Const GL_SAMPLER_CUBE:Int = $8B60
	Const GL_VERTEX_ATTRIB_ARRAY_ENABLED:Int = $8622
	Const GL_VERTEX_ATTRIB_ARRAY_SIZE:Int = $8623
	Const GL_VERTEX_ATTRIB_ARRAY_STRIDE:Int = $8624
	Const GL_VERTEX_ATTRIB_ARRAY_TYPE:Int = $8625
	Const GL_VERTEX_ATTRIB_ARRAY_NORMALIZED:Int = $886A
	Const GL_VERTEX_ATTRIB_ARRAY_POINTER:Int = $8645
	Const GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING:Int = $889F
	Const GL_IMPLEMENTATION_COLOR_READ_TYPE:Int = $8B9A
	Const GL_IMPLEMENTATION_COLOR_READ_FORMAT:Int = $8B9B
	Const GL_COMPILE_STATUS:Int = $8B81
	Const GL_INFO_LOG_LENGTH:Int = $8B84
	Const GL_SHADER_SOURCE_LENGTH:Int = $8B88
	Const GL_SHADER_COMPILER:Int = $8DFA
	Const GL_SHADER_BINARY_FORMATS:Int = $8DF8
	Const GL_NUM_SHADER_BINARY_FORMATS:Int = $8DF9
	Const GL_LOW_FLOAT:Int = $8DF0
	Const GL_MEDIUM_FLOAT:Int = $8DF1
	Const GL_HIGH_FLOAT:Int = $8DF2
	Const GL_LOW_INT:Int = $8DF3
	Const GL_MEDIUM_INT:Int = $8DF4
	Const GL_HIGH_INT:Int = $8DF5
	Const GL_FRAMEBUFFER:Int = $8D40
	Const GL_RENDERBUFFER:Int = $8D41
	Const GL_RGBA4:Int = $8056
	Const GL_RGB5_A1:Int = $8057
	Const GL_RGB565:Int = $8D62
	Const GL_DEPTH_COMPONENT16:Int = $81A5
	Const GL_STENCIL_INDEX8:Int = $8D48
	Const GL_RENDERBUFFER_WIDTH:Int = $8D42
	Const GL_RENDERBUFFER_HEIGHT:Int = $8D43
	Const GL_RENDERBUFFER_INTERNAL_FORMAT:Int = $8D44
	Const GL_RENDERBUFFER_RED_SIZE:Int = $8D50
	Const GL_RENDERBUFFER_GREEN_SIZE:Int = $8D51
	Const GL_RENDERBUFFER_BLUE_SIZE:Int = $8D52
	Const GL_RENDERBUFFER_ALPHA_SIZE:Int = $8D53
	Const GL_RENDERBUFFER_DEPTH_SIZE:Int = $8D54
	Const GL_RENDERBUFFER_STENCIL_SIZE:Int = $8D55
	Const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE:Int = $8CD0
	Const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME:Int = $8CD1
	Const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL:Int = $8CD2
	Const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE:Int = $8CD3
	Const GL_COLOR_ATTACHMENT0:Int = $8CE0
	Const GL_DEPTH_ATTACHMENT:Int = $8D00
	Const GL_STENCIL_ATTACHMENT:Int = $8D20
	Const GL_NONE:Int = 0
	Const GL_FRAMEBUFFER_COMPLETE:Int = $8CD5
	Const GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT:Int = $8CD6
	Const GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT:Int = $8CD7
	Const GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS:Int = $8CD9
	Const GL_FRAMEBUFFER_UNSUPPORTED:Int = $8CDD
	Const GL_FRAMEBUFFER_BINDING:Int = $8CA6
	Const GL_RENDERBUFFER_BINDING:Int = $8CA7
	Const GL_MAX_RENDERBUFFER_SIZE:Int = $84E8
	Const GL_INVALID_FRAMEBUFFER_OPERATION:Int = $0506

	Function glActiveTexture(texture_:Int)
	Function glAttachShader(program_:Int, shader_:Int)
	Function glBindAttribLocation(program_:Int, index_:Int, name_:Byte Ptr)
	Function glBindBuffer(target_:Int, buffer_:Int)
	Function glBindFramebuffer(target_:Int, framebuffer_:Int)
	Function glBindRenderbuffer(target_:Int, renderbuffer_:Int)
	Function glBindTexture(target_:Int, texture_:Int)
	Function glBlendColor(red_:Float, green_:Float, blue_:Float, alpha_:Float)
	Function glBlendEquation(mode_:Int)
	Function glBlendEquationSeparate(modeRGB_:Int, modeAlpha_:Int)
	Function glBlendFunc(sfactor_:Int, dfactor_:Int)
	Function glBlendFuncSeparate(sfactorRGB_:Int, dfactorRGB_:Int, sfactorAlpha_:Int, dfactorAlpha_:Int)
	Function glBufferData(target_:Int, size_:Int, data_:Byte Ptr, usage_:Int)
	Function glBufferSubData(target_:Int, offset_:Int Ptr, size_:Int, data_:Byte Ptr)
	Function glCheckFramebufferStatus:Int(target_:Int)
	Function glClear(mask_:Int)
	Function glClearColor(red_:Float, green_:Float, blue_:Float, alpha_:Float)
	Function glClearDepthf(d_:Float)
	Function glClearStencil(s_:Int)
	Function glColorMask(red_:Byte, green_:Byte, blue_:Byte, alpha_:Byte)
	Function glCompileShader(shader_:Int)
	Function glCompressedTexImage2D(target_:Int, level_:Int, internalformat_:Int, width_:Int, height_:Int, border_:Int, imageSize_:Int, data_:Byte Ptr)
	Function glCompressedTexSubImage2D(target_:Int, level_:Int, xoffset_:Int, yoffset_:Int, width_:Int, height_:Int, format_:Int, imageSize_:Int, data_:Byte Ptr)
	Function glCopyTexImage2D(target_:Int, level_:Int, internalformat_:Int, x_:Int, y_:Int, width_:Int, height_:Int, border_:Int)
	Function glCopyTexSubImage2D(target_:Int, level_:Int, xoffset_:Int, yoffset_:Int, x_:Int, y_:Int, width_:Int, height_:Int)
	Function glCreateProgram:Int()
	Function glCreateShader:Int(type_:Int)
	Function glCullFace(mode_:Int)
	Function glDeleteBuffers(n_:Int, buffers_:Int Ptr)
	Function glDeleteFramebuffers(n_:Int, framebuffers_:Int Ptr)
	Function glDeleteProgram(program_:Int)
	Function glDeleteRenderbuffers(n_:Int, renderbuffers_:Int Ptr)
	Function glDeleteShader(shader_:Int)
	Function glDeleteTextures(n_:Int, textures_:Int Ptr)
	Function glDepthFunc(func_:Int)
	Function glDepthMask(flag_:Byte)
	Function glDepthRangef(n_:Float, f_:Float)
	Function glDetachShader(program_:Int, shader_:Int)
	Function glDisable(cap_:Int)
	Function glDisableVertexAttribArray(index_:Int)
	Function glDrawArrays(mode_:Int, first_:Int, count_:Int)
	Function glDrawElements(mode_:Int, count_:Int, type_:Int, indices_:Byte Ptr)
	Function glEnable(cap_:Int)
	Function glEnableVertexAttribArray(index_:Int)
	Function glFinish()
	Function glFlush()
	Function glFramebufferRenderbuffer(target_:Int, attachment_:Int, renderbuffertarget_:Int, renderbuffer_:Int)
	Function glFramebufferTexture2D(target_:Int, attachment_:Int, textarget_:Int, texture_:Int, level_:Int)
	Function glFrontFace(mode_:Int)
	Function glGenBuffers(n_:Int, buffers_:Int Ptr)
	Function glGenerateMipmap(target_:Int)
	Function glGenFramebuffers(n_:Int, framebuffers_:Int Ptr)
	Function glGenRenderbuffers(n_:Int, renderbuffers_:Int Ptr)
	Function glGenTextures(n_:Int, textures_:Int Ptr)
	Function glGetActiveAttrib(program_:Int, index_:Int, bufSize_:Int, length_:Int Ptr, size_:Int Ptr, type_:Int Ptr, name_:Byte Ptr)
	Function glGetActiveUniform(program_:Int, index_:Int, bufSize_:Int, length_:Int Ptr, size_:Int Ptr, type_:Int Ptr, name_:Byte Ptr)
	Function glGetAttachedShaders(program_:Int, maxCount_:Int, count_:Int Ptr, shaders_:Int Ptr)
	Function glGetAttribLocation:Int(program_:Int, name_:Byte Ptr)
	Function glGetBooleanv(pname_:Int, data_:Byte Ptr)
	Function glGetBufferParameteriv(target_:Int, pname_:Int, params_:Int Ptr)
	Function glGetError:Int()
	Function glGetFloatv(pname_:Int, data_:Float Ptr)
	Function glGetFramebufferAttachmentParameteriv(target_:Int, attachment_:Int, pname_:Int, params_:Int Ptr)
	Function glGetIntegerv(pname_:Int, data_:Int Ptr)
	Function glGetProgramiv(program_:Int, pname_:Int, params_:Int Ptr)
	Function glGetProgramInfoLog(program_:Int, bufSize_:Int, length_:Int Ptr, infoLog_:Byte Ptr)
	Function glGetRenderbufferParameteriv(target_:Int, pname_:Int, params_:Int Ptr)
	Function glGetShaderiv(shader_:Int, pname_:Int, params_:Int Ptr)
	Function glGetShaderInfoLog(shader_:Int, bufSize_:Int, length_:Int Ptr, infoLog_:Byte Ptr)
	Function glGetShaderPrecisionFormat(shadertype_:Int, precisiontype_:Int, range_:Int Ptr, precision_:Int Ptr)
	Function glGetShaderSource(shader_:Int, bufSize_:Int, length_:Int Ptr, source_:Byte Ptr)
	Function glGetString:Byte Ptr(name_:Int)
	Function glGetTexParameterfv(target_:Int, pname_:Int, params_:Float Ptr)
	Function glGetTexParameteriv(target_:Int, pname_:Int, params_:Int Ptr)
	Function glGetUniformfv(program_:Int, location_:Int, params_:Float Ptr)
	Function glGetUniformiv(program_:Int, location_:Int, params_:Int Ptr)
	Function glGetUniformLocation:Int(program_:Int, name_:Byte Ptr)
	Function glGetVertexAttribfv(index_:Int, pname_:Int, params_:Float Ptr)
	Function glGetVertexAttribiv(index_:Int, pname_:Int, params_:Int Ptr)
	Function glGetVertexAttribPointerv(index_:Int, pname_:Int, pointer_:Byte Ptr Ptr)
	Function glHint(target_:Int, mode_:Int)
	Function glIsBuffer:Int(buffer_:Int)
	Function glIsEnabled:Int(cap_:Int)
	Function glIsFramebuffer:Int(framebuffer_:Int)
	Function glIsProgram:Int(program_:Int)
	Function glIsRenderbuffer:Int(renderbuffer_:Int)
	Function glIsShader:Int(shader_:Int)
	Function glIsTexture:Int(texture_:Int)
	Function glLineWidth(width_:Float)
	Function glLinkProgram(program_:Int)
	Function glPixelStorei(pname_:Int, param_:Int)
	Function glPolygonOffset(factor_:Float, units_:Float)
	Function glReadPixels(x_:Int, y_:Int, width_:Int, height_:Int, format_:Int, type_:Int, pixels_:Byte Ptr)
	Function glReleaseShaderCompiler()
	Function glRenderbufferStorage(target_:Int, internalformat_:Int, width_:Int, height_:Int)
	Function glSampleCoverage(value_:Float, invert_:Byte)
	Function glScissor(x_:Int, y_:Int, width_:Int, height_:Int)
	Function glShaderBinary(count_:Int, shaders_:Int Ptr, binaryformat_:Int, binary_:Byte Ptr, length_:Int)
	Function glShaderSource(shader_:Int, count_:Int, string_:Byte Ptr, length_:Int Ptr)
	Function glStencilFunc(func_:Int, ref_:Int, mask_:Int)
	Function glStencilFuncSeparate(face_:Int, func_:Int, ref_:Int, mask_:Int)
	Function glStencilMask(mask_:Int)
	Function glStencilMaskSeparate(face_:Int, mask_:Int)
	Function glStencilOp(fail_:Int, zfail_:Int, zpass_:Int)
	Function glStencilOpSeparate(face_:Int, sfail_:Int, dpfail_:Int, dppass_:Int)
	Function glTexImage2D(target_:Int, level_:Int, internalformat_:Int, width_:Int, height_:Int, border_:Int, format_:Int, type_:Int, pixels_:Byte Ptr)
	Function glTexParameterf(target_:Int, pname_:Int, param_:Float)
	Function glTexParameterfv(target_:Int, pname_:Int, params_:Float Ptr)
	Function glTexParameteri(target_:Int, pname_:Int, param_:Int)
	Function glTexParameteriv(target_:Int, pname_:Int, params_:Int Ptr)
	Function glTexSubImage2D(target_:Int, level_:Int, xoffset_:Int, yoffset_:Int, width_:Int, height_:Int, format_:Int, type_:Int, pixels_:Byte Ptr)
	Function glUniform1f(location_:Int, v0_:Float)
	Function glUniform1fv(location_:Int, count_:Int, value_:Float Ptr)
	Function glUniform1i(location_:Int, v0_:Int)
	Function glUniform1iv(location_:Int, count_:Int, value_:Int Ptr)
	Function glUniform2f(location_:Int, v0_:Float, v1_:Float)
	Function glUniform2fv(location_:Int, count_:Int, value_:Float Ptr)
	Function glUniform2i(location_:Int, v0_:Int, v1_:Int)
	Function glUniform2iv(location_:Int, count_:Int, value_:Int Ptr)
	Function glUniform3f(location_:Int, v0_:Float, v1_:Float, v2_:Float)
	Function glUniform3fv(location_:Int, count_:Int, value_:Float Ptr)
	Function glUniform3i(location_:Int, v0_:Int, v1_:Int, v2_:Int)
	Function glUniform3iv(location_:Int, count_:Int, value_:Int Ptr)
	Function glUniform4f(location_:Int, v0_:Float, v1_:Float, v2_:Float, v3_:Float)
	Function glUniform4fv(location_:Int, count_:Int, value_:Float Ptr)
	Function glUniform4i(location_:Int, v0_:Int, v1_:Int, v2_:Int, v3_:Int)
	Function glUniform4iv(location_:Int, count_:Int, value_:Int Ptr)
	Function glUniformMatrix2fv(location_:Int, count_:Int, transpose_:Byte, value_:Float Ptr)
	Function glUniformMatrix3fv(location_:Int, count_:Int, transpose_:Byte, value_:Float Ptr)
	Function glUniformMatrix4fv(location_:Int, count_:Int, transpose_:Byte, value_:Float Ptr)
	Function glUseProgram(program_:Int)
	Function glValidateProgram(program_:Int)
	Function glVertexAttrib1f(index_:Int, x_:Float)
	Function glVertexAttrib1fv(index_:Int, v_:Float Ptr)
	Function glVertexAttrib2f(index_:Int, x_:Float, y_:Float)
	Function glVertexAttrib2fv(index_:Int, v_:Float Ptr)
	Function glVertexAttrib3f(index_:Int, x_:Float, y_:Float, z_:Float)
	Function glVertexAttrib3fv(index_:Int, v_:Float Ptr)
	Function glVertexAttrib4f(index_:Int, x_:Float, y_:Float, z_:Float, w_:Float)
	Function glVertexAttrib4fv(index_:Int, v_:Float Ptr)
	Function glVertexAttribPointer(index_:Int, size_:Int, type_:Int, normalized_:Byte, stride_:Int, pointer_:Byte Ptr)
	Function glViewport(x_:Int, y_:Int, width_:Int, height_:Int)

End Extern

