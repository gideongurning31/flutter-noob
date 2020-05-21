import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'menu/Home.dart';
import 'menu/Kegiatan.dart';
import 'menu/Kategorial.dart';
import 'menu/Renungan.dart';
import 'menu/Warta.dart';
import 'menu/Pengaturan.dart';
import 'MenuTile.dart';
import '../model/MenuTileModel.dart';

class MenuDrawer extends StatelessWidget {
  final String logoSVG = 'assets/images/title-logo.svg';
  final List<MenuTileModel> menuList = [
    MenuTileModel(text: 'Beranda', icon: Icons.home, page: Home()),
    MenuTileModel(text: 'Kegiatan', icon: Icons.av_timer, page: Kegiatan()),
    MenuTileModel(text: 'Kategorial', icon: Icons.accessibility_new, page: Kategorial()),
    MenuTileModel(text: 'Renungan', icon: Icons.book, page: Renungan()),
    MenuTileModel(text: 'Warta', icon: Icons.title, page: Warta()),
    MenuTileModel(text: 'Pengaturan', icon: Icons.settings, page: Pengaturan())
  ];

  final Function _navigateTo;
  MenuDrawer(this._navigateTo);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(child: Material(child: SvgPicture.asset(logoSVG, color: Colors.blue))),
          Column(children: menuList.map((menu) => MenuTile(menu, navigateTo)).toList())
        ],
      ),
    );
  }

  navigateTo(BuildContext context, Widget page) {
    Navigator.of(context).pop();
    _navigateTo(page);
  }
}
