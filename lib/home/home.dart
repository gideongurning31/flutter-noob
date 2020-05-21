import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  String appTitle = 'App Title';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.appTitle),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[500],
      ),
      body: Center(
          child: Text('This is the body widget.',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                color: Colors.black,
              ))),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        backgroundColor: Colors.blueGrey[600],
        onPressed: () => buttonClick(),
      ),
    );
  }

  void buttonClick() {
    print('Button clicked.');
  }
}
