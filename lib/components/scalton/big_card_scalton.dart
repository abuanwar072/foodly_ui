import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'big_card_image_slide_scalton.dart';
import 'scalton_line.dart';

class BigCardScalton extends StatelessWidget {
  const BigCardScalton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AspectRatio(
          aspectRatio: 1.81,
          child: BigCardImageSlideScalton(),
        ),
        const VerticalSpacing(of: 10),
        ScaltonLine(
          width: SizeConfig.screenWidth * 0.8,
        ),
        const VerticalSpacing(of: 10),
        const ScaltonLine(),
        const VerticalSpacing(of: 10),
        const ScaltonLine(),
      ],
    );
  }
}
