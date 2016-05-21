
' This little utility takes the sse*.txt files and creates NG compatible versions

Strict

Local SSE_VERSIONS:String[] = [ "sse","sse2","sse3","ssse3","sse41","sse42" ]
Local modulefile:String = "../xmmintrin.bmx"



BackupFile(modulefile)

Local moduledata$
moduledata :+ "SuperStrict~n~n"
moduledata :+ "Module pub.xmmintrin~n~n"

For Local version$ = EachIn SSE_VERSIONS
	Local file:String = version + ".bmx"
	Local path:String = "../" + file
	Local xfile:String = "../" + version + ".x"

	BackupFile(path)
	
	If FileType(version+".txt")
		Local parser:tparser = New tparser(LoadText(version+".txt"))
		
		Local outstream:TStream = WriteFile(path)
		Local xstream:TStream = WriteFile(xfile)
		
		WriteLine(outstream,"SuperStrict")
		'WriteLine(outstream,"Rem")
		WriteLine(outstream,"Extern") 
		parser.parse(outstream,xstream)
		WriteLine(outstream,"EndExtern")
		'WriteLine(outstream,"EndRem")

		CloseFile outstream
		CloseFile xstream
		
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

SaveText moduledata,modulefile

Type tparser
	Field _data$
	Field _length
	Field _posa,_posb
	Field _token$
	
	Field _xfunc$
	Field _xpos

	Field _out$
	
	Method New(data$)
		_data = data
		_length = data.length
		_out = "~t"

		NextToken()
	EndMethod
	
	Method Parse(outfile:TStream,xfile:TStream)
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
					FilterOutputToXFile(xfile)
					FilterOutputToFile(outfile)
					_out = "~t"
					_xfunc = ""
				EndIf

			EndIf
		Wend
	EndMethod
	
	Method FilterOutputToXFile(xfile:TStream)
		If _out.contains("Ptr")
			WriteLine xfile,_xfunc
		EndIf
	EndMethod
	
	Method FilterOutputToFile(outfile:TStream)
		If _out.contains("Float64")
		ElseIf _out.contains("Double128")
		ElseIf _out.contains("UShort")
		ElseIf _out.contains("UByte")
		'ElseIf _out.contains("Ptr")
		ElseIf _out.contains("_mm_shuffle_ps")
		ElseIf _out.contains("_mm_set_epi16")
		ElseIf _out.contains("_mm_set_epi8")
		ElseIf _out.contains("_mm_set1_epi16")
		ElseIf _out.contains("_mm_set1_epi8")
		ElseIf _out.contains("_mm_setr_epi16")
		ElseIf _out.contains("_mm_setr_epi8")
		ElseIf _out.contains("_mm_ceil_ps")
		ElseIf _out.contains("_mm_ceil_ss")
		ElseIf _out.contains("_mm_floor_ps")
		ElseIf _out.contains("_mm_floor_ss")
		ElseIf _out.contains("_mm_test_all_ones")
		ElseIf _out.contains("_mm_test_all_zeros")
		ElseIf _out.contains("_mm_test_mix_ones_zeros")
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
		Emit("=~q" + funcname + "~q")

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
	
	Method IsWhite()
		Return _data[_posb] <= 32
	EndMethod

	Method IsEol()
		Return _data[_posb] = 10 Or _data[_posb] = 13
	EndMethod
	
	Method IsComment()
		Return _data[_posb] = 39
	EndMethod
	
	Method IsNumeric()
		Return _data[_posb] >= 48 And _data[_posb] <= 57
	EndMethod
	
	Method IsAlpha()
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
