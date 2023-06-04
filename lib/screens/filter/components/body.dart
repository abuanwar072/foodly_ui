import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'categories.dart';
import 'dietaries.dart';
import 'price_range.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpacing(of: 10),
            Categories(),
            VerticalSpacing(),
            Dietaries(),
            VerticalSpacing(),
            PriceRange(),
            VerticalSpacing(),
          ],
        ),
      ),
    );
  }
}
