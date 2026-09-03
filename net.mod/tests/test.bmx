SuperStrict

Framework BRL.StandardIO
Import BRL.MaxUnit
Import Pub.Net

New TTestSuite.Run()

Type TPubNetTest Extends TTest

	Method TestByteOrderRoundTrips() { test }
		Const shortValue:Int = $1234
		Const longValue:Int = $12345678

		AssertEquals(shortValue, ntohs_(htons_(shortValue)))
		AssertEquals(longValue, ntohl_(htonl_(longValue)))
	End Method

	Method TestAddrInfoHints() { test }
		Local flags:Int = AI_PASSIVE | AI_CANONNAME | AI_NUMERICHOST | AI_V4MAPPED | AI_ALL | AI_ADDRCONFIG | AI_NUMERICSERV
		Local hints:TAddrInfo = New TAddrInfo(AF_INET6_, SOCK_STREAM_, flags)

		AssertEquals(AF_INET6_, hints.family())
		AssertEquals(SOCK_STREAM_, hints.sockType())
		AssertEquals(flags, hints.flags())
	End Method

	Method TestNativeMappings() { test }
		Local hints:TAddrInfo = New TAddrInfo(AF_INET_, SOCK_STREAM_, AI_NUMERICHOST | AI_NUMERICSERV)
		Local addresses:TAddrInfo[] = getaddrinfo_hints("127.0.0.1", "80", hints.infoPtr)
		AssertTrue(addresses.Length > 0)

?win32 And ptr64
		Local handle:Long = socket_(AF_INET6_, SOCK_STREAM_)
?Not (win32 And ptr64)
		Local handle:Int = socket_(AF_INET6_, SOCK_STREAM_)
?
		AssertTrue(handle <> -1)
		If handle <> -1 Then
			Local enabled:Int = True
			AssertEquals(0, setsockopt_(handle, SOL_SOCKET, SO_REUSEADDR, Varptr enabled, 4))
			closesocket_(handle)
		End If
	End Method

	Method TestAddressResolution() { test }
		Local addresses:TAddrInfo[] = getaddrinfo_("localhost", "80", AF_UNSPEC_)

		AssertTrue(addresses.Length > 0)
		AssertTrue(addresses[0].family() = AF_INET_ Or addresses[0].family() = AF_INET6_)
		AssertTrue(addresses[0].HostIp().Length > 0)

		' Every returned entry keeps the native result list alive, not just entry zero.
		If addresses.Length > 1 Then
			Local retained:TAddrInfo = addresses[addresses.Length - 1]
			addresses = Null
			GCCollect()
			AssertTrue(retained.HostIp().Length > 0)
		End If
	End Method

	Method TestInetPton() { test }
		Local address:UInt
		AssertEquals(1, inet_pton_(AF_INET_, "127.0.0.1", Varptr address))
	End Method

	Method TestSockaddrStorageDefaults() { test }
		Local storage:TSockaddrStorage = New TSockaddrStorage
		AssertEquals(0, storage.family())
	End Method

End Type
