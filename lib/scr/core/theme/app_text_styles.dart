import 'package:flutter/material.dart';
import 'app_colors.dart';
import '../constants/app_constants.dart';

/// Centralized text styles for the application
class AppTextStyles {
  // Stats Label Style
  static const TextStyle statsLabel = TextStyle(
    fontSize: AppConstants.statsLabelFontSize,
    color: AppColors.textSecondary,
  );

  // Stats Value Style
  static const TextStyle statsValue = TextStyle(
    fontSize: AppConstants.statsValueFontSize,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  // User Name Style (for future use)
  static const TextStyle userName = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  // User Handle Style (for future use)
  static const TextStyle userHandle = TextStyle(
    fontSize: 16,
    color: AppColors.textSecondary,
  );

  // App Bar Title Style
  static const TextStyle appBarTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textLight,
  );

  // Prevent instantiation
  AppTextStyles._();
}
