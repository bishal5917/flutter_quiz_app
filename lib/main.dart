import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void correctanswer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      print("second answer");
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': "What is capital of USA?",
        'answers': ['WDC', 'florida', 'New York', 'Texas']
      },
      {
        'questionText': "What is capital of UK?",
        'answers': ['WDC', 'London', 'New York', 'Sweden']
      }
    ];

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText'] as String),
            Answer(correctanswer),
            Answer(correctanswer),
            Answer(correctanswer),
            Answer(correctanswer),
          ],
        ),
      ),
    );
  }
}
