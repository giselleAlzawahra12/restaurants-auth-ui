import 'package:flutter/material.dart';
import 'package:restaurant_app/feature/onboarding/login/presentation/view/login_screen.dart';
import 'package:restaurant_app/feature/onboarding/register/presentation/view/register_screen.dart';
import '../../../../core/widget/button/app_elevated_button.dart';

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: AppElevatedButton(
            backgroundColor: Theme.of(context).colorScheme.primary,
            label: 'Login',
            labelColor: Theme.of(context).colorScheme.onPrimary,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ),
              );
            },
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: AppElevatedButton(
            backgroundColor: Theme.of(context).colorScheme.primary,
            label: 'Register Now',
            labelColor: Theme.of(context).colorScheme.onPrimary,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const RegisterScreen();
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
