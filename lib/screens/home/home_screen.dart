import 'package:flutter/material.dart';
import '../../components/cards/big/big_card_image_slide.dart';
import '../../components/cards/big/restaurant_info_big_card.dart';
import '../../components/section_title.dart';
import '../../constants.dart';
import '../../demoData.dart';
import '../../screens/filter/filter_screen.dart';
import '../../size_config.dart';

import '../details/details_screen.dart';
import '../featured/featurred_screen.dart';
import 'components/medium_card_list.dart';
import 'components/promotion_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// If you set your home screen as first screen make sure call [SizeConfig().init(context)]
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: Column(
          children: [
            Text(
              "Delivery to".toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: primaryColor),
            ),
            const Text(
              "San Francisco",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FilterScreen(),
                ),
              );
            },
            child: Text(
              "Filter",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: defaultPadding),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
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
                      defaultPadding, 0, defaultPadding, defaultPadding),
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
      ),
    );
  }
}
