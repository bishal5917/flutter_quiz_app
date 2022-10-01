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
  var questions = [
    {
      'questionText': "What is capital of USA?",
      'answers': ['WDC', 'florida', 'New York', 'Texas'],
      'correctanswer': "WDC"
    },
    {
      'questionText': "What is capital of UK?",
      'answers': ['WDC', 'London', 'New York', 'Sweden'],
      'correctanswer': "London"
    }
  ];
  var _questionIndex = 0;
  void correctanswer() {
    // if (answer == questions[_questionIndex]['correctanswer']) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      //here we have to get that clicked answer
    });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[_questionIndex]['questionText'] as String),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(correctanswer, answer);
                  })
                ],
              )
            : Center(
                child: Column(
                children: [
                  Text("Completed"),
                  ElevatedButton(
                    child: Text("Restart Quiz"),
                    onPressed: (() {
                      setState(() {
                        _questionIndex = 0;
                      });
                    }),
                  )
                ],
              )),
      ),
    );
  }
}
