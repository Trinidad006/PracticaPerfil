import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/constants/app_constants.dart';
import '../widgets/profile_card.dart';
import '../widgets/profile_avatar.dart';
import '../widgets/stats_row.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    
    // Calculate responsive dimensions
    // Mobile: 90% of screen width, Desktop: max 400px
    final cardWidth = screenWidth > AppConstants.tabletBreakpoint 
        ? AppConstants.cardMaxWidth
        : screenWidth * AppConstants.cardWidthPercentMobile;
    
    // Height proportional to width, with min and max constraints
    final maxHeight = screenHeight * 0.75;
    final calculatedHeight = cardWidth * AppConstants.cardAspectRatio;
    final cardHeight = calculatedHeight.clamp(
      AppConstants.cardMinHeight.clamp(0, maxHeight), // Ensure min doesn't exceed max
      maxHeight,
    ).toDouble();
    
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Center(
        child: ProfileCard(
          width: cardWidth,
          height: cardHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ProfileAvatar(
                imagePath: 'assets/images/profile_pic.jpg',
                isVerified: true,
              ),
              const SizedBox(height: AppConstants.spacingMedium),
              // Text widgets for user information will go here
              const SizedBox(height: AppConstants.spacingLarge),
              const StatsRow(),
            ],
          ),
        ),
      ),
    );
  }
}