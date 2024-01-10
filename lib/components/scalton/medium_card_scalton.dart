import 'package:flutter/material.dart';

import '../scalton/scalton_line.dart';
import '../scalton/scalton_rounded_container.dart';

class MediumCardScalton extends StatelessWidget {
  const MediumCardScalton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.25,
            child: ScaltonRoundedContainer(),
          ),
          SizedBox(height: 16),
          ScaltonLine(width: 150),
          SizedBox(height: 16),
          ScaltonLine(),
          SizedBox(height: 16),
          ScaltonLine(),
        ],
      ),
    );
  }
}
