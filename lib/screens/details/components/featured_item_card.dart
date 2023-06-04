import 'package:flutter/material.dart';
import '../../../components/small_dot.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class FeaturedItemCard extends StatelessWidget {
  const FeaturedItemCard({
    Key? key,
    required this.foodType,
    required this.image,
    required this.priceRange,
    required this.press,
    required this.title,
  }) : super(key: key);

  final String foodType, image, priceRange, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = kSecondaryBodyTextStyle.copyWith(
      color: kMainColor.withOpacity(0.64),
      fontWeight: FontWeight.normal,
    );
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SizedBox(
          width: getProportionateScreenWidth(140),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              VerticalSpacing(of: 5),
              Text(
                title,
                style: kBodyTextStyle.copyWith(
                    color: kMainColor, fontWeight: FontWeight.w500),
              ),
              VerticalSpacing(of: 5),
              Row(
                children: [
                  Text(
                    priceRange,
                    style: textStyle,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(5)),
                    child: SmallDot(),
                  ),
                  Text(foodType, style: textStyle)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
