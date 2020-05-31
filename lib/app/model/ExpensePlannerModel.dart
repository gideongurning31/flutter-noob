import 'package:flutter/material.dart';

class ExpensePlannerModel {
  final String id;
  final String title;
  final int value;
  final DateTime time;
  ExpensePlannerModel({@required this.id, @required this.title, @required this.value, @required this.time});
}
