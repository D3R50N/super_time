// ignore_for_file: non_constant_identifier_names

import 'package:super_time/classes.dart';
import 'package:super_time/super_time.dart';

extension DateExt on DateTime {
  String st_toFr({bool withTime = false, bool withDay = true}) {
    return SuperTime.toFr(this, withTime: withTime, withDay: withDay);
  }

  String st_toEn({bool withTime = false, bool withDay = true}) {
    return SuperTime.toEn(this, withTime: withTime, withDay: withDay);
  }

  String st_toFormat(String format) {
    return SuperTime.toFormat(format, this);
  }

  TimeAgo st_timeAgo() {
    return SuperTime.timeAgo(this);
  }

  String st_toTimestamp() {
    return SuperTime.toTimestamp(this);
  }

  Map<String, int> st_toJson() {
    return SuperTime.toJson(this);
  }

  DateTime operator +(Duration other) => add(other);
  DateTime operator -(Duration other) => subtract(other);
}

extension IntExt on int {
  Duration get st_seconds {
    return SuperTime.toSeconds(this);
  }

  Duration get st_minutes {
    return SuperTime.toMinutes(this);
  }

  Duration get st_hours {
    return SuperTime.toHours(this);
  }

  Duration get st_days {
    return SuperTime.toDays(this);
  }
}
