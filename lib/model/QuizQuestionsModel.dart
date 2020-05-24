import 'package:flutter/material.dart';

class QuizQuestionsModel {
  final String id;
  final String question;
  final List<String> choice;
  final String answer;

  QuizQuestionsModel({@required this.id, @required this.question, @required this.choice, @required this.answer});
}
