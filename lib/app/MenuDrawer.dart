import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'AppMenu.dart';
import 'MenuTile.dart';
import '../model/MenuTileModel.dart';

class MenuDrawer extends StatelessWidget {
  final String logoSVG = 'assets/images/title-logo.svg';
  final List<MenuTileModel> menuList = AppMenu.menu;
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
