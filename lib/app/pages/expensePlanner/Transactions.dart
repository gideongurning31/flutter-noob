import 'package:flutter/material.dart';
import 'InputTransaction.dart';
import 'TransactionCard.dart';
import '../../model/ExpensePlannerModel.dart';
import '../../service/ExpensePlannerService.dart';

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  final service = ExpensePlannerService();
  List<ExpensePlannerModel> _transactions = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    List<ExpensePlannerModel> data = await service.getData();
    setState(() => _transactions = data);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      InputTransaction(addNewTransaction),
      Container(
          height: 400,
          child: ListView.builder(
              itemCount: _transactions.length,
              itemBuilder: (context, i) => TransactionCard(_transactions[i])))
    ]);
  }

  void addNewTransaction(String title, int value) {
    setState(() => _transactions.add(ExpensePlannerModel(id: 'x', title: title, value: value, time: DateTime.now())));
  }
}
