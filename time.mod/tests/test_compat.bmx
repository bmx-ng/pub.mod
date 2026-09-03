SuperStrict

Framework BRL.StandardIO
Import BRL.MaxUnit
Import Pub.StdC

New TTestSuite.Run()

Type TPubStdCTimeCompatibilityTest Extends TTest

	Method TestReexportedDateTimeAPI() { test }
		Local dt:SDateTime = SDateTime.FromEpoch(0)
		AssertEquals("1970-01-01T00:00:00Z", dt.ToString())
		AssertTrue(CurrentUnixTime() > 0)
	End Method

End Type
