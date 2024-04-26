import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:super_time/super_time.dart';

void main() {
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
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
