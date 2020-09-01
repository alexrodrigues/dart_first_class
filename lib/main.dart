import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var currentIndex = 0;
  var questions = ["first", "second", "third"];

  void _answerQuestion(BuildContext context, String name, int index) {
    setState(() {
      currentIndex = index;
    });
    print(name);
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
            RaisedButton(
              child: Text(questions[0]),
              onPressed: () => _answerQuestion(context, "A", 0),
            ),
            RaisedButton(
              child: Text('Alternative B'),
              onPressed: () => _answerQuestion(context, "B", 1),
            ),
            RaisedButton(
              child: Text('Alternative C'),
              onPressed: () => _answerQuestion(context, "C", 2),
            ),
            QuestionText('choice picked: ${questions[currentIndex]}'),
          ],
        ),
      ),
    );
  }
}
