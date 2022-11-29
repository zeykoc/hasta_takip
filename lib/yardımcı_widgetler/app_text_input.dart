import 'package:flutter/material.dart';

class AppTextInput extends StatelessWidget {
  AppTextInput({
    Key? key,
    required this.controller,
    required this.label,
  }) : super(key: key);

  final TextEditingController controller;
  final String label;
  final InputBorder border =
      OutlineInputBorder(borderRadius: BorderRadius.circular(15));
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: border,
        labelText: label,
      ),
    );
  }
}
