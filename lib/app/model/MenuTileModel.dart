import 'package:flutter/material.dart';

class MenuTileModel {
  final Widget page;
  final String text;
  final IconData icon;

  MenuTileModel({@required this.page, this.text = 'PAGE TITLE', this.icon = Icons.block});
}
