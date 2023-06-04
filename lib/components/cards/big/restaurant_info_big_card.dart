import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../price_range_and_food_type.dart';
import '../../rating_with_counter.dart';
import '../../small_dot.dart';
import 'big_card_image_slide.dart';

class RestaurantInfoBigCard extends StatelessWidget {
  final List<String> images, foodType;
  final String name;
  final double rating;
  final int numOfRating, deliveryTime;
  final bool isFreeDelivery;
  final VoidCallback press;

  const RestaurantInfoBigCard({
    Key? key,
    required this.name,
    required this.rating,
    required this.numOfRating,
    required this.deliveryTime,
    this.isFreeDelivery = true,
    required this.images,
    required this.foodType,
    required this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // pass list of images here
          BigCardImageSlide(images: images),
          const VerticalSpacing(of: 10),
          Text(name, style: kSubHeadTextStyle),
          PriceRangeAndFoodtype(foodType: foodType),
          const VerticalSpacing(of: 5),
          Row(
            children: [
              RatingWithCounter(rating: rating, numOfRating: numOfRating),
              const HorizontalSpacing(of: 10),
              SvgPicture.asset(
                "assets/icons/clock.svg",
                height: getProportionateScreenWidth(20),
                width: getProportionateScreenWidth(20),
                color: titleColor.withOpacity(0.64),
              ),
              const HorizontalSpacing(of: 5),
              Text("$deliveryTime Min", style: kCaptionTextStyle),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                child: SmallDot(),
              ),
              SvgPicture.asset(
                "assets/icons/delivery.svg",
                height: getProportionateScreenWidth(20),
                width: getProportionateScreenWidth(20),
                color: const Color(0xFF868686),
              ),
              const HorizontalSpacing(of: 5),
              Text(isFreeDelivery ? "Free" : "Paid", style: kCaptionTextStyle),
            ],
          ),
        ],
      ),
    );
  }
}
