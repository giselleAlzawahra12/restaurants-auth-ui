import 'package:flutter/material.dart';
import '../../../../../core/app_images/app_images.dart';

class ImageBambooText extends StatelessWidget {
  const ImageBambooText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Expanded(
        child: Image.asset(
          AppImages.intro,
        ),
      ),
    );
  }
}
