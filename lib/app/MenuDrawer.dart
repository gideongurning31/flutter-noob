import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'MenuTile.dart';
import '../model/MenuTileModel.dart';

class MenuDrawer extends StatelessWidget {
  final String logoSVG = 'assets/images/title-logo.svg';
  final List<MenuTileModel> menuList = [
    MenuTileModel(text: 'Kegiatan', icon: Icons.av_timer, route: '/kegiatan'),
    MenuTileModel(text: 'Kategorial', icon: Icons.accessibility_new, route: '/kategorial'),
    MenuTileModel(text: 'Renungan', icon: Icons.book, route: '/renungan'),
    MenuTileModel(text: 'Warta', icon: Icons.title, route: '/warta'),
    MenuTileModel(text: 'Pengaturan', icon: Icons.settings, route: '/pengaturan')
  ];

  final Function _navigateTo;
  MenuDrawer(this._navigateTo);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(child: Material(child: SvgPicture.asset(logoSVG, color: Colors.blue))),
          Column(children: menuList.map((menu) => MenuTile(menu, _navigateTo)).toList())
        ],
      ),
    );
  }
}
