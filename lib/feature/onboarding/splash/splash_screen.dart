import 'dart:async';

import 'package:flutter/material.dart';
import 'package:restaurant_app/core/app_images/app_images.dart';
import 'package:restaurant_app/feature/onboarding/welcome/application/view/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const WelcomeScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(AppImages.chefHatIcon),
            ),
            Center(
              child: Image.asset(AppImages.deliveryMan),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(AppImages.bowlIcon),
            ),
          ],
        ),
      ),
    );
  }
}
