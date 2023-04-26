import 'package:flutter/material.dart';
import 'package:simple_interest/view/arithmetic.dart';
import 'package:simple_interest/view/circle.dart';
import 'package:simple_interest/view/column_view.dart';
import 'package:simple_interest/view/dashboard.dart';
import 'package:simple_interest/view/name.dart';
import 'package:simple_interest/view/rich_text.dart';
import 'package:simple_interest/view/simple_interest.dart';

class APP extends StatelessWidget {
  const APP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Dashboard(),
        '/arithmeticRoute': (context) => const ArithmeticView(),
        '/siRoute': (context) => const SimpleInterest(),
        '/circleRoute': (context) => const Circle(),
        '/nameRoute': (context) => const Name(),
        '/richRoute': (context) => const RichTextView(),
        '/colRoute': (context) => const ColumnView(),
      },
    );
  }
}
