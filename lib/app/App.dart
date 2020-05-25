import 'package:flutter/material.dart';
import 'pages/BusinessCard.dart';
import 'drawer/MenuDrawer.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final String appTitle = 'GideonGurning';
  Widget currentPage = BusinessCard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MenuDrawer(navigate),
      body: currentPage,
    );
  }

  void navigate(Widget page) {
    if (currentPage != page) setState(() => currentPage = page);
  }
}
