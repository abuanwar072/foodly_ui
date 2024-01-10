import 'package:flutter/material.dart';

import '../../constants.dart';

import '../small_dot.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
    required this.foodType,
    required this.price,
    required this.priceRange,
    required this.press,
  }) : super(key: key);

  final String? title, description, image, foodType, priceRange;
  final double? price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.labelLarge!.copyWith(
          color: titleColor.withOpacity(0.64),
          fontWeight: FontWeight.normal,
        );
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SizedBox(
          height: 110,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: Image.asset(
                    image!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: defaultPadding),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                      maxLines: 1,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 18),
                    ),
                    Text(
                      description!,
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        Text(
                          priceRange!,
                          style: textStyle,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: defaultPadding / 2),
                          child: SmallDot(),
                        ),
                        Text(foodType!, style: textStyle),
                        const Spacer(),
                        Text(
                          "USD$price",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: primaryColor),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
