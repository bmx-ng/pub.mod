' Copyright (c) 2020 Bruce A Henderson
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

Import Pub.OpenGLES

Extern

	Const GL_READ_BUFFER:Int = $0C02
	Const GL_UNPACK_ROW_LENGTH:Int = $0CF2
	Const GL_UNPACK_SKIP_ROWS:Int = $0CF3
	Const GL_UNPACK_SKIP_PIXELS:Int = $0CF4
	Const GL_PACK_ROW_LENGTH:Int = $0D02
	Const GL_PACK_SKIP_ROWS:Int = $0D03
	Const GL_PACK_SKIP_PIXELS:Int = $0D04
	Const GL_COLOR:Int = $1800
	Const GL_DEPTH:Int = $1801
	Const GL_STENCIL:Int = $1802
	Const GL_RED:Int = $1903
	Const GL_RGB8:Int = $8051
	Const GL_RGBA8:Int = $8058
	Const GL_RGB10_A2:Int = $8059
	Const GL_TEXTURE_BINDING_3D:Int = $806A
	Const GL_UNPACK_SKIP_IMAGES:Int = $806D
	Const GL_UNPACK_IMAGE_HEIGHT:Int = $806E
	Const GL_TEXTURE_3D:Int = $806F
	Const GL_TEXTURE_WRAP_R:Int = $8072
	Const GL_MAX_3D_TEXTURE_SIZE:Int = $8073
	Const GL_UNSIGNED_INT_2_10_10_10_REV:Int = $8368
	Const GL_MAX_ELEMENTS_VERTICES:Int = $80E8
	Const GL_MAX_ELEMENTS_INDICES:Int = $80E9
	Const GL_TEXTURE_MIN_LOD:Int = $813A
	Const GL_TEXTURE_MAX_LOD:Int = $813B
	Const GL_TEXTURE_BASE_LEVEL:Int = $813C
	Const GL_TEXTURE_MAX_LEVEL:Int = $813D
	Const GL_MIN:Int = $8007
	Const GL_MAX:Int = $8008
	Const GL_DEPTH_COMPONENT24:Int = $81A6
	Const GL_MAX_TEXTURE_LOD_BIAS:Int = $84FD
	Const GL_TEXTURE_COMPARE_MODE:Int = $884C
	Const GL_TEXTURE_COMPARE_FUNC:Int = $884D
	Const GL_CURRENT_QUERY:Int = $8865
	Const GL_QUERY_RESULT:Int = $8866
	Const GL_QUERY_RESULT_AVAILABLE:Int = $8867
	Const GL_BUFFER_MAPPED:Int = $88BC
	Const GL_BUFFER_MAP_POINTER:Int = $88BD
	Const GL_STREAM_READ:Int = $88E1
	Const GL_STREAM_COPY:Int = $88E2
	Const GL_STATIC_READ:Int = $88E5
	Const GL_STATIC_COPY:Int = $88E6
	Const GL_DYNAMIC_READ:Int = $88E9
	Const GL_DYNAMIC_COPY:Int = $88EA
	Const GL_MAX_DRAW_BUFFERS:Int = $8824
	Const GL_DRAW_BUFFER0:Int = $8825
	Const GL_DRAW_BUFFER1:Int = $8826
	Const GL_DRAW_BUFFER2:Int = $8827
	Const GL_DRAW_BUFFER3:Int = $8828
	Const GL_DRAW_BUFFER4:Int = $8829
	Const GL_DRAW_BUFFER5:Int = $882A
	Const GL_DRAW_BUFFER6:Int = $882B
	Const GL_DRAW_BUFFER7:Int = $882C
	Const GL_DRAW_BUFFER8:Int = $882D
	Const GL_DRAW_BUFFER9:Int = $882E
	Const GL_DRAW_BUFFER10:Int = $882F
	Const GL_DRAW_BUFFER11:Int = $8830
	Const GL_DRAW_BUFFER12:Int = $8831
	Const GL_DRAW_BUFFER13:Int = $8832
	Const GL_DRAW_BUFFER14:Int = $8833
	Const GL_DRAW_BUFFER15:Int = $8834
	Const GL_MAX_FRAGMENT_UNIFORM_COMPONENTS:Int = $8B49
	Const GL_MAX_VERTEX_UNIFORM_COMPONENTS:Int = $8B4A
	Const GL_SAMPLER_3D:Int = $8B5F
	Const GL_SAMPLER_2D_SHADOW:Int = $8B62
	Const GL_FRAGMENT_SHADER_DERIVATIVE_HINT:Int = $8B8B
	Const GL_PIXEL_PACK_BUFFER:Int = $88EB
	Const GL_PIXEL_UNPACK_BUFFER:Int = $88EC
	Const GL_PIXEL_PACK_BUFFER_BINDING:Int = $88ED
	Const GL_PIXEL_UNPACK_BUFFER_BINDING:Int = $88EF
	Const GL_FLOAT_MAT2x3:Int = $8B65
	Const GL_FLOAT_MAT2x4:Int = $8B66
	Const GL_FLOAT_MAT3x2:Int = $8B67
	Const GL_FLOAT_MAT3x4:Int = $8B68
	Const GL_FLOAT_MAT4x2:Int = $8B69
	Const GL_FLOAT_MAT4x3:Int = $8B6A
	Const GL_SRGB:Int = $8C40
	Const GL_SRGB8:Int = $8C41
	Const GL_SRGB8_ALPHA8:Int = $8C43
	Const GL_COMPARE_REF_TO_TEXTURE:Int = $884E
	Const GL_MAJOR_VERSION:Int = $821B
	Const GL_MINOR_VERSION:Int = $821C
	Const GL_NUM_EXTENSIONS:Int = $821D
	Const GL_RGBA32F:Int = $8814
	Const GL_RGB32F:Int = $8815
	Const GL_RGBA16F:Int = $881A
	Const GL_RGB16F:Int = $881B
	Const GL_VERTEX_ATTRIB_ARRAY_INTEGER:Int = $88FD
	Const GL_MAX_ARRAY_TEXTURE_LAYERS:Int = $88FF
	Const GL_MIN_PROGRAM_TEXEL_OFFSET:Int = $8904
	Const GL_MAX_PROGRAM_TEXEL_OFFSET:Int = $8905
	Const GL_MAX_VARYING_COMPONENTS:Int = $8B4B
	Const GL_TEXTURE_2D_ARRAY:Int = $8C1A
	Const GL_TEXTURE_BINDING_2D_ARRAY:Int = $8C1D
	Const GL_R11F_G11F_B10F:Int = $8C3A
	Const GL_UNSIGNED_INT_10F_11F_11F_REV:Int = $8C3B
	Const GL_RGB9_E5:Int = $8C3D
	Const GL_UNSIGNED_INT_5_9_9_9_REV:Int = $8C3E
	Const GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH:Int = $8C76
	Const GL_TRANSFORM_FEEDBACK_BUFFER_MODE:Int = $8C7F
	Const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS:Int = $8C80
	Const GL_TRANSFORM_FEEDBACK_VARYINGS:Int = $8C83
	Const GL_TRANSFORM_FEEDBACK_BUFFER_START:Int = $8C84
	Const GL_TRANSFORM_FEEDBACK_BUFFER_SIZE:Int = $8C85
	Const GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN:Int = $8C88
	Const GL_RASTERIZER_DISCARD:Int = $8C89
	Const GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS:Int = $8C8A
	Const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS:Int = $8C8B
	Const GL_INTERLEAVED_ATTRIBS:Int = $8C8C
	Const GL_SEPARATE_ATTRIBS:Int = $8C8D
	Const GL_TRANSFORM_FEEDBACK_BUFFER:Int = $8C8E
	Const GL_TRANSFORM_FEEDBACK_BUFFER_BINDING:Int = $8C8F
	Const GL_RGBA32UI:Int = $8D70
	Const GL_RGB32UI:Int = $8D71
	Const GL_RGBA16UI:Int = $8D76
	Const GL_RGB16UI:Int = $8D77
	Const GL_RGBA8UI:Int = $8D7C
	Const GL_RGB8UI:Int = $8D7D
	Const GL_RGBA32I:Int = $8D82
	Const GL_RGB32I:Int = $8D83
	Const GL_RGBA16I:Int = $8D88
	Const GL_RGB16I:Int = $8D89
	Const GL_RGBA8I:Int = $8D8E
	Const GL_RGB8I:Int = $8D8F
	Const GL_RED_INTEGER:Int = $8D94
	Const GL_RGB_INTEGER:Int = $8D98
	Const GL_RGBA_INTEGER:Int = $8D99
	Const GL_SAMPLER_2D_ARRAY:Int = $8DC1
	Const GL_SAMPLER_2D_ARRAY_SHADOW:Int = $8DC4
	Const GL_SAMPLER_CUBE_SHADOW:Int = $8DC5
	Const GL_UNSIGNED_INT_VEC2:Int = $8DC6
	Const GL_UNSIGNED_INT_VEC3:Int = $8DC7
	Const GL_UNSIGNED_INT_VEC4:Int = $8DC8
	Const GL_INT_SAMPLER_2D:Int = $8DCA
	Const GL_INT_SAMPLER_3D:Int = $8DCB
	Const GL_INT_SAMPLER_CUBE:Int = $8DCC
	Const GL_INT_SAMPLER_2D_ARRAY:Int = $8DCF
	Const GL_UNSIGNED_INT_SAMPLER_2D:Int = $8DD2
	Const GL_UNSIGNED_INT_SAMPLER_3D:Int = $8DD3
	Const GL_UNSIGNED_INT_SAMPLER_CUBE:Int = $8DD4
	Const GL_UNSIGNED_INT_SAMPLER_2D_ARRAY:Int = $8DD7
	Const GL_BUFFER_ACCESS_FLAGS:Int = $911F
	Const GL_BUFFER_MAP_LENGTH:Int = $9120
	Const GL_BUFFER_MAP_OFFSET:Int = $9121
	Const GL_DEPTH_COMPONENT32F:Int = $8CAC
	Const GL_DEPTH32F_STENCIL8:Int = $8CAD
	Const GL_FLOAT_32_UNSIGNED_INT_24_8_REV:Int = $8DAD
	Const GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING:Int = $8210
	Const GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE:Int = $8211
	Const GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE:Int = $8212
	Const GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE:Int = $8213
	Const GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE:Int = $8214
	Const GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE:Int = $8215
	Const GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE:Int = $8216
	Const GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE:Int = $8217
	Const GL_FRAMEBUFFER_DEFAULT:Int = $8218
	Const GL_FRAMEBUFFER_UNDEFINED:Int = $8219
	Const GL_DEPTH_STENCIL_ATTACHMENT:Int = $821A
	Const GL_DEPTH_STENCIL:Int = $84F9
	Const GL_UNSIGNED_INT_24_8:Int = $84FA
	Const GL_DEPTH24_STENCIL8:Int = $88F0
	Const GL_UNSIGNED_NORMALIZED:Int = $8C17
	Const GL_DRAW_FRAMEBUFFER_BINDING:Int = $8CA6
	Const GL_READ_FRAMEBUFFER:Int = $8CA8
	Const GL_DRAW_FRAMEBUFFER:Int = $8CA9
	Const GL_READ_FRAMEBUFFER_BINDING:Int = $8CAA
	Const GL_RENDERBUFFER_SAMPLES:Int = $8CAB
	Const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER:Int = $8CD4
	Const GL_MAX_COLOR_ATTACHMENTS:Int = $8CDF
	Const GL_COLOR_ATTACHMENT1:Int = $8CE1
	Const GL_COLOR_ATTACHMENT2:Int = $8CE2
	Const GL_COLOR_ATTACHMENT3:Int = $8CE3
	Const GL_COLOR_ATTACHMENT4:Int = $8CE4
	Const GL_COLOR_ATTACHMENT5:Int = $8CE5
	Const GL_COLOR_ATTACHMENT6:Int = $8CE6
	Const GL_COLOR_ATTACHMENT7:Int = $8CE7
	Const GL_COLOR_ATTACHMENT8:Int = $8CE8
	Const GL_COLOR_ATTACHMENT9:Int = $8CE9
	Const GL_COLOR_ATTACHMENT10:Int = $8CEA
	Const GL_COLOR_ATTACHMENT11:Int = $8CEB
	Const GL_COLOR_ATTACHMENT12:Int = $8CEC
	Const GL_COLOR_ATTACHMENT13:Int = $8CED
	Const GL_COLOR_ATTACHMENT14:Int = $8CEE
	Const GL_COLOR_ATTACHMENT15:Int = $8CEF
	Const GL_COLOR_ATTACHMENT16:Int = $8CF0
	Const GL_COLOR_ATTACHMENT17:Int = $8CF1
	Const GL_COLOR_ATTACHMENT18:Int = $8CF2
	Const GL_COLOR_ATTACHMENT19:Int = $8CF3
	Const GL_COLOR_ATTACHMENT20:Int = $8CF4
	Const GL_COLOR_ATTACHMENT21:Int = $8CF5
	Const GL_COLOR_ATTACHMENT22:Int = $8CF6
	Const GL_COLOR_ATTACHMENT23:Int = $8CF7
	Const GL_COLOR_ATTACHMENT24:Int = $8CF8
	Const GL_COLOR_ATTACHMENT25:Int = $8CF9
	Const GL_COLOR_ATTACHMENT26:Int = $8CFA
	Const GL_COLOR_ATTACHMENT27:Int = $8CFB
	Const GL_COLOR_ATTACHMENT28:Int = $8CFC
	Const GL_COLOR_ATTACHMENT29:Int = $8CFD
	Const GL_COLOR_ATTACHMENT30:Int = $8CFE
	Const GL_COLOR_ATTACHMENT31:Int = $8CFF
	Const GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE:Int = $8D56
	Const GL_MAX_SAMPLES:Int = $8D57
	Const GL_HALF_FLOAT:Int = $140B
	Const GL_MAP_READ_BIT:Int = $0001
	Const GL_MAP_WRITE_BIT:Int = $0002
	Const GL_MAP_INVALIDATE_RANGE_BIT:Int = $0004
	Const GL_MAP_INVALIDATE_BUFFER_BIT:Int = $0008
	Const GL_MAP_FLUSH_EXPLICIT_BIT:Int = $0010
	Const GL_MAP_UNSYNCHRONIZED_BIT:Int = $0020
	Const GL_RG:Int = $8227
	Const GL_RG_INTEGER:Int = $8228
	Const GL_R8:Int = $8229
	Const GL_RG8:Int = $822B
	Const GL_R16F:Int = $822D
	Const GL_R32F:Int = $822E
	Const GL_RG16F:Int = $822F
	Const GL_RG32F:Int = $8230
	Const GL_R8I:Int = $8231
	Const GL_R8UI:Int = $8232
	Const GL_R16I:Int = $8233
	Const GL_R16UI:Int = $8234
	Const GL_R32I:Int = $8235
	Const GL_R32UI:Int = $8236
	Const GL_RG8I:Int = $8237
	Const GL_RG8UI:Int = $8238
	Const GL_RG16I:Int = $8239
	Const GL_RG16UI:Int = $823A
	Const GL_RG32I:Int = $823B
	Const GL_RG32UI:Int = $823C
	Const GL_VERTEX_ARRAY_BINDING:Int = $85B5
	Const GL_R8_SNORM:Int = $8F94
	Const GL_RG8_SNORM:Int = $8F95
	Const GL_RGB8_SNORM:Int = $8F96
	Const GL_RGBA8_SNORM:Int = $8F97
	Const GL_SIGNED_NORMALIZED:Int = $8F9C
	Const GL_PRIMITIVE_RESTART_FIXED_INDEX:Int = $8D69
	Const GL_COPY_READ_BUFFER:Int = $8F36
	Const GL_COPY_WRITE_BUFFER:Int = $8F37
	Const GL_COPY_READ_BUFFER_BINDING:Int = $8F36
	Const GL_COPY_WRITE_BUFFER_BINDING:Int = $8F37
	Const GL_UNIFORM_BUFFER:Int = $8A11
	Const GL_UNIFORM_BUFFER_BINDING:Int = $8A28
	Const GL_UNIFORM_BUFFER_START:Int = $8A29
	Const GL_UNIFORM_BUFFER_SIZE:Int = $8A2A
	Const GL_MAX_VERTEX_UNIFORM_BLOCKS:Int = $8A2B
	Const GL_MAX_FRAGMENT_UNIFORM_BLOCKS:Int = $8A2D
	Const GL_MAX_COMBINED_UNIFORM_BLOCKS:Int = $8A2E
	Const GL_MAX_UNIFORM_BUFFER_BINDINGS:Int = $8A2F
	Const GL_MAX_UNIFORM_BLOCK_SIZE:Int = $8A30
	Const GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS:Int = $8A31
	Const GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS:Int = $8A33
	Const GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT:Int = $8A34
	Const GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH:Int = $8A35
	Const GL_ACTIVE_UNIFORM_BLOCKS:Int = $8A36
	Const GL_UNIFORM_TYPE:Int = $8A37
	Const GL_UNIFORM_SIZE:Int = $8A38
	Const GL_UNIFORM_NAME_LENGTH:Int = $8A39
	Const GL_UNIFORM_BLOCK_INDEX:Int = $8A3A
	Const GL_UNIFORM_OFFSET:Int = $8A3B
	Const GL_UNIFORM_ARRAY_STRIDE:Int = $8A3C
	Const GL_UNIFORM_MATRIX_STRIDE:Int = $8A3D
	Const GL_UNIFORM_IS_ROW_MAJOR:Int = $8A3E
	Const GL_UNIFORM_BLOCK_BINDING:Int = $8A3F
	Const GL_UNIFORM_BLOCK_DATA_SIZE:Int = $8A40
	Const GL_UNIFORM_BLOCK_NAME_LENGTH:Int = $8A41
	Const GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS:Int = $8A42
	Const GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES:Int = $8A43
	Const GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER:Int = $8A44
	Const GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER:Int = $8A46
	Const GL_INVALID_INDEX:UInt = $FFFFFFFF
	Const GL_MAX_VERTEX_OUTPUT_COMPONENTS:Int = $9122
	Const GL_MAX_FRAGMENT_INPUT_COMPONENTS:Int = $9125
	Const GL_MAX_SERVER_WAIT_TIMEOUT:Int = $9111
	Const GL_OBJECT_TYPE:Int = $9112
	Const GL_SYNC_CONDITION:Int = $9113
	Const GL_SYNC_STATUS:Int = $9114
	Const GL_SYNC_FLAGS:Int = $9115
	Const GL_SYNC_FENCE:Int = $9116
	Const GL_SYNC_GPU_COMMANDS_COMPLETE:Int = $9117
	Const GL_UNSIGNALED:Int = $9118
	Const GL_SIGNALED:Int = $9119
	Const GL_ALREADY_SIGNALED:Int = $911A
	Const GL_TIMEOUT_EXPIRED:Int = $911B
	Const GL_CONDITION_SATISFIED:Int = $911C
	Const GL_WAIT_FAILED:Int = $911D
	Const GL_SYNC_FLUSH_COMMANDS_BIT:Int = $00000001
	Const GL_TIMEOUT_IGNORED:ULong = $FFFFFFFFFFFFFFF
	Const GL_VERTEX_ATTRIB_ARRAY_DIVISOR:Int = $88FE
	Const GL_ANY_SAMPLES_PASSED:Int = $8C2F
	Const GL_ANY_SAMPLES_PASSED_CONSERVATIVE:Int = $8D6A
	Const GL_SAMPLER_BINDING:Int = $8919
	Const GL_RGB10_A2UI:Int = $906F
	Const GL_TEXTURE_SWIZZLE_R:Int = $8E42
	Const GL_TEXTURE_SWIZZLE_G:Int = $8E43
	Const GL_TEXTURE_SWIZZLE_B:Int = $8E44
	Const GL_TEXTURE_SWIZZLE_A:Int = $8E45
	Const GL_GREEN:Int = $1904
	Const GL_BLUE:Int = $1905
	Const GL_INT_2_10_10_10_REV:Int = $8D9F
	Const GL_TRANSFORM_FEEDBACK:Int = $8E22
	Const GL_TRANSFORM_FEEDBACK_PAUSED:Int = $8E23
	Const GL_TRANSFORM_FEEDBACK_ACTIVE:Int = $8E24
	Const GL_TRANSFORM_FEEDBACK_BINDING:Int = $8E25
	Const GL_PROGRAM_BINARY_RETRIEVABLE_HINT:Int = $8257
	Const GL_PROGRAM_BINARY_LENGTH:Int = $8741
	Const GL_NUM_PROGRAM_BINARY_FORMATS:Int = $87FE
	Const GL_PROGRAM_BINARY_FORMATS:Int = $87FF
	Const GL_COMPRESSED_R11_EAC:Int = $9270
	Const GL_COMPRESSED_SIGNED_R11_EAC:Int = $9271
	Const GL_COMPRESSED_RG11_EAC:Int = $9272
	Const GL_COMPRESSED_SIGNED_RG11_EAC:Int = $9273
	Const GL_COMPRESSED_RGB8_ETC2:Int = $9274
	Const GL_COMPRESSED_SRGB8_ETC2:Int = $9275
	Const GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2:Int = $9276
	Const GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2:Int = $9277
	Const GL_COMPRESSED_RGBA8_ETC2_EAC:Int = $9278
	Const GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC:Int = $9279
	Const GL_TEXTURE_IMMUTABLE_FORMAT:Int = $912F
	Const GL_MAX_ELEMENT_INDEX:Int = $8D6B
	Const GL_NUM_SAMPLE_COUNTS:Int = $9380
	Const GL_TEXTURE_IMMUTABLE_LEVELS:Int = $82DF

	Function glReadBuffer(src_:UInt)
	Function glDrawRangeElements(mode_:UInt, start_:UInt, end_:UInt, count_:Int, type_:UInt, indices_:Byte Ptr)
	Function glTexImage3D(target_:UInt, level_:Int, internalformat_:Int, width_:Int, height_:Int, depth_:Int, border_:Int, format_:UInt, type_:UInt, pixels_:Byte Ptr)
	Function glTexSubImage3D(target_:UInt, level_:Int, xoffset_:Int, yoffset_:Int, zoffset_:Int, width_:Int, height_:Int, depth_:Int, format_:UInt, type_:UInt, pixels_:Byte Ptr)
	Function glCopyTexSubImage3D(target_:UInt, level_:Int, xoffset_:Int, yoffset_:Int, zoffset_:Int, x_:Int, y_:Int, width_:Int, height_:Int)
	Function glCompressedTexImage3D(target_:UInt, level_:Int, internalformat_:UInt, width_:Int, height_:Int, depth_:Int, border_:Int, imageSize_:Int, data_:Byte Ptr)
	Function glCompressedTexSubImage3D(target_:UInt, level_:Int, xoffset_:Int, yoffset_:Int, zoffset_:Int, width_:Int, height_:Int, depth_:Int, format_:UInt, imageSize_:Int, data_:Byte Ptr)
	Function glGenQueries(n_:Int, ids_:UInt Ptr)
	Function glDeleteQueries(n_:Int, ids_:UInt Ptr)
	Function glIsQuery:Int(id_:UInt)
	Function glBeginQuery(target_:UInt, id_:UInt)
	Function glEndQuery(target_:UInt)
	Function glGetQueryiv(target_:UInt, pname_:UInt, params_:Int Ptr)
	Function glGetQueryObjectuiv(id_:UInt, pname_:UInt, params_:UInt Ptr)
	Function glUnmapBuffer:Int(target_:UInt)
	Function glGetBufferPointerv(target_:UInt, pname_:UInt, params_:Byte Ptr Ptr)
	Function glDrawBuffers(n_:Int, bufs_:UInt Ptr)
	Function glUniformMatrix2x3fv(location_:Int, count_:Int, transpose_:Byte, value_:Float Ptr)
	Function glUniformMatrix3x2fv(location_:Int, count_:Int, transpose_:Byte, value_:Float Ptr)
	Function glUniformMatrix2x4fv(location_:Int, count_:Int, transpose_:Byte, value_:Float Ptr)
	Function glUniformMatrix4x2fv(location_:Int, count_:Int, transpose_:Byte, value_:Float Ptr)
	Function glUniformMatrix3x4fv(location_:Int, count_:Int, transpose_:Byte, value_:Float Ptr)
	Function glUniformMatrix4x3fv(location_:Int, count_:Int, transpose_:Byte, value_:Float Ptr)
	Function glBlitFramebuffer(srcX0_:Int, srcY0_:Int, srcX1_:Int, srcY1_:Int, dstX0_:Int, dstY0_:Int, dstX1_:Int, dstY1_:Int, mask_:UInt, filter_:UInt)
	Function glRenderbufferStorageMultisample(target_:UInt, samples_:Int, internalformat_:UInt, width_:Int, height_:Int)
	Function glFramebufferTextureLayer(target_:UInt, attachment_:UInt, texture_:UInt, level_:Int, layer_:Int)
	Function glMapBufferRange:Byte Ptr(target_:UInt, offset:Int Ptr, length:Int Ptr, access_:UInt)
	Function glFlushMappedBufferRange(target_:UInt, offset:Int Ptr, length:Int Ptr)
	Function glBindVertexArray(array_:UInt)
	Function glDeleteVertexArrays(n_:Int, arrays_:UInt Ptr)
	Function glGenVertexArrays(n_:Int, arrays_:UInt Ptr)
	Function glIsVertexArray:Int(array_:UInt)
	Function glGetIntegeri_v(target_:UInt, index_:UInt, data_:Int Ptr)
	Function glBeginTransformFeedback(primitiveMode_:UInt)
	Function glEndTransformFeedback()
	Function glBindBufferRange(target_:UInt, index_:UInt, buffer_:UInt, offset:Int Ptr, size:Int Ptr)
	Function glBindBufferBase(target_:UInt, index_:UInt, buffer_:UInt)
	Function glTransformFeedbackVaryings(program_:UInt, count_:Int, varyings_:Byte Ptr Ptr, bufferMode_:UInt)
	Function glGetTransformFeedbackVarying(program_:UInt, index_:UInt, bufSize_:Int, length_:Int Ptr, size_:Int Ptr, type_:UInt Ptr, name_:Byte Ptr)
	Function glVertexAttribIPointer(index_:UInt, size_:Int, type_:UInt, stride_:Int, pointer_:Byte Ptr)
	Function glGetVertexAttribIiv(index_:UInt, pname_:UInt, params_:Int Ptr)
	Function glGetVertexAttribIuiv(index_:UInt, pname_:UInt, params_:UInt Ptr)
	Function glVertexAttribI4i(index_:UInt, x_:Int, y_:Int, z_:Int, w_:Int)
	Function glVertexAttribI4ui(index_:UInt, x_:UInt, y_:UInt, z_:UInt, w_:UInt)
	Function glVertexAttribI4iv(index_:UInt, v_:Int Ptr)
	Function glVertexAttribI4uiv(index_:UInt, v_:UInt Ptr)
	Function glGetUniformuiv(program_:UInt, location_:Int, params_:UInt Ptr)
	Function glGetFragDataLocation_:Int(program_:UInt, name:Byte Ptr)
	Function glUniform1ui(location_:Int, v0_:UInt)
	Function glUniform2ui(location_:Int, v0_:UInt, v1_:UInt)
	Function glUniform3ui(location_:Int, v0_:UInt, v1_:UInt, v2_:UInt)
	Function glUniform4ui(location_:Int, v0_:UInt, v1_:UInt, v2_:UInt, v3_:UInt)
	Function glUniform1uiv(location_:Int, count_:Int, value_:UInt Ptr)
	Function glUniform2uiv(location_:Int, count_:Int, value_:UInt Ptr)
	Function glUniform3uiv(location_:Int, count_:Int, value_:UInt Ptr)
	Function glUniform4uiv(location_:Int, count_:Int, value_:UInt Ptr)
	Function glClearBufferiv(buffer_:UInt, drawbuffer_:Int, value_:Int Ptr)
	Function glClearBufferuiv(buffer_:UInt, drawbuffer_:Int, value_:UInt Ptr)
	Function glClearBufferfv(buffer_:UInt, drawbuffer_:Int, value_:Float Ptr)
	Function glClearBufferfi(buffer_:UInt, drawbuffer_:Int, depth:Float, stencil_:Int)
	Function glGetStringi(name_:UInt, index_:UInt)
	Function glCopyBufferSubData(readTarget_:UInt, writeTarget_:UInt, readOffset_:Int Ptr, writeOffset_:Int Ptr, size_:Int Ptr)
	Function glGetUniformIndices(program_:UInt, uniformCount_:Int, uniformNames_:Byte Ptr Ptr, uniformIndices_:UInt Ptr)
	Function glGetActiveUniformsiv(program_:UInt, uniformCount_:Int, uniformIndices_:UInt Ptr, pname_:UInt, params_:Int Ptr)
	Function glGetUniformBlockIndex_:UInt(program_:UInt, uniformBlockName:Byte Ptr)
	Function glGetActiveUniformBlockiv(program_:UInt, uniformBlockIndex_:UInt, pname_:UInt, params_:Int Ptr)
	Function glGetActiveUniformBlockName(program_:UInt, uniformBlockIndex_:UInt, bufSize_:Int, length_:Int Ptr, uniformBlockName_:Byte Ptr)
	Function glUniformBlockBinding(program_:UInt, uniformBlockIndex_:UInt, uniformBlockBinding_:UInt)
	Function glDrawArraysInstanced(mode_:UInt, first_:Int, count_:Int, instancecount_:Int)
	Function glDrawElementsInstanced(mode_:UInt, count_:Int, type_:UInt, indices_:Byte Ptr, instancecount_:Int)
	Function glFenceSync:Byte Ptr(condition_:UInt, flags_:UInt)
	Function glIsSync:Byte(sync_:Byte Ptr)
	Function glDeleteSync(sync_:Byte Ptr)
	Function glClientWaitSync_:UInt(sync_:Byte Ptr, flags_:UInt, Utimeout_:Long)
	Function glWaitSync(sync_:Byte Ptr, flags_:UInt, Utimeout_:Long)
	Function glGetInteger64v(pname_:UInt, data_:Long Ptr)
	Function glGetSynciv(sync_:Byte Ptr, pname_:UInt, count_:Int, length_:Int Ptr, values_:Int Ptr)
	Function glGetInteger64i_v(target_:UInt, index_:UInt, data_:Long Ptr)
	Function glGetBufferParameteri64v(target_:UInt, pname_:UInt, params_:Long Ptr)
	Function glGenSamplers(count_:Int, samplers_:UInt Ptr)
	Function glDeleteSamplers(count_:Int, samplers_:UInt Ptr)
	Function glIsSampler:Byte(sampler_:UInt)
	Function glBindSampler(unit_:UInt, sampler_:UInt)
	Function glSamplerParameteri(sampler_:UInt, pname_:UInt, param_:Int)
	Function glSamplerParameteriv(sampler_:UInt, pname_:UInt, param_:Int Ptr)
	Function glSamplerParameterf(sampler_:UInt, pname_:UInt, param:Float)
	Function glSamplerParameterfv(sampler_:UInt, pname_:UInt, param_:Float Ptr)
	Function glGetSamplerParameteriv(sampler_:UInt, pname_:UInt, params_:Int Ptr)
	Function glGetSamplerParameterfv(sampler_:UInt, pname_:UInt, params_:Float Ptr)
	Function glVertexAttribDivisor(index_:UInt, divisor_:UInt)
	Function glBindTransformFeedback(target_:UInt, id_:UInt)
	Function glDeleteTransformFeedbacks(n_:Int, ids_:UInt Ptr)
	Function glGenTransformFeedbacks(n_:Int, ids_:UInt Ptr)
	Function glIsTransformFeedback:Byte(id_:UInt)
	Function glPauseTransformFeedback()
	Function glResumeTransformFeedback()
	Function glGetProgramBinary(program_:UInt, bufSize_:Int, length_:Int Ptr, binaryFormat_:UInt Ptr, binary_:Byte Ptr)
	Function glProgramBinary(program_:UInt, binaryFormat_:UInt, binary_:Byte Ptr, length_:Int)
	Function glProgramParameteri(program_:UInt, pname_:UInt, value_:Int)
	Function glInvalidateFramebuffer(target_:UInt, numAttachments_:Int, attachments_:UInt Ptr)
	Function glInvalidateSubFramebuffer(target_:UInt, numAttachments_:Int, attachments_:UInt Ptr, x_:Int, y_:Int, width_:Int, height_:Int)
	Function glTexStorage2D(target_:UInt, levels_:Int, internalformat_:UInt, width_:Int, height_:Int)
	Function glTexStorage3D(target_:UInt, levels_:Int, internalformat_:UInt, width_:Int, height_:Int, depth_:Int)
	Function glGetInternalformativ(target_:UInt, internalformat_:UInt, pname_:UInt, count_:Int, params_:Int Ptr)

End Extern

