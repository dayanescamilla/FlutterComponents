import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_components/theme/app_theme.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Alert dialog en cupertino'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Esto es un dialgoo'),
                SizedBox(height: 10),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancelar'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Aceptar',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: true, // hacer click en la sombra para cerrar
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Alerta de Dialogo'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Esto es un dialgoo'),
                SizedBox(height: 10),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Aceptar'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => Platform.isIOS
                ? displayDialogIOS(context)
                : displayDialogAndroid(context), //Llamar metodo
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Mostrar alerta',
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.add_alert),
      ),
    );
  }
}
