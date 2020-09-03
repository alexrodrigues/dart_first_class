import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _score;
  final Function _callback;
  Result(this._score, this._callback);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Finish!\nYour score: $_score',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        FlatButton(
          child: Text('Restart'),
          textColor: Colors.blue,
          onPressed: _callback,
        )
      ],
    ));
  }
}
