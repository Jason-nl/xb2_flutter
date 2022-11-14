import 'package:flutter/material.dart';

class AppTheme {
  // 亮色主题
  static ThemeData light = ThemeData(
      primaryColor: Colors.deepPurpleAccent,
      accentColor: Colors.deepPurple.shade900,
      colorScheme: const ColorScheme.light(
          primary: Colors.deepPurpleAccent, secondary: Colors.amber));

  // 暗色主题                        
  static ThemeData dark = ThemeData(
      primaryColor: Colors.deepPurpleAccent,
      accentColor: Colors.deepPurple.shade900,
      colorScheme: const ColorScheme.dark(
          primary: Colors.cyan, secondary: Colors.amber));
}
