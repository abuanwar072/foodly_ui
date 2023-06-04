import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/buttons/socal_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../components/welcome_text.dart';
import '../../../screens/signUp/sign_up_screen.dart';
import 'sign_in_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeText(
              title: "Welcome to",
              text:
                  "Enter your Phone number or Email \naddress for sign in. Enjoy your food :)",
            ),

            // SignInForm contains forget password
            const SignInForm(),
            const VerticalSpacing(),
            kOrText,
            const VerticalSpacing(of: 20),

            // Create new account
            Center(
              child: Text.rich(
                TextSpan(
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontWeight: FontWeight.w600),
                  text: "Don’t have account? ",
                  children: <TextSpan>[
                    TextSpan(
                      text: "Create new account.",
                      style: const TextStyle(color: primaryColor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpScreen(),
                              ),
                            ),
                    )
                  ],
                ),
              ),
            ),
            const VerticalSpacing(),

            // Facebook
            SocalButton(
              press: () {},
              text: "Connect with Facebook",
              color: const Color(0xFF395998),
              icon: SvgPicture.asset(
                'assets/icons/facebook.svg',
                color: const Color(0xFF395998),
              ),
            ),
            const VerticalSpacing(of: 15),

            // Google
            SocalButton(
              press: () {},
              text: "Connect with Google",
              color: const Color(0xFF4285F4),
              icon: SvgPicture.asset(
                'assets/icons/google.svg',
              ),
            ),
            const VerticalSpacing(),
          ],
        ),
      ),
    );
  }
}
