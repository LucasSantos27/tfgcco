import 'package:flutter/material.dart';

class AppTheme {
  static const textTheme = TextTheme(
    bodyText1: TextStyle(
      fontSize: 12,
    ),
    bodyText2: TextStyle(
      fontSize: 16,
    ),
    headline1: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    headline2: TextStyle(
      fontSize: 24,
    ),
    headline3: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headline4: TextStyle(
      fontSize: 64,
      fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      fontSize: 32,
    ),
    headline6: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );

  static final currentTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme(
      primary: Color.fromRGBO(0, 156, 59, 1),
      secondary: Colors.grey,
      surface: Colors.white,
      background: Colors.white,
      error: Colors.red,
      onPrimary: Colors.black,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      onBackground: Colors.black,
      onError: Colors.red,
      brightness: Brightness.light,
    ),
    textTheme: textTheme
        .copyWith(
          button: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        )
        .apply(displayColor: Colors.black),
  );
}
