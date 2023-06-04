import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../components/welcome_text.dart';
import '../../size_config.dart';
import 'components/otp_form.dart';

class NumberVerifyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login to Foodly"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeText(
                title: "Verify phone number",
                text: "Enter the 4-Digit code sent to you at \n+1501333982",
              ),

              // OTP form
              OtpForm(),
              VerticalSpacing(),
              Center(
                child: Text.rich(
                  TextSpan(
                    text: "Didn’t receive code? ",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontWeight: FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Resend Again.",
                        style: TextStyle(color: kActiveColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Your OTP PIN resend code
                          },
                      ),
                    ],
                  ),
                ),
              ),
              VerticalSpacing(),
              Center(
                child: Text(
                  "By Signing up you agree to our Terms \nConditions & Privacy Policy.",
                  textAlign: TextAlign.center,
                ),
              ),
              VerticalSpacing(),
            ],
          ),
        ),
      ),
    );
  }
}
