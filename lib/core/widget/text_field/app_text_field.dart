import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.textController,
    required this.hintText,
    required this.validator,
    this.keyboardType,
    this.fillColor,
    this.suffixIcon,
    this.obscureText = false,
    this.autoValidate,
  });

  final TextEditingController textController;
  final String hintText;
  final TextInputType? keyboardType;
  final Color? fillColor;
  final Widget? suffixIcon;
  final bool obscureText;
  final FormFieldValidator<String> validator;
  final AutovalidateMode? autoValidate;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      autovalidateMode: autoValidate,
      controller: textController,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: hintText,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
