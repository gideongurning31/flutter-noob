import 'package:flutter/material.dart';
import 'AppMenu.dart';
import 'MenuTile.dart';
import '../../model/MenuTileModel.dart';

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
          SizedBox(height: 50),
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
