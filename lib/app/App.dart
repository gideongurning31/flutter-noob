import 'package:flutter/material.dart';
import 'MenuDrawer.dart';
import 'menu/Home.dart';

class App extends StatelessWidget {
  final String appTitle = 'HKBP Reformanda';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.appTitle), centerTitle: true, backgroundColor: Colors.blueAccent[500]),
      drawer: MenuDrawer(),
      body: Home(),
    );
  }
}
