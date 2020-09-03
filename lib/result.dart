import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _score;
  Result(this._score);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Finish!\nYour score: $_score',
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
    ));
  }
}
