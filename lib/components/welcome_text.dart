import 'package:flutter/material.dart';
import 'package:foodly_ui/constants.dart';

import '../size_config.dart';

class WelcomeText extends StatelessWidget {
  final String title, text;

  const WelcomeText({Key? key, required this.title, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VerticalSpacing(of: 10),
        Text(
          title,
          style: kH1TextStyle,
        ),
        VerticalSpacing(of: 10),
        Text(text, style: kBodyTextStyle),
        VerticalSpacing(),
      ],
    );
  }
}
