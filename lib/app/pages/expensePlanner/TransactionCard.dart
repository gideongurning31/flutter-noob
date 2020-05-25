import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../services/Constants.dart';
import '../../../model/ExpensePlannerModel.dart';

class TransactionCard extends StatelessWidget {
  TransactionCard(this.trx);
  final ExpensePlannerModel trx;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 150,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              decoration: BoxDecoration(border: Border.all(color: Constants.COLOR_PRIMARY_DARK, width: 2)),
              child: Text('Rp. ${trx.value}', textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(trx.title, textAlign: TextAlign.end, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  Text(DateFormat('dd/mm/yyyy').format(trx.time), textAlign: TextAlign.end)
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
