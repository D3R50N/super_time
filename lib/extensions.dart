// ignore_for_file: non_constant_identifier_names

import 'package:super_time/time_ago.dart';
import 'package:super_time/super_time.dart';

/// Extension methods for [DateTime] objects.
extension DateExt on DateTime {
  /// Converts the date to a French-formatted string.
  String st_toFr({bool withTime = false, bool withDay = true}) {
    return SuperTime.toFr(this, withTime: withTime, withDay: withDay);
  }

  /// Converts the date to an English-formatted string.
  String st_toEn({bool withTime = false, bool withDay = true}) {
    return SuperTime.toEn(this, withTime: withTime, withDay: withDay);
  }

  /// Formats the date according to the specified [format].
  String st_toFormat(String format) {
    return SuperTime.toFormat(format, this);
  }

  /// Computes the time elapsed since the date.
  TimeAgo st_timeAgo() {
    return SuperTime.timeAgo(this);
  }

  /// Converts the date to a timestamp string.
  String st_toTimestamp() {
    return SuperTime.toTimestamp(this);
  }

  /// Converts the date to a JSON representation.
  Map<String, int> st_toJson() {
    return SuperTime.toJson(this);
  }

  /// Adds the given [other] duration to the date.
  DateTime operator +(Duration other) => add(other);

  /// Subtracts the given [other] duration from the date.
  DateTime operator -(Duration other) => subtract(other);
}

/// Extension methods for [int] objects.
extension IntExt on int {
  /// Converts the integer to a duration representing seconds.
  Duration get st_seconds {
    return SuperTime.toSeconds(this);
  }

  /// Converts the integer to a duration representing minutes.
  Duration get st_minutes {
    return SuperTime.toMinutes(this);
  }

  /// Converts the integer to a duration representing hours.
  Duration get st_hours {
    return SuperTime.toHours(this);
  }

  /// Converts the integer to a duration representing days.
  Duration get st_days {
    return SuperTime.toDays(this);
  }
}
