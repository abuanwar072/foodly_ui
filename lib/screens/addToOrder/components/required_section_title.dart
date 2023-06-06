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
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding / 2,
            vertical: defaultPadding / 4,
          ),
          decoration: BoxDecoration(
              color: accentColor.withOpacity(0.2),
              borderRadius: const BorderRadius.all(Radius.circular(4))),
          child: Text(
            "Required".toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(color: accentColor),
          ),
        )
      ],
    );
  }
}
