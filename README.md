# Super Time Flutter Package

Work fast and efficiently with time in Dart.

## Installation

Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  super_time: <latest>
```

or

```bash
dart pub add super_time
```

## Usage

```dart
import 'package:super_time/super_time.dart';
```

## Features

### Date Extensions

#### st_toFr({bool withTime = false, bool withDay = true})

Converts the DateTime object to a French-formatted string.

```dart
DateTime.now().st_toFr(); // Output: "31 décembre 2023"
```

#### st_toEn({bool withTime = false, bool withDay = true})

Converts the DateTime object to an English-formatted string.

```dart
DateTime.now().st_toEn(); // Output: "December 31, 2023"
```

#### st_toFormat(String format)

Formats the DateTime object according to the provided format string.

```dart
DateTime.now().st_toFormat("dd/MM/yyyy"); // Output: "31/12/2023"
```

#### st_timeAgo()

Generates a human-readable time ago representation.

```dart
DateTime.now().subtract(Duration(minutes: 30)).st_timeAgo(); // Output: "30 minutes ago"
```

#### st_toTimestamp()

Converts the DateTime object to a timestamp string.

```dart
DateTime.now().st_toTimestamp(); // Output: "20231231120000"
```

#### st_toJson()

Converts the DateTime object to a JSON representation.

```dart
DateTime.now().st_toJson(); // Output: {"year": 2023, "month": 12, "day": 31, "hour": 12, "mi// nute": 0, "second": 0}
```

### Overloaded Operators

```dart
DateTime newDate = DateTime.now() + Duration(days: 7); // Adds 7 days to the current date
DateTime pastDate = DateTime.now() - 3.st_hours; // Subtracts 3 hours from the current date
```

### Integer Extensions

#### st_seconds, st_minutes, st_hours, st_days

Converts the integer to a Duration representing seconds, minutes, hours, or days, respectively.

```dart
int seconds = 120;
Duration duration = seconds.st_seconds; // Output: Duration(seconds: 120)
```
