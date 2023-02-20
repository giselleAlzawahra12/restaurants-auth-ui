import 'package:flutter/material.dart';
import 'core/theme/theme.dart';
import 'feature/onboarding/splash/splash_screen.dart';

void main() async {
  return runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const SplashScreen(),
    );
  }
}
