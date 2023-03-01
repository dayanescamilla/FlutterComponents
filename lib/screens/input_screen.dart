import 'package:flutter/material.dart';
import 'package:flutter_components/Widgets/custom_item_field.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> miFormuKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre': 'Dayan',
      'email': 'dayanesca',
      'password': '123456',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Form(
            key: miFormuKey,
            child: Column(
              children: [
                CustomItemField(
                  hintText: 'Nombre',
                  labelText: 'Nombre',
                  sufixIcon: Icons.label,
                  formProperty: 'nombre',
                  formValues: formValues,
                ),
                const SizedBox(height: 10),
                CustomItemField(
                  hintText: 'Correo',
                  //labelText: 'Correo',
                  sufixIcon: Icons.abc,
                  keyboarddType: TextInputType.emailAddress,
                  obscureText: true, formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 10),
                CustomItemField(
                  hintText: 'Password',
                  //labelText: 'Contraseña',
                  sufixIcon: Icons.password,
                  keyboarddType: TextInputType.emailAddress,
                  formProperty: 'password', formValues: formValues,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context)
                        .requestFocus(FocusNode()); //Ocultar teclado
                    if (!miFormuKey.currentState!.validate()) {
                      // ignore: avoid_print
                      print('Form no valido');
                      return;
                    }

                    // ignore: avoid_print
                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double
                        .infinity, //*Mostrar boton a lo largo de la pantalla
                    child: Center(
                      child: Text('Aceptar'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
