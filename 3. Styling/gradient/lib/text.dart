import 'package:flutter/material.dart';

class TextT extends StatelessWidget {
  const TextT (this.inptext, {super.key});
  final String inptext;
  @override
  Widget build(context) {
    return Text(
      textAlign: TextAlign.left,
      inptext,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 50,
        color: Color.fromARGB(255, 255, 255, 0),
      ),
    );
  }
}
