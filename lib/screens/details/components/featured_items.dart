import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'featured_item_card.dart';

class FeaturedItems extends StatelessWidget {
  const FeaturedItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text("Featured Items", style: kSubHeadTextStyle),
        ),
        VerticalSpacing(of: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                3, // for demo we use 3
                (index) => Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding - 5),
                  child: FeaturedItemCard(
                    title: "Cookie Sandwich",
                    image: "assets/images/featured _items_${index + 1}.png",
                    foodType: "Chines",
                    priceRange: "\$" * 2,
                    press: () {},
                  ),
                ),
              ),
              HorizontalSpacing(),
            ],
          ),
        ),
      ],
    );
  }
}
