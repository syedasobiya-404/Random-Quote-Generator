import 'package:flutter/material.dart';

final ThemeData theme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: Color(0xFFF9F9F9),
  colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF4B32C3)),

  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFFEAE4FF),
    foregroundColor: Color(0xFF4B32C3),
    elevation: 0,
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF4B32C3),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontSize: 20, color: Colors.black87),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: Color(0xFF4B32C3),
      fontWeight: FontWeight.bold,
    ),
  ),
);
