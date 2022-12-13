import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lighTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      color: Colors.blue,
      elevation: 0
    )
  );
}
