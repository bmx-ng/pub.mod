
SuperStrict

Function CreateCArrayFromStringArray:Byte Ptr[]( inStrings:String[] )
	If Not inStrings.length Return Null
	
	Local length:UInt = inStrings.Length
	Local bp:Byte Ptr[ length ]
	
	For Local i:UInt = 0 Until length
		bp[i] = inStrings[ i ].ToCString()
	Next
	
	Return bp
EndFunction

Function DestroyCArrayOfStrings( CArrayOfStrings:Byte Ptr[] )
	For Local i:UInt = 0 Until CArrayOfStrings.Length
		MemFree CArrayOfStrings[ i ]
		CArrayOfStrings[ i ] = Null
	Next
EndFunction
	
