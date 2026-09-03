#include <stddef.h>
#include <stdint.h>
#include <string.h>
#include <time.h>

#include "blitzmax/pico_runtime.h"

typedef BMXPicoCalendarDateTime SDateTime;

extern int32_t bmx_pico_calendar_get(SDateTime *date_time);

typedef struct BMXPicoTimeSpec {
    size_t tv_sec;
    size_t tv_nsec;
} BMXPicoTimeSpec;

static const char *const short_days[] = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
static const char *const long_days[] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
static const char *const short_months[] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
static const char *const long_months[] = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};

static int bmx_pico_time_append_char(char *buffer, size_t capacity, size_t *length, char value) {
    if (*length + 1 >= capacity) return 0;
    buffer[(*length)++] = value;
    buffer[*length] = 0;
    return 1;
}

static int bmx_pico_time_append_text(char *buffer, size_t capacity, size_t *length, const char *text) {
    while (*text) {
        if (!bmx_pico_time_append_char(buffer, capacity, length, *text++)) return 0;
    }
    return 1;
}

static int bmx_pico_time_append_number(char *buffer, size_t capacity, size_t *length,
    int value, int width, char padding) {
    char digits[12];
    int count = 0;
    unsigned int magnitude = value < 0 ? (unsigned int)(-value) : (unsigned int)value;
    do {
        digits[count++] = (char)('0' + magnitude % 10u);
        magnitude /= 10u;
    } while (magnitude && count < (int)sizeof(digits));
    if (value < 0 && !bmx_pico_time_append_char(buffer, capacity, length, '-')) return 0;
    while (count < width) {
        if (!bmx_pico_time_append_char(buffer, capacity, length, padding)) return 0;
        --width;
    }
    while (count) {
        if (!bmx_pico_time_append_char(buffer, capacity, length, digits[--count])) return 0;
    }
    return 1;
}

static int bmx_pico_time_parts(const SDateTime *date_time, int *weekday, int *year_day) {
    int64_t seconds;
    int32_t milliseconds;
    SDateTime civil_time = *date_time;
    civil_time.utc = 1;
    civil_time.offset = 0;
    civil_time.dst = 0;
    if (!bmx_pico_datetime_to_epoch(&civil_time, &seconds, &milliseconds)) return 0;
    int64_t days = seconds / 86400;
    if (seconds % 86400 < 0) --days;
    int day = (int)((days + 4) % 7);
    if (day < 0) day += 7;
    *weekday = day;
    SDateTime first = civil_time;
    first.month = 1;
    first.day = 1;
    first.hour = first.minute = first.second = first.millisecond = 0;
    int64_t first_seconds;
    if (!bmx_pico_datetime_to_epoch(&first, &first_seconds, &milliseconds)) return 0;
    *year_day = (int)((seconds - first_seconds) / 86400) + 1;
    return 1;
}

static int bmx_pico_time_format(char *buffer, size_t capacity, const SDateTime *date_time,
    const uint16_t *format, int32_t format_length) {
    if (!buffer || !capacity || !date_time || !format || format_length < 0) return 0;
    buffer[0] = 0;
    size_t length = 0;
    int weekday, year_day;
    if (!bmx_pico_time_parts(date_time, &weekday, &year_day)) return 0;
    for (int32_t index = 0; index < format_length; ++index) {
        uint16_t character = format[index];
        if (character != '%') {
            if (character > 127 || !bmx_pico_time_append_char(buffer, capacity, &length, (char)character)) return 0;
            continue;
        }
        if (++index >= format_length) return 0;
        switch ((char)format[index]) {
            case '%': if (!bmx_pico_time_append_char(buffer, capacity, &length, '%')) return 0; break;
            case 'a': if (!bmx_pico_time_append_text(buffer, capacity, &length, short_days[weekday])) return 0; break;
            case 'A': if (!bmx_pico_time_append_text(buffer, capacity, &length, long_days[weekday])) return 0; break;
            case 'b': if (!bmx_pico_time_append_text(buffer, capacity, &length, short_months[date_time->month - 1])) return 0; break;
            case 'B': if (!bmx_pico_time_append_text(buffer, capacity, &length, long_months[date_time->month - 1])) return 0; break;
            case 'c':
                if (!bmx_pico_time_append_text(buffer, capacity, &length, short_days[weekday]) ||
                    !bmx_pico_time_append_char(buffer, capacity, &length, ' ') ||
                    !bmx_pico_time_append_text(buffer, capacity, &length, short_months[date_time->month - 1]) ||
                    !bmx_pico_time_append_char(buffer, capacity, &length, ' ') ||
                    !bmx_pico_time_append_number(buffer, capacity, &length, date_time->day, 2, ' ') ||
                    !bmx_pico_time_append_char(buffer, capacity, &length, ' ') ||
                    !bmx_pico_time_append_number(buffer, capacity, &length, date_time->hour, 2, '0') ||
                    !bmx_pico_time_append_char(buffer, capacity, &length, ':') ||
                    !bmx_pico_time_append_number(buffer, capacity, &length, date_time->minute, 2, '0') ||
                    !bmx_pico_time_append_char(buffer, capacity, &length, ':') ||
                    !bmx_pico_time_append_number(buffer, capacity, &length, date_time->second, 2, '0') ||
                    !bmx_pico_time_append_char(buffer, capacity, &length, ' ') ||
                    !bmx_pico_time_append_number(buffer, capacity, &length, date_time->year, 4, '0')) return 0;
                break;
            case 'd': if (!bmx_pico_time_append_number(buffer, capacity, &length, date_time->day, 2, '0')) return 0; break;
            case 'H': if (!bmx_pico_time_append_number(buffer, capacity, &length, date_time->hour, 2, '0')) return 0; break;
            case 'I': { int hour = date_time->hour % 12; if (!hour) hour = 12; if (!bmx_pico_time_append_number(buffer, capacity, &length, hour, 2, '0')) return 0; break; }
            case 'j': if (!bmx_pico_time_append_number(buffer, capacity, &length, year_day, 3, '0')) return 0; break;
            case 'm': if (!bmx_pico_time_append_number(buffer, capacity, &length, date_time->month, 2, '0')) return 0; break;
            case 'M': if (!bmx_pico_time_append_number(buffer, capacity, &length, date_time->minute, 2, '0')) return 0; break;
            case 'p': if (!bmx_pico_time_append_text(buffer, capacity, &length, date_time->hour < 12 ? "AM" : "PM")) return 0; break;
            case 'S': if (!bmx_pico_time_append_number(buffer, capacity, &length, date_time->second, 2, '0')) return 0; break;
            case 'U': if (!bmx_pico_time_append_number(buffer, capacity, &length, (year_day + 6 - weekday) / 7, 2, '0')) return 0; break;
            case 'w': if (!bmx_pico_time_append_number(buffer, capacity, &length, weekday, 1, '0')) return 0; break;
            case 'W': { int monday_day = weekday ? weekday - 1 : 6; if (!bmx_pico_time_append_number(buffer, capacity, &length, (year_day + 6 - monday_day) / 7, 2, '0')) return 0; break; }
            case 'x':
                if (!bmx_pico_time_append_number(buffer, capacity, &length, date_time->month, 2, '0') ||
                    !bmx_pico_time_append_char(buffer, capacity, &length, '/') ||
                    !bmx_pico_time_append_number(buffer, capacity, &length, date_time->day, 2, '0') ||
                    !bmx_pico_time_append_char(buffer, capacity, &length, '/') ||
                    !bmx_pico_time_append_number(buffer, capacity, &length, date_time->year % 100, 2, '0')) return 0;
                break;
            case 'y': if (!bmx_pico_time_append_number(buffer, capacity, &length, date_time->year % 100, 2, '0')) return 0; break;
            case 'Y': if (!bmx_pico_time_append_number(buffer, capacity, &length, date_time->year, 4, '0')) return 0; break;
            case 'Z': if (!bmx_pico_time_append_text(buffer, capacity, &length, "UTC")) return 0; break;
            default: return 0;
        }
    }
    return (int)length;
}

void bmx_current_datetime(SDateTime *date_time, int utc) {
    memset(date_time, 0, sizeof(*date_time));
    date_time->dst = -1;
    if (!bmx_pico_calendar_get(date_time)) return;
    if (!utc) date_time->utc = 0;
}

uint64_t bmx_current_unix_time(void) {
    SDateTime date_time;
    int64_t seconds;
    int32_t milliseconds;
    if (!bmx_pico_calendar_get(&date_time) ||
        !bmx_pico_datetime_to_epoch(&date_time, &seconds, &milliseconds) || seconds < 0) return 0;
    return (uint64_t)seconds * 1000u + (uint32_t)milliseconds;
}

SDateTime bmx_datetime_from_epoch(int64_t epoch_seconds, int64_t fractional_nanoseconds, int is_local) {
    SDateTime result = {0};
    result.dst = -1;
    int32_t milliseconds = (int32_t)(fractional_nanoseconds / 1000000);
    if (!bmx_pico_datetime_from_epoch(epoch_seconds, milliseconds, &result)) return result;
    if (is_local) result.utc = 0;
    return result;
}

int64_t bmx_datetime_to_epoch(const SDateTime *date_time) {
    int64_t seconds;
    int32_t milliseconds;
    return bmx_pico_datetime_to_epoch(date_time, &seconds, &milliseconds) ? seconds : -1;
}

int bmx_datetime_convert_to_utc(const SDateTime *date_time, SDateTime *utc) {
    int64_t seconds;
    int32_t milliseconds;
    if (!bmx_pico_datetime_to_epoch(date_time, &seconds, &milliseconds) ||
        !bmx_pico_datetime_from_epoch(seconds, milliseconds, utc)) return -1;
    return 0;
}

const BMXPicoString *bmx_datetime_iso8601(const SDateTime *date_time, int show_milliseconds) {
    char buffer[48];
    size_t length = 0;
    if (!bmx_pico_time_append_number(buffer, sizeof(buffer), &length, date_time->year, 4, '0') ||
        !bmx_pico_time_append_char(buffer, sizeof(buffer), &length, '-') ||
        !bmx_pico_time_append_number(buffer, sizeof(buffer), &length, date_time->month, 2, '0') ||
        !bmx_pico_time_append_char(buffer, sizeof(buffer), &length, '-') ||
        !bmx_pico_time_append_number(buffer, sizeof(buffer), &length, date_time->day, 2, '0') ||
        !bmx_pico_time_append_char(buffer, sizeof(buffer), &length, 'T') ||
        !bmx_pico_time_append_number(buffer, sizeof(buffer), &length, date_time->hour, 2, '0') ||
        !bmx_pico_time_append_char(buffer, sizeof(buffer), &length, ':') ||
        !bmx_pico_time_append_number(buffer, sizeof(buffer), &length, date_time->minute, 2, '0') ||
        !bmx_pico_time_append_char(buffer, sizeof(buffer), &length, ':') ||
        !bmx_pico_time_append_number(buffer, sizeof(buffer), &length, date_time->second, 2, '0')) return &bmx_pico_empty_string;
    if (show_milliseconds && (!bmx_pico_time_append_char(buffer, sizeof(buffer), &length, '.') ||
        !bmx_pico_time_append_number(buffer, sizeof(buffer), &length, date_time->millisecond, 3, '0'))) return &bmx_pico_empty_string;
    if (date_time->utc) {
        if (!bmx_pico_time_append_char(buffer, sizeof(buffer), &length, 'Z')) return &bmx_pico_empty_string;
    } else {
        int offset = date_time->offset + (date_time->dst == 1 ? 60 : 0);
        char sign = offset < 0 ? '-' : '+';
        if (offset < 0) offset = -offset;
        if (!bmx_pico_time_append_char(buffer, sizeof(buffer), &length, sign) ||
            !bmx_pico_time_append_number(buffer, sizeof(buffer), &length, offset / 60, 2, '0') ||
            !bmx_pico_time_append_char(buffer, sizeof(buffer), &length, ':') ||
            !bmx_pico_time_append_number(buffer, sizeof(buffer), &length, offset % 60, 2, '0')) return &bmx_pico_empty_string;
    }
    return bmx_pico_string_from_utf8_string((const uint8_t *)buffer);
}

const BMXPicoString *bmx_current_datetime_format(const BMXPicoString *format) {
    SDateTime date_time;
    char buffer[256];
    if (!format || !bmx_pico_calendar_get(&date_time) ||
        !bmx_pico_time_format(buffer, sizeof(buffer), &date_time, format->buf, format->length)) return &bmx_pico_empty_string;
    return bmx_pico_string_from_utf8_string((const uint8_t *)buffer);
}

int time_(void *time_pointer) {
    if (!bmx_pico_calendar_is_running()) return -1;
    uint64_t milliseconds = bmx_current_unix_time();
    int32_t seconds = (int32_t)(milliseconds / 1000u);
    if (time_pointer) *(int32_t *)time_pointer = seconds;
    return seconds;
}

void *localtime_(void *time_pointer) {
    static struct tm result;
    int64_t seconds = time_pointer ? *(int32_t *)time_pointer : time_(NULL);
    if (seconds == -1) return NULL;
    SDateTime date_time;
    if (!bmx_pico_datetime_from_epoch(seconds, 0, &date_time)) return NULL;
    memset(&result, 0, sizeof(result));
    result.tm_year = date_time.year - 1900;
    result.tm_mon = date_time.month - 1;
    result.tm_mday = date_time.day;
    result.tm_hour = date_time.hour;
    result.tm_min = date_time.minute;
    result.tm_sec = date_time.second;
    int weekday, year_day;
    bmx_pico_time_parts(&date_time, &weekday, &year_day);
    result.tm_wday = weekday;
    result.tm_yday = year_day - 1;
    return &result;
}

int strftime_(char *buffer, int size, const BMXPicoString *format, void *time_pointer) {
    if (!buffer || size <= 0 || !format || !time_pointer) return 0;
    const struct tm *value = (const struct tm *)time_pointer;
    SDateTime date_time = {
        .year = value->tm_year + 1900, .month = value->tm_mon + 1, .day = value->tm_mday,
        .hour = value->tm_hour, .minute = value->tm_min, .second = value->tm_sec,
        .millisecond = 0, .utc = 1, .offset = 0, .dst = 0
    };
    return bmx_pico_time_format(buffer, (size_t)size, &date_time, format->buf, format->length);
}

int clock_gettime_(int id, BMXPicoTimeSpec *specification) {
    if (!specification) return -1;
    if (id == 1) {
        uint64_t microseconds = bmx_pico_time_microseconds();
        specification->tv_sec = (size_t)(microseconds / 1000000u);
        specification->tv_nsec = (size_t)((microseconds % 1000000u) * 1000u);
        return 0;
    }
    uint64_t milliseconds = bmx_current_unix_time();
    if (!milliseconds && !bmx_pico_calendar_is_running()) return -1;
    specification->tv_sec = (size_t)(milliseconds / 1000u);
    specification->tv_nsec = (size_t)((milliseconds % 1000u) * 1000000u);
    return 0;
}
