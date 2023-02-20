import 'package:flutter/material.dart';
import 'package:restaurant_app/core/widget/onboarding/social_media_row.dart';
import '../../app_spacing/app_spacing.dart';
import '../button/app_elevated_button.dart';
import '../text/app_text.dart';

class AuthContainer extends StatelessWidget {
  const AuthContainer({
    super.key,
    required this.titleText,
    required this.children,
    required this.authButtonLabel,
    required this.onAuthButtonPressed,
  });
  final String titleText;
  final List<Widget> children;
  final String authButtonLabel;
  final Function() onAuthButtonPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
            blurRadius: 2.0,
            offset: const Offset(0.0, 5.0),
          ),
        ],
      ),
      child: Column(
        children: [
          AppText(
            content: titleText,
            contentStyle: ContentStyle.titleLarge,
            fontWeight: FontWeight.w800,
          ),
          HorizontalSpacing.horizontal_14,
          Column(
            children: [
              ...children,
            ],
          ),
          HorizontalSpacing.horizontal_30,
          AppElevatedButton(
            width: double.infinity,
            label: authButtonLabel,
            labelColor: Theme.of(context).colorScheme.onPrimary,
            onPressed: onAuthButtonPressed,
          ),
          HorizontalSpacing.horizontal_12,
          AppText(
            content: 'Or $authButtonLabel using social Media',
            contentStyle: ContentStyle.titleSmall,
            fontWeight: FontWeight.w600,
          ),
          HorizontalSpacing.horizontal_12,
          const SocialMediaNow(),
        ],
      ),
    );
  }
}
