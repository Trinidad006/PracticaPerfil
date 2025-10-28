import 'package:flutter/material.dart';

/// App-wide constants for spacing, sizing, and other values
class AppConstants {
  // Spacing
  static const double spacingXSmall = 4.0;
  static const double spacingSmall = 8.0;
  static const double spacingMedium = 16.0;
  static const double spacingLarge = 24.0;
  static const double spacingXLarge = 32.0;

  // Border Radius
  static const double borderRadiusSmall = 8.0;
  static const double borderRadiusMedium = 15.0;
  static const double borderRadiusLarge = 20.0;

  // Avatar
  static const double avatarRadius = 60.0;
  static const double verifiedBadgeSize = 28.0;

  // Card Dimensions
  static const double cardMaxWidth = 400.0;
  static const double cardMinHeight = 450.0;
  static const double cardWidthPercentMobile = 0.9;
  static const double cardAspectRatio = 1.5;
  static const double tabletBreakpoint = 600.0;

  // Shadow
  static const double shadowSpreadRadius = 5.0;
  static const double shadowBlurRadius = 7.0;
  static const Offset shadowOffset = Offset(0, 3);
  static const int shadowOpacity = 51; // out of 255

  // Stats
  static const double statsLabelFontSize = 14.0;
  static const double statsValueFontSize = 18.0;
  static const double statsSpacing = 5.0;

  // Prevent instantiation
  AppConstants._();
}
