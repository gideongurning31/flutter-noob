import 'package:flutter/material.dart';
import 'app/menu/Home.dart';
import 'app/menu/Kegiatan.dart';
import 'app/menu/Kategorial.dart';
import 'app/menu/Renungan.dart';
import 'app/menu/Warta.dart';
import 'app/menu/Pengaturan.dart';
import 'app/App.dart';

final String appTitle = 'HKBP Reformanda';
final String nunitoFont = 'Nunito';
final String montserratFont = 'Montserrat';
final Object appRoutes = {
  '/home': (ctx) => Home(),
  '/kegiatan': (ctx) => Kegiatan(),
  '/kategorial': (ctx) => Kategorial(),
  '/renungan': (ctx) => Renungan(),
  '/warta': (ctx) => Warta(),
  '/pengaturan': (ctx) => Pengaturan(),
};

void main() => runApp(MaterialApp(
    title: appTitle,
    home: App(),
    routes: appRoutes,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: nunitoFont,
      primaryColor: Colors.blue,
      accentColor: Colors.blueAccent,
      primarySwatch: Colors.blueGrey,
      canvasColor: Colors.white,
      appBarTheme: AppBarTheme(
        textTheme: ThemeData.light().textTheme.copyWith(
            title: TextStyle(
                fontFamily: montserratFont,
                fontSize: 20.0,
                fontWeight: FontWeight.bold)),
      ),
    )));
