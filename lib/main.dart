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

  void _answerQuestion() {
    setState(() {
      if (currentIndex <= questions.length - 1) {
        currentIndex += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          children: [
            QuestionText('some questions:'),
            AnswerButton("Answer A", _answerQuestion),
            AnswerButton("Answer B", _answerQuestion),
            AnswerButton("Answer C", _answerQuestion),
            QuestionText('choice picked: ${questions[currentIndex]}'),
          ],
        ),
      ),
    );
  }
}
