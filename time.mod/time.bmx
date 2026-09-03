SuperStrict

Rem
bbdoc: Date, time and calendar functions.
End Rem
Module Pub.Time

ModuleInfo "Version: 1.01"
ModuleInfo "Author: Various"
ModuleInfo "License: zlib/libpng"
ModuleInfo "Modserver: BRL"
ModuleInfo "Credit: Adapted for BlitzMax by Mark Sibly"

ModuleInfo "History: 1.00"
ModuleInfo "History: Extracted date and time support from Pub.StdC"
ModuleInfo "History: 1.01"
ModuleInfo "History: Added a compact Pico calendar backend"

?pico
Import "glue_pico.c"
?Not pico
Import "glue.c"
?

Extern "C"

Function time_:Int( time:Byte Ptr )
Function localtime_:Byte Ptr( time:Byte Ptr ) ' note : not thread safe
Function strftime_:Int( buf:Byte Ptr,size:Int,fmt:String,time:Byte Ptr )

?Not macos
Function clock_gettime_:Int(id:Int, spec:STimeSpec Var)
?macos
Function mach_absolute_time_ns:ULong()
?

Rem
bbdoc: Returns the current date and time.
End Rem
Function CurrentDateTime(dt:SDateTime Var, utc:Int = True)="bmx_current_datetime"

Rem
bbdoc: Returns the current Unix time in milliseconds.
about: The Unix time is a system for describing a point in time, defined as the number of milliseconds that have
elapsed since 00:00:00 Coordinated Universal Time (UTC), Thursday, 1 January 1970, excluding leap seconds.
End Rem
Function CurrentUnixTime:ULong()="bmx_current_unix_time"

End Extern


Struct STimeSpec
	Field tv_sec:Size_T
	Field tv_nsec:Size_T

	Method New(tv_sec:Size_T, tv_nsec:Size_T)
		Self.tv_sec = tv_sec
		Self.tv_nsec = tv_nsec
	End Method
End Struct

Rem
bbdoc: A basic DateTime struct.
End Rem
Struct SDateTime
	Rem
	bbdoc: The year.
	End Rem
	Field year:Int
	Rem
	bbdoc: The month, 1-12.
	End Rem
    Field month:Int
	Rem
	bbdoc: The day of the month, 1-31.
	End Rem
    Field day:Int
	Rem
	bbdoc: The hour, 0-23.
	End Rem
    Field hour:Int
	Rem
	bbdoc: The minute, 0-59.
	End Rem
    Field minute:Int
	Rem
	bbdoc: The second, 0-59.
	End Rem
    Field second:Int
	Rem
	bbdoc: The millisecond, 0-999.
	End Rem
    Field millisecond:Int
	Rem
	bbdoc: #True if the date time is in UTC, #False if it is in local time.
	End Rem
	Field utc:Int
	Rem
	bbdoc: The standard offset from UTC in minutes, excluding daylight saving time.
	about: Positive values are east of UTC and negative values are west of UTC.
	End Rem
	Field offset:Int
	Rem
	bbdoc: 1 if the date time is observing daylight savings time, 0 if not and -1 if it is not known.
    about: Daylight Saving Time (DST) is the practice of setting the clock ahead by one hour from standard time
	during the warmer months, and then back again in the fall, in order to extend evening daylight and reduce the
	need for artificial lighting. This can affect local time calculations, and so it's important to track whether a
	given datetime object is observing DST. Note that not all regions observe DST, and the start and end dates
	for DST can vary from one region to another.
	End Rem
	Field dst:Int = -1

	Rem
	bbdoc: Creates a new #SDateTime instance from the given date and time information.
	End Rem
	Method New(year:Int, month:Int, day:Int, hour:Int, minute:Int, second:Int, millisecond:Int = 0, utc:Int = True, offset:Int = 0, dst:Int = -1)
		Self.year = year
		Self.month = month
		Self.day = day
		Self.hour = hour
		Self.minute = minute
		Self.second = second
		Self.millisecond = millisecond
		Self.utc = utc
		Self.offset = offset
		Self.dst = dst
	End Method

	Rem
	bbdoc: Returns a string representation of the date time in ISO 8601 format.
	about: Without millisecond precision.
	End Rem
	Method ToString:String()
		Return ToIso8601()
	End Method

	Rem
	bbdoc: Returns a string representation in ISO 8601 format.
	about: ISO 8601 is an international standard covering the exchange of date- and time-related data.
	It was issued by the International Organization for Standardization (ISO) and provides a well-defined method of representing dates and
	times in a way that avoids ambiguity.

	An example of a date in ISO 8601 format is "2023-06-24T18:30:00Z", representing 6:30 pm on June 24, 2023, in Coordinated Universal Time (UTC).

	If @showMillis is set to #True, the output string will include millisecond precision. For instance, "2023-06-24T18:30:00.123Z"
	where "123" represents milliseconds.
	End Rem
	Method ToIso8601:String(showMillis:Int = False)
		Return bmx_datetime_iso8601(Self, showMillis)
	End Method

	Rem
	bbdoc: Returns an instance of #SDateTime representing the date and time corresponding to the given epoch timestamp.
	about: The 'epoch' refers to the Unix epoch, which is a system for describing a point in time, defined as the number of seconds
	that have elapsed since 00:00:00 Coordinated Universal Time (UTC), Thursday, 1 January 1970, minus the number of leap seconds.

	If @fracNanoSecs is provided, it will be used to set the 'millisecond' field of the SDateTime instance.
	The nanosecond fraction is effectively divided by a million to provide millisecond precision.
	If @isLocal is set to #True, the result is represented in the host's local time, otherwise it is represented in UTC.
	End Rem
	Function FromEpoch:SDateTime(epochSecs:Long, fracNanoSecs:Long = 0, isLocal:Int = False)
		Return bmx_datetime_from_epoch(epochSecs, fracNanoSecs, isLocal)
	End Function

	Rem
	bbdoc: Converts the current date and time to the number of seconds that have elapsed since the Unix Epoch.
	returns: The number of seconds that have elapsed since the Unix Epoch, or -1 if the conversion failed.
	about: The 'epoch' refers to the Unix epoch, which is a system for describing a point in time, defined as the number of seconds
	that have elapsed since 00:00:00 Coordinated Universal Time (UTC), Thursday, 1 January 1970, minus the number of leap seconds.
	End Rem
	Method ToEpochSecs:Long()
		Return bmx_datetime_to_epoch(Self)
	End Method

	Rem
	bbdoc: Converts the current date time to the equivalent in UTC.
	returns: The equivalent date time in UTC, or the original date time if the conversion failed.
	End Rem
	Method ToUtc:SDateTime()
		If utc Then
			Return Self
		End If

		Local dt:SDateTime
		Local res:Int = bmx_datetime_convert_to_utc(Self, dt)
		If res = 0 Then
			Return dt
		Else
			Return Self
		End If
	End Method

	Rem
	bbdoc: Returns the day of the week for the current date.
	returns: An enumeration representing the day of the week.
	about: This method uses Zeller's Congruence algorithm to calculate the day of the week.
	End Rem
	Method DayOfWeek:EWeekday()
		Local m:Int = month
		Local y:Int = year

		' adjust for January and February
		If m = 1 Then
			m = 13
			y = y - 1
		End If

		If m = 2 Then
			m = 14
			y = y - 1
		End If

		Local q:Int = day
		Local k:Int = y Mod 100
		Local j:Int = y / 100

		Local h:Int = (q + ((13 * (m + 1)) / 5) + k + (k / 4) + (j / 4) + (5 * j)) Mod 7

		Local d:Int = ((h + 5) Mod 7) + 1 ' Convert to 1=Monday, ..., 7=Sunday

		Return EWeekday(d)
	End Method
End Struct

Rem
bbdoc: Enumeration for the days of the week.
End Rem
Enum EWeekday
	Monday = 1
	Tuesday = 2
	Wednesday = 3
	Thursday = 4
	Friday = 5
	Saturday = 6
	Sunday = 7
End Enum

Rem
bbdoc: Enumeration for the abbreviated days of the week.
End Rem
Enum EShortWeekday
	Mon = 1
	Tue = 2
	Wed = 3
	Thu = 4
	Fri = 5
	Sat = 6
	Sun = 7
End Enum

Rem
bbdoc: Converts an #EWeekday value to its corresponding #EShortWeekday value.
returns: The corresponding #EShortWeekday value.
End Rem
Function WeekDayToShortWeekday:EShortWeekday(day:EWeekday)
	Return EShortWeekday(day.Ordinal())
End Function

Rem
bbdoc: Converts an #EShortWeekday value to its corresponding #EWeekday value.
returns: The corresponding #EWeekday value.
End Rem
Function ShortWeekdayToWeekDay:EWeekday(shortDay:EShortWeekday)
	Return EWeekday(shortDay.Ordinal())
End Function

Rem
bbdoc: Gets the current date string.
returns: The current date as a string
about:
By default, it returns the current date in the format: DD MON YYYY (i.e. 10 DEC 2000).
You can also specify some parameters to return the date in a format of your choice:
[ @parameter | @description
* %%a | Abbreviated day name (Sun - Sat).
* %%A | Long day name (Sunday - Saturday).
* %%b | Abbreviated month name (Jan - Dec).
* %%B | Long month name (January...).
* %%c | Locale date & time.
* %%d | day - in number (1..31).
* %%H | hour - in number (0..23).
* %%I | hour - in number (1..12).
* %%j | day of the year (1..366).
* %%m | month - in number (1..12).
* %%M | minutes - in number (00..59).
* %%p | AM / PM.
* %%S | seconds - in number (00..59).
* %%U | week number
* %%w | day of the week (0..6).
* %%W | week of the year (0..53).
* %%x | locale data representation.
* %%y | year without century (2014 --> 14).
* %%Y | Year (2014).
* %%Z | Time zone name.
]
You can use these parameters together:<br/>
CurrentDate("Month: %%a Day: %%d")<br/>
End Rem
Function CurrentDate:String(_format:String="%d %b %Y")
	Return bmx_current_datetime_format(_format)
End Function

Rem
bbdoc: Gets the current time string.
returns: The current time as a string
about:
Returns the current time in the format: HH:MM:SS (i.e. 14:31:57).
End Rem
Function CurrentTime:String()
	Return bmx_current_datetime_format("%H:%M:%S")
End Function

Private

Extern "c"
	Function bmx_datetime_iso8601:String(dt:SDateTime Var, showMillis:Int = False)
	Function bmx_datetime_from_epoch:SDateTime(epochSecs:Long, fracNanoSecs:Long, isLocal:Int)
	Function bmx_current_datetime_format:String(format:String)
	Function bmx_datetime_to_epoch:Long(dt:SDateTime Var)
	Function bmx_datetime_convert_to_utc:Int(dt:SDateTime Var, dtUtc:SDateTime Var)
End Extern
