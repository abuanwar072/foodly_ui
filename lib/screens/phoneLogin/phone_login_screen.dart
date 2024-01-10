import 'package:flutter/material.dart';

import '../../components/buttons/primary_button.dart';
import '../../components/welcome_text.dart';
import '../../constants.dart';
import 'number_verify_screen.dart';

class PghoneLoginScreen extends StatefulWidget {
  const PghoneLoginScreen({super.key});

  @override
  State<PghoneLoginScreen> createState() => _PghoneLoginScreenState();
}

class _PghoneLoginScreenState extends State<PghoneLoginScreen> {
  final _formKey = GlobalKey<FormState>();

  String? _phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login to Foodly"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WelcomeText(
                title: "Get started with Foodly",
                text:
                    "Enter your phone number to use foodly \nand enjoy your food :)",
              ),
              const SizedBox(height: defaultPadding),
              Form(
                key: _formKey,
                child: TextFormField(
                  validator: phoneNumberValidator,
                  autofocus: true,
                  onSaved: (value) => _phoneNumber = value,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: titleColor),
                  cursorColor: primaryColor,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    hintText: "Phone Number",
                    contentPadding: kTextFieldPadding,
                  ),
                ),
              ),
              const Spacer(),
              // Sign Up Button
              PrimaryButton(
                text: "Sign Up",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    // If all data are correct then save data to out variables
                    _formKey.currentState!.save();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NumberVerifyScreen(),
                      ),
                    );
                  } else {}
                },
              ),
              const SizedBox(height: defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
