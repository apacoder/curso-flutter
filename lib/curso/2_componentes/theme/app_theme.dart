import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Colors.lightBlue;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primary,
    appBarTheme: AppBarTheme(
      backgroundColor: primary,
      elevation: 0,
    ),
  );
}