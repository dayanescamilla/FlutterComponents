import 'package:flutter/material.dart';

class AppTheme {
  //Color primario
  static const Color colorPrimario = Colors.red;
  //Tema claro
  static final ThemeData ligthTheme = ThemeData.light().copyWith(
    //Color primario
    primaryColor: colorPrimario,
    //Tema AppBar
    appBarTheme: const AppBarTheme(color: colorPrimario),
    //Tema TextButton
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: colorPrimario),
    ),
  );
  //Tema oscuro
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: colorPrimario,
    appBarTheme: const AppBarTheme(color: colorPrimario),
  );
}
