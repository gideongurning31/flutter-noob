import 'package:flutter/material.dart';

class MenuTileModel {
  final IconData icon;
  final String text;
  final String route;

  MenuTileModel(
      {@required this.text, this.icon = Icons.block, this.route = ''});
}
