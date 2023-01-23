import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final VoidCallback _answerQuestion;
  final int _questionIndex;
  final List<Map<String, Object>> _questions;

  Quiz(this._answerQuestion, this._questions, this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(_questions[_questionIndex]['questionText']),
      ...(_questions[_questionIndex]['answers'] as List<String>).map((answer) {
        return Answer(_answerQuestion, answer);
      }).toList(),
    ]);
  }

}