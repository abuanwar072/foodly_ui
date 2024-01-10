import 'package:flutter/material.dart';
import 'package:foodly_ui/constants.dart';

class WelcomeText extends StatelessWidget {
  final String title, text;

  const WelcomeText({Key? key, required this.title, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: defaultPadding / 2),
        Text(text, style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: defaultPadding),
      ],
    );
  }
}
