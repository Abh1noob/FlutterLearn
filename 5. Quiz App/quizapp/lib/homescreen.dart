import 'package:flutter/material.dart';
import 'package:quizapp/qone.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen(this.changeSupporter,{super.key});
  final Function(Widget) changeSupporter;

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      const Text('Quiz App', style: TextStyle(fontSize: 20, color: Colors.white),),
      const SizedBox(height: 60,),
      Image.asset('assets/logo.jpg', height: 150,),
      const SizedBox(height: 40,),
      ElevatedButton(onPressed: (){
        //Onpressed Funtion here.
        changeSupporter(const Qone());
      }, child: const Text('Start Quiz')),
    ]);
  }
}