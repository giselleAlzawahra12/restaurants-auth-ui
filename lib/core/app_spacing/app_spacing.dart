import 'package:flutter/material.dart';

class HorizontalSpacing {
  HorizontalSpacing._();

  static const horizontal_10 = Height(
    sizeBoxHeight: 10,
  );

  static const horizontal_12 = Height(
    sizeBoxHeight: 12,
  );

  static const horizontal_14 = Height(
    sizeBoxHeight: 14,
  );

  static const horizontal_16 = Height(
    sizeBoxHeight: 16,
  );

  static const horizontal_18 = Height(
    sizeBoxHeight: 18,
  );

  static const horizontal_20 = Height(
    sizeBoxHeight: 20,
  );

  static const horizontal_22 = Height(
    sizeBoxHeight: 22,
  );
  static const horizontal_24 = Height(
    sizeBoxHeight: 24,
  );
  static const horizontal_26 = Height(
    sizeBoxHeight: 26,
  );
  static const horizontal_28 = Height(
    sizeBoxHeight: 28,
  );
  static const horizontal_30 = Height(
    sizeBoxHeight: 30,
  );
}

class WidthSpacing {
  WidthSpacing._();

  static const width_10 = Width(
    sizeBoxWidth: 10,
  );

  static const width_12 = Width(
    sizeBoxWidth: 12,
  );

  static const width_14 = Width(
    sizeBoxWidth: 14,
  );

  static const width_16 = Width(
    sizeBoxWidth: 16,
  );

  static const width_18 = Width(
    sizeBoxWidth: 18,
  );

  static const width_20 = Width(
    sizeBoxWidth: 20,
  );

  static const width_22 = Width(
    sizeBoxWidth: 22,
  );
}

class Height extends StatelessWidget {
  const Height({
    super.key,
    required this.sizeBoxHeight,
  });
  final double sizeBoxHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeBoxHeight,
    );
  }
}

class Width extends StatelessWidget {
  const Width({
    super.key,
    required this.sizeBoxWidth,
  });
  final double sizeBoxWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeBoxWidth,
    );
  }
}
