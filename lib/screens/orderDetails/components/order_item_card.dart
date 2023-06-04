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
            HorizontalSpacing(of: 10),
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
                  VerticalSpacing(of: 5),
                  Text(
                    description!,
                    style: kBodyTextStyle.copyWith(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            HorizontalSpacing(of: 10),
            Text(
              "USD$price",
              style: kCaptionTextStyle.copyWith(color: kActiveColor),
            )
          ],
        ),
        VerticalSpacing(of: 10),
        Divider(),
      ],
    );
  }

  Container buildNumOfItem() {
    return Container(
      height: 24,
      width: 24,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        border:
            Border.all(width: 0.5, color: Color(0xFF868686).withOpacity(0.3)),
      ),
      child: Text(
        numOfItem.toString(),
        style: kSecondaryBodyTextStyle.copyWith(color: kActiveColor),
      ),
    );
  }
}
