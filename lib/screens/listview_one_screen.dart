import 'package:flutter/material.dart';

class ListviewOneScreen extends StatelessWidget {
  const ListviewOneScreen({super.key});

  final options = const ['Dayan', 'Nayad', 'Ayadn', 'Yadan', 'Danya', 'Yanad'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text('ListView 1'),
      ),
      body: ListView(
        children: [
          // El operadpr Spread (...) nos permite extraer cada uno de los elementos de la lista y  mostrarlo en el widget
          ...options
              .map(
                (game) => ListTile(
                  title: Text(game),
                  trailing: const Icon(Icons.arrow_circle_right_outlined),
                  onTap: () {},
                ),
              )
              .toList(), //toList funciona para pasarlo a una lista

          const Divider(),
        ],
      ),
    );
  }
}
