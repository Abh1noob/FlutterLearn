import 'package:flutter/material.dart';


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
          child: const Center(
            child: Text(
              'Abhinav',
              style: TextStyle(
                fontSize: 100,
                color: Colors.white,
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                ),
            ),
          ),
        );
  }
}