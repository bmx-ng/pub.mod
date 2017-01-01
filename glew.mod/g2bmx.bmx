Strict
Framework brl.basic
Import brl.map
Import brl.retro

Rem
Cheezy little app to convert glew.h to bmx source.
extract glew header to __opengl__.bmx and __glew__.bmx
End Rem

Local OutOpenGLName$="__opengl__.bmx"
Local OutGlewName$="__glew__.bmx"

Global OutOpenGL:TStream	=	WriteStream(OutOpenGLName$)
Global OutGLew	:TStream	=	WriteStream(OutGlewName$)
Global Out		:TStream	=	OutOpenGL

' Write Headers
WriteLine OutOpenGL, "Strict"
WriteLine OutOpenGL, "Rem"
WriteLine OutOpenGL, "bbdoc: Graphics/OpenGL 1.1"
WriteLine OutOpenGL, "End Rem"
WriteLine OutOpenGL, "Module Pub.OpenGL"
WriteLine OutOpenGL, ""
WriteLine OutOpenGL, "ModuleInfo "+Chr(34)+"Version: 1.02"+Chr(34)
WriteLine OutOpenGL, "ModuleInfo "+Chr(34)+"License: SGI Free Software License B"+Chr(34)
WriteLine OutOpenGL, "ModuleInfo "+Chr(34)+"Modserver: brl"+Chr(34)
WriteLine OutOpenGL, ""
WriteLine OutOpenGL, "ModuleInfo "+Chr(34)+"History: 1.02 Release"+Chr(34)
WriteLine OutOpenGL, "ModuleInfo "+Chr(34)+"History: Restored GLU"+Chr(34)
WriteLine OutOpenGL, ""
WriteLine OutOpenGL, "?MacOS"
WriteLine OutOpenGL, "Import "+Chr(34)+"-Framework AGL"+Chr(34)
WriteLine OutOpenGL, "Import "+Chr(34)+"-Framework OpenGL"+Chr(34)
WriteLine OutOpenGL, "?Win32"
WriteLine OutOpenGL, "Import "+Chr(34)+"-lglu32"+Chr(34)
WriteLine OutOpenGL, "Import "+Chr(34)+"-lopengl32"+Chr(34)
WriteLine OutOpenGL, "?Linux"
WriteLine OutOpenGL, "Import "+Chr(34)+"-lGL"+Chr(34)
WriteLine OutOpenGL, "Import "+Chr(34)+"-lGLU"+Chr(34)
WriteLine OutOpenGL, "?"
WriteLine OutOpenGL, ""
WriteLine OutOpenGL, "Import "+Chr(34)+"glu.bmx"+Chr(34)
WriteLine OutOpenGL, ""
WriteLine OutOpenGL, "Extern "+Chr(34)+"Os"+Chr(34)

WriteLine OutGLew, "Strict"
WriteLine OutGLew, ""
WriteLine OutGLew, "Rem"
WriteLine OutGLew, "bbdoc: Graphics/Glew"
WriteLine OutGLew, "End Rem"
WriteLine OutGLew, "Module Pub.Glew"
WriteLine OutGLew, ""
WriteLine OutGLew, "ModuleInfo "+Chr(34)+"Version: 1.08"+Chr(34)
WriteLine OutGLew, "ModuleInfo "+Chr(34)+"Author: Milan Ikits, Marcelo Magallon"+Chr(34)
WriteLine OutGLew, "ModuleInfo "+Chr(34)+"License: SGI Free Software License B"+Chr(34)
WriteLine OutGLew, "ModuleInfo "+Chr(34)+"Copyright: Milan Ikits, Marcelo Magallon"+Chr(34)
WriteLine OutGLew, "ModuleInfo "+Chr(34)+"Modserver: BRL"+Chr(34)
WriteLine OutGLew, ""
WriteLine OutGLew, "ModuleInfo ~qHistory: 1.08 Release~q"
WriteLine OutGLew, "ModuleInfo ~qHistory: Updated To glew 1.11.0~q"
WriteLine OutGLew, "ModuleInfo "+Chr(34)+"History: 1.07 Release"+Chr(34)
WriteLine OutGLew, "ModuleInfo "+Chr(34)+"History: Updated To glew 1.5.1"+Chr(34)
WriteLine OutGLew, "ModuleInfo "+Chr(34)+"History: Modified glew2bmx To handle a GLint64EXT, GLuint64EXT And char - UNTESTED!"+Chr(34)
WriteLine OutGLew, "ModuleInfo "+Chr(34)+"History: 1.06 Release"+Chr(34)
WriteLine OutGLew, "ModuleInfo "+Chr(34)+"History: Rebuilt To fix MacOs ld errors"+Chr(34)
WriteLine OutGLew, "ModuleInfo "+Chr(34)+"History: 1.05 Release"+Chr(34)
WriteLine OutGLew, "ModuleInfo "+Chr(34)+"History: Removed glew2bmx.exe!"+Chr(34)
WriteLine OutGLew, "ModuleInfo "+Chr(34)+"History: 1.04 Release"+Chr(34)
WriteLine OutGLew, "ModuleInfo "+Chr(34)+"History: Updated To glew 1.3.4"+Chr(34)
WriteLine OutGLew, "ModuleInfo "+Chr(34)+"History: 1.03 Release"+Chr(34)
WriteLine OutGLew, "ModuleInfo "+Chr(34)+"History: Updated To GL2.0 compatible version 1.3.3"+Chr(34)
WriteLine OutGLew, ""
WriteLine OutGLew, "?Not opengles"
WriteLine OutGLew, ""
WriteLine OutGLew, "' directly import glew header"
WriteLine OutGLew, "Import ~qGL/glew.h~q"
WriteLine OutGLew, ""
WriteLine OutGLew, "Import ~qglew.c~q"
WriteLine OutGLew, ""
WriteLine OutGLew, "Extern "+Chr(34)+"Os"+Chr(34)


Global StartOutputGlew :Byte = False
Function Happen (chaine$, bbDoc$)
	
	'WriteLine Out,"rem"
	'WriteLine Out,"bbdoc: "+bbDoc
	'WriteLine Out,"endrem"
	WriteLine Out,chaine
	
	If StartOutputGlew = False
		If Instr ( chaine , "glViewport" )
			Out = OutGLew
			StartOutputGlew = True
		EndIf
	EndIf
	
End Function

Global in:TStream=ReadStream( "GL/glew.h" )

Global curr$,Text$

Local funMap:TMap=New TMap
Local constMap:TMap=New TMap

While Not Eof(in)
	Text=in.ReadLine()
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
					Happen ( "Function "+id+funty+"("+proto+")", "GL Function "+id+funty )
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
						Happen ( "Const "+id+"=$"+n[2..], "GL Const "+id )
					Else If n.length And isdigit(n[0]) 'And n<>"1"
						Happen ( "Const "+id+"="+n, "GL Const "+id )
					EndIf
					constMap.Insert id,n
				EndIf
			Else If id[..5]="GLEW_"
				If bump()="GLEW_GET_VAR" And bump()="("
					Local sym$=bump()
					If sym[..7]="__GLEW_" And bump()=")"
					If Not constMap.ValueForKey("GL_"+id[5..])
						Happen ( "Global GL_"+id[5..]+":Byte=~q"+sym+"~q", "GL Global "+id )
						End If
					EndIf
				EndIf
			Else If id[..2]="gl"
				If bump()="GLEW_GET_FUN" And bump()="("
					Local sym$=bump()
					If sym[..6]="__glew" And bump()=")"
						Local key$="PFNGL"+sym[6..].ToUpper()+"PROC"
						Local val:Tproto=Tproto( funMap.ValueForKey( key ) )
						If val
							Happen ( "Global "+id+val.proto+"=~q"+val.exproto.Replace("XXXXXXXX", sym).Trim()+"~q", "GL Global "+id+val.proto )
						Else
							DebugLog "***** "+sym+" *****"
						EndIf
					EndIf
				EndIf
			EndIf
		EndIf
	Else If curr="typedef"
		bump
		Local ty:Tty = New Tty
		Local funty$=gltype(ty)
		If funty<>"x" And curr="(" And bump()="GLAPIENTRY" And bump()="*"
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
Wend


in.Close

' close outputs
WriteLine OutOpenGL	, ""
WriteLine OutOpenGL	, "End Extern" ;OutOpenGL.Close()



WriteLine OutGLew	, "End Extern"
WriteLine OutGLew	, ""
WriteLine OutGLew	, "Extern "+Chr(34)+"C"+Chr(34)
WriteLine OutGLew	, "Function glewInit()=~qGLenum glewInit()!~q"
WriteLine OutGLew	, "End Extern" ;OutGLew.Close()

WriteLine OutGLew, ""
WriteLine OutGLew, "?"



Function glproto$(proto:Tproto)
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
End Function

Function gltype$(ty:TTy)
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
End Function

Function isalpha( c )
	Return (c>=Asc("A") And c<=Asc("Z")) Or (c>=Asc("a") And c<=Asc("z"))
End Function

Function isdigit( c )
	Return c>=Asc("0") And c<=Asc("9")
End Function

Function isalnum( c )
	Return isalpha(c) Or isdigit(c)
End Function

Function isxdigit( c )
	Return (c>=Asc("A") And c<=Asc("F")) Or (c>=Asc("a") And c<=Asc("f")) Or isdigit(c)
End Function

Function bump$()
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
End Function

Type Tty
	Field ty:String
	Field exty:String 
End Type

Type Tproto
	Field proto:String
	Field exproto:String
End Type
