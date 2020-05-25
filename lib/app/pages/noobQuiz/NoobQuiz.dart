import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
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
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 1.0),
      child: Icon(Icons.check, color: Colors.green),
    );
    else return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 1.0),
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

  void showResult() {
    int userScore = 0;
    scores.forEach((score) => userScore += score ? 1 : 0);
    String message = 'You\'ve answered $userScore correct answers, out of ${questions.length()} questions.';
    Alert(context: context, type: userScore > questions.length()/2 ? AlertType.success : AlertType.error, title: message, buttons: [
      DialogButton(
        child: Text('OK', style: TextStyle(color: Colors.white, fontSize: 20)),
        onPressed: () => reset(),
        width: 120,
      )
    ]).show();
  }

  void reset() {
    Navigator.pop(context);
    setState(() {
      index = 0;
      scores.removeRange(0, scores.length);
    });
  }
}
