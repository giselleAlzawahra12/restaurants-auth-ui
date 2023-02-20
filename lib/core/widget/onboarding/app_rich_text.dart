import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AppRichText extends StatelessWidget {
  AppRichText({
    super.key,
    required this.text,
    required this.buttonText,
    this.onTap,
  });
  final String text;
  final String buttonText;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
        ),
        children: <TextSpan>[
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onTap,
            text: buttonText,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
