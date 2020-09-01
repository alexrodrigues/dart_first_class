import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String title;

  QuestionText(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(16),
        child: Text(
          title,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
