import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  var diceimage = 'assets/dice-1.png';

  void diechange() {
    setState(() {
      var value = Random().nextInt(6)+1;
      diceimage = 'assets/dice-$value.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Dice App',
          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Image.asset(diceimage, height: 200),
        const SizedBox(
          height: 80,
        ),
        ElevatedButton(
          onPressed: diechange,
          child: const Text('Roll Dice!'),
        ),
      ],
    );
  }
}
