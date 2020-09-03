import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Map<String, Object> _quiz;
  final Function _ourCallback;

  Quiz(this._quiz, this._ourCallback);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuestionText(_quiz['question']),
        ...(_quiz['answers'] as List<Map<String, Object>>).map((answer) {
          return AnswerButton(
              answer['title'], () => _ourCallback(answer['score'] as int));
        }),
      ],
    );
  }
}
