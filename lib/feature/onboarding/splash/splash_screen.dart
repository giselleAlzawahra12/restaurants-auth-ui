import 'dart:async';

import 'package:flutter/material.dart';
import 'package:restaurant_app/core/app_images/app_images.dart';
import 'package:restaurant_app/feature/home/presentation/view/home_screen.dart';
import 'package:restaurant_app/feature/onboarding/welcome/view/welcome_screen.dart';
import '../../../core/cash/secure_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SecureStorage secureStorage = SecureStorage();
  String? email;
  @override
  void initState() {
    super.initState();
    secureStorage.readSecureData('email').then((value) {
      email = value;
    });
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: email == null
                ? (context) => const WelcomeScreen()
                : (context) => HomeScreen(),
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
