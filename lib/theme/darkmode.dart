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
        background: Colors.green.shade300,
        primary: Colors.green.shade500,
        secondary: Colors.green.shade200,
        tertiary: Colors.white,
        inversePrimary: Colors.grey.shade800));
