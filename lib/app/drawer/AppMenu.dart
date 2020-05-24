import 'package:flutter/material.dart';
import '../../model/MenuTileModel.dart';
import '../pages/BusinessCard.dart';
import '../pages/Dicee.dart';
import '../pages/noobQuiz/NoobQuiz.dart';
import '../pages/expensePlanner/ExpensePlanner.dart';

class AppMenu {
  static final List<MenuTileModel> menu = [
    MenuTileModel(text: 'Home', icon: Icons.home, page: BusinessCard()),
    MenuTileModel(text: 'Dicee', icon: Icons.casino, page: Dicee()),
    MenuTileModel(text: 'Noob Quiz', icon: Icons.text_fields, page: NoobQuiz()),
    MenuTileModel(text: 'Expense Planner', icon: Icons.account_balance_wallet, page: ExpensePlanner())
  ];
}
