import 'package:flutter/material.dart';

final ewDarkTheme = ThemeData.dark().copyWith(
  primaryColor: Colors.lightGreen,
  accentColor: Colors.green,
);

final ewLightTheme = ThemeData(
  primaryColor: Colors.lightGreen,
  accentColor: Colors.green,
  indicatorColor: Colors.lightGreen,
  primarySwatch: Colors.lightGreen,
  colorScheme: const ColorScheme.light(
    secondary: Colors.amber,
    primary: Colors.lightGreen,
    surface: Colors.grey,
  ),
);
