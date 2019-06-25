SuperStrict

Framework brl.standardio
Import pub.libffi

Import "glue_01.c"

test(inc)
testAdd(Add)
testStruct(StructFunc, "hi")

Function Inc:Int(x:Int)
	Return x + 1
End Function

Function Add:Int(a:Int, b:Int)
	Return a + b
End Function

Function StructFunc:STest(s:STest)
	s.a :+ 1
	s.c :- 1
	Return s
End Function

Extern
	Function test(func:Byte Ptr)
	Function testAdd(func:Byte Ptr)
	Function testStruct(func:Byte Ptr, txt:String)
End Extern

Struct STest
	Field a:Int
	Field b:String
	Field c:Int
End Struct
