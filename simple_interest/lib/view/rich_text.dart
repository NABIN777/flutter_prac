import 'package:flutter/material.dart';

class RichTextView extends StatelessWidget {
  const RichTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RichText(
        text: const TextSpan(
            text: 'My Name is',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontSize: 30,
            ),
            children: <TextSpan>[
              TextSpan(
                text: " Nirajan",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 30),
              )
            ]),
      ),
    );
  }
}

















// ............................container code///////////////////////////////
// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.blueGrey,
//         height: 300,
//         width: 500,
//         child: const Text(
//           "My name is Nabin Khanal",
//           style: TextStyle(
//             fontSize: 30,
//             fontWeight: FontWeight.bold,
//             color: Colors.red,
//           ),
//         ),
//       ),
//     );
//   }
// }

// body: Text(
//         "My name is Nabin Khanal",
//         style: TextStyle(
//           fontSize: 30,
//           fontWeight: FontWeight.bold,
//           color: Colors.red,
//         ),
//       ),
//     );
//   }

