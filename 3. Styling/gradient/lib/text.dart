import 'package:flutter/material.dart';

class text extends StatelessWidget {
  const text (this.inptext, {super.key});
  final String inptext;
  @override
  Widget build(context) {
    return Container(
      // color: Colors.blue,
      child: Text(
        textAlign: TextAlign.left,
        inptext,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}
