import 'package:flutter/material.dart';
import '../widget/bamboo_image.dart';
import '../widget/welcome_container.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: const [
            Expanded(child: BambooImage()),
            Expanded(child: WelcomeContainer()),
          ],
        ),
      ),
    );
  }
}
