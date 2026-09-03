SuperStrict

Framework BRL.StandardIO
Import BRL.MaxUnit
Import Pub.StdC

New TTestSuite.Run()

Type TPubStdCNetCompatibilityTest Extends TTest

	Method TestReexportedNetworkAPI() { test }
		Local hints:TAddrInfo = New TAddrInfo(AF_INET_, SOCK_STREAM_)
		AssertEquals(AF_INET_, hints.family())
		AssertEquals(SOCK_STREAM_, hints.sockType())

		Local addresses:TAddrInfo[] = getaddrinfo_("localhost", "80", AF_INET_)
		AssertTrue(addresses.Length > 0)
	End Method

End Type
