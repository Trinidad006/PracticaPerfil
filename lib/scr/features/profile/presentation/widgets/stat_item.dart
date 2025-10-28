import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/constants/app_constants.dart';

/// Reusable widget for displaying a single statistic
class StatItem extends StatelessWidget {
  final String label;
  final String value;

  const StatItem({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(
            fontSize: AppConstants.statsLabelFontSize,
            color: AppColors.textSecondary,
          ),
        ),
        const SizedBox(height: AppConstants.statsSpacing),
        Text(
          value,
          style: const TextStyle(
            fontSize: AppConstants.statsValueFontSize,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }
}
