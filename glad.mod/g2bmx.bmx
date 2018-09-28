Strict
Framework brl.basic
Import brl.map
Import brl.retro
Import brl.system

'
' Generates bmx source from glad.h
'

Global OutDir:String = "_out_"
Local OutOpenGLName$="opengl.bmx"
Local OutGladName$="glad.bmx"

Const LINES_PER_PAGE:Int = 500

CreateDir(outDir, True)
Global OutOpenGL:TStream	=	WriteStream(outDir + "/" + OutOpenGLName$)
Global OutGlad	:TStream	=	WriteStream(outDir + "/" + OutGladName$)
Global Out		:TStream	=	OutOpenGL

Local generator:TCodeGenerator = New TCodeGenerator

generator.Generate()


Type TCodeGenerator

	Const STAGE_COUNT:Int = 0
	Const STAGE_GENERATE:Int = 1
	
	Const TYPE_OPENGL:Int = 0
	Const TYPE_GLAD:Int = 1
	
	Field timestamp:String = CurrentDate()
	
	Field stage:Int

	Field generateType:Int
	
	Field curr:String
	Field Text:String
	
	Field gladSource:String[]
	Field totalLines:Int
	Field pageCount:Int
	Field page:Int = -1
	Field lineCount:Int
	
	Method Init()
		gladSource = LoadText("glad/glad.h").Split("~n")
	End Method
	
	Method Generate()
	
		Init()
		
		stage = STAGE_COUNT
		
		Process()
		
		pageCount = totalLines / LINES_PER_PAGE
		If totalLines Mod LINES_PER_PAGE > 0 Then
			pageCount :+ 1
		End If
		
		stage = STAGE_GENERATE
		
		MainGlad()
		HeaderOpenGL()
		NextGlad()

		Process()

		WriteLine OutOpenGL	, ""
		WriteLine OutOpenGL	, "End Extern"
		OutOpenGL.Close

		WriteLine OutGlad	, ""
		WriteLine OutGlad	, "End Extern"
		WriteLine OutGlad	, ""
		WriteLine OutGlad	, "Extern ~qC~q"
		WriteLine OutGlad	, "Function gladLoadGL:Int()=~qint gladLoadGL()!~q"
		WriteLine OutGlad	, "End Extern"
		OutGlad.Close
			
	End Method
	
	Method GenerateApi (chaine$, bbDoc$)
		
		Select stage
			Case STAGE_COUNT
				Select generateType
					Case TYPE_GLAD
						totalLines :+ 1
					Case TYPE_OPENGL
						If Instr ( chaine , "glViewport" )
							generateType = TYPE_GLAD
						End If
				End Select
				
			Case STAGE_GENERATE
			
				'WriteLine Out,"rem"
				'WriteLine Out,"bbdoc: "+bbDoc
				'WriteLine Out,"endrem"
				WriteLine Out,chaine

				Select generateType
					Case TYPE_GLAD
						lineCount :+ 1
						If lineCount = LINES_PER_PAGE Then
							FooterGlad()
							NextGlad()
							Out = OutGlad
							lineCount = 0
						End If
					Case TYPE_OPENGL
						If Instr ( chaine , "glViewport" )
							Out = OutGlad
							generateType = TYPE_GLAD
						End If
				End Select
		End Select
		
	End Method
	
	Method NextGlad()
		page :+ 1
		OutGlad = WriteStream(outDir + "/" + GladFile(page))
		
		HeaderGlad()
	End Method
	
	Method GladFile:String(page:Int)
		Local s:String = "00" + page
		Return "glad" + s[s.length-2..] + ".bmx"
	End Method
	
	Method Process()
	
		generateType = TYPE_OPENGL

		Local funMap:TMap=New TMap
		Local constMap:TMap=New TMap
		Local delayedMap:TMap = New TMap
	
		For Text:String = EachIn gladSource
			bump
			If curr="GLAPI"
				bump
				Local ty:Tty = New Tty
				Local funty$=gltype(ty)
				If funty<>"x" And curr="GLAPIENTRY"
					Local id$=bump()
					If id[..2]="gl" And bump()="("
						Local p:Tproto = New TProto
						Local proto$=glproto(p)
						If proto<>"x"
							GenerateApi ( "Function "+id+funty+"("+proto+")", "GL Function "+id+funty )
						EndIf
					EndIf
				EndIf
			Else If curr="#"
				If bump()="define"
					Local id$=bump()
					If id[..11]="GL_VERSION_"
						
					Else If id[..3]="GL_"
						If Not constMap.ValueForKey(id)
							Local n$=bump()
							If n[..2]="0x"
								GenerateApi ( "Const "+id+"=$"+n[2..], "GL Const "+id )
							Else If n.length
								If isdigit(n[0]) 'And n<>"1"
									GenerateApi ( "Const "+id+"="+n, "GL Const "+id )
								Else
									Local v:String = String(constMap.ValueForKey(n))
									If v Then
										If v[..2]="0x" Then
											GenerateApi ( "Const "+id+"=$" + v[2..], "GL Const "+id )
										Else
											GenerateApi ( "Const "+id+"=" + v, "GL Const "+id )
										End If
									Else
										delayedMap.Insert(id, n)
									End If
								End If
							EndIf
							constMap.Insert id,n
						EndIf
					Else If id[..5]="GLAD_"
						If bump()="GLAD_GET_VAR" And bump()="("
							Local sym$=bump()
							If sym[..7]="__GLAD_" And bump()=")"
							If Not constMap.ValueForKey("GL_"+id[5..])
								GenerateApi ( "Global GL_"+id[5..]+":Byte=~q"+sym+"~q", "GL Global "+id )
								End If
							EndIf
						EndIf
					Else If id[..2]="gl"
						'If bump()="GLAD_GET_FUN" And bump()="("
							Local sym$=bump()
							If sym[..5]="glad_"' And bump()=")"
								Local key$="PFN"+sym[5..].ToUpper()+"PROC"
								Local val:Tproto=Tproto( funMap.ValueForKey( key ) )
								If val
									GenerateApi ( "Global "+id+val.proto+"=~q"+val.exproto.Replace("XXXXXXXX", sym).Trim()+"~q", "GL Global "+id+val.proto )
								Else
									DebugLog "***** "+sym+" *****"
								EndIf
							EndIf
						'EndIf
					EndIf
				EndIf
			Else If curr="typedef"
				bump
				Local ty:Tty = New Tty
				Local funty$=gltype(ty)
				If funty<>"x" And curr="(" And bump()="APIENTRYP"
					Local id$=bump()
					If id[..5]="PFNGL" And bump()=")" And bump()="("
						Local p:Tproto = New TProto
						Local proto$=glproto(p)
						If proto<>"x"
							p.proto = funty+"("+proto+")"
							p.exproto = ty.exty + " XXXXXXXX(" + p.exproto + ")!"
							funMap.Insert id, p
						EndIf
					EndIf
				EndIf
			EndIf
		Next
		
		For Local id:String = EachIn delayedMap.Keys()
			Local v:String = String(delayedMap.ValueForKey(id))
			
			If v Then
				Local c:String = String(constMap.ValueForKey(v))
				
				If c Then
					If c[..2]="0x" Then
						GenerateApi ( "Const "+id+"=$" + c[2..], "GL Const "+id )
					Else
						GenerateApi ( "Const "+id+"=" + c, "GL Const "+id )
					End If
				End If
			End If
		
		Next

	End Method	
	
	Method glproto$(proto:Tproto)
		If bump()=")" Return ""
		Local err,argid
		Repeat
			Local ty:Tty = New Tty
			Local argty$=gltype(ty)
			If argty="x" Return argty
			Local id$
			If curr<>"," And curr<>")" And curr.length And (isalpha(curr[0]) Or curr[0]=Asc("_"))
				id$=curr
				If bump()="["
					While bump()<>"]"
					Wend
					bump
					If Not argty argty="Byte"
					argty:+" Ptr"
				EndIf
			Else
				id="arg"+argid
			EndIf
			argid:+1
			If proto.proto Then
				proto.proto:+","
				proto.exproto:+","
			End If
			proto.proto:+id+"_"+argty
			proto.exproto :+ ty.exty
			If curr=")"
				bump
				If proto.proto="arg0_" proto.proto=""
				Return proto.proto
			EndIf
			If curr<>"," Return "x"
			bump
		Forever
	End Method
	
	Method gltype$(ty:TTy)
		'Local ty$
		'Local exty:String
		If curr="const"
			ty.exty :+ curr
			bump
		EndIf
		Select curr
		Case "void","GLvoid"
			ty.ty=""
		Case "char","GLbyte","GLubyte","GLchar","GLboolean","GLcharARB"
			ty.ty="Byte"
		Case "GLshort","GLushort","GLhalf"
			ty.ty="Short"
		Case "GLint","GLuint","GLenum","GLsizei","GLbitfield"
			ty.ty="Int"
		Case "GLintptr","GLsizeiptr","GLintptrARB","GLsizeiptrARB"
			ty.ty="Int"
		Case "GLhandleARB"
			ty.ty="Int"
		Case "GLint64EXT","GLuint64EXT", "GLint64", "GLuint64"
			ty.ty="Long"
		Case "GLfloat","GLclampf"
			ty.ty="Float"
		Case "GLdouble","GLclampd"
			ty.ty="Double"
		Default
			Return "x"
		End Select
		ty.exty :+ " " + curr
		Repeat
			bump
			If curr="const" Then
				ty.exty :+ " " + curr
				bump
			End If
			If curr<>"*" Exit
			ty.exty :+ curr
			If Not ty.ty ty.ty="Byte"
			ty.ty:+" Ptr"
		Forever
		If ty.ty ty.ty=":"+ty.ty
		Return ty.ty
	End Method
	
	Method isalpha( c )
		Return (c>=Asc("A") And c<=Asc("Z")) Or (c>=Asc("a") And c<=Asc("z"))
	End Method
	
	Method isdigit( c )
		Return c>=Asc("0") And c<=Asc("9")
	End Method
	
	Method isalnum( c )
		Return isalpha(c) Or isdigit(c)
	End Method
	
	Method isxdigit( c )
		Return (c>=Asc("A") And c<=Asc("F")) Or (c>=Asc("a") And c<=Asc("f")) Or isdigit(c)
	End Method
	
	Method bump$()
		Local i=0
		While i<Text.length And Text[i]<=Asc(" ")
			i:+1
		Wend
		If i=Text.length
			curr=""
			Text=""
			Return curr
		EndIf
		Text=Text[i..]
		Local c=Text[0]
		i=1
		If isalpha(c) Or c=Asc("_")
			While i<Text.length And (isalnum( Text[i] ) Or Text[i]=Asc("_"))
				i:+1
			Wend
		Else If c>=Asc("0") And c<=Asc("9")
			If i<Text.length And c=Asc("0") And Text[i]=Asc("x")
				i:+1
				While i<Text.length And isxdigit(Text[i])
					i:+1
				Wend
			Else
				While i<Text.length And isdigit(Text[i])
					i:+1
				Wend
			EndIf
		EndIf
		curr=Text[..i]
		Text=Text[i..]
		Return curr
	End Method

	Method HeaderOpenGL()
		Warning(OutOpenGL)
		WriteLine OutOpenGL, "Strict"
		'WriteLine OutOpenGL, "Rem"
		'WriteLine OutOpenGL, "bbdoc: Graphics/OpenGL 1.1"
		'WriteLine OutOpenGL, "End Rem"
		'WriteLine OutOpenGL, "Module Pub.OpenGL"
		WriteLine OutOpenGL, ""
		'WriteLine OutOpenGL, "ModuleInfo ~qVersion: 1.02~q"
		'WriteLine OutOpenGL, "ModuleInfo ~qLicense: SGI Free Software License B~q"
		'WriteLine OutOpenGL, "ModuleInfo ~qModserver: brl~q"
		WriteLine OutOpenGL, "Import ~qglad/glad.h~q"
		WriteLine OutOpenGL, "Import ~q-lglad -lEGL -lglapi -ldrm_nouveau~q"
		'WriteLine OutOpenGL, "ModuleInfo ~qHistory: 1.02 Release~q"
		'WriteLine OutOpenGL, "ModuleInfo ~qHistory: Restored GLU~q"
		'WriteLine OutOpenGL, ""
		'WriteLine OutOpenGL, "?MacOS"
		'WriteLine OutOpenGL, "Import ~q-Framework AGL~q"
		'WriteLine OutOpenGL, "Import ~q-Framework OpenGL~q"
		'WriteLine OutOpenGL, "?Win32"
		'WriteLine OutOpenGL, "Import ~q-lglu32~q"
		'WriteLine OutOpenGL, "Import ~q-lopengl32~q"
		'WriteLine OutOpenGL, "?Linux"
		'WriteLine OutOpenGL, "Import ~q-lGL~q"
		'WriteLine OutOpenGL, "Import ~q-lGLU~q"
		'WriteLine OutOpenGL, "?"
		'WriteLine OutOpenGL, ""
		'WriteLine OutOpenGL, "Import ~qglu.bmx~q"
		WriteLine OutOpenGL, ""
		WriteLine OutOpenGL, "Extern ~qOs~q"
		WriteLine OutOpenGL, ""
	End Method
	
	Method HeaderGlad()
		Warning(OutGlad)
		WriteLine OutGlad, "Strict"
		WriteLine OutGlad, ""
		WriteLine OutGlad, "Import ~qglad/glad.h~q"
		WriteLine OutGlad, ""
		WriteLine OutGlad, "Extern ~qOs~q"
		WriteLine OutGlad, ""
	End Method
	
	Method FooterGlad()
		WriteLine OutGlad, ""
		WriteLine OutGlad, "End Extern"		
	End Method
	
	Method MainGlad()
		Warning(OutGlad)
		WriteLine OutGlad, "Strict"
		WriteLine OutGlad, ""
		WriteLine OutGlad, "Rem"
		WriteLine OutGlad, "bbdoc: Graphics/Glad"
		WriteLine OutGlad, "End Rem"
		WriteLine OutGlad, "Module Pub.Glad"
		WriteLine OutGlad, ""
		WriteLine OutGlad, "ModuleInfo ~qVersion: 1.00~q"
		WriteLine OutGlad, "ModuleInfo ~qAuthor: Milan Ikits, Marcelo Magallon~q"
		WriteLine OutGlad, "ModuleInfo ~qLicense: SGI Free Software License B~q"
		WriteLine OutGlad, "ModuleInfo ~qCopyright: Milan Ikits, Marcelo Magallon~q"
		WriteLine OutGlad, "ModuleInfo ~qModserver: BRL~q"
		WriteLine OutGlad, ""
		WriteLine OutGlad, "ModuleInfo ~qHistory: 1.00~q"
		WriteLine OutGlad, "ModuleInfo ~qHistory: Initial version.~q"
		WriteLine OutGlad, ""
		WriteLine OutGlad, "?nx"
		WriteLine OutGlad, ""
		WriteLine OutGlad, "ModuleInfo ~qLD_OPTS: -L%NX.DEVKITPRO%/portlibs/switch/lib~q"
		WriteLine OutGlad, ""

		WriteLine OutGlad, "Import ~qopengl.bmx~q"

		For Local i:Int = 0 Until pageCount
			WriteLine OutGlad, "Import ~q" + GladFile(i) + "~q"
		Next
		
		WriteLine OutGlad, ""
		WriteLine OutGlad, "?"
		
		OutGlad.Close
	End Method
	
	Method Warning(Out:TStream)
		WriteLine Out, "'"
		WriteLine Out, "' NOTE : Generated file. Do not edit. Your changes may be lost on the next update!"
		WriteLine Out, "'        Generated by g2bmx on " + timestamp
		WriteLine Out, "'"
	End Method
	
End Type

Type Tty
	Field ty:String
	Field exty:String 
End Type

Type Tproto
	Field proto:String
	Field exproto:String
End Type
