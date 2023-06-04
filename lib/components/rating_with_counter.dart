import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../size_config.dart';

class RatingWithCounter extends StatelessWidget {
  const RatingWithCounter({
    Key? key,
    required this.rating,
    required this.numOfRating,
  }) : super(key: key);

  final double rating;
  final int numOfRating;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle =
        kCaptionTextStyle.copyWith(color: kMainColor.withOpacity(0.74));
    return Row(
      children: [
        Text(rating.toString(), style: textStyle),
        HorizontalSpacing(of: 5),
        SvgPicture.asset(
          "assets/icons/rating.svg",
          height: getProportionateScreenWidth(20),
          width: getProportionateScreenWidth(20),
          color: kActiveColor,
        ),
        HorizontalSpacing(of: 5),
        Text("$numOfRating+ Ratings", style: textStyle),
      ],
    );
  }
}
