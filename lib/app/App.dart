import 'package:flutter/material.dart';
import 'drawer/MenuDrawer.dart';
import 'pages/Home.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final String appTitle = 'GideonGurning';
  Widget currentPage = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.appTitle), centerTitle: true),
      drawer: MenuDrawer(navigate),
      body: currentPage,
    );
  }

  void navigate(Widget page) {
    if (currentPage != page) setState(() => currentPage = page);
  }
}
