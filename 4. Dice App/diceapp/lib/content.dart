import 'package:flutter/material.dart';

class MainBody extends StatelessWidget{
  const MainBody ({super.key});

  @override
  Widget build(context){
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Dice App', style: TextStyle(color: Colors.white, fontSize: 25),),
            const SizedBox(
              height: 20,
            ),
            Image.asset('assets/dice-1.png', height: 150),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
                onPressed: () {
                  print('Function Called!');
                },
                child: const Text('Roll Dice!')),
          ],
        );
  }
}

