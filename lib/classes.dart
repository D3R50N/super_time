import 'package:super_time/enums.dart';

class TimeAgo {
  int value;
  TimeAgoType type;

  TimeAgo({required this.value, required this.type});

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
