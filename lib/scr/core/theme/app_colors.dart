import 'package:flutter/material.dart';

/// Centralized color palette for the application
class AppColors {
  // Primary Colors - Pink Theme
  static const Color primary = Color(0xFFFF69B4); // Hot pink
  static const Color primaryLight = Color(0xFFFFB6C1); // Light pink
  static const Color primaryDark = Color(0xFFFF1493); // Deep pink

  // Background Colors
  static const Color background = Color(0xFFFFF0F5); // Lavender blush
  static const Color cardBackground = Color(0xFFFFFAFA); // Snow white

  // Gradient Colors - Cute Pink Theme
  static const List<Color> cardGradient = [
    Color(0xFFFFE4E1), // Misty rose
    Color(0xFFFFC0CB), // Pink
    Color(0xFFFFB6C1), // Light pink
  ];

  // Text Colors
  static const Color textPrimary = Colors.black87;
  static const Color textSecondary = Colors.grey;
  static const Color textLight = Colors.white;

  // Other Colors
  static const Color verified = Colors.blue;
  static const Color shadow = Colors.black;
  static const Color border = Colors.white;

  // Prevent instantiation
  AppColors._();
}
