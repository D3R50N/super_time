library super_time;

import 'package:super_time/time_ago.dart';

/// A utility class for common time-related operations.
class SuperTime {
  static const int _second = 1000;
  static const int _minute = 60 * _second;
  static const int _hour = 60 * _minute;
  static const int _day = 24 * _hour;
  static const int _week = 7 * _day;

  /// Returns a [TimeAgo] object representing the time elapsed since the given [date].
  static TimeAgo timeAgo(DateTime date) {
    final int diff =
        DateTime.now().millisecondsSinceEpoch - date.millisecondsSinceEpoch;
    late TimeAgoType type;
    late int value;
    if (diff < _minute) {
      type = TimeAgoType.justNow;
      value = 0;
    }
    if (diff >= _minute && diff < _hour) {
      type = TimeAgoType.minutes;
      value = diff ~/ _minute;
    }
    if (diff >= _hour && diff < _day) {
      type = TimeAgoType.hours;
      value = diff ~/ _hour;
    }
    if (diff >= _day && diff < _week) {
      type = TimeAgoType.days;
      value = diff ~/ _day;
    }
    if (diff >= _week) {
      type = TimeAgoType.weeks;
      value = diff ~/ _week;
    }
    return TimeAgo(value: value, type: type);
  }

  /// Converts a [DateTime] object [dateTime] to a timestamp string.
  static String toTimestamp(DateTime dateTime) {
    return dateTime.millisecondsSinceEpoch.toString();
  }

  /// Converts a timestamp integer [timestamp] to a [DateTime] object.
  static DateTime fromTimestamp(int timestamp) {
    return DateTime.fromMillisecondsSinceEpoch(timestamp);
  }

  /// Formats the given [date] according to the specified [format].
  static String toFormat(String format, DateTime date) {
    return format
        .replaceAll('yyyy', date.year.toString())
        .replaceAll('yy', date.year.toString().substring(2, 4))
        .replaceAll('MM', date.month.toString().padLeft(2, '0'))
        .replaceAll('dd', date.day.toString().padLeft(2, '0'))
        .replaceAll('HH', date.hour.toString().padLeft(2, '0'))
        .replaceAll('mm', date.minute.toString().padLeft(2, '0'))
        .replaceAll('ss', date.second.toString().padLeft(2, '0'));
  }

  /// Formats the given [datetime] in French.
  static String toFr(DateTime datetime,
      {bool withTime = false, bool withDay = true}) {
    final months = [
      'Janvier',
      'Février',
      'Mars',
      'Avril',
      'Mai',
      'Juin',
      'Juillet',
      'Août',
      'Septembre',
      'Octobre',
      'Novembre',
      'Décembre'
    ];
    final days = [
      'Lundi',
      'Mardi',
      'Mercredi',
      'Jeudi',
      'Vendredi',
      'Samedi',
      'Dimanche',
    ];

    final String month = months[datetime.month - 1];
    final String day = days[datetime.weekday - 1];
    final String hour = datetime.hour.toString().padLeft(2, '0');
    final String minute = datetime.minute.toString().padLeft(2, '0');
    final String second = datetime.second.toString().padLeft(2, '0');
    final String date = datetime.day.toString().padLeft(2, '0');

    if (withTime && withDay) {
      return '$day $date $month ${datetime.year} à $hour:$minute:$second';
    }

    if (withTime) {
      return '$date $month ${datetime.year} à $hour:$minute:$second';
    }

    if (withDay) {
      return '$day $date $month ${datetime.year}';
    }

    return '$date $month ${datetime.year}';
  }

  /// Formats the given [datetime] in English.
  static String toEn(DateTime datetime,
      {bool withTime = false, bool withDay = true}) {
    final months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'Jully',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    final days = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday',
    ];

    final String month = months[datetime.month - 1];
    final String day = days[datetime.weekday - 1];
    final String hour = datetime.hour.toString().padLeft(2, '0');
    final String minute = datetime.minute.toString().padLeft(2, '0');
    final String second = datetime.second.toString().padLeft(2, '0');
    final String date = datetime.day.toString().padLeft(2, '0');

    if (withTime && withDay) {
      return '$day $month $date ${datetime.year} at $hour:$minute:$second';
    }

    if (withTime) {
      return '$month $date ${datetime.year} at $hour:$minute:$second';
    }

    if (withDay) {
      return '$day $month $date ${datetime.year}';
    }

    return '$month $date ${datetime.year}';
  }

  /// Converts a [DateTime] object [dateTime] to a JSON representation.
  static Map<String, int> toJson(DateTime dateTime) => {
        'year': dateTime.year,
        'month': dateTime.month,
        'day': dateTime.day,
        'hour': dateTime.hour,
        'minute': dateTime.minute,
        'second': dateTime.second,
        'millisecond': dateTime.millisecond,
        'microsecond': dateTime.microsecond,
      };

  /// Converts a JSON representation [json] to a [DateTime] object.
  static DateTime fromJson(Map<String, dynamic> json) => DateTime(
        json['year'],
        json['month'],
        json['day'],
        json['hour'],
        json['minute'],
        json['second'],
        json['millisecond'],
        json['microsecond'],
      );

  /// Converts a number of [days] to a [Duration] object.
  static Duration toDays(int days) => Duration(days: days);

  /// Converts a number of [hours] to a [Duration] object.
  static Duration toHours(int hours) => Duration(hours: hours);

  /// Converts a number of [minutes] to a [Duration] object.
  static Duration toMinutes(int minutes) => Duration(minutes: minutes);

  /// Converts a number of [seconds] to a [Duration] object.
  static Duration toSeconds(int seconds) => Duration(seconds: seconds);
}
