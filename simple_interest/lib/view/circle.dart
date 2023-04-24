import 'package:flutter/material.dart';
import 'package:simple_interest/model/areaofcircle.dart';

// final -> run time
// const - > compile
class Circle extends StatefulWidget {
  const Circle({super.key});

  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  int radius = 0;
  int result = 0;

  late AreaOfCircle areaOfCircle;
  void area() {
    areaOfCircle = AreaOfCircle();
    setState(() {
      result = areaOfCircle.area(radius);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Are of Circle'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  radius = int.parse(value);
                },
                decoration: InputDecoration(
                  hintText: 'Enter radius ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      area();
                    });
                  },
                  child: const Text('calculate'),
                ),
              ),
              Text(
                'Area of given circle is :$result',
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
    );
  }
}
