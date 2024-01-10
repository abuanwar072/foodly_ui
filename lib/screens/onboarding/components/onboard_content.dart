import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    Key? key,
    required this.illustration,
    required this.title,
    required this.text,
  }) : super(key: key);

  final String? illustration, title, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: SvgPicture.asset(illustration!),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          title!,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const VerticalSpacing(of: 8),
        Text(
          text!,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
