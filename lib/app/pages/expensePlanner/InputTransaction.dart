import 'package:flutter/material.dart';

class InputTransaction extends StatelessWidget {
  InputTransaction(this.addTransaction);

  final Function addTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              TextField(
                  decoration: InputDecoration(labelText: 'Transaction Title'),
                  controller: titleController,
                  onSubmitted: (_) => submit(context)),
              TextField(
                  decoration: InputDecoration(labelText: 'Amount'),
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  onSubmitted: (_) => submit(context)),
              FlatButton(
                  color: Colors.blueGrey,
                  textColor: Colors.greenAccent,
                  child: Text('Add Transaction'),
                  onPressed: () => submit(context))
            ],
          ),
        ));
  }

  void submit(BuildContext ctx) {
    final title = titleController.text;
    final amount = int.parse(amountController.text);
    FocusScope.of(ctx).requestFocus(FocusNode());
    if (title.isEmpty || amount <= 0) return;
    addTransaction(title, amount);
  }
}
