import 'package:flutter/material.dart';

class AppTheme {
  static Color? primary = const Color.fromARGB(255, 0, 113, 117);

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primary,
    appBarTheme: AppBarTheme(
      backgroundColor: primary,
      elevation: 0,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        elevation: 0,
        shape: const StadiumBorder(),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      foregroundColor: Colors.white,
    ),
  );
}
