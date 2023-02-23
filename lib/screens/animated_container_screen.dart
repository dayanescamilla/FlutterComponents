import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double _width = 100;
  double _heigth = 100;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(10);

  void changeShape() {
    final random = Random();
    _width = random.nextInt(300).toDouble() + 70;
    _heigth = random.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _borderRadiusGeometry =
        BorderRadius.circular(random.nextInt(200).toDouble() + 10);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animacion en contenedor'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOutExpo,
          width: _width,
          height: _heigth,
          decoration:
              BoxDecoration(color: _color, borderRadius: _borderRadiusGeometry),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeShape();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
