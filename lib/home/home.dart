import 'package:flutter/material.dart';
import './menutile.dart';

class Home extends StatelessWidget {
  String appTitle = 'App Title';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.appTitle),
        centerTitle: true,
        backgroundColor: Colors.blueAccent[500],
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('DRAWER HEADER'),
              decoration: BoxDecoration(gradient: LinearGradient(colors: <Color>[Colors.blue, Colors.lightBlueAccent])),
            ),
            MenuTile(),
            MenuTile(),
            MenuTile(),
          ],
        ),
      ),
    );
  }

}
