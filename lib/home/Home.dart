import 'package:flutter/material.dart';
import 'MenuDrawer.dart';
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
      appBar: AppBar(title: Text(this.appTitle), centerTitle: true, backgroundColor: Colors.blueAccent[500]),
      drawer: MenuDrawer(),
    );
  }
}
