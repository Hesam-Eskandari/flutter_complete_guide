import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
    final VoidCallback _selectHandler;
    final String _answerText;

    Answer(this._selectHandler, this._answerText);

    @override
    Widget build(BuildContext context) {
        return Container(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: _selectHandler,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                child: Text(_answerText),
            ),
        );
    }
}