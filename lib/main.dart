import 'package:flutter/material.dart';
import 'home/Home.dart';

final String appTitle = 'HKBP Reformanda';
final String nunitoFont = 'Nunito';
final String montserratFont = 'Montserrat';

void main() => runApp(MaterialApp(
    title: appTitle,
    home: Home(),
    theme: ThemeData(
      fontFamily: nunitoFont,
      appBarTheme: AppBarTheme(
        textTheme: ThemeData.light().textTheme.copyWith(
            title: TextStyle(
                fontFamily: montserratFont,
                fontSize: 20.0,
                fontWeight: FontWeight.bold
            )),
      ),
    ))
);
