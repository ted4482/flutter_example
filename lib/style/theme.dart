import 'package:flutter/material.dart';

final customTheme = ThemeData(
// colorScheme: const ColorScheme.light(
//   primary: Colors.indigo,
//   secondary: Colors.green,
//   tertiary: Colors.yellow,
// ),
// colorScheme: ColorScheme.dark(),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
    useMaterial3: true,
// appBarTheme: const AppBarTheme(backgroundColor: Colors.pink)
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
      bodyMedium: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
    ));
