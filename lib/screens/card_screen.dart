import 'package:flutter/material.dart';
import 'package:flutter_components/Widgets/widgets.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [CustomCardOne()],
      ),
    );
  }
}
