import 'package:flutter/material.dart';

class QuestionsCard extends StatelessWidget {
  final String _question;
  QuestionsCard(this._question);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black45,
      child: Container(
        height: 250.0,
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 0.0),
        child: Text(_question, textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20))),
    );
  }
}
