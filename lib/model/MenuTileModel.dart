import 'package:flutter/material.dart';

class MenuTileModel {
  final IconData icon;
  final String text;
  final String route;
  final Function onTap;

  MenuTileModel({
    @required this.text,
    this.icon = Icons.block,
    this.route = '',
    this.onTap
  });
}
