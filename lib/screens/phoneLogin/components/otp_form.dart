import 'package:flutter/material.dart';
import 'package:foodly_ui/entry_point.dart';

import 'package:form_field_validator/form_field_validator.dart';

import '../../../constants.dart';

import '../../../components/buttons/primary_button.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({
    Key? key,
  }) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  final _formKey = GlobalKey<FormState>();

  FocusNode? _pin1Node;
  FocusNode? _pin2Node;
  FocusNode? _pin3Node;
  FocusNode? _pin4Node;

  @override
  void initState() {
    super.initState();
    _pin1Node = FocusNode();
    _pin2Node = FocusNode();
    _pin3Node = FocusNode();
    _pin4Node = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _pin1Node!.dispose();
    _pin2Node!.dispose();
    _pin3Node!.dispose();
    _pin4Node!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 48,
                height: 48,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) _pin2Node!.requestFocus();
                  },
                  validator: RequiredValidator(errorText: ''),
                  autofocus: true,
                  maxLength: 1,
                  focusNode: _pin1Node,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                ),
              ),
              SizedBox(
                width: 48,
                height: 48,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) _pin3Node!.requestFocus();
                  },
                  validator: RequiredValidator(errorText: ''),
                  maxLength: 1,
                  focusNode: _pin2Node,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                ),
              ),
              SizedBox(
                width: 48,
                height: 48,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) _pin4Node!.requestFocus();
                  },
                  validator: RequiredValidator(errorText: ''),
                  maxLength: 1,
                  focusNode: _pin3Node,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                ),
              ),
              SizedBox(
                width: 48,
                height: 48,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) _pin4Node!.unfocus();
                  },
                  validator: RequiredValidator(errorText: ''),
                  maxLength: 1,
                  focusNode: _pin4Node,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                ),
              ),
            ],
          ),
          const SizedBox(height: defaultPadding * 2),
          // Continue Button
          PrimaryButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                // If all data are correct then save data to out variables
                _formKey.currentState!.save();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EntryPoint(),
                  ),
                );
              } else {}
            },
          )
        ],
      ),
    );
  }
}
