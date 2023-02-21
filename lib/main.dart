import 'package:flutter/material.dart';

import 'package:flutter_components/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const ListviewTwoScreen(),
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => const HomeScreen(),
        'listauno': (BuildContext context) => const ListviewOneScreen(),
        'listados': (BuildContext context) => const ListviewTwoScreen(),
        'alerta': (BuildContext context) => const AlertScreen(),
        'card': (BuildContext context) => const CardScreen(),
      },
    );
  }
}
