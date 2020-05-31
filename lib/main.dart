import 'package:flutter/material.dart';
import 'app/Constants.dart';
import 'app/App.dart';

void main() => runApp(
      MaterialApp(
        title: Constants.APP_NAME,
        home: SafeArea(child: App(), minimum: EdgeInsets.all(1.0)),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: Constants.NUNITO,
          primaryColor: Constants.COLOR_PRIMARY,
          accentColor: Constants.COLOR_ACCENT,
          canvasColor: Constants.COLOR_PRIMARY,
          buttonColor: Constants.COLOR_PRIMARY_LIGHT,
          splashColor: Colors.lightBlueAccent,
          cardTheme: CardTheme(color: Constants.COLOR_PRIMARY_DARK),
          buttonTheme: ButtonThemeData(
            buttonColor: Constants.COLOR_PRIMARY_LIGHT,
            splashColor: Colors.lightBlueAccent
          ),
          textTheme: ThemeData.dark().textTheme.copyWith(
            headline: TextStyle(fontFamily: Constants.MONTSERRAT, fontWeight: FontWeight.bold, fontSize: 30.0),
            body1: TextStyle(fontFamily: Constants.NUNITO, fontSize: 15.0, color: Colors.white70),
            body2: TextStyle(fontFamily: Constants.NUNITO, fontSize: 10.0, color: Colors.white70),
            button: TextStyle(fontFamily: Constants.NUNITO, fontWeight: FontWeight.bold),
          ),
          iconTheme: ThemeData.dark().iconTheme,
          inputDecorationTheme: ThemeData.dark().inputDecorationTheme,
          appBarTheme: AppBarTheme(color: Constants.COLOR_PRIMARY),
        ),
      ),
    );
