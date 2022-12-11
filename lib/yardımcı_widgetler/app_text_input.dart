import 'package:flutter/material.dart';

class AppTextInput extends StatelessWidget {
  AppTextInput({
    Key? key,
    required this.controller,
    required this.label,
  }) : super(key: key);

  final TextEditingController controller;
  final String label;
  final InputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: Colors.green));

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
    
      decoration: InputDecoration(
        labelStyle:    TextStyle(color: Colors.green),
        disabledBorder: border,
        errorBorder: border,
        enabledBorder: border,
        focusedErrorBorder: border,
        focusedBorder: border,
        border: border,
        labelText: label,
      ),
    );
  }
}
