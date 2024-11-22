
Strict

?win32
Import "GL/glu.h"
?

'GLU CONSTANTS
' Boolean
Const GLU_FALSE:Int                          = 0
Const GLU_TRUE:Int                           = 1

' StringName
Const GLU_VERSION:Int                        = 100800
Const GLU_EXTENSIONS:Int                     = 100801

' ErrorCode
Const GLU_INVALID_ENUM:Int                   = 100900
Const GLU_INVALID_VALUE:Int                  = 100901
Const GLU_OUT_OF_MEMORY:Int                  = 100902
Const GLU_INCOMPATIBLE_GL_VERSION:Int        = 100903
Const GLU_INVALID_OPERATION:Int              = 100904

' NurbsDisplay
'      GLU_FILL
Const GLU_OUTLINE_POLYGON:Int                = 100240
Const GLU_OUTLINE_PATCH:Int                  = 100241

' NurbsCallback
Const GLU_NURBS_ERROR:Int                    = 100103
Const GLU_ERROR:Int                          = 100103
Const GLU_NURBS_BEGIN:Int                    = 100164
Const GLU_NURBS_BEGIN_EXT:Int                = 100164
Const GLU_NURBS_VERTEX:Int                   = 100165
Const GLU_NURBS_VERTEX_EXT:Int               = 100165
Const GLU_NURBS_NORMAL:Int                   = 100166
Const GLU_NURBS_NORMAL_EXT:Int               = 100166
Const GLU_NURBS_COLOR:Int                    = 100167
Const GLU_NURBS_COLOR_EXT:Int                = 100167
Const GLU_NURBS_TEXTURE_COORD:Int            = 100168
Const GLU_NURBS_TEX_COORD_EXT:Int            = 100168
Const GLU_NURBS_END:Int                      = 100169
Const GLU_NURBS_END_EXT:Int                  = 100169
Const GLU_NURBS_BEGIN_DATA:Int               = 100170
Const GLU_NURBS_BEGIN_DATA_EXT:Int           = 100170
Const GLU_NURBS_VERTEX_DATA:Int              = 100171
Const GLU_NURBS_VERTEX_DATA_EXT:Int          = 100171
Const GLU_NURBS_NORMAL_DATA:Int              = 100172
Const GLU_NURBS_NORMAL_DATA_EXT:Int          = 100172
Const GLU_NURBS_COLOR_DATA:Int               = 100173
Const GLU_NURBS_COLOR_DATA_EXT:Int           = 100173
Const GLU_NURBS_TEXTURE_COORD_DATA:Int       = 100174
Const GLU_NURBS_TEX_COORD_DATA_EXT:Int       = 100174
Const GLU_NURBS_END_DATA:Int                 = 100175
Const GLU_NURBS_END_DATA_EXT:Int             = 100175

' NurbsError
Const GLU_NURBS_ERROR1:Int                   = 100251
Const GLU_NURBS_ERROR2:Int                   = 100252
Const GLU_NURBS_ERROR3:Int                   = 100253
Const GLU_NURBS_ERROR4:Int                   = 100254
Const GLU_NURBS_ERROR5:Int                   = 100255
Const GLU_NURBS_ERROR6:Int                   = 100256
Const GLU_NURBS_ERROR7:Int                   = 100257
Const GLU_NURBS_ERROR8:Int                   = 100258
Const GLU_NURBS_ERROR9:Int                   = 100259
Const GLU_NURBS_ERROR10:Int                  = 100260
Const GLU_NURBS_ERROR11:Int                  = 100261
Const GLU_NURBS_ERROR12:Int                  = 100262
Const GLU_NURBS_ERROR13:Int                  = 100263
Const GLU_NURBS_ERROR14:Int                  = 100264
Const GLU_NURBS_ERROR15:Int                  = 100265
Const GLU_NURBS_ERROR16:Int                  = 100266
Const GLU_NURBS_ERROR17:Int                  = 100267
Const GLU_NURBS_ERROR18:Int                  = 100268
Const GLU_NURBS_ERROR19:Int                  = 100269
Const GLU_NURBS_ERROR20:Int                  = 100270
Const GLU_NURBS_ERROR21:Int                  = 100271
Const GLU_NURBS_ERROR22:Int                  = 100272
Const GLU_NURBS_ERROR23:Int                  = 100273
Const GLU_NURBS_ERROR24:Int                  = 100274
Const GLU_NURBS_ERROR25:Int                  = 100275
Const GLU_NURBS_ERROR26:Int                  = 100276
Const GLU_NURBS_ERROR27:Int                  = 100277
Const GLU_NURBS_ERROR28:Int                  = 100278
Const GLU_NURBS_ERROR29:Int                  = 100279
Const GLU_NURBS_ERROR30:Int                  = 100280
Const GLU_NURBS_ERROR31:Int                  = 100281
Const GLU_NURBS_ERROR32:Int                  = 100282
Const GLU_NURBS_ERROR33:Int                  = 100283
Const GLU_NURBS_ERROR34:Int                  = 100284
Const GLU_NURBS_ERROR35:Int                  = 100285
Const GLU_NURBS_ERROR36:Int                  = 100286
Const GLU_NURBS_ERROR37:Int                  = 100287

' NurbsProperty
Const GLU_AUTO_LOAD_MATRIX:Int               = 100200
Const GLU_CULLING:Int                        = 100201
Const GLU_SAMPLING_TOLERANCE:Int             = 100203
Const GLU_DISPLAY_MODE:Int                   = 100204
Const GLU_PARAMETRIC_TOLERANCE:Int           = 100202
Const GLU_SAMPLING_METHOD:Int                = 100205
Const GLU_U_STEP:Int                         = 100206
Const GLU_V_STEP:Int                         = 100207
Const GLU_NURBS_MODE:Int                     = 100160
Const GLU_NURBS_MODE_EXT:Int                 = 100160
Const GLU_NURBS_TESSELLATOR:Int              = 100161
Const GLU_NURBS_TESSELLATOR_EXT:Int          = 100161
Const GLU_NURBS_RENDERER:Int                 = 100162
Const GLU_NURBS_RENDERER_EXT:Int             = 100162

' NurbsSampling
Const GLU_OBJECT_PARAMETRIC_ERROR:Int        = 100208
Const GLU_OBJECT_PARAMETRIC_ERROR_EXT:Int    = 100208
Const GLU_OBJECT_PATH_LENGTH:Int             = 100209
Const GLU_OBJECT_PATH_LENGTH_EXT:Int         = 100209
Const GLU_PATH_LENGTH:Int                    = 100215
Const GLU_PARAMETRIC_ERROR:Int               = 100216
Const GLU_DOMAIN_DISTANCE:Int                = 100217

' NurbsTrim
Const GLU_MAP1_TRIM_2:Int                    = 100210
Const GLU_MAP1_TRIM_3:Int                    = 100211

' QuadricDrawStyle
Const GLU_POINT:Int                          = 100010
Const GLU_LINE:Int                           = 100011
Const GLU_FILL:Int                           = 100012
Const GLU_SILHOUETTE:Int                     = 100013

' QuadricCallback
'      GLU_ERROR

' QuadricNormal
Const GLU_SMOOTH:Int                         = 100000
Const GLU_FLAT:Int                           = 100001
Const GLU_NONE:Int                           = 100002

' QuadricOrientation
Const GLU_OUTSIDE:Int                        = 100020
Const GLU_INSIDE:Int                         = 100021

' TessCallback
Const GLU_TESS_BEGIN:Int                     = 100100
Const GLU_BEGIN:Int                          = 100100
Const GLU_TESS_VERTEX:Int                    = 100101
Const GLU_VERTEX:Int                         = 100101
Const GLU_TESS_END:Int                       = 100102
Const GLU_END:Int                            = 100102
Const GLU_TESS_ERROR:Int                     = 100103
Const GLU_TESS_EDGE_FLAG:Int                 = 100104
Const GLU_EDGE_FLAG:Int                      = 100104
Const GLU_TESS_COMBINE:Int                   = 100105
Const GLU_TESS_BEGIN_DATA:Int                = 100106
Const GLU_TESS_VERTEX_DATA:Int               = 100107
Const GLU_TESS_END_DATA:Int                  = 100108
Const GLU_TESS_ERROR_DATA:Int                = 100109
Const GLU_TESS_EDGE_FLAG_DATA:Int            = 100110
Const GLU_TESS_COMBINE_DATA:Int              = 100111

' TessContour
Const GLU_CW:Int                             = 100120
Const GLU_CCW:Int                            = 100121
Const GLU_INTERIOR:Int                       = 100122
Const GLU_EXTERIOR:Int                       = 100123
Const GLU_UNKNOWN:Int                        = 100124

' TessProperty
Const GLU_TESS_WINDING_RULE:Int              = 100140
Const GLU_TESS_BOUNDARY_ONLY:Int             = 100141
Const GLU_TESS_TOLERANCE:Int                 = 100142

' TessError
Const GLU_TESS_ERROR1:Int                    = 100151
Const GLU_TESS_ERROR2:Int                    = 100152
Const GLU_TESS_ERROR3:Int                    = 100153
Const GLU_TESS_ERROR4:Int                    = 100154
Const GLU_TESS_ERROR5:Int                    = 100155
Const GLU_TESS_ERROR6:Int                    = 100156
Const GLU_TESS_ERROR7:Int                    = 100157
Const GLU_TESS_ERROR8:Int                    = 100158
Const GLU_TESS_MISSING_BEGIN_POLYGON:Int     = 100151
Const GLU_TESS_MISSING_BEGIN_CONTOUR:Int     = 100152
Const GLU_TESS_MISSING_END_POLYGON:Int       = 100153
Const GLU_TESS_MISSING_END_CONTOUR:Int       = 100154
Const GLU_TESS_COORD_TOO_LARGE:Int           = 100155
Const GLU_TESS_NEED_COMBINE_CALLBACK:Int     = 100156

' TessWinding
Const GLU_TESS_WINDING_ODD:Int               = 100130
Const GLU_TESS_WINDING_NONZERO:Int           = 100131
Const GLU_TESS_WINDING_POSITIVE:Int          = 100132
Const GLU_TESS_WINDING_NEGATIVE:Int          = 100133
Const GLU_TESS_WINDING_ABS_GEQ_TWO:Int       = 100134


'GLU FUNCTIONS
Extern "Os"

Function gluBeginCurve(nurbs_nurb:Byte Ptr)="void gluBeginCurve (GLUnurbs*)!"
Function gluBeginPolygon(tesselator_tess:Byte Ptr)="void gluBeginPolygon (GLUtesselator* )!"
Function gluBeginSurface(nurbs_nurb:Byte Ptr)="void gluBeginSurface (GLUnurbs*)!"
Function gluBeginTrim(nurbs_nurb:Byte Ptr)="void gluBeginTrim (GLUnurbs*)!"
Function gluBuild1DMipmapLevels(enum_target,int_internalFormat,sizei_width,enum_format,enum_type,int_level,int_base,int_max,void_data:Byte Ptr)="BBINT gluBuild1DMipmapLevels(BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBBYTE* )!"
Function gluBuild1DMipmaps(enum_target,int_internalFormat,sizei_width,enum_format,enum_type,void_data:Byte Ptr)="GLint gluBuild1DMipmaps (GLenum , GLint , GLsizei , GLenum , GLenum , const void *)!"
Function gluBuild2DMipmapLevels(enum_target,int_internalFormat,sizei_width,sizei_height,enum_format,enum_type,int_level,int_base,int_max,void_data:Byte Ptr)="BBINT gluBuild2DMipmapLevels(BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBBYTE* )!"
Function gluBuild2DMipmaps(enum_target,int_internalFormat,sizei_width,sizei_height,enum_format,enum_type,void_data:Byte Ptr)="GLint gluBuild2DMipmaps (GLenum , GLint , GLsizei , GLsizei , GLenum , GLenum , const void *)!"
Function gluBuild3DMipmapLevels(enum_target,int_internalFormat,sizei_width,sizei_height,sizei_depth,enum_format,enum_type,int_level,int_base,int_max,void_data:Byte Ptr)="BBINT gluBuild3DMipmapLevels(BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBBYTE* )!"
Function gluBuild3DMipmaps(enum_target,int_internalFormat,sizei_width,sizei_height,sizei_depth,enum_format,enum_type,void_data:Byte Ptr)="BBINT gluBuild3DMipmaps(BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBINT ,BBBYTE* )!"
Function gluCylinder(quadric_quad:Byte Ptr,double_base!,double_top!,double_height!,int_slices,int_stacks)="void gluCylinder (GLUquadric* , GLdouble , GLdouble , GLdouble , GLint , GLint )!"
Function gluDeleteNurbsRenderer(nurbs_nurb:Byte Ptr)="void gluDeleteNurbsRenderer (GLUnurbs*)!"
Function gluDeleteQuadric(quadric_quad:Byte Ptr)="void gluDeleteQuadric (GLUquadric* )!"
Function gluDeleteTess(tesselator_tess:Byte Ptr)="void gluDeleteTess (GLUtesselator* )!"
Function gluDisk(quadric_quad:Byte Ptr,double_inner!,double_outer!,int_slices,int_loops)="void gluDisk (GLUquadric* , GLdouble , GLdouble , GLint , GLint )!"
Function gluEndCurve(nurbs_nurb:Byte Ptr)="void gluEndCurve (GLUnurbs*)!"
Function gluEndPolygon(tesselator_tess:Byte Ptr)="void gluEndPolygon (GLUtesselator* )!"
Function gluEndSurface(nurbs_nurb:Byte Ptr)="void gluEndSurface (GLUnurbs*)!"
Function gluEndTrim(nurbs_nurb:Byte Ptr)="void gluEndTrim (GLUnurbs*)!"
Function gluGetNurbsProperty(nurbs_nurb:Byte Ptr,enum_property,float_data:Float Ptr)="void gluGetNurbsProperty (GLUnurbs*, GLenum , GLfloat* )!"
Function gluGetTessProperty(tesselator_tess:Byte Ptr,enum_which,double_data! Ptr)="void gluGetTessProperty (GLUtesselator* , GLenum , GLdouble* )!"
Function gluLoadSamplingMatrices(nurbs_nurb:Byte Ptr,float_model:Float Ptr,float_perspective:Float Ptr,int_view Ptr)="void gluLoadSamplingMatrices (GLUnurbs*, const GLfloat *, const GLfloat *, const GLint *)!"
Function gluLookAt(double_eyeX!,double_eyeY!,double_eyeZ!,double_centerX!,double_centerY!,double_centerZ!,double_upX!,double_upY!,double_upZ!)="void gluLookAt (GLdouble , GLdouble , GLdouble , GLdouble , GLdouble , GLdouble , GLdouble , GLdouble , GLdouble )!"
Function gluNewNurbsRenderer:Byte Ptr()="GLUnurbs* gluNewNurbsRenderer ()!"
Function gluNewQuadric:Byte Ptr()="GLUquadric* gluNewQuadric ()!"
Function gluNewTess:Byte Ptr()="GLUtesselator* gluNewTess ()!"
Function gluNextContour(tesselator_tess:Byte Ptr,enum_type)="void gluNextContour (GLUtesselator* , GLenum )!"
Function gluNurbsCallbackData(nurbs_nurb:Byte Ptr,void_userData:Byte Ptr)="BBINT gluNurbsCallbackData(BBBYTE* ,BBBYTE* )!"
Function gluNurbsCallbackDataEXT(nurbs_nurb:Byte Ptr,void_userData:Byte Ptr)="BBINT gluNurbsCallbackDataEXT(BBBYTE* ,BBBYTE* )!"
Function gluNurbsCurve(nurbs_nurb:Byte Ptr,int_knotCount,float_knots:Float Ptr,int_stride,float_control:Float Ptr,int_order,enum_type)="void gluNurbsCurve (GLUnurbs*, GLint , GLfloat *, GLint , GLfloat *, GLint , GLenum )!"
Function gluNurbsProperty(nurbs_nurb:Byte Ptr,enum_property,float_value:Float)="void gluNurbsProperty (GLUnurbs*, GLenum , GLfloat )!"
Function gluNurbsSurface(nurbs_nurb:Byte Ptr,int_sKnotCount,float_sKnots:Float Ptr,int_tKnotCount,float_tKnots:Float Ptr,int_sStride,int_tStride,float_control:Float Ptr,int_sOrder,int_tOrder,enum_type)="void gluNurbsSurface (GLUnurbs*, GLint , GLfloat* , GLint , GLfloat* , GLint , GLint , GLfloat* , GLint , GLint , GLenum )!"
Function gluOrtho2D(double_left!,double_right!,double_bottom!,double_top!)="void gluOrtho2D (GLdouble , GLdouble , GLdouble , GLdouble )!"
Function gluPartialDisk(quadric_quad:Byte Ptr,double_inner!,double_outer!,int_slices,int_loops,double_start!,double_sweep!)="void gluPartialDisk (GLUquadric* , GLdouble , GLdouble , GLint , GLint , GLdouble , GLdouble )!"
Function gluPerspective(double_fovy!,double_aspect!,double_zNear!,double_zFar!)="void gluPerspective (GLdouble , GLdouble , GLdouble , GLdouble )!"
Function gluPickMatrix(double_x!,double_y!,double_delX!,double_delY!,int_viewport Ptr)="void gluPickMatrix (GLdouble , GLdouble , GLdouble , GLdouble , GLint *)!"
Function gluProject(double_objX!,double_objY!,double_objZ!,double_model! Ptr,double_proj! Ptr,int_view Ptr,double_winX! Ptr,double_winY! Ptr,double_winZ! Ptr)="GLint gluProject (GLdouble , GLdouble , GLdouble , const GLdouble *, const GLdouble *, const GLint *, GLdouble* , GLdouble* , GLdouble* )!"
Function gluPwlCurve(nurbs_nurb:Byte Ptr,int_count,float_data:Float Ptr,int_stride,enum_type)="void gluPwlCurve (GLUnurbs*, GLint , GLfloat* , GLint , GLenum )!"
Function gluQuadricDrawStyle(quadric_quad:Byte Ptr,enum_draw)="void gluQuadricDrawStyle (GLUquadric* , GLenum )!"
Function gluQuadricNormals(quadric_quad:Byte Ptr,enum_normal)="void gluQuadricNormals (GLUquadric* , GLenum )!"
Function gluQuadricOrientation(quadric_quad:Byte Ptr,enum_orientation)="void gluQuadricOrientation (GLUquadric* , GLenum )!"
Function gluQuadricTexture(quadric_quad:Byte Ptr,boolean_texture@)="void gluQuadricTexture (GLUquadric* , GLboolean )!"
Function gluScaleImage(enum_format,sizei_wIn,sizei_hIn,enum_typeIn,void_dataIn:Byte Ptr,sizei_wOut,sizei_hOut,enum_typeOut,void_dataOut:Byte Ptr)="GLint gluScaleImage (GLenum , GLsizei , GLsizei , GLenum , const void *, GLsizei , GLsizei , GLenum , GLvoid* )!"
Function gluSphere(quadric_quad:Byte Ptr,double_radius!,int_slices,int_stacks)="void gluSphere (GLUquadric* , GLdouble , GLint , GLint )!"
Function gluTessBeginContour(tesselator_tess:Byte Ptr)="void gluTessBeginContour (GLUtesselator* )!"
Function gluTessBeginPolygon(tesselator_tess:Byte Ptr,void_data:Byte Ptr)="void gluTessBeginPolygon (GLUtesselator* , GLvoid* )!"
Function gluTessEndContour(tesselator_tess:Byte Ptr)="void gluTessEndContour (GLUtesselator* )!"
Function gluTessEndPolygon(tesselator_tess:Byte Ptr)="void gluTessEndPolygon (GLUtesselator* )!"
Function gluTessNormal(tesselator_tess:Byte Ptr,double_valueX!,double_valueY!,double_valueZ!)="void gluTessNormal (GLUtesselator* , GLdouble , GLdouble , GLdouble )!"
Function gluTessProperty(tesselator_tess:Byte Ptr,enum_which,double_data!)="void gluTessProperty (GLUtesselator* , GLenum , GLdouble )!"
Function gluTessVertex(tesselator_tess:Byte Ptr,double_location! Ptr,void_data:Byte Ptr)="void gluTessVertex (GLUtesselator* , GLdouble *, GLvoid* )!"
Function gluUnProject(double_winX!,double_winY!,double_winZ!,double_model! Ptr,double_proj! Ptr,int_view Ptr,double_objX! Ptr,double_objY! Ptr,double_objZ! Ptr)="GLint gluUnProject (GLdouble , GLdouble , GLdouble , const GLdouble *, const GLdouble *, const GLint *, GLdouble* , GLdouble* , GLdouble* )!"
Function gluUnProject4(double_winX!,double_winY!,double_winZ!,double_clipW!,double_model! Ptr,double_proj! Ptr,int_view Ptr,double_nearVal!,double_farVal!,double_objX! Ptr,double_objY! Ptr,double_objZ! Ptr,double_objW! Ptr)="GLint gluUnProject4 (GLdouble , GLdouble , GLdouble , GLdouble , const GLdouble *, const GLdouble *, const GLint *, GLdouble , GLdouble , GLdouble* , GLdouble* , GLdouble* , GLdouble* )!"

End Extern
