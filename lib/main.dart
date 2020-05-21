import 'package:flutter/material.dart';
import 'home/home.dart';

final String appTitle = 'App Title';
final String nunitoFont = 'Nunito';
final String montserratFont = 'Montserrat';

void main() => runApp(MaterialApp(
      title: appTitle,
      theme: ThemeData(
        fontFamily: nunitoFont,
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(title: TextStyle(fontFamily: montserratFont)),
        ),
      ),
      home: Home(),
    ));
