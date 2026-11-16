#include <stdint.h>
#include <stddef.h>
#include <string.h>
#include <time.h>

#include <zephyr/kernel.h>
#include "blitzmax/embedded_runtime.h"

/* Binary layout of Pub.Time.SDateTime on embedded targets. */
typedef struct {
    int32_t year, month, day, hour, minute, second, millisecond;
    int32_t utc, offset, dst;
} SDateTime;

typedef struct {
    size_t tv_sec;
    size_t tv_nsec;
} BMXTimeSpec;

static void bmx_time_from_tm(SDateTime *out, const struct tm *in, int milliseconds) {
    memset(out, 0, sizeof(*out));
    out->year = in->tm_year + 1900;
    out->month = in->tm_mon + 1;
    out->day = in->tm_mday;
    out->hour = in->tm_hour;
    out->minute = in->tm_min;
    out->second = in->tm_sec;
    out->millisecond = milliseconds;
    out->utc = 1;
    out->dst = 0;
}

static struct tm bmx_time_to_tm(const SDateTime *in) {
    struct tm out = {0};
    out.tm_year = in->year - 1900;
    out.tm_mon = in->month - 1;
    out.tm_mday = in->day;
    out.tm_hour = in->hour;
    out.tm_min = in->minute;
    out.tm_sec = in->second;
    return out;
}

void bmx_current_datetime(SDateTime *date_time, int utc) {
    if (!date_time) return;
    time_t now = time(NULL);
    struct tm value;
    if (gmtime_r(&now, &value)) bmx_time_from_tm(date_time, &value, 0);
    else memset(date_time, 0, sizeof(*date_time));
    date_time->utc = utc != 0;
}

uint64_t bmx_current_unix_time(void) {
    time_t now = time(NULL);
    return now > 0 ? (uint64_t)now * 1000u : 0;
}

SDateTime bmx_datetime_from_epoch(int64_t epoch_seconds,
        int64_t fractional_nanoseconds, int is_local) {
    SDateTime result = {0};
    time_t seconds = (time_t)epoch_seconds;
    struct tm value;
    if (gmtime_r(&seconds, &value))
        bmx_time_from_tm(&result, &value, (int)(fractional_nanoseconds / 1000000));
    result.utc = !is_local;
    return result;
}

int64_t bmx_datetime_to_epoch(const SDateTime *date_time) {
    if (!date_time || date_time->month < 1 || date_time->month > 12 ||
            date_time->day < 1 || date_time->day > 31) return -1;
    int64_t year = date_time->year - (date_time->month <= 2);
    int64_t era = (year >= 0 ? year : year - 399) / 400;
    unsigned year_of_era = (unsigned)(year - era * 400);
    unsigned month = (unsigned)date_time->month;
    unsigned day_of_year = (153 * (month + (month > 2 ? -3 : 9)) + 2) / 5 +
        (unsigned)date_time->day - 1;
    unsigned year_of_era_day = year_of_era * 365 + year_of_era / 4 -
        year_of_era / 100 + day_of_year;
    int64_t days = era * 146097 + year_of_era_day - 719468;
    int64_t seconds = days * 86400 + date_time->hour * 3600 +
        date_time->minute * 60 + date_time->second;
    if (!date_time->utc) {
        seconds -= (int64_t)date_time->offset * 60;
        if (date_time->dst == 1) seconds -= 3600;
    }
    return seconds;
}

int bmx_datetime_convert_to_utc(const SDateTime *date_time, SDateTime *utc) {
    if (!date_time || !utc) return -1;
    int64_t epoch = bmx_datetime_to_epoch(date_time);
    if (epoch == -1) return -1;
    *utc = bmx_datetime_from_epoch(epoch,
        (int64_t)date_time->millisecond * 1000000, 0);
    return 0;
}

const BMXEmbeddedString *bmx_datetime_iso8601(const SDateTime *date_time,
        int show_milliseconds) {
    if (!date_time) return &bmx_embedded_empty_string;
    char text[40];
    struct tm value = bmx_time_to_tm(date_time);
    size_t length = strftime(text, sizeof(text), "%Y-%m-%dT%H:%M:%S", &value);
    if (!length) return &bmx_embedded_empty_string;
    if (show_milliseconds) {
        int ms = date_time->millisecond;
        if (ms < 0 || ms > 999 || length + 4 >= sizeof(text)) return &bmx_embedded_empty_string;
        text[length++] = '.';
        text[length++] = (char)('0' + ms / 100);
        text[length++] = (char)('0' + ms / 10 % 10);
        text[length++] = (char)('0' + ms % 10);
        text[length] = 0;
    }
    if (date_time->utc && length + 1 < sizeof(text)) {
        text[length++] = 'Z';
        text[length] = 0;
    }
    return bmx_embedded_string_from_utf8_string((const uint8_t *)text);
}

const BMXEmbeddedString *bmx_current_datetime_format(const BMXEmbeddedString *format) {
    if (!format) return &bmx_embedded_empty_string;
    char *native_format = (char *)bmx_embedded_string_to_utf8_string(format);
    if (!native_format) return &bmx_embedded_empty_string;
    time_t now = time(NULL);
    struct tm value;
    char text[256];
    size_t length = gmtime_r(&now, &value) ?
        strftime(text, sizeof(text), native_format, &value) : 0;
    bbMemFree(native_format);
    return length ? bmx_embedded_string_from_utf8_string((const uint8_t *)text) :
        &bmx_embedded_empty_string;
}

int time_(void *time_pointer) {
    time_t now = time(NULL);
    if (time_pointer) *(int32_t *)time_pointer = (int32_t)now;
    return (int32_t)now;
}

void *localtime_(void *time_pointer) {
    static struct tm value;
    time_t now = time_pointer ? *(int32_t *)time_pointer : time(NULL);
    return gmtime_r(&now, &value);
}

int strftime_(char *buffer, int size, const BMXEmbeddedString *format,
        void *time_pointer) {
    if (!buffer || size <= 0 || !format || !time_pointer) return 0;
    char *native_format = (char *)bmx_embedded_string_to_utf8_string(format);
    if (!native_format) return 0;
    size_t result = strftime(buffer, (size_t)size, native_format,
        (const struct tm *)time_pointer);
    bbMemFree(native_format);
    return (int)result;
}

int clock_gettime_(int id, BMXTimeSpec *specification) {
    if (!specification) return -1;
    if (id == 1) {
        uint64_t uptime = k_uptime_get();
        specification->tv_sec = (size_t)(uptime / 1000u);
        specification->tv_nsec = (size_t)((uptime % 1000u) * 1000000u);
        return 0;
    }
    return -1;
}
