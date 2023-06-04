import 'package:flutter/material.dart';
import '../../../components/price_range_and_food_type.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Info extends StatelessWidget {
  const Info({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1.33,
          child: Image.asset(
            "assets/images/Header-image.png",
            fit: BoxFit.cover,
          ),
        ),
        const VerticalSpacing(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Cookie Sandwich", style: kH3TextStyle),
              const VerticalSpacing(of: 5),
              Text(
                "Shortbread, chocolate turtle cookies, and red velvet. 8 ounces cream cheese, softened.",
                style: kBodyTextStyle,
              ),
              const VerticalSpacing(of: 10),
              const PriceRangeAndFoodtype(
                foodType: ["Chinese", "American", "Deshi food"],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
