import 'package:flutter/material.dart';

import '../../../components/bottom_nav_bar.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../components/buttons/primary_button.dart';
import '../../forgotPassword/forgot_password_screen.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  bool _obscureText = true;

  FocusNode? _passwordNode;

  @override
  void initState() {
    super.initState();
    _passwordNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _passwordNode!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String? email, password;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // Email Field
          TextFormField(
            validator: emailValidator,
            onSaved: (value) => email = value,
            textInputAction: TextInputAction.next,
            onEditingComplete: () {
              // Once user click on Next then it go to password field
              _passwordNode!.requestFocus();
            },
            style: kSecondaryBodyTextStyle,
            cursorColor: primaryColor,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Email Address",
              contentPadding: kTextFieldPadding,
            ),
          ),
          const VerticalSpacing(),

          // Password Field
          TextFormField(
            focusNode: _passwordNode,
            obscureText: _obscureText,
            validator: passwordValidator,
            onSaved: (value) => password = value,
            style: kSecondaryBodyTextStyle,
            cursorColor: primaryColor,
            decoration: InputDecoration(
              hintText: "Password",
              contentPadding: kTextFieldPadding,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: _obscureText
                    ? const Icon(Icons.visibility_off, color: bodyTextColor)
                    : const Icon(Icons.visibility, color: bodyTextColor),
              ),
            ),
          ),
          const VerticalSpacing(),

          // Forget Password
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ForgotPasswordScreen(),
              ),
            ),
            child: Text(
              "Forget Password?",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          const VerticalSpacing(),

          // Sign In Button
          PrimaryButton(
            text: "Sign In",
            press: () {
              if (_formKey.currentState!.validate()) {
                // If all data are correct then save data to out variables
                _formKey.currentState!.save();

                // just for demo
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavBar(),
                    ));
              } else {}
            },
          )
        ],
      ),
    );
  }
}
