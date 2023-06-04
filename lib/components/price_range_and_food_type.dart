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
        Text(priceRange, style: Theme.of(context).textTheme.bodyMedium),
        ...List.generate(
          foodType.length,
          (index) => Row(
            children: [
              buildSmallDot(),
              Text(foodType[index],
                  style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ),
      ],
    );
  }

  Padding buildSmallDot() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      child: SmallDot(),
    );
  }
}
