import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function ourCallback;
  final String title;
  AnswerButton(this.title, this.ourCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueAccent,
        child: Text(title),
        onPressed: ourCallback,
      ),
    );
  }
}
