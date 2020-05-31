import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../../Constants.dart';
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
  int _correct = 0;
  int _wrong = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.check, color: Colors.green),
              SizedBox(width: 10.0),
              Text('$_correct', style: TextStyle(fontFamily: Constants.MONTSERRAT, fontWeight: FontWeight.bold, fontSize: 18.0)),
              SizedBox(width: 40.0),
              Icon(Icons.close, color: Colors.red),
              SizedBox(width: 10.0),
              Text('$_wrong', style: TextStyle(fontFamily: Constants.MONTSERRAT, fontWeight: FontWeight.bold, fontSize: 18.0)),
            ],
          ),
          SizedBox(height: 10.0),
          QuestionsCard(questions.get(index).question),
          SizedBox(height: 30.0),
          Answer(questions.get(index).choice, questions.get(index).answer, checkAnswer),
        ],
      ),
    );
  }

  void checkAnswer(bool correct) {
    setState(() {
      correct ? _correct++ : _wrong++;
      if (index == questions.length() - 1) showResult();
      else index++;
    });
  }

  void showResult() {
    String message = 'You\'ve answered $_correct correct answers, out of ${questions.length()} questions.';
    Alert(context: context, type: _correct > questions.length()/2 ? AlertType.success : AlertType.error, title: message, buttons: [
      DialogButton(
        child: Text('OK', style: TextStyle(fontSize: 20)),
        onPressed: () => reset(),
        width: 120,
      )
    ]).show();
  }

  void reset() {
    Navigator.pop(context);
    setState(() {
      index = 0;
      _correct = 0;
      _wrong = 0;
    });
  }
}
