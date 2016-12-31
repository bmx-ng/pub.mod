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

' This little utility takes the sse*.txt files and creates NG compatible versions

SuperStrict

Framework brl.standardio
Import brl.filesystem

Local SSE_VERSIONS:String[] = [ "sse","sse2","sse3","ssse3","sse41","sse42" ]
Local modulefile:String = "../xmmintrin.bmx"



BackupFile(modulefile)

Local headerdata:String  = "' Copyright (c) 2016 David JJ Camp~n"
headerdata :+ "' ~n"
headerdata :+ "' This software is provided 'as-is', without any express or implied~n"
headerdata :+ "' warranty. In no event will the authors be held liable for any damages~n"
headerdata :+ "' arising from the use of this software.~n"
headerdata :+ "'~n"
headerdata :+ "' Permission is granted to anyone to use this software for any purpose,~n"
headerdata :+ "' including commercial applications, and to alter it and redistribute it~n"
headerdata :+ "' freely, subject to the following restrictions:~n"
headerdata :+ "'~n"
headerdata :+ "' 1. The origin of this software must not be misrepresented; you must not~n"
headerdata :+ "'    claim that you wrote the original software. If you use this software~n"
headerdata :+ "'    in a product, an acknowledgement in the product documentation would be~n"
headerdata :+ "'    appreciated but is not required.~n"
headerdata :+ "' 2. Altered source versions must be plainly marked as such, and must not be~n"
headerdata :+ "'    misrepresented as being the original software.~n"
headerdata :+ "' 3. This notice may not be removed or altered from any source distribution.~n"
headerdata :+ "'"


Local moduledata$ = headerdata + "~n"
moduledata :+ "SuperStrict~n~n"
moduledata :+ "Rem~n"
moduledata :+ "bbdoc: SIMD intrinsics for x64.~n"
moduledata :+ "End Rem~n"
moduledata :+ "Module pub.xmmintrin~n~n"
moduledata :+ "ModuleInfo ~qVersion: 1.00~q~n"
moduledata :+ "ModuleInfo ~qAuthor: David JJ Camp~q~n"
moduledata :+ "ModuleInfo ~qLicense: zlib/libpng~q~n"
moduledata :+ "ModuleInfo ~qCopyright: David JJ Camp~q~n~n"
moduledata :+ "?x64~n"

For Local version$ = EachIn SSE_VERSIONS
	Local file:String = version + ".bmx"
	Local path:String = "../" + file
	Local xfile:String = "../" + version + ".x"

	BackupFile(path)
	
	If FileType(version+".txt")
		Local parser:tparser = New tparser(LoadText(version+".txt"))
		
		Local outstream:TStream = WriteFile(path)
		'Local xstream:TStream = WriteFile(xfile)
		
		WriteLine(outstream, headerdata)
		WriteLine(outstream,"SuperStrict")
		WriteLine(outstream,"Extern") 
		parser.parse(outstream)',xstream)
		WriteLine(outstream,"EndExtern")

		CloseFile outstream
		'CloseFile xstream
		
		If FileType(path)
			moduledata :+ "Import ~q" + file + "~q"
?win32
			moduledata :+ "~r~n"
?Not win32
			moduledata :+ "~n"
?
		EndIf

	EndIf
Next

moduledata :+ "Import ~q_MM_SHUFFLE.bmx~q~n"
moduledata :+ "?~n"

SaveText moduledata,modulefile

' create _MM_SHUFFLE constants file
Local shufflefile$ = "../" + "_MM_SHUFFLE.bmx"
Local outstream:TStream = WriteStream(shufflefile)

WriteLine(outstream, headerdata)
WriteLine(outstream, "Strict")
WriteLine(outstream, "Function _MM_SHUFFLE:Int(a:Byte,b:Byte,c:Byte,d:Byte)")
WriteLine(outstream, "~tReturn a Shl 6 | b Shl 4 | c Shl 2 | d")
WriteLine(outstream, "EndFunction~n")

For Local a:Int = 0 Until 4
	For Local b:Int = 0 Until 4
		For Local c:Int = 0 Until 4
			For Local d:Int  = 0 Until 4
				Local shuffle$ = "Const _MM_SHUFFLE_" + String(a) + String(b) + String(c) + String(d) + ":Int"
				Local value$ = String(a Shl 6 | b Shl 4 | c Shl 2 | d)
				WriteLine outstream, shuffle$ + "=" + value
			Next
		Next
	Next
Next
CloseStream outstream




Type tparser
	Field _data$
	Field _length:Int
	Field _posa:Int,_posb:Int
	Field _token$
	
	Field _xfunc$
	Field _xpos:Int

	Field _out$
	
	Method New(data$)
		_data = data
		_length = data.length
		_out = "~t"

		NextToken()
	EndMethod
	
	Method Parse(outfile:TStream)',xfile:TStream)
		While _posb < _length
			If _token = "'"
				SkipComment()
				NextToken
				Continue
			
			ElseIf IsEol()
				SkipEol()
				NextToken
				Continue

			Else
				' take a chance on all macros beginning with '_MM_
				If _token[..4] = "_MM_"
					ParseMacro()
				Else
					ParseFunction()
					'FilterOutputToXFile(xfile)
					FilterOutputToFile(outfile)
					_out = "~t"
					_xfunc = ""
				EndIf

			EndIf
		Wend
	EndMethod
	
	Method FilterOutputToXFile(xfile:TStream)
		WriteLine xfile,_xfunc
	EndMethod
	
	Method FilterOutputToFile(outfile:TStream)
		If _out.contains("UShort")
		ElseIf _out.contains("UByte")
		Else
			WriteLine outfile,_out
		EndIf
	EndMethod
	
	Method ParseMacro()
		' what to do here? skip for the time being
		While Not IsEol() And _posb < _length
			_posb :+ 1
		Wend
		_posa = _posb
	EndMethod
	
	Method ParseFunction()
		Local rettype$
		Local funcname$
		
		rettype = ParseType()
		
		Assert(_token.length)
		funcname = _token
		_xfunc :+ funcname

		Emit("Function ")
		Emit(_token)

		If rettype
			Emit(":")
			Emit(rettype)
		EndIf
	
		NextToken
		Assert(_token = "(")
		Emit("(")
		_xfunc :+ "("
		
		nexttoken

		Local param$
		If _token <> ")"
			param = ParseParameter()
			Emit(param)

			While _token <> ")"
				Assert(_token = ",")
				Emit(",")
				_xfunc :+ ","
				NextToken

				Local param$ = ParseParameter()
				Emit(param)
			Wend
		EndIf
	
		Emit(")")
		_xfunc :+ ")!"
		Emit("=~q" + _xfunc + "~q")

		NextToken
	EndMethod
	
	Method ParseType$()
		_xpos = _posa
		Local t$
		Select _token
		Case "__m64"
			t = "Float64"
				
		Case "__m128"
			t = "Float128"
			
		Case "__m128i"
			t = "Int128"
			
		Case "__m128d"
			t = "Double128"
				
		Case "__int64"
			t = "Long"

		Case "void"
			t = "void"
			
		Case "char"
			t = "Byte"
			
		Case "short"
			t = "Short"

		Case "int"
			t = "Int"

		Case "float"
			t = "Float"

		Case "double"
			t = "Double"
		
		Case "unsigned"
			_xfunc :+ "unsigned "
			nexttoken
			t = "U" + ParseType()
			Return t
			
		Case "const"
			nexttoken
			t :+ ParseType()
			Return t
			
		Default
			DebugStop
		EndSelect

		_xfunc :+ _data[_xpos.._posb]
		_xpos = _posb
		
		nexttoken
		If _token = "const" nexttoken			
		If _token = "*"
			_xfunc :+ _token

			If t = "void" t = "Byte"
			t :+ " Ptr"
			nexttoken
		EndIf
		If t = "void" t = ""

		_xfunc :+ " "
		
		Return t
	EndMethod
	
	Method ParseParameter$()
		Local t$ = ParseType()		
		If t = "" And ( _token = "," Or _token = ")" ) Return ""
		
		Assert(_token.length)
		Local name$ = _token
		nexttoken
		
		Return name + ":" + t
	EndMethod
	
	Method Emit(s$)
		_out :+ s
	EndMethod

	Method SkipWhite()
		While IsWhite() And _posb < _length
			_posb :+ 1
		Wend
		_posa = _posb
	EndMethod

	Method SkipComment()
		While Not IsEol() And _posb < _length
			_posb :+ 1
		Wend
		'_token = _data[_posa.._posb]
	EndMethod
	
	Method SkipEol()
		While IsEol() And _posb < _length
			_posb :+ 1
		Wend
	EndMethod

	' lexer
	Method NextToken()
		_token = ""
		_posa = _posb

		SkipWhite()
		
		If IsAlpha()
			MakeWord()
		Else
			_token = _data[_posa.._posb+1]
			_posb :+ 1
		EndIf
	EndMethod
	
	Method MakeWord()
		_posb :+ 1
		While IsAlpha() Or IsNumeric()
			_posb :+ 1
		Wend
		_token = _data[_posa.._posb]
	EndMethod
	
	Method IsWhite:Int()
		Return _data[_posb] <= 32
	EndMethod

	Method IsEol:Int()
		Return _data[_posb] = 10 Or _data[_posb] = 13
	EndMethod
	
	Method IsComment:Int()
		Return _data[_posb] = 39
	EndMethod
	
	Method IsNumeric:Int()
		Return _data[_posb] >= 48 And _data[_posb] <= 57
	EndMethod
	
	Method IsAlpha:Int()
		Return ( _data[_posb] >= 65 And _data[_posb] <= 90 ) Or ( _data[_posb] >= 97 And _data[_posb] ) Or _data[_posb] = 95
	EndMethod
EndType

Function BackupFile(filename$)
	If FileType(filename)
		Local data$ = LoadText(filename)
		Local backup$ = filename+".bak"
		SaveText data,backup
	EndIf
EndFunction

