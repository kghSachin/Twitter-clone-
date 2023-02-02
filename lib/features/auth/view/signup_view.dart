import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitterkoclone/features/auth/view/login_view.dart';
import 'package:twitterkoclone/features/auth/widgets/auth_field.dart';
import 'package:twitterkoclone/theme/pallet.dart';

import '../../../common/rounded_small_button.dart';
import '../../../constants/constants.dart';

class SignUpView extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const SignUpView(),
      );
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final appbar = UIConstants.appBar();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                AuthField(
                  controller: emailController,
                  hintText: 'Email',
                ),
                const SizedBox(
                  height: 25,
                ),
                AuthField(
                  controller: passwordController,
                  hintText: 'Password',
                ),
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: RoundedSmallButton(
                    label: 'Login',
                    color: Pallete.whiteColor,
                    textColor: Pallete.backgroundColor,
                    onTap: () {},
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                RichText(
                  text: TextSpan(
                    text: "Already Have an Account? ",
                    style: const TextStyle(
                      color: Pallete.greyColor,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                          text: 'Log In',
                          style: const TextStyle(
                              color: Pallete.blueColor, fontSize: 16),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(context, LogInView.route());
                            }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
