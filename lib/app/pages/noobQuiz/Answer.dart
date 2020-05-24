import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final List<String> _choices;
  final String _answer;
  final Function _pushAnswer;
  Answer(this._choices, this._answer, this._pushAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
      child: Column(children: _choices.map((choice) => choiceCard(choice)).toList()),
    );
  }

  Container choiceCard(String text) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        color: Colors.blueAccent.shade100,
        child: Text(text, textAlign: TextAlign.center, style: TextStyle(color: Colors.black87, fontSize: 15)),
        onPressed: () => _pushAnswer(text == _answer),
      ),
    );
  }
}
