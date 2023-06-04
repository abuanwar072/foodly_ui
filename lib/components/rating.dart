import 'package:flutter/material.dart';

import '../constants.dart';

class Rating extends StatelessWidget {
  const Rating({
    Key? key,
    required this.rating,
  }) : super(key: key);

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: kActiveColor,
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
      child: Text(
        rating.toString(),
        style: kCaptionTextStyle.copyWith(color: Colors.white),
      ),
    );
  }
}
