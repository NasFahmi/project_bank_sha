import 'package:flutter/material.dart';
import 'package:project_bank_sha/config/theme/theme.dart';

class TextFormFieldAuth extends StatelessWidget {
  TextEditingController controller;
  TextInputType keyboardType;
  String errorText;
  bool obscureText;
  Widget suffix;
  TextFormFieldAuth(
      {super.key,
      required this.controller,
      required this.keyboardType,
      required this.errorText,
      required this.suffix,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorText;
        }
        return null;
      },
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: suffix,
        contentPadding: EdgeInsets.all(12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: strokeTextFieldColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(
              color: strokeTextFiledColorFocused,
            )),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: strokeTextFieldColorError,
          ),
        ),
      ),
    );
  }
}
