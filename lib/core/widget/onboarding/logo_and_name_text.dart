import 'package:flutter/material.dart';
import '../../app_images/app_images.dart';
import '../../app_spacing/app_spacing.dart';
import '../animation/app_animation.dart';
import '../text/app_text.dart';

class LogoAndNameText extends StatelessWidget {
  const LogoAndNameText({super.key});

  @override
  Widget build(BuildContext context) {
    return AppAnimation(
      xOffset: 9.0,
      yOffset: 0.0,
      child: Column(
        children: [
          Image.asset(
            AppImages.deliveryMan,
          ),
          HorizontalSpacing.horizontal_10,
          const AppText(
            content: 'BAMBOO',
            contentStyle: ContentStyle.headlineSmall,
            fontWeight: FontWeight.bold,
          ),
          const AppText(
            content: 'restaurant',
            letterSpacing: 8,
          ),
        ],
      ),
    );
  }
}
