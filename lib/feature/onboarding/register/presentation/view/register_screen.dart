import 'package:flutter/material.dart';
import 'package:restaurant_app/core/app_spacing/app_spacing.dart';
import 'package:restaurant_app/core/widget/scaffold/onboarding/onboarding_scaffold.dart';
import '../../../../../core/widget/animation/app_animation.dart';
import '../../../../../core/widget/onboarding/auth_container.dart';
import '../../../../../core/widget/onboarding/logo_and_name_text.dart';
import '../../../../../core/widget/text_field/app_text_field.dart';
import '../widget/have_an_account_text.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidate = AutovalidateMode.disabled;

  TextEditingController usernameController = TextEditingController();
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
                    titleText: 'Create Account',
                    authButtonLabel: 'Register',
                    onAuthButtonPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    children: [
                      AppTextField(
                        textController: usernameController,
                        hintText: 'Username',
                        suffixIcon: const Icon(Icons.person),
                        validator: (username) {
                          if (username == null || username.isEmpty) {
                            return 'Please enter name';
                          }
                          if (username.length <= 2) {
                            return 'Name must be at least 3 characters';
                          }
                          return null;
                        },
                      ),
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
                            return 'Please enter password';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const AlreadyHaveAnAccountText(),
        ],
      ),
    );
  }
}
