import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/constants/app_constants.dart';

/// Reusable profile card container with gradient background and shadow
class ProfileCard extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;

  const ProfileCard({
    super.key,
    required this.child,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(AppConstants.spacingMedium),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: AppColors.cardGradient,
        ),
        borderRadius: BorderRadius.circular(AppConstants.borderRadiusMedium),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withAlpha(AppConstants.shadowOpacity),
            spreadRadius: AppConstants.shadowSpreadRadius,
            blurRadius: AppConstants.shadowBlurRadius,
            offset: AppConstants.shadowOffset,
          ),
        ],
      ),
      child: child,
    );
  }
}
