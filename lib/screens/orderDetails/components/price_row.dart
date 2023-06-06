import 'package:flutter/material.dart';

import '../../../constants.dart';

class PriceRow extends StatelessWidget {
  const PriceRow({
    super.key,
    required this.text,
    required this.price,
  });

  final String text;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(color: titleColor),
        ),
        Text(
          "\$$price",
          style: const TextStyle(color: titleColor),
        )
      ],
    );
  }
}
