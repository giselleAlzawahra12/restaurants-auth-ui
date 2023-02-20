import 'package:flutter/material.dart';
import 'package:restaurant_app/core/widget/onboarding/app_rich_text.dart';
import 'package:restaurant_app/feature/onboarding/login/presentation/view/login_screen.dart';

class AlreadyHaveAnAccountText extends StatelessWidget {
  const AlreadyHaveAnAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return AppRichText(
      text: 'Already have an account? ',
      buttonText: 'login',
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder<dynamic>(
            pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) =>
                const LoginScreen(),
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) {
              final Tween<Offset> offsetTween = Tween<Offset>(
                begin: Offset(1.0, 0.0),
                end: Offset(0.0, 0.0),
              );
              final Animation<Offset> slideInFromTheRightAnimation =
                  offsetTween.animate(animation);
              return SlideTransition(
                  position: slideInFromTheRightAnimation, child: child);
            },
          ),
        );
      },
    );
  }
}
