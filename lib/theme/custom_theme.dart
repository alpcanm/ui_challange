import 'package:flutter/material.dart';

class CustomTheme {
  static const Color _primary = Color.fromRGBO(240, 90, 34, 1);
  static TextTheme lightTextTheme = const TextTheme(
    headline6: TextStyle(fontFamily: 'TechnaSans'),
    bodyText2: TextStyle(fontFamily: 'Gorgita', fontSize: 12),
    button: TextStyle(fontFamily: 'TechnaSans'),
  );
  static ThemeData light() {
    return ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: _primary,
            padding: const EdgeInsets.all(0),
          ),
        ),
        primaryColor: _primary,
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
          backgroundColor: _primary,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.green,
        ),
        textTheme: lightTextTheme);
  }
}
