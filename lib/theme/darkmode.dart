import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
    colorScheme: ColorScheme.light(
        background: Colors.grey.shade800,
        primary: Colors.grey.shade500,
        secondary: Colors.grey.shade300,
        tertiary: Colors.white,
        inversePrimary: Colors.grey.shade500));

ThemeData lightMode = ThemeData(
    colorScheme: ColorScheme.light(
        background: Colors.yellow.shade600,
        primary: Colors.yellow.shade300,
        secondary: Colors.yellow.shade200,
        tertiary: Colors.white,
        inversePrimary: Colors.grey.shade800));
