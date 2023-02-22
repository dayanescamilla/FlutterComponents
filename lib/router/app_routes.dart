import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initalRoute = 'home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'home',
        icon: Icons.home,
        name: 'Pantalla Bienvenida',
        screen: const HomeScreen()),
    MenuOptions(
        route: 'listauno',
        icon: Icons.list,
        name: 'Lista Uno',
        screen: const ListviewOneScreen()),
    MenuOptions(
        route: 'listados',
        icon: Icons.list_outlined,
        name: 'Lista Dos',
        screen: const ListviewTwoScreen()),
    MenuOptions(
        route: 'alerta',
        icon: Icons.add_alert,
        name: 'Alerta',
        screen: const AlertScreen()),
    MenuOptions(
        route: 'card',
        icon: Icons.card_giftcard,
        name: 'Card',
        screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final options in menuOptions) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listauno': (BuildContext context) => const ListviewOneScreen(),
  //   'listados': (BuildContext context) => const ListviewTwoScreen(),
  //   'alerta': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
