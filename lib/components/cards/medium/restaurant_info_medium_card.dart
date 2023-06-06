import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../rating.dart';
import '../../small_dot.dart';

class RestaurantInfoMediumCard extends StatelessWidget {
  const RestaurantInfoMediumCard({
    Key? key,
    required this.image,
    required this.name,
    required this.location,
    required this.rating,
    required this.delivertTime,
    required this.press,
  }) : super(key: key);

  final String image, name, location;
  final double rating;
  final int delivertTime;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.25,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
            Text(
              name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: defaultPadding / 4),
            Text(
              location,
              maxLines: 1,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: defaultPadding / 2),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Rating(rating: rating),
                Text(
                  "$delivertTime min",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: titleColor.withOpacity(0.74)),
                ),
                const SmallDot(),
                Text(
                  "Free delivery",
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: titleColor.withOpacity(0.74)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
