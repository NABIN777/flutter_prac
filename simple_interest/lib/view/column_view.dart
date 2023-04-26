import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Name Display'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          children: const [],
        ));
  }
}
