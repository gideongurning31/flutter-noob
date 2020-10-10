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
          primaryColor: Constants.COLOR_PRIMARY_DARK,
          accentColor: Constants.COLOR_ACCENT,
          canvasColor: Constants.COLOR_CANVAS,
          buttonColor: Constants.COLOR_PRIMARY_LIGHT,
          splashColor: Constants.COLOR_SPLASH,
          cardTheme: CardTheme(color: Constants.COLOR_PRIMARY_DARK),
          buttonTheme: ButtonThemeData(
              buttonColor: Constants.COLOR_PRIMARY_LIGHT,
              splashColor: Constants.COLOR_SPLASH),
          textTheme: ThemeData.dark().textTheme.copyWith(
              button: TextStyle(
                  fontFamily: Constants.NUNITO,
                  fontWeight: FontWeight.bold,
                  color: Constants.COLOR_PRIMARY_DARK)),
          iconTheme: ThemeData.dark().iconTheme,
          inputDecorationTheme: ThemeData.dark().inputDecorationTheme,
          appBarTheme: AppBarTheme(color: Constants.COLOR_PRIMARY_DARK),
        ),
      ),
    );
