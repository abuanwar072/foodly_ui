import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class OrderedItemCard extends StatelessWidget {
  const OrderedItemCard({
    Key? key,
    required this.numOfItem,
    required this.title,
    required this.description,
    required this.price,
  }) : super(key: key);
  final int? numOfItem;
  final String? title, description;
  final double? price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildNumOfItem(),
            const HorizontalSpacing(of: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const VerticalSpacing(of: 5),
                  Text(
                    description!,
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            const HorizontalSpacing(of: 10),
            Text(
              "USD$price",
              style: kCaptionTextStyle.copyWith(color: primaryColor),
            )
          ],
        ),
        const VerticalSpacing(of: 10),
        const Divider(),
      ],
    );
  }

  Container buildNumOfItem() {
    return Container(
      height: 24,
      width: 24,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        border: Border.all(
            width: 0.5, color: const Color(0xFF868686).withOpacity(0.3)),
      ),
      child: Text(
        numOfItem.toString(),
        style: kSecondaryBodyTextStyle.copyWith(color: primaryColor),
      ),
    );
  }
}
