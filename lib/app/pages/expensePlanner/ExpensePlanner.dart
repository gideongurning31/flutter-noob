import 'package:flutter/material.dart';
import 'Transactions.dart';

class ExpensePlanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Transactions(),
          ]),
    );
  }
}
