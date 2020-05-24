import 'package:flutter/material.dart';
import 'dart:math';

class Dicee extends StatefulWidget {
  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('assets/images/dice-$leftDice.png'),
              splashColor: Colors.grey,
              onPressed: () => setState(() => leftDice = Random().nextInt(6) + 1),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('assets/images/dice-$rightDice.png'),
              splashColor: Colors.grey,
              onPressed: () => setState(() => rightDice = Random().nextInt(6) + 1),
            ),
          ),
        ],
      ),
    );
  }
}
