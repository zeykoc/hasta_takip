import 'package:flutter/material.dart';

class NavigatorYardimcisi {
  Future<T> push<T extends Object?>(
    BuildContext context,
    Widget sayfa,
  ) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => sayfa,
      ),
    );
  }

  Future<T> pushReplacement<T extends Object?>(
    BuildContext context,
    Widget sayfa,
  ) async {
    return await Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => sayfa,
      ),
    );
  }
}
