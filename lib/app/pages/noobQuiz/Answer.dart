import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final List<String> choices = ['Yes', 'No', 'I have no idea'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
      child: Column(children: choices.map((choice) => choiceCard(choice, 'Yes')).toList()),
    );
  }

  Container choiceCard(String text, String answer) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        color: Colors.blueAccent.shade100,
        child: Text(text, textAlign: TextAlign.center, style: TextStyle(color: Colors.black87, fontSize: 15)),
        onPressed: () => {},
      ),
    );
  }
}
