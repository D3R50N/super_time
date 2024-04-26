/// Represents a time interval relative to the current time.
class TimeAgo {
  /// The value of the time interval.
  final int value;

  /// The type of time interval.
  final TimeAgoType type;

  /// Constructs a [TimeAgo] object with the given [value] and [type].
  TimeAgo({required this.value, required this.type});

  /// Returns a string representing the time interval in French.
  String get fr {
    switch (type) {
      case TimeAgoType.justNow:
        return 'à l\'instant';
      case TimeAgoType.seconds:
        return 'il y a ${value.toString().padLeft(2, "0")} secondes';
      case TimeAgoType.minutes:
        return 'il y a ${value.toString().padLeft(2, "0")} minutes';
      case TimeAgoType.hours:
        return 'il y a ${value.toString().padLeft(2, "0")} heures';
      case TimeAgoType.days:
        return 'il y a ${value.toString().padLeft(2, "0")} jours';
      case TimeAgoType.weeks:
        return 'il y a ${value.toString().padLeft(2, "0")} semaines';
    }
  }

  /// Returns a string representing the time interval in English.
  String get en {
    switch (type) {
      case TimeAgoType.justNow:
        return 'just now';
      case TimeAgoType.seconds:
        return '${value.toString().padLeft(2, "0")} seconds ago';
      case TimeAgoType.minutes:
        return '${value.toString().padLeft(2, "0")} minutes ago';
      case TimeAgoType.hours:
        return '${value.toString().padLeft(2, "0")} hours ago';
      case TimeAgoType.days:
        return '${value.toString().padLeft(2, "0")} days ago';
      case TimeAgoType.weeks:
        return '${value.toString().padLeft(2, "0")} weeks ago';
    }
  }

  /// Returns a string representing the time interval in Spanish.
  String get es {
    switch (type) {
      case TimeAgoType.justNow:
        return 'ahora mismo';
      case TimeAgoType.seconds:
        return 'hace ${value.toString().padLeft(2, "0")} segundos';
      case TimeAgoType.minutes:
        return 'hace ${value.toString().padLeft(2, "0")} minutos';
      case TimeAgoType.hours:
        return 'hace ${value.toString().padLeft(2, "0")} horas';
      case TimeAgoType.days:
        return 'hace ${value.toString().padLeft(2, "0")} días';
      case TimeAgoType.weeks:
        return 'hace ${value.toString().padLeft(2, "0")} semanas';
    }
  }

  /// Returns a string representing the time interval in Portuguese.
  String get pt {
    switch (type) {
      case TimeAgoType.justNow:
        return 'agora mesmo';
      case TimeAgoType.seconds:
        return 'há ${value.toString().padLeft(2, "0")} segundos';
      case TimeAgoType.minutes:
        return 'há ${value.toString().padLeft(2, "0")} minutos';
      case TimeAgoType.hours:
        return 'há ${value.toString().padLeft(2, "0")} horas';
      case TimeAgoType.days:
        return 'há ${value.toString().padLeft(2, "0")} dias';
      case TimeAgoType.weeks:
        return 'há ${value.toString().padLeft(2, "0")} semanas';
    }
  }
}

/// Enum representing the type of time interval.
enum TimeAgoType {
  /// Represents a time interval that is very recent.
  justNow,

  /// Represents a time interval in seconds.
  seconds,

  /// Represents a time interval in minutes.
  minutes,

  /// Represents a time interval in hours.
  hours,

  /// Represents a time interval in days.
  days,

  /// Represents a time interval in weeks.
  weeks,
}
