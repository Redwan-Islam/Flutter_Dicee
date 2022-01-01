import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text("Dicee"),
          backgroundColor: Colors.red,
        ),
        body: const dice(),
      ),
    ),
  );
}

// // ignore: camel_case_types
// class dice extends StatelessWidget {
//   const dice({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Image.asset("assets/dice1.png"),
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Image.asset("assets/dice2.png"),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// ignore: camel_case_types
class dice extends StatefulWidget {
  const dice({Key? key}) : super(key: key);

  @override
  _diceState createState() => _diceState();
}

// ignore: camel_case_types
class _diceState extends State<dice> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDice = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset("assets/dice$leftDice.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightDice = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset("assets/dice$rightDice.png"),
            ),
          ),
        ],
      ),
    );
  }
}
