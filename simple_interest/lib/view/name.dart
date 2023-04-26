import 'package:flutter/material.dart';
import 'package:simple_interest/model/name_display.dart';

class Name extends StatefulWidget {
  const Name({Key? key}) : super(key: key);

  @override
  _NameState createState() => _NameState();
}

class _NameState extends State<Name> {
  List<String> names = [];
  late NameDisplay nameDisplay;

  void saveName(String name) {
    nameDisplay = NameDisplay();
    setState(() {
      names.clear(); // clear the list before adding the new name
      names.add(name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name Display'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 8),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        saveName("Nirajan");
                      });
                    },
                    child: const Text('Display Name'),
                  ),
                ),
              ),
              Text(
                names.isNotEmpty
                    ? 'names are : ${names[0]}'
                    : '', // display only the first name in the list
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
