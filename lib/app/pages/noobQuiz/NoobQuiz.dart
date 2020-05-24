import 'package:flutter/material.dart';
import 'Questions.dart';
import 'QuestionsCard.dart';
import 'Answer.dart';

class NoobQuiz extends StatefulWidget {
  @override
  _NoobQuizState createState() => _NoobQuizState();
}

class _NoobQuizState extends State<NoobQuiz> {
  int index = 0;
  final Questions questions = Questions();
  final List<bool> scores = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(children: scores.map((score) => scoreIcon(score)).toList()),
          QuestionsCard(questions.get(index).question),
          Answer(questions.get(index).choice, questions.get(index).answer, checkAnswer),
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

  // TODO: Scrollable row for score icons.
  void checkAnswer(bool correct) {
    setState(() {
      scores.add(correct);
      if (index == questions.length() - 1) showResult();
      else index++;
    });
  }

  // TODO: Display result if all questions answered.
  void showResult() {
    index = 0;
  }
}
