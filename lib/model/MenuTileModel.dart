import 'package:flutter/material.dart';

class MenuTileModel {
  final IconData icon;
  final String text;
  final Function onTap;

  MenuTileModel(this.text, this.icon, this.onTap);
}
