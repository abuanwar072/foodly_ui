import 'package:flutter/material.dart';

import 'package:foodly_ui/constants.dart';

import '../../components/buttons/primary_button.dart';
import '../../components/welcome_text.dart';
import '../../size_config.dart';

class ResetEmailSentScreen extends StatelessWidget {
  const ResetEmailSentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeText(
                title: "Reset email sent",
                text:
                    "We have sent a instructions email to \ntheflutterway@email.com."),
            const SizedBox(height: defaultPadding),
            PrimaryButton(
              text: "Send again",
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}
