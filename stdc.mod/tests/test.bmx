SuperStrict

Framework brl.standardio
Import BRL.MaxUnit
Import Pub.Stdc

New TTestSuite.run()

Type TSDateTimeTest Extends TTest

	Method testConversions() { test }

		Local epoch:Long = 0
		Local expected:SDateTime = New SDateTime( 1970, 1, 1, 0, 0, 0, 0, True, 0, 0 )

		Local dt:SDateTIme = SDateTime.FromEpoch(epoch)

		AssertSDateTimeEquals( expected, dt )
		AssertEquals(epoch, dt.ToEpochSecs())
		AssertEquals("1970-01-01T00:00:00Z", dt.ToString())

		epoch = 86400
		expected = New SDateTime( 1970, 1, 2, 0, 0, 0, 0, True, 0, 0 )

		dt = SDateTime.FromEpoch(epoch)

		AssertSDateTimeEquals( expected, dt )
		AssertEquals(epoch, dt.ToEpochSecs())
		AssertEquals("1970-01-02T00:00:00Z", dt.ToString())

		epoch = 31536000
		expected = New SDateTime( 1971, 1, 1, 0, 0, 0, 0, True, 0, 0 )

		dt = SDateTime.FromEpoch(epoch)

		AssertSDateTimeEquals( expected, dt )
		AssertEquals(epoch, dt.ToEpochSecs())
		AssertEquals("1971-01-01T00:00:00Z", dt.ToString())

		epoch = 1603580400
		expected = New SDateTime( 2020, 10, 24, 23, 0, 0, 0, True, 0, 0 )

		dt = SDateTime.FromEpoch(epoch)

		AssertSDateTimeEquals( expected, dt )
		AssertEquals(epoch, dt.ToEpochSecs())
		AssertEquals("2020-10-24T23:00:00Z", dt.ToString())

		epoch = 1603580400
		expected = New SDateTime( 2020, 10, 25, 0, 0, 0, 0, False, 0, 1 )

		dt = SDateTime.FromEpoch(epoch)

		AssertSDateTimeEquals( expected.ToUtc(), dt )
		AssertEquals(epoch, dt.ToEpochSecs())
		AssertEquals("2020-10-24T23:00:00Z", dt.ToString())
		AssertEquals("2020-10-25T00:00:00+01:00", expected.ToString() )

		epoch = 1583650800
		expected = New SDateTime( 2020, 3, 8, 2, 0, 0, 0, False, -300, 0 )

		dt = SDateTime.FromEpoch(epoch)

		AssertSDateTimeEquals( expected.ToUtc(), dt )
		AssertEquals(epoch, dt.ToEpochSecs())
		AssertEquals("2020-03-08T07:00:00Z", dt.ToString())
		AssertEquals("2020-03-08T02:00:00-05:00", expected.ToString())

		epoch = 1583650800
		expected = New SDateTime( 2020, 3, 8, 2, 0, 0, 0, False, -300, 0 )

		dt = SDateTime.FromEpoch(epoch)

		AssertSDateTimeEquals( expected.ToUtc(), dt )
		AssertEquals(epoch, dt.ToEpochSecs())
		AssertEquals("2020-03-08T07:00:00Z", dt.ToString())
		AssertEquals("2020-03-08T02:00:00-05:00", expected.ToString())

		expected = New SDateTime( 2020, 3, 8, 3, 0, 0, 0, False, -300, 1 )

		dt = SDateTime.FromEpoch(epoch)

		AssertSDateTimeEquals( expected.ToUtc(), dt )
		AssertEquals(epoch, dt.ToEpochSecs())
		AssertEquals("2020-03-08T07:00:00Z", dt.ToString())
		AssertEquals("2020-03-08T03:00:00-04:00", expected.ToString())

	End Method

	Method AssertSDateTimeEquals( expected:SDateTime, actual:SDateTime )

		AssertEquals( expected.year, actual.year )
		AssertEquals( expected.month, actual.month )
		AssertEquals( expected.day, actual.day )
		AssertEquals( expected.hour, actual.hour )
		AssertEquals( expected.minute, actual.minute )
		AssertEquals( expected.second, actual.second )
		AssertEquals( expected.milliSecond, actual.milliSecond )
		AssertEquals( expected.utc, actual.utc )
		AssertEquals( expected.offset, actual.offset )
		AssertEquals( expected.dst, actual.dst )

	End Method
End Type
