import 'package:flutter/material.dart';

import '../scalton/scalton_rounded_container.dart';
import '../scalton/scalton_line.dart';
import '../../size_config.dart';

class MediumCardScalton extends StatelessWidget {
  const MediumCardScalton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.25,
            child: ScaltonRoundedContainer(),
          ),
          VerticalSpacing(of: 10),
          const ScaltonLine(width: 150),
          VerticalSpacing(of: 10),
          const ScaltonLine(),
          VerticalSpacing(of: 10),
          const ScaltonLine(),
        ],
      ),
    );
  }
}
