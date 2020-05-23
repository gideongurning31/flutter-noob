import 'package:flutter/material.dart';
import '../../model/MenuTileModel.dart';
import '../pages/Home.dart';
import '../pages/BusinessCard.dart';
import '../pages/Dicee.dart';
import '../pages/expensePlanner/ExpensePlanner.dart';

class AppMenu {
  static final List<MenuTileModel> menu = [
    MenuTileModel(text: 'Home', icon: Icons.home, page: Home()),
    MenuTileModel(text: 'Business Card', icon: Icons.home, page: BusinessCard()),
    MenuTileModel(text: 'Dicee', icon: Icons.home, page: Dicee()),
    MenuTileModel(text: 'Expense Planner', icon: Icons.home, page: ExpensePlanner())
  ];
}
