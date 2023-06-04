import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class RoundedCheckboxListTile extends StatelessWidget {
  const RoundedCheckboxListTile({
    Key? key,
    this.isActive = false,
    required this.press,
    required this.text,
  }) : super(key: key);

  final bool isActive;
  final VoidCallback press;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                CircleCheckBox(isActive: isActive),
                HorizontalSpacing(of: 10),
                Text(
                  text,
                  style: kBodyTextStyle.copyWith(
                      color: kMainColor.withOpacity(0.84), height: 1),
                )
              ],
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}

class CircleCheckBox extends StatelessWidget {
  const CircleCheckBox({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: kDefaultDuration,
      height: 24,
      width: 24,
      padding: EdgeInsets.all(isActive ? 3 : 12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isActive
              ? kActiveColor.withOpacity(0.54)
              : Color(0xFF868686).withOpacity(0.54),
          width: 0.8,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: kActiveColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
