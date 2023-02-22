import 'package:flutter/material.dart';

class AppTheme {
  static const Color colorPrimario = Colors.green;

  static final ThemeData ligthTheme = ThemeData.light().copyWith(
    primaryColor: colorPrimario,
    appBarTheme: const AppBarTheme(color: colorPrimario),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: colorPrimario,
    appBarTheme: const AppBarTheme(color: colorPrimario),
  );
}
