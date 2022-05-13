import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.lightBlue;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      elevation: 0,
    ),
  );
}
