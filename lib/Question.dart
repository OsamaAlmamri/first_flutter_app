import 'dart:ui';

import 'package:flutter/material.dart';

class QuestionData {
  String question;
  List<String> answers;

  QuestionData({required this.question, required this.answers});
}

class Question extends StatelessWidget {
  final QuestionData questionData;

  const Question({super.key, required this.questionData});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(children: [
      Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Text(
          '${questionData.question} ?',
          style: TextStyle(
            fontSize: 17,
            color: Colors.deepOrange,
          ),
          // style: ParagraphStyle(
          //
          //    textAlign: TextAlign.center,
          //   ),
        ),
      ),
      for (var answer in questionData.answers)
        Container(
          width: double.infinity,
          height: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.lightGreen[100],
          ),
          margin: EdgeInsets.all(30),
          alignment: Alignment.center,
          child:  ElevatedButton(
            onPressed: null,

            child: Text(answer),
          ),
        ),

    ]);
  }
}
