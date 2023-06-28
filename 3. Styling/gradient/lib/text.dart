import 'package:flutter/material.dart';

class text extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      color: Colors.blue,
      child: const Text(
        'Abhinav',
        style: TextStyle(
          fontSize: 100,
          color: Colors.white,
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }
}
