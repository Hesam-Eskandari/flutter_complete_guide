import 'package:flutter/material.dart';
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
    var _questionIndex = 0;
    final _questions = const [
        {
            'questionText': 'What\'s your favorite color?',
            'answers': ['Black', 'Red', 'Green', 'White']
        },
        {
            'questionText': 'What\'s your favorite animal?',
            'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
        },
        {
            'questionText': 'Who\'s your favorite instructor?',
            'answers': ['Hesam', 'Hesam', 'Max', 'Max']
        },
    ];

    @override
    Widget build(BuildContext context) {

        return MaterialApp(home: Scaffold(
            appBar: AppBar(title: Text('My First App'),),
            body: _questionIndex < _questions.length ?
                Quiz(_answerQuestionCB, _questions, _questionIndex) :
                Result(),
        ),);
    }

    void _answerQuestionCB() {
        setState(() {
            if (_questionIndex == _questions.length) {
                _questionIndex = 0;
            } else {
                _questionIndex += 1;
            }
        });
    }
}

class Survey {
    
    Survey();
}