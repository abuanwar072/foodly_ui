import 'package:flutter/material.dart';

import '../../../components/buttons/primary_button.dart';
import '../../../components/welcome_text.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../reset_email_sent_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WelcomeText(
              title: "Forgot password",
              text:
                  "Enter your email address and we will \nsend you a reset instructions."),
          VerticalSpacing(),
          ForgotPassForm(),
        ],
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({
    Key? key,
  }) : super(key: key);

  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();

  String? _email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // Email Field
          TextFormField(
            validator: emailValidator,
            onSaved: (value) => _email = value,
            style: kSecondaryBodyTextStyle,
            cursorColor: kActiveColor,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Email Address",
              contentPadding: kTextFieldPadding,
            ),
          ),
          VerticalSpacing(),

          // Reset password Button
          PrimaryButton(
            text: "Reset password",
            press: () {
              if (_formKey.currentState!.validate()) {
                // If all data are correct then save data to out variables
                _formKey.currentState!.save();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetEmailSentScreen(),
                    ));
              } else {}
            },
          )
        ],
      ),
    );
  }
}
