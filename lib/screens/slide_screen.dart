import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SlideScreen extends StatefulWidget {
  const SlideScreen({super.key});

  @override
  State<SlideScreen> createState() => _SlideScreenState();
}

class _SlideScreenState extends State<SlideScreen> {
  double _sliderValue = 100; //Propuedad
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 50,
              max: 400,
              value: _sliderValue,
              divisions: 10,
              activeColor: AppTheme.colorPrimario,
              onChanged: _sliderEnable
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                      print(value);
                    }
                  : null),
          Checkbox(
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value ?? true;
                setState(() {});
              }),
          CheckboxListTile(
            title: const Text('Acivar y desactivar'),
            activeColor: AppTheme.colorPrimario,
            value: _sliderEnable,
            onChanged: (value) => setState(() {
              _sliderEnable = value ?? true;
            }),
          ),
          Switch(
            value: _sliderEnable,
            onChanged: (value) => setState(() {
              _sliderEnable = value;
            }),
          ),
          SwitchListTile(
            title: const Text('data'),
            value: _sliderEnable,
            onChanged: (value) => setState(() {
              _sliderEnable = value;
            }),
          ),
          const AboutListTile(),
          SingleChildScrollView(
            child: Image(
              image: const NetworkImage(
                  'https://docs.flutter.dev/assets/images/dash/Dashatars.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
          )
        ],
      ),
    );
  }
}
