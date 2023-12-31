import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:super_time/extensions.dart';

import 'package:super_time/super_time.dart';

void main() {
  test('Check time', () {
    if (kDebugMode) {
      final time =
          SuperTime.timeAgo(DateTime.now().subtract(const Duration(days: 1)));
      print(time.fr);
      print(time.en);

      final date = SuperTime.fromTimestamp(1627776000000);
      print(date);

      final format = SuperTime.toFormat('dd/MM/yy HH:mm:ss', DateTime.now());
      print(format);

      final fr = SuperTime.toFr(DateTime.now());
      print(fr);

      print((DateTime.now() - 1.st_days).st_toEn());
    }
  });
}
