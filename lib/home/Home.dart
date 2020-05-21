import 'package:flutter/material.dart';
import 'MenuTile.dart';
import '../model/MenuTileModel.dart';

class Home extends StatelessWidget {
  String appTitle = 'HKBP Reformanda';

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
              decoration: BoxDecoration(gradient: LinearGradient(colors: <Color>[Colors.blue, Colors.lightBlueAccent])),
            ),
            MenuTile(MenuTileModel('Title 1', Icons.person, () => {})),
            MenuTile(MenuTileModel('Title 2', Icons.add_box, () => {})),
            MenuTile(MenuTileModel('Title 3', Icons.delete, () => {})),
          ],
        ),
      ),
    );
  }
}
