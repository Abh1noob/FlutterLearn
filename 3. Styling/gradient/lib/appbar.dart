import 'package:flutter/material.dart';


class AppbarGradient extends StatelessWidget{
  const AppbarGradient({super.key});
  
  @override
  Widget build(context){
    return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 255, 0, 0),
                Color.fromARGB(255, 221, 129, 0),
              ]),
            ),
            child: const Center(
              child: Text(
                'Hello World!',
                selectionColor: Colors.amber,
              ),
            ),
          );
  }
}
