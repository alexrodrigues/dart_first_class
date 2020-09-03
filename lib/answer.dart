import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function _ourCallback;
  final String title;
  AnswerButton(this.title, this._ourCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blueAccent,
        child: Text(title),
        onPressed: _ourCallback,
      ),
    );
  }
}
