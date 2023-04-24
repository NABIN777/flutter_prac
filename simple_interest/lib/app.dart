import 'package:flutter/material.dart';
import 'package:simple_interest/view/arithmetic.dart';
import 'package:simple_interest/view/dashboard.dart';

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
        '/circleRoute': (context) => const SimpleInterest(),
      },
    );
  }
}
