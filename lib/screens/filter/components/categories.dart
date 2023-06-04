import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../components/buttons/fitted_button.dart';
import '../../../components/section_title.dart';

class Categories extends StatefulWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(
          title: "Categories",
          press: () {},
          isMainSection: false,
        ),
        VerticalSpacing(of: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Wrap(
            spacing: kDefaultPadding / 2,
            children: List.generate(
              demoCategories.length,
              (index) => FittedButton(
                text: demoCategories[index]["title"],
                isActive: demoCategories[index]["isActive"],
                press: () {
                  setState(() {
                    demoCategories[index]["isActive"] =
                        !demoCategories[index]["isActive"];
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Demo data categories
  List<Map<String, dynamic>> demoCategories = [
    {"title": "All", "isActive": false},
    {"title": "Brunch", "isActive": false},
    {"title": "Dinner", "isActive": false},
    {"title": "Burgers", "isActive": false},
    {"title": "Chinese", "isActive": false},
    {"title": "Pizza", "isActive": false},
    {"title": "Salads", "isActive": false},
    {"title": "Soups", "isActive": false},
    {"title": "Breakfast", "isActive": false},
  ];
}
