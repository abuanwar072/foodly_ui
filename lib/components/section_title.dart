import 'package:flutter/material.dart';

import '../constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    this.isMainSection = true,
    required this.title,
    required this.press,
  }) : super(key: key);

// Main Section means on Home page section
  final bool isMainSection;
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            isMainSection ? title : title.toUpperCase(),
            style: isMainSection
                ? Theme.of(context).textTheme.titleLarge
                : Theme.of(context).textTheme.titleMedium,
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              isMainSection ? "See all" : "Clear all".toUpperCase(),
              style: isMainSection
                  ? Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: primaryColor)
                  : TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: titleColor.withOpacity(0.64),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
