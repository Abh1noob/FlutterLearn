import 'dart:math';
import 'package:flutter/material.dart';

Color color1 = const Color.fromRGBO(3, 169, 234, 1);
Color color2 = const Color.fromRGBO(236, 240, 240, 1);
Color barColor = const Color.fromRGBO(3, 169, 234, 1);

class BgGraphics extends StatefulWidget {
  const BgGraphics({super.key});
  // static var currentcolor = 'blue';
  @override
  State<BgGraphics> createState() => _BgGraphicsState();
}

class _BgGraphicsState extends State<BgGraphics> {
  var diceimage = 'assets/dice-blue-1.png';
  var currentcolor = 'blue';

  void diechange() {
    setState(() {
      var value = Random().nextInt(6) + 1;
      diceimage = 'assets/dice-$currentcolor-$value.png';
    });
  }

  void bgChange(Color a, Color b) {
    setState(() {
      color1 = a;
      color2 = b;
      barColor = a;
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dice Rolling App'),
        backgroundColor: barColor,
      ),
      drawer: Drawer(
        elevation: 10,
        backgroundColor: color2,
        child: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Text(
                'Themes',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              //red
              Row(
                children: [
                  const Icon(Icons.circle,color: Colors.blue),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      var a = const Color.fromRGBO(3, 169, 234, 1);
                      var b = const Color.fromRGBO(236, 240, 240, 1);
                      currentcolor = 'blue';
                      diechange();
                      bgChange(a, b);
                    },
                    child: const Text('Blue', style: TextStyle(color: Colors.black)),
                  )
                ],
              ),

              const SizedBox(height: 20),

              //blue
              Row(
                children: [
                  const Icon(Icons.circle,color: Colors.red),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      var a = const Color.fromARGB(255, 179, 1, 1);
                      var b = const Color.fromARGB(255, 255, 255, 255);
                      currentcolor = 'red';
                      diechange();
                      bgChange(a, b);
                    },
                    child: const Text('Red', style: TextStyle(color: Colors.black)),
                  )
                ],
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  const Icon(Icons.circle, color: Colors.green),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      var a = const Color.fromARGB(255, 18, 120, 0);
                      var b = const Color.fromARGB(255, 255, 255, 255);
                      currentcolor = 'green';
                      diechange();
                      bgChange(a, b);
                    },
                    child: const Text('   Green', style: TextStyle(color: Colors.black)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              color1,
              color2,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Dice',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(diceimage, height: 200),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: diechange,
                style: ElevatedButton.styleFrom(
                  backgroundColor: color2,
                ),
                child: Text('Roll Dice!', style: TextStyle(color: color1),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
