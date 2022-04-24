import 'package:flutter/material.dart';

class AppRouter {
  AppRouter._();

  static void pushNamed(BuildContext context, String name,
      {Object? arguments}) {
    Navigator.pushNamed(
      context,
      name,
      arguments: arguments,
    );
  }

  static void pushReplacementNamed(BuildContext context, String name,
      {Object? arguments}) {
    Navigator.pushReplacementNamed(
      context,
      name,
      arguments: arguments,
    );
  }

  static void back(BuildContext context) {
    Navigator.pop(context);
  }
}
