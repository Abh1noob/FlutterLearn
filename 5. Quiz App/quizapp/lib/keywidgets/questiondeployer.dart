//Question is structured here.

import 'package:flutter/material.dart';
import 'buttondesign.dart';


class QuestionDeployer extends StatelessWidget {
  const QuestionDeployer({required this.optionlist, required this.questiontext,super.key});

  final List optionlist;
  final String questiontext;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all((MediaQuery.of(context).size.width) * 0.1),
      child: Center(
        child: Column(
          children: [
            Text(questiontext, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
            SizedBox(height: ((MediaQuery.of(context).size.height)*0.05)),
            ...optionlist.map((e) => OptionButton(e)),
          ],
        ),
      ),
    );
  }
}
