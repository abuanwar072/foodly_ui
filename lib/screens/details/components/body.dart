import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'featured_items.dart';
import 'iteams.dart';
import 'restaurrant_info.dart';

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
            RestaurantInfo(),
            SizedBox(height: defaultPadding),
            FeaturedItems(),
            Items(),
          ],
        ),
      ),
    );
  }
}
