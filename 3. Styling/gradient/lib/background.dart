import 'package:flutter/material.dart';
// import 'package:widget_tree/text.dart';

class BgGradient extends StatelessWidget{
  @override
  Widget build(context){
    return Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(radius: 1.3, colors: [
              Color.fromARGB(255, 0, 136, 255),
              Color.fromARGB(255, 38, 0, 255),
            ]),
          ),
          child: Center(
            child: Image.asset('assets/peter.png'),
          ),
        );
  }
}