import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Colors.orange;

  static final ThemeData darkTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: AppBarTheme(
      backgroundColor: primary,
      elevation: 0,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),
  );
}
