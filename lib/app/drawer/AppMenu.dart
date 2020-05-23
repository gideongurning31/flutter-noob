import 'package:flutter/material.dart';
import '../../model/MenuTileModel.dart';
import '../pages/Home.dart';
import '../pages/Ibadah.dart';
import '../pages/Renungan.dart';
import '../pages/Warta.dart';
import '../pages/Pengaturan.dart';

class AppMenu {
  static final List<MenuTileModel> menu = [
    MenuTileModel(text: 'Beranda', icon: Icons.home, page: Home()),
    MenuTileModel(text: 'Ibadah', icon: Icons.av_timer, page: Ibadah()),
    MenuTileModel(text: 'Renungan', icon: Icons.book, page: Renungan()),
    MenuTileModel(text: 'Warta', icon: Icons.title, page: Warta()),
    MenuTileModel(text: 'Pengaturan', icon: Icons.settings, page: Pengaturan())
  ];
}
