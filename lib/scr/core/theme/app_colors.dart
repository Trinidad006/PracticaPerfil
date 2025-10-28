import 'package:flutter/material.dart';

/// Centralized color palette for the application
class AppColors {
  // Primary Colors
  static const Color primary = Colors.blue;
  static const Color primaryLight = Color(0xFF64B5F6);
  static const Color primaryDark = Color(0xFF1976D2);

  // Background Colors
  static const Color background = Colors.blueGrey;
  static const Color cardBackground = Colors.white;

  // Gradient Colors
  static const List<Color> cardGradient = [
    Color(0xFFF5F7FA), // Light blue-grey
    Color(0xFFFFFFFF), // White
    Color(0xFFF0F4F8), // Very light blue
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
