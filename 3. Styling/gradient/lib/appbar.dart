import 'package:flutter/material.dart';


class AppbarGradient extends StatelessWidget{
  const AppbarGradient({super.key});
  
  @override
  Widget build(context){
    return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 3, 1, 19),
                Color.fromARGB(255, 0, 136, 255),
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
