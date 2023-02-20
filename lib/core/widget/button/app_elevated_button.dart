import 'package:flutter/material.dart';
import 'package:restaurant_app/core/widget/text/app_text.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
    this.labelColor,
    this.width,
  });
  final String label;
  final Function() onPressed;
  final Color? backgroundColor;
  final Color? labelColor;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          shape: const StadiumBorder(),
          backgroundColor: backgroundColor,
        ),
        onPressed: onPressed,
        child: AppText(
          content: label,
          color: labelColor,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
