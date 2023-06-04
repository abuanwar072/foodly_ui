import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'categories.dart';
import 'dietaries.dart';
import 'price_range.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpacing(of: 10),
            Categories(),
            SizedBox(height: defaultPadding),
            Dietaries(),
            SizedBox(height: defaultPadding),
            PriceRange(),
            SizedBox(height: defaultPadding),
          ],
        ),
      ),
    );
  }
}
