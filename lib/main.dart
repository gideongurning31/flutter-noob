import 'package:flutter/material.dart';
import 'app/App.dart';

final String appTitle = 'HKBP Reformanda';
final String nunitoFont = 'Nunito';
final String montserratFont = 'Montserrat';

void main() => runApp(MaterialApp(
    title: appTitle,
    home: SafeArea(child: App(), minimum: EdgeInsets.all(1.0)),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: nunitoFont,
      primaryColor: Colors.blue,
      accentColor: Colors.blueAccent,
      primarySwatch: Colors.blueGrey,
      canvasColor: Colors.white,
    )));
