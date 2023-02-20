import 'package:flutter/material.dart';
import 'package:restaurant_app/core/app_spacing/app_spacing.dart';
import 'package:restaurant_app/core/widget/animation/app_animation.dart';
import 'package:restaurant_app/core/widget/button/app_elevated_button.dart';
import 'package:restaurant_app/core/widget/onboarding/auth_container.dart';
import 'package:restaurant_app/core/widget/scaffold/onboarding/onboarding_scaffold.dart';
import 'package:restaurant_app/core/widget/text/app_text.dart';
import 'package:restaurant_app/core/widget/text_field/app_text_field.dart';
import '../../../../../core/app_images/app_images.dart';
import '../../../../../core/widget/onboarding/logo_and_name_text.dart';
import '../../../register/presentation/view/register_screen.dart';
import '../widget/dont_have_an_account_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  AutovalidateMode autoValidate = AutovalidateMode.disabled;
  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return OnBoardingScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const LogoAndNameText(),
              HorizontalSpacing.horizontal_14,
              AppAnimation(
                xOffset: 0.0,
                yOffset: -0.3,
                child: Form(
                  key: formKey,
                  autovalidateMode: autoValidate,
                  child: AuthContainer(
                    titleText: 'Login with your Account',
                    authButtonLabel: 'Login',
                    onAuthButtonPressed: () {
                      if (!formKey.currentState!.validate()) {
                        setState(() =>
                            autoValidate = AutovalidateMode.onUserInteraction);
                      }
                    },
                    children: [
                      AppTextField(
                        textController: emailController,
                        hintText: 'Email',
                        suffixIcon: const Icon(Icons.email),
                        validator: (email) {
                          if (email == null || email.isEmpty) {
                            return 'Please enter email';
                          }
                          return null;
                        },
                      ),
                      AppTextField(
                        obscureText: obscureText,
                        textController: passwordController,
                        hintText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(
                              () {
                                obscureText = !obscureText;
                              },
                            );
                          },
                        ),
                        validator: (password) {
                          if (password == null || password.isEmpty) {
                            return 'Please enter Password';
                          }
                          return null;
                        },
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            //minimumSize: Size(50, 30),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {},
                          child: const AppText(
                            content: 'Forgot Password',
                            contentStyle: ContentStyle.bodySmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const DontHaveAnAccountText(),
        ],
      ),
    );
  }
}
