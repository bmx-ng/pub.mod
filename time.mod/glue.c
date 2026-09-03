#if defined(_WIN32) && !defined(_WIN64)
#define _USE_32BIT_TIME_T
#endif

#include <time.h>
#include <stdio.h>

#if defined(_WIN32) || defined(_WIN64)
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#endif

#include <brl.mod/blitz.mod/blitz.h>

#if defined(_WIN32) || defined(_WIN64)
int clock_gettime_(int id, struct timespec * spec) {
	if (id == 1) {
		LARGE_INTEGER counter;
		LARGE_INTEGER frequency;
		if (!QueryPerformanceCounter(&counter) || !QueryPerformanceFrequency(&frequency) || frequency.QuadPart <= 0) {
			return -1;
		}
		spec->tv_sec = counter.QuadPart / frequency.QuadPart;
		spec->tv_nsec = (long)(((counter.QuadPart % frequency.QuadPart) * 1000000000LL) / frequency.QuadPart);
		return 0;
	}

	__int64 ftime;
	union {
		unsigned __int64 ftime;
		FILETIME ft;
	} ft;
	GetSystemTimeAsFileTime(&ft.ft);
	ftime = ft.ftime - 116444736000000000LL;
	spec->tv_sec = ftime / 10000000LL;
	spec->tv_nsec = ((int)(ftime % 10000000LL)) * 100;
	return 0;
}
#endif

#if !defined(_WIN32) && !defined(_WIN64) && !defined(__APPLE__)
int clock_gettime_(int id, struct timespec * spec) {
	return clock_gettime(id, spec);
}
#endif

#ifdef __APPLE__
#include <mach/mach_time.h>

BBULONG mach_absolute_time_ns() {
	static mach_timebase_info_data_t s_timebase_info;
	static int inited = 0;
	if (!inited) {
		mach_timebase_info(&s_timebase_info);
		inited = 1;
	}
	return (mach_absolute_time() * s_timebase_info.numer) / s_timebase_info.denom;
}
#endif

typedef struct {
    int year;
    int month;
    int day;
    int hour;
    int minute;
    int second;
    int millisecond;
	int utc;
	int offset;
	int dst;
} SDateTime;

#if defined(_WIN32) || defined(_WIN64)
int bmx_calc_timeoffset_mins(int *dst) {
	TIME_ZONE_INFORMATION tz;
	DWORD rc = GetTimeZoneInformation(&tz);
	if (rc == TIME_ZONE_ID_INVALID) {
		if (dst) {
			*dst = -1;
		}
		return 0;
	}

	if (dst) {
		*dst = (rc == TIME_ZONE_ID_DAYLIGHT) ? 1 : 0;
	}
	/* SDateTime.offset is the standard offset east of UTC. DST is
	   represented separately by SDateTime.dst. */
	return -(tz.Bias + tz.StandardBias);
}

void bmx_current_datetime(SDateTime * dt, int utc) {
	*dt = (SDateTime){0};
	dt->dst = -1;

	SYSTEMTIME systemTime;
    if (utc) {
        GetSystemTime(&systemTime);
    } else {
        GetLocalTime(&systemTime);
    }

    dt->year = systemTime.wYear;
    dt->month = systemTime.wMonth;
    dt->day = systemTime.wDay;
    dt->hour = systemTime.wHour;
    dt->minute = systemTime.wMinute;
    dt->second = systemTime.wSecond;
	dt->millisecond = systemTime.wMilliseconds;
	dt->utc = utc;
	dt->offset = utc ? 0 : bmx_calc_timeoffset_mins(&dt->dst);
	if (utc) {
		dt->dst = 0;
	}
}

BBULONG bmx_current_unix_time() {
	SYSTEMTIME systemTime;
	GetSystemTime(&systemTime);
	FILETIME fileTime;
	if (!SystemTimeToFileTime(&systemTime, &fileTime)) {
		return 0;
	}
	ULARGE_INTEGER uli;
	uli.LowPart = fileTime.dwLowDateTime;
	uli.HighPart = fileTime.dwHighDateTime;
	if (uli.QuadPart < 116444736000000000ULL) {
		return 0;
	}
	return (uli.QuadPart / 10000) - 11644473600000ULL;
}
#else
int bmx_calc_timeoffset_mins(time_t rawtime, const struct tm * local_tm) {
	struct tm local_as_utc = *local_tm;
	time_t local_epoch = timegm(&local_as_utc);
	if (local_epoch == (time_t)-1) {
		return 0;
	}

	int offset = (int)(difftime(local_epoch, rawtime) / 60.0);
	if (local_tm->tm_isdst > 0) {
		offset -= 60;
	}
	return offset;
}

void bmx_current_datetime(SDateTime * dt, int utc) {
	*dt = (SDateTime){0};
	dt->dst = -1;

	struct timespec ts;
	if (clock_gettime(CLOCK_REALTIME, &ts) != 0) {
		return;
	}

	struct tm tm;
	if (utc) {
		if (!gmtime_r(&ts.tv_sec, &tm)) {
			return;
		}
		dt->dst = 0;
	} else {
		if (!localtime_r(&ts.tv_sec, &tm)) {
			return;
		}
		dt->dst = tm.tm_isdst < 0 ? -1 : tm.tm_isdst > 0;
	}

    dt->year = tm.tm_year + 1900;
    dt->month = tm.tm_mon + 1;
    dt->day = tm.tm_mday;
    dt->hour = tm.tm_hour;
    dt->minute = tm.tm_min;
    dt->second = tm.tm_sec;
	dt->millisecond = ts.tv_nsec / 1000000;
	dt->utc = utc;
	dt->offset = utc ? 0 : bmx_calc_timeoffset_mins(ts.tv_sec, &tm);
}

BBULONG bmx_current_unix_time() {
	struct timespec ts;
	if (clock_gettime(CLOCK_REALTIME, &ts) != 0 || ts.tv_sec < 0) {
		return 0;
	}
	return (BBULONG)ts.tv_sec * 1000 + ts.tv_nsec / 1000000;
}
#endif

int bmx_datetime_from_local_epoch(BBLONG epoch, SDateTime* dt) {
	time_t time = (time_t)epoch;
	struct tm result;
#if defined(_WIN32) || defined(_WIN64)
	if (localtime_s(&result, &time) != 0) {
		return -1;
	}
#else
	if (!localtime_r(&time, &result)) {
		return -1;
	}
#endif

	dt->year = result.tm_year + 1900;
	dt->month = result.tm_mon + 1;
	dt->day = result.tm_mday;
	dt->hour = result.tm_hour;
	dt->minute = result.tm_min;
	dt->second = result.tm_sec;
	dt->millisecond = 0;
	dt->utc = 0;
	dt->dst = result.tm_isdst < 0 ? -1 : result.tm_isdst > 0;
#if defined(_WIN32) || defined(_WIN64)
	dt->offset = bmx_calc_timeoffset_mins(NULL);
#else
	dt->offset = bmx_calc_timeoffset_mins(time, &result);
#endif
	return 0;
}

SDateTime bmx_datetime_from_epoch(BBLONG epochTimeSecs, BBLONG fracNanoseconds, int isLocalTime) {
	SDateTime dt = {0};
	dt.dst = -1;

	if (isLocalTime) {
		if (bmx_datetime_from_local_epoch(epochTimeSecs, &dt) == 0) {
			dt.millisecond = fracNanoseconds / 1000000;
		}
		return dt;
	}

    struct tm timeinfo;
	time_t time = (time_t)epochTimeSecs;

#if defined(_WIN32) || defined(_WIN64)
	if (gmtime_s(&timeinfo, &time) != 0) {
		return dt;
	}
#else
	if (!gmtime_r(&time, &timeinfo)) {
		return dt;
	}
#endif

    dt.year = timeinfo.tm_year + 1900;
    dt.month = timeinfo.tm_mon + 1;
    dt.day = timeinfo.tm_mday;
    dt.hour = timeinfo.tm_hour;
    dt.minute = timeinfo.tm_min;
    dt.second = timeinfo.tm_sec;

    dt.millisecond = fracNanoseconds / 1000000;

    dt.utc = 1;
    dt.offset = 0;
	dt.dst = 0;

    return dt;
}

time_t bmx_datetime_to_time_t(const SDateTime * dt) {
	struct tm t = {0};

    t.tm_year = dt->year - 1900;
    t.tm_mon = dt->month - 1;
    t.tm_mday = dt->day;
    t.tm_hour = dt->hour;
    t.tm_min = dt->minute;
    t.tm_sec = dt->second;
    t.tm_isdst = -1; // timegm and _mkgmtime do not use this field

    if (!dt->utc) {
        // Convert the offset to seconds
        int offsetSeconds = dt->offset * 60;
        if (dt->dst == 1) {
            offsetSeconds += 3600;
        }

        // Convert struct tm to time_t as if it was UTC
        time_t ts;
    #if defined(_WIN32) || defined(_WIN64)
        ts = _mkgmtime(&t);
    #else
        ts = timegm(&t);
    #endif
        if (ts == -1) {
            return -1;
        }

        // Apply the offset
        ts -= offsetSeconds;

		return ts;
    } else {
        // Convert struct tm to time_t as UTC
        time_t ts;
    #if defined(_WIN32) || defined(_WIN64)
        ts = _mkgmtime(&t);
    #else
        ts = timegm(&t);
    #endif

        if (ts == -1) {
            return -1;
        }

		return ts;
    }
}

BBLONG bmx_datetime_to_epoch(const SDateTime * dt) {
	return (BBLONG)bmx_datetime_to_time_t(dt);
}

int bmx_datetime_convert_to_utc(const SDateTime * dt, SDateTime * dt_utc) {
   if (!dt || !dt_utc)
        return -1; // Return error if either pointer is NULL

	if (dt->utc == 1) {
		*dt_utc = *dt;
        return 0;
    }

	time_t ts = bmx_datetime_to_time_t(dt);

	if (ts == -1) {
        return -1;
    }

    struct tm utc;

#if defined(_WIN32) || defined(_WIN64)
	if (gmtime_s(&utc, &ts) != 0) {
		return -1;
	}
#else
	if (!gmtime_r(&ts, &utc)) {
		return -1;
	}
#endif

    dt_utc->year = utc.tm_year + 1900;
    dt_utc->month = utc.tm_mon + 1;
    dt_utc->day = utc.tm_mday;
    dt_utc->hour = utc.tm_hour;
    dt_utc->minute = utc.tm_min;
    dt_utc->second = utc.tm_sec;
    dt_utc->millisecond = dt->millisecond;
    dt_utc->utc = 1;
    dt_utc->offset = 0;
    dt_utc->dst = 0;

    return 0;
}


BBString * bmx_current_datetime_format(BBString * format) {
	struct tm tm;
	time_t rawtime;
	char buf[256];

	if (time(&rawtime) == (time_t)-1) {
		return &bbEmptyString;
	}
#if defined(_WIN32) || defined(_WIN64)
	if (localtime_s(&tm, &rawtime) != 0) {
		return &bbEmptyString;
	}
#else
	if (!localtime_r(&rawtime, &tm)) {
		return &bbEmptyString;
	}
#endif

	unsigned char * f = bbStringToUTF8String(format);
	if (!f) {
		return &bbEmptyString;
	}

	if (strftime(buf, sizeof(buf), (const char *)f, &tm) == 0) {
		bbMemFree(f);
		return &bbEmptyString;
	}

	BBString * res = bbStringFromUTF8String((const unsigned char *)buf);

	bbMemFree(f);
	return res;
}

BBString * bmx_datetime_iso8601(const SDateTime *dt, int showMillis) {
	char buf[128];
	int length = 0;
	if (dt->utc) {
        if (showMillis) {
            length = snprintf(buf, 128, "%04d-%02d-%02dT%02d:%02d:%02d.%03dZ",
                     dt->year, dt->month, dt->day, dt->hour, dt->minute, dt->second, dt->millisecond);
        } else {
            length = snprintf(buf, 128, "%04d-%02d-%02dT%02d:%02d:%02dZ",
                     dt->year, dt->month, dt->day, dt->hour, dt->minute, dt->second);
		}
	} else {
		int offset = dt->dst == 1 ? dt->offset + 60 : dt->offset;
		char offset_sign = offset < 0 ? '-' : '+';
		int absolute_offset = offset < 0 ? -offset : offset;
		int offset_hours = absolute_offset / 60;
		int offset_minutes = absolute_offset % 60;

		if (showMillis) {
			length = snprintf(buf, 128, "%04d-%02d-%02dT%02d:%02d:%02d.%03d%c%02d:%02d",
					dt->year, dt->month, dt->day, dt->hour, dt->minute, dt->second, dt->millisecond,
					offset_sign, offset_hours, offset_minutes);
		} else {
			length = snprintf(buf, 128, "%04d-%02d-%02dT%02d:%02d:%02d%c%02d:%02d",
					dt->year, dt->month, dt->day, dt->hour, dt->minute, dt->second,
					offset_sign, offset_hours, offset_minutes);
		}
    }
	if (length < 0 || (size_t)length >= sizeof(buf)) {
		return &bbEmptyString; // Error or buffer overflow
	}
	return bbStringFromCString(buf);
}

int time_( void *ttime ){
	return (int)time( (time_t*)ttime );
}

void *localtime_( void *ttime ){
	return localtime( (time_t*)ttime );
}

int strftime_( char *buf,int size,BBString *fmt,void *ttime ){
	const char *p = (const char *)bbStringToCString(fmt);
	int res = strftime( buf,size,p,ttime );
	bbMemFree((void *)p);
	return res;
}
