import 'package:flutter/material.dart';
import 'keywidgets/questiondeployer.dart';
import 'questions.dart';

class Qone extends StatefulWidget {
  const Qone({super.key});

  @override
  State<Qone> createState() => _QoneState();
}

class _QoneState extends State<Qone> {
  
  int questionindex = 0;
  void nextQuestion(int i){
    setState(() {
      questionindex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: ((MediaQuery.of(context).size.height)* 0.1)),
        QuestionDeployer(
          questiontext: questionList[questionindex].question,
          optionlist: questionList[questionindex].options,
        ),
      ],
    );
  }
}
