import 'package:flutter/material.dart';

class OnBoardingScaffold extends StatelessWidget {
  const OnBoardingScaffold({
    super.key,
    required this.body,
  });
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF6F5FA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: body,
            ),
          ],
        ),
      ),
    );
  }
}
