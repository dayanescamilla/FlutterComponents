import 'package:flutter/material.dart';

class CustomItemField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? sufixIcon;
  final IconData? icon;
  final TextInputType? keyboarddType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomItemField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.sufixIcon,
    this.icon,
    this.keyboarddType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      keyboardType: keyboarddType, // Para teclado
      obscureText: obscureText, //Ocultar texto en caja de texto
      textCapitalization: TextCapitalization.characters,
      onChanged: (value) {
        formValues[formProperty] = value;
        //print('Value: $value');
      },
      validator: (value) {
        if (value == null) return 'Esta';
        return value.length < 5 ? 'Minimo' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //counterText: 'sad',
        suffixIcon: sufixIcon == null ? null : Icon(sufixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
