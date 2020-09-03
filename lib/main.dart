import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _currentIndex = 0;
  var _totalScore = 0;
  var _questions = const [
    {
      "question": "Whats your favorite color?",
      'answers': [
        {"title": "Blue", "score": 10},
        {"title": "Green", "score": 20},
        {"title": "White", "score": 30}
      ]
    },
    {
      "question": "Whats the model of your first car?",
      'answers': [
        {"title": "Ford", "score": 10},
        {"title": "Tesla", "score": 20},
        {"title": "Audi", "score": 30}
      ]
    },
    {
      "question": "Whats your computer model?",
      'answers': [
        {"title": "iMac", "score": 10},
        {"title": "MacBook Pro", "score": 20},
        {"title": "White", "score": 30}
      ]
    },
    {
      "question": "Whats your phone model?",
      'answers': [
        {"title": "iPhone", "score": 10},
        {"title": "Xiaomi", "score": 20},
        {"title": "Google Pixel", "score": 30}
      ]
    }
  ];

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _currentIndex += 1;
    });
  }

  void _reset() {
    setState(() {
      _totalScore = 0;
      _currentIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _currentQuestionMap = _questions[_currentIndex];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: (_currentIndex < _questions.length - 1)
            ? Quiz(_currentQuestionMap, _answerQuestion)
            : Result(_totalScore, _reset),
      ),
    );
  }

  /* 
    to send parameters to a function refere you should 
    use: 
    Quiz(_currentQuestionMap, (parameter) => answerQuestion(parameter))
  */
}
