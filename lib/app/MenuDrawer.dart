import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'MenuTile.dart';
import '../model/MenuTileModel.dart';

class MenuDrawer extends StatelessWidget {

  final String logoSVG = 'assets/images/title-logo.svg';
  final List<MenuTileModel> menuList = [
    MenuTileModel(text: 'Kegiatan', icon: Icons.av_timer, onTap: () => {}),
    MenuTileModel(text: 'Kategorial', icon: Icons.accessibility_new, onTap: () => {}),
    MenuTileModel(text: 'Renungan', icon: Icons.book, onTap: () => {}),
    MenuTileModel(text: 'Warta', icon: Icons.title, onTap: () => {}),
    MenuTileModel(text: 'Pengaturan', icon: Icons.settings, onTap: () => {})
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(child: Material(child: SvgPicture.asset(logoSVG, color: Colors.blue))),
          Column(children: menuList.map((menu) => MenuTile(menu)).toList())
        ],
      ),
    );
  }
}
