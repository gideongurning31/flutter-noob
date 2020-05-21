import 'package:flutter/material.dart';

class MenuTileModel {
  final IconData icon;
  final String text;
  final Function onTap;

  MenuTileModel({@required this.text, @required this.icon, this.onTap});
}
