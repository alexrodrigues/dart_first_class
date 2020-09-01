import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String title;

  QuestionText(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}
