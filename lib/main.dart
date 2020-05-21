import 'package:flutter/material.dart';
import 'app/App.dart';

final String appTitle = 'HKBP Reformanda';
final String nunitoFont = 'Nunito';
final String montserratFont = 'Montserrat';

void main() => runApp(MaterialApp(
    title: appTitle,
    home: App(),
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
