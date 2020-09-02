import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var currentIndex = 0;
  var questions = ["none", "first", "second", "third"];

  var questions2 = [
    {
      "question": "Whats your favorite color?",
      'answers': ["Blue", "Green", "White"]
    },
    {
      "question": "Whats the model of your first car?",
      'answers': ["Ford", "Tesla", "Audi"]
    },
    {
      "question": "Whats your computer model?",
      'answers': ["iMac", "MacBook Pro", "White"]
    },
    {
      "question": "Whats your phone model?",
      'answers': ["iPhone", "Xiaomi", "Google Pixel"]
    }
  ];

  void _answerQuestion() {
    setState(() {
      if (currentIndex <= questions.length - 1) {
        currentIndex += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestionMap = questions2[currentIndex];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          children: [
            QuestionText(currentQuestionMap['question']),
            ...(currentQuestionMap['answers'] as List<String>).map((answer) {
              return AnswerButton(answer, _answerQuestion);
            }),
          ],
        ),
      ),
    );
  }
}
