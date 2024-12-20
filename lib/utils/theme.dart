import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: const Color(0xFF6B4EFF),
    scaffoldBackgroundColor: const Color(0xFFF0F3FF),
    cardTheme: CardTheme(
      elevation: 8,
      shadowColor: Colors.purple.withOpacity(0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Color(0xFF2D0C57),
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        color: Color(0xFF9B8E9D),
      ),
    ),
  );
} 