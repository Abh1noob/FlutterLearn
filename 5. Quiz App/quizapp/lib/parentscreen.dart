//Home screen to qone.dart function migration is done here

import 'package:flutter/material.dart';
import 'homescreen.dart';

class ParentScreen extends StatefulWidget {
  const ParentScreen({super.key});

  @override
  State<ParentScreen> createState() => _ParentScreenState();
}

class _ParentScreenState extends State<ParentScreen> {

  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = HomeScreen(changeScreen);
    super.initState();
  }

  void changeScreen(Widget ToWhat){
    setState(() {
      activeScreen =  ToWhat;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 15, 19, 42),
          Color.fromARGB(255, 6, 10, 21),
        ], begin: Alignment.bottomLeft),
      ),
      child: Center(
        child: activeScreen,
      ),
    );
  }
}
