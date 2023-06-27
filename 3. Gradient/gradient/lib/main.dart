import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: Tab(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors:[ 
                Color.fromARGB(255, 255, 0, 0),
                Color.fromARGB(255, 221, 129, 0),
                ]
              ),
            ),
          child: const Center(child: Text('Hello World!'),),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(radius: 1.3, colors: [
              Color.fromARGB(255, 0, 136, 255),
              Color.fromARGB(255, 38, 0, 255),
            ]),
          ),
          child: const Center(
            child: Text('Abhinav'),
          ),
        ),
      ),
    ),
  );
}
