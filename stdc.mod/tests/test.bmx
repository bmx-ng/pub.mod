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

		AssertEquals( expected.year, actual.year, "year" )
		AssertEquals( expected.month, actual.month, "month" )
		AssertEquals( expected.day, actual.day, "day" )
		AssertEquals( expected.hour, actual.hour, "hour" )
		AssertEquals( expected.minute, actual.minute, "minute" )
		AssertEquals( expected.second, actual.second, "second" )
		AssertEquals( expected.milliSecond, actual.milliSecond, "millisecond" )
		AssertEquals( expected.utc, actual.utc, "utc" )
		AssertEquals( expected.offset, actual.offset, "offset" )
		AssertEquals( expected.dst, actual.dst, "dst" )

	End Method

	Method TestDayOfWeek() { test }

		Local dt:SDateTime = New SDateTime( 2021, 9, 27, 0, 0, 0, 0, True, 0, 0 ) ' Monday
		AssertEquals(EWeekday.Monday.Ordinal(), dt.DayOfWeek().Ordinal() )

		dt = New SDateTime( 2021, 9, 28, 0, 0, 0, 0, True, 0, 0 ) ' Tuesday
		AssertEquals(EWeekday.Tuesday.Ordinal(), dt.DayOfWeek().Ordinal() )

		dt = New SDateTime( 2021, 9, 29, 0, 0, 0, 0, True, 0, 0 ) ' Wednesday
		AssertEquals(EWeekday.Wednesday.Ordinal(), dt.DayOfWeek().Ordinal() )

		dt = New SDateTime( 2021, 9, 30, 0, 0, 0, 0, True, 0, 0 ) ' Thursday
		AssertEquals(EWeekday.Thursday.Ordinal(), dt.DayOfWeek().Ordinal() )

		dt = New SDateTime( 2021, 10, 1, 0, 0, 0, 0, True, 0, 0 ) ' Friday
		AssertEquals(EWeekday.Friday.Ordinal(), dt.DayOfWeek().Ordinal() )

		dt = New SDateTime( 2021, 10, 2, 0, 0, 0, 0, True, 0, 0 ) ' Saturday
		AssertEquals(EWeekday.Saturday.Ordinal(), dt.DayOfWeek().Ordinal() )

		dt = New SDateTime( 2021, 10, 3, 0, 0, 0, 0, True, 0, 0 ) ' Sunday
		AssertEquals(EWeekday.Sunday.Ordinal(), dt.DayOfWeek().Ordinal() )

	End Method
End Type
