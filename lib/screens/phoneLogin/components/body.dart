import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../components/welcome_text.dart';
import '../../../components/buttons/primary_button.dart';
import '../../../size_config.dart';
import '../number_verify_screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();

  String? _phoneNumber;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(
              title: "Get started with Foodly",
              text:
                  "Enter your phone number to use foodly \nand enjoy your food :)",
            ),
            VerticalSpacing(),
            Form(
              key: _formKey,
              child: TextFormField(
                validator: phoneNumberValidator,
                autofocus: true,
                onSaved: (value) => _phoneNumber = value,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: kMainColor),
                cursorColor: kActiveColor,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Phone Number",
                  contentPadding: kTextFieldPadding,
                  prefix: SizedBox(
                    height: 20,
                    // For more check https://pub.dev/packages/country_code_picker
                    child: CountryCodePicker(
                      onChanged: (countryCode) => {
                        // Save your country code
                      },
                      padding: const EdgeInsets.only(right: 5),
                      textStyle: TextStyle(color: kMainColor),
                      initialSelection: "US",
                      showCountryOnly: false,
                      searchDecoration:
                          InputDecoration(contentPadding: EdgeInsets.zero),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
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
                      builder: (context) => NumberVerifyScreen(),
                    ),
                  );
                } else {}
              },
            ),
            VerticalSpacing(),
          ],
        ),
      ),
    );
  }
}
