import 'package:flutter/material.dart';

class ListviewOneScreen extends StatelessWidget {
  const ListviewOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text('ListView 1'),
      ),
      body: ListView(
        children: const [
          Text('El primer elemento'),
        ],
      ),
    );
  }
}
