import 'package:flutter/material.dart';
import 'package:simple_interest/model/simple_interest.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  int principle = 0;
  int rate = 0;
  int time = 0;
  int si = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  onChanged: (value) {
                    principle = int.parse(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Principle',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    rate = int.parse(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Rate',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    time = int.parse(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Time',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        si = DimpleInterest()
                            .simpleInterest(principle, rate, time);
                      });
                    },
                    child: const Text(
                      'Calculate SI',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Simple Interest of given input is :$si',
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
