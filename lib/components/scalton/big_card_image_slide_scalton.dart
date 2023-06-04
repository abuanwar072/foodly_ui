import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../dot_indicators.dart';

class BigCardImageSlideScalton extends StatelessWidget {
  const BigCardImageSlideScalton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.08),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
        ),
        Positioned(
          bottom: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(15),
          child: Row(
            children: List.generate(4, (index) => DotIndicator()),
          ),
        ),
      ],
    );
  }
}
