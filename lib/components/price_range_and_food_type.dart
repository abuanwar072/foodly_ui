import 'package:flutter/material.dart';
import '../components/small_dot.dart';

import '../constants.dart';

class PriceRangeAndFoodtype extends StatelessWidget {
  const PriceRangeAndFoodtype({
    Key? key,
    this.priceRange = "\$\$",
    required this.foodType,
  }) : super(key: key);

  final String priceRange;
  final List<String> foodType;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(priceRange, style: kBodyTextStyle),
        ...List.generate(
          foodType.length,
          (index) => Row(
            children: [
              buildSmallDot(),
              Text(foodType[index], style: kBodyTextStyle),
            ],
          ),
        ),
      ],
    );
  }

  Padding buildSmallDot() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      child: SmallDot(),
    );
  }
}
