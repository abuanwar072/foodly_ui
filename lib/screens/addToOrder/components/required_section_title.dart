import 'package:flutter/material.dart';

import '../../../constants.dart';

class RequiredSectionTitle extends StatelessWidget {
  const RequiredSectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          maxLines: 1,
          style: kSubHeadTextStyle,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding / 2,
            vertical: kDefaultPadding / 4,
          ),
          decoration: BoxDecoration(
              color: kAccentColor.withOpacity(0.2),
              borderRadius: const BorderRadius.all(Radius.circular(4))),
          child: Text(
            "Required".toUpperCase(),
            style: kCaptionTextStyle.copyWith(color: kAccentColor),
          ),
        )
      ],
    );
  }
}
