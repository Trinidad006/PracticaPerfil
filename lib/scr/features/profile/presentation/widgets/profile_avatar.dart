import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/constants/app_constants.dart';

/// Avatar with verified badge overlay
class ProfileAvatar extends StatelessWidget {
  final String imagePath;
  final bool isVerified;
  final double radius;

  const ProfileAvatar({
    super.key,
    required this.imagePath,
    this.isVerified = true,
    this.radius = AppConstants.avatarRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: radius,
          backgroundColor: AppColors.primary,
          backgroundImage: AssetImage(imagePath),
        ),
        if (isVerified)
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.cardBackground,
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.border,
                  width: 2,
                ),
              ),
              child: const Icon(
                Icons.verified,
                color: AppColors.verified,
                size: AppConstants.verifiedBadgeSize,
              ),
            ),
          ),
      ],
    );
  }
}
