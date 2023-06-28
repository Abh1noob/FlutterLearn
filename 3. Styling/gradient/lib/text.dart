import 'package:flutter/material.dart';

class text extends StatelessWidget {
  const text (this.inptext, {super.key});
  final String inptext;
  @override
  Widget build(context) {
    return Container(
      color: Colors.blue,
      child: Text(
        inptext,
        style: const TextStyle(
          fontSize: 100,
          color: Colors.white,
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }
}
