import 'package:flutter/material.dart';
import 'Questions.dart';
import 'QuestionsCard.dart';
import 'Answer.dart';

class NoobQuiz extends StatefulWidget {
  @override
  _NoobQuizState createState() => _NoobQuizState();
}

class _NoobQuizState extends State<NoobQuiz> {
  int count = 0;
  final List<bool> scores = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              height: 20.0,
              child: Row(children: scores.map((score) => scoreIcon(score)).toList())),
          QuestionsCard(questions[count].question),
          Answer(questions[count].choice, questions[count].answer, checkAnswer),
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

  void checkAnswer(bool correct) {
    // TODO: Display result if all questions answered.
    // TODO: Scrollable row for score icons.
    setState(() {
      scores.add(correct);
      if (count == questions.length - 1) count = 0;
      else count++;
    });
  }
}
