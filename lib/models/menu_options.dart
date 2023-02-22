import 'package:flutter/material.dart' show IconData, Widget;

class MenuOptions {
  final String route;
  final icon;
  final name;
  final Widget screen;

  MenuOptions(
      {required this.route,
      required this.icon,
      required this.name,
      required this.screen});
}
