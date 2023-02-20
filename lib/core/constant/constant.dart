import 'package:flutter/material.dart';

const double borderRadius = 30;

Decoration boxDecoration(BuildContext context, Color backgroundColor) {
  return BoxDecoration(
    color: backgroundColor,
    // borderRadius: const BorderRadius.only(
    //   topRight: Radius.circular(borderRadius),
    //   topLeft: Radius.circular(borderRadius),
    // ),
    boxShadow: [
      BoxShadow(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
        blurRadius: 7,
      ),
    ],
  );
}

InputBorder outlineBorder(BuildContext context, Color borderColor) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(borderRadius),
    borderSide: BorderSide(
      color: borderColor,
    ),
  );
}
