import 'package:flutter/material.dart';

import '../../../components/cards/big/restaurant_info_big_card.dart';
import '../../../constants.dart';
import '../../../components/section_title.dart';
import '../../../screens/home/components/promotion_banner.dart';
import '../../../components/cards/big/big_card_image_slide.dart';
import '../../../demoData.dart';
import '../../../size_config.dart';
import '../../details/details_screen.dart';
import '../../featured/featurred_screen.dart';
import 'medium_card_list.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VerticalSpacing(of: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BigCardImageSlide(images: demoBigImages),
            ),
            const VerticalSpacing(of: 25),
            SectionTitle(
              title: "Featured Partners",
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FeaturedScreen(),
                ),
              ),
            ),
            const VerticalSpacing(of: 15),
            const MediumCardList(),
            const VerticalSpacing(of: 25),
            // Banner
            const PromotionBanner(),
            const VerticalSpacing(of: 25),
            SectionTitle(
              title: "Best Pick",
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FeaturedScreen(),
                ),
              ),
            ),
            const VerticalSpacing(of: 15),
            const MediumCardList(),
            const VerticalSpacing(of: 25),
            SectionTitle(title: "All Restaurants", press: () {}),
            const VerticalSpacing(of: 15),

            // Demo list of Big Cards
            ...List.generate(
              // For demo we use 4 items
              3,
              (index) => Padding(
                padding: const EdgeInsets.fromLTRB(
                    kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
                child: RestaurantInfoBigCard(
                  // Images are List<String>
                  images: demoBigImages..shuffle(),
                  name: "McDonald's",
                  rating: 4.3,
                  numOfRating: 200,
                  deliveryTime: 25,
                  foodType: const ["Chinese", "American", "Deshi food"],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailsScreen(),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
