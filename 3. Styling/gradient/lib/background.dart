import 'package:flutter/material.dart';
import 'package:widget_tree/text.dart';

class BgGradient extends StatelessWidget {
  const BgGradient({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(radius: 1, colors: [
          Color.fromARGB(255, 0, 136, 255),
          Color.fromARGB(255, 3, 1, 19),
        ]),
      ),
      child: Center(
        child: SizedBox(
          height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/peter.png',
                height: 200,
              ),
              const SizedBox(width: 20),
              const Column(
                children: [
                  text('Abhinav'),
                  SizedBox(height: 10),
                  Text('''Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
Sed vel elit ornare quam sollicitudin sollicitudin. Vivamus nec neque non massa 
fringilla bibendum. Phasellus aliquet ut arcu ac sodales. Etiam posuere mattis 
tortor sed auctor. Pellentesque orci metus, malesuada sit amet volutpat et, molestie 
lacinia sem. Nulla in maximus magna, et.''', style: TextStyle(color: Colors.white),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
