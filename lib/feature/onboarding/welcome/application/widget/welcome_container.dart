import 'package:flutter/material.dart';
import 'package:restaurant_app/feature/onboarding/login/presentation/view/login_screen.dart';
import 'package:restaurant_app/feature/onboarding/register/presentation/view/register_screen.dart';
import '../../../../../core/widget/button/app_elevated_button.dart';

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

// Expanded(
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
//         decoration: boxDecoration(
//           context,
//           Color.fromARGB(255, 218, 158, 0),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const AppText(
//               content: 'Welcome',
//               contentStyle: ContentStyle.headlineSmall,
//               fontWeight: FontWeight.w800,
//             ),
//             HorizontalSpacing.horizontal_12,
//             const AppText(
//               content:
//                   'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
//               contentStyle: ContentStyle.titleSmall,
//               fontWeight: FontWeight.bold,
//               height: 1.5,
//             ),
//             const Spacer(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Expanded(
//                   child: AppElevatedButton(
//                     label: 'Sign In',
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return const SignInScreen();
//                           },
//                         ),
//                       );
//                     },
//                     backgroundColor: Colors.black,
//                     labelColor: Theme.of(context).colorScheme.onPrimary,
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 Expanded(
//                   child: AppElevatedButton(
//                     label: 'Sign Up',
//                     onPressed: () {},
//                     backgroundColor: Theme.of(context).colorScheme.onPrimary,
//                     labelColor: Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );