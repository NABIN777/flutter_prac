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
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.star,
                  size: 50,
                  color: Colors.red,
                ),
                Icon(
                  Icons.account_balance_wallet,
                  size: 50,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.account_tree_sharp,
                  size: 50,
                  color: Colors.green,
                ),
              ],
            ),
            const Icon(
              Icons.access_alarm_sharp,
              size: 50,
              color: Colors.green,
            ),
            const Icon(
              Icons.access_alarm_sharp,
              size: 50,
              color: Colors.yellow,
            ),
            const Icon(
              Icons.access_alarm_sharp,
              size: 50,
              color: Colors.purple,
            )
          ],
        ));
  }
}










// /////////////////////////////////////double column////////////////////
// body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: const [
//                 Icon(
//                   Icons.star,
//                   size: 50,
//                   color: Colors.red,
//                 ),
//                 Icon(
//                   Icons.account_balance_wallet,
//                   size: 50,
//                   color: Colors.blue,
//                 ),
//               ],
//             ),
//             const Icon(
//               Icons.access_alarm_sharp,
//               size: 50,
//               color: Colors.green,
//             )
//           ],
//         ));
//   }
// }
