import 'package:flutter/material.dart';
import '../../../../core/app_images/app_images.dart';

class BambooImage extends StatelessWidget {
  const BambooImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Image.asset(
        AppImages.intro,
      ),
    );
  }
}
