import 'package:flutter/material.dart';

ThemeData _lightTheme = ThemeData(
  accentColor: Colors.pink,
  brightness: Brightness.light,
  primaryColor: Colors.blue
);

ThemeData _darkTheme = ThemeData(
  accentColor: Colors.red,
  brightness: Brightness.dark,
  primaryColor: Colors.amber,
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.amber
  )
);

bool _light = true;