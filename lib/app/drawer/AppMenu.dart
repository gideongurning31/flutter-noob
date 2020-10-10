import 'package:flutter/material.dart';
import '../../model/MenuTileModel.dart';
import '../pages/Home.dart';
import '../pages/Kegiatan.dart';
import '../pages/Renungan.dart';
import '../pages/Warta.dart';

class AppMenu {
  static final List<MenuTileModel> menu = [
    MenuTileModel(text: 'Beranda', icon: Icons.home, page: Home()),
    MenuTileModel(text: 'Kegiatan', icon: Icons.av_timer, page: Kegiatan()),
    MenuTileModel(text: 'Renungan', icon: Icons.book, page: Renungan()),
    MenuTileModel(text: 'Warta', icon: Icons.title, page: Warta()),
  ];
}
