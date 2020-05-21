import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'MenuTile.dart';
import '../model/MenuTileModel.dart';

class MenuDrawer extends StatelessWidget {

  final List<MenuTileModel> menuList = [
    MenuTileModel('Kegiatan', Icons.av_timer, () => {}),
    MenuTileModel('Kategorial', Icons.accessibility, () => {}),
    MenuTileModel('Renungan', Icons.book, () => {}),
    MenuTileModel('Warta', Icons.title, () => {}),
    MenuTileModel('Pengaturan', Icons.settings, () => {})
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: <Widget>[
                Material(child: SvgPicture.asset('assets/images/title-logo.svg', height: 60, color: Colors.blue)),
                Text('HKBP Reformanda', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.blue))
              ],
            ),
          ),
          Column(children: menuList.map((menu) => MenuTile(menu)).toList())
        ],
      ),
    );
  }
}
