import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputType textInput;
  final Icon? icon;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final bool obscureText;

  const CustomTextFormField({
    this.label = '',
    this.hint = '',
    this.textInput = TextInputType.text,
    this.obscureText = false,
    this.validator,
    this.onSaved,
    this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        onSaved: onSaved,
        validator: validator,
        decoration: InputDecoration(
            icon: icon,
            labelText: label,
            labelStyle: TextStyle(
              fontSize: 17,
            ),
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: 15,
            )),
        keyboardType: textInput,
        obscureText: obscureText,
      ),
    );
  }
}
