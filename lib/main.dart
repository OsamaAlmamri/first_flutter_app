import 'package:flutter/material.dart';
import 'Question.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _myAppState();
  }
}

class _myAppState extends State<myApp> {
  @override
  List<QuestionData> questions = [
    QuestionData(
        question: 'what is your favourite Color',
        answers: ['red', 'blue', 'green']),
    QuestionData(
        question: 'what is your favourite Animal', answers: ['cut', 'dog']),
    QuestionData(
        question: 'what is your favourite Front', answers: ['apple', 'banana']),
  ];
  int _questionIndex = 0;

  incrment() {
    setState(() {
      if (_questionIndex < questions.length - 1)
        _questionIndex++;
      else
        _questionIndex = 0;
    });
  }

  decrment() {
    setState(() {
      if (_questionIndex == 0)
        _questionIndex = questions.length - 1;
      else
        _questionIndex--;
    });
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'frist app',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: Scaffold(
        appBar: AppBar(title: Text('hi')),
        body: Column(children: [
          Question(
            questionData: questions[_questionIndex],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: decrment,
                child: Text("Prev Question"),
              ),
              ElevatedButton(
                onPressed: incrment,
                child: Text("Next Question"),
              ),
            ],
          )
        ]),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
