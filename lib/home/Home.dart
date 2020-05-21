import 'package:flutter/material.dart';
import 'MenuTile.dart';
import '../model/MenuTileModel.dart';

class Home extends StatelessWidget {
  final String appTitle = 'HKBP Reformanda';
  final List<MenuTileModel> menuList = [
    MenuTileModel('Kegiatan', Icons.av_timer, () => {}),
    MenuTileModel('Kategorial', Icons.accessibility, () => {}),
    MenuTileModel('Renungan', Icons.book, () => {}),
    MenuTileModel('Warta', Icons.title, () => {}),
    MenuTileModel('Pengaturan', Icons.settings, () => {})
  ];

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
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[Colors.blue, Colors.lightBlueAccent])),
            ),
            Column(children: menuList.map((menu) => MenuTile(menu)).toList())
          ],
        ),
      ),
    );
  }
}
