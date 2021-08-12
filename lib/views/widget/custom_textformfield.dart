import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputType textInput;
  final Icon? icon;
  final Function? onSaved;
  final Function? onChanged;
  final bool obscureText;

  const CustomTextFormField({
    this.label = '',
    this.hint = '',
    this.textInput = TextInputType.text,
    this.obscureText = false,
    this.onChanged,
    this.onSaved,
    this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
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
