import 'package:flutter/material.dart';

enum ContentStyle {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
  labelLarge,
  labelMedium,
  labelSmall,
}

class AppText extends StatelessWidget {
  const AppText({
    Key? key,
    required this.content,
    this.contentStyle = ContentStyle.labelMedium,
    this.color,
    this.overflow,
    this.textAlign,
    this.fontWeight,
    this.letterSpacing,
    this.height,
  }) : super(key: key);

  final String content;

  final ContentStyle contentStyle;

  final Color? color;

  final TextOverflow? overflow;

  final TextAlign? textAlign;

  final FontWeight? fontWeight;

  final double? letterSpacing;

  final double? height;

  @override
  Widget build(BuildContext context) {
    TextStyle contentTextStyle;

    switch (contentStyle) {
      case ContentStyle.displayLarge:
        contentTextStyle = Theme.of(context).textTheme.displayLarge!;
        break;
      case ContentStyle.displayMedium:
        contentTextStyle = Theme.of(context).textTheme.displayMedium!;
        break;
      case ContentStyle.displaySmall:
        contentTextStyle = Theme.of(context).textTheme.displaySmall!;
        break;
      case ContentStyle.headlineLarge:
        contentTextStyle = Theme.of(context).textTheme.headlineLarge!;
        break;
      case ContentStyle.headlineMedium:
        contentTextStyle = Theme.of(context).textTheme.headlineMedium!;
        break;
      case ContentStyle.headlineSmall:
        contentTextStyle = Theme.of(context).textTheme.headlineSmall!;
        break;
      case ContentStyle.titleLarge:
        contentTextStyle = Theme.of(context).textTheme.titleLarge!;
        break;
      case ContentStyle.titleMedium:
        contentTextStyle = Theme.of(context).textTheme.titleMedium!;
        break;
      case ContentStyle.titleSmall:
        contentTextStyle = Theme.of(context).textTheme.titleSmall!;
        break;
      case ContentStyle.bodyLarge:
        contentTextStyle = Theme.of(context).textTheme.bodyLarge!;
        break;
      case ContentStyle.bodyMedium:
        contentTextStyle = Theme.of(context).textTheme.bodyMedium!;
        break;
      case ContentStyle.bodySmall:
        contentTextStyle = Theme.of(context).textTheme.bodySmall!;
        break;
      case ContentStyle.labelLarge:
        contentTextStyle = Theme.of(context).textTheme.labelLarge!;
        break;
      case ContentStyle.labelMedium:
        contentTextStyle = Theme.of(context).textTheme.labelMedium!;
        break;
      case ContentStyle.labelSmall:
        contentTextStyle = Theme.of(context).textTheme.labelSmall!;
        break;
    }

    return Text(
      content,
      overflow: overflow,
      textAlign: textAlign,
      style: contentTextStyle.copyWith(
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
        height: height,
      ),
    );
  }
}
