import 'package:flutter/material.dart';
import 'Questions.dart';
import 'Answer.dart';

class NoobQuiz extends StatefulWidget {
  @override
  _NoobQuizState createState() => _NoobQuizState();
}

class _NoobQuizState extends State<NoobQuiz> {
  final List<String> questions = ['Motherfucker do that shit to me, he better paralyze my ass, cause I\'ll kill the motherfucker, know what I\'m sayin\'?'];
  final List<bool> scores = [true, false, true, true, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Questions(questions[0]),
          Answer(),
          Row(children: scores.map((score) => scoreIcon(score)).toList())
        ],
      ),
    );
  }

  Padding scoreIcon(bool answer) {
    if (answer) return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Icon(Icons.check, color: Colors.green),
    );
    else return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Icon(Icons.close, color: Colors.red),
    );
  }
}
