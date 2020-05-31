import 'package:flutter/material.dart';
import '../../Constants.dart';

class Answer extends StatelessWidget {
  final List<String> _choices;
  final String _answer;
  final Function _pushAnswer;
  Answer(this._choices, this._answer, this._pushAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(children: _choices.map((choice) => choiceCard(choice)).toList()),
    );
  }

  Container choiceCard(String text) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        color: Constants.COLOR_PRIMARY_LIGHT,
        child: Text(text, textAlign: TextAlign.center),
        onPressed: () => _pushAnswer(text == _answer),
      ),
    );
  }
}
