import 'package:flutter/material.dart';
import 'MenuDrawer.dart';
import 'menu/Home.dart';

class App extends StatelessWidget {
  final String appTitle = 'HKBP Reformanda';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.appTitle), centerTitle: true),
      drawer: MenuDrawer(navigateTo),
      body: Home(),
    );
  }

  void navigateTo(String route) {
    print(route);
  }
}
