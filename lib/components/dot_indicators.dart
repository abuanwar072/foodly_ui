import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    this.isActive = false,
    this.activeColor = kActiveColor,
    this.inActiveColor = const Color(0xFF868686),
  }) : super(key: key);

  final bool isActive;
  final Color activeColor, inActiveColor;

  // Color bla = Colors.grey[300];

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: kDefaultDuration,
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(5)),
      height: 5,
      width: 8,
      decoration: BoxDecoration(
        color: isActive ? activeColor : inActiveColor.withOpacity(0.25),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
    );
  }
}
