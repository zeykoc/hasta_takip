import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);
  final Widget child;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
    );
  }
}
