//Option Button Design

import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  const OptionButton(this.content, {super.key});
  final String content;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {},
      style: const ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(Color.fromARGB(255, 7, 34, 63)),
        alignment: Alignment.center,
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)))),
        overlayColor: MaterialStatePropertyAll(Color.fromARGB(245, 43, 6, 130)),
        splashFactory: InkSparkle.splashFactory,
      ),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          content,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
