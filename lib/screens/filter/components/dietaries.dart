import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../../components/section_title.dart';
import '../../../components/buttons/fitted_button.dart';

class Dietaries extends StatefulWidget {
  const Dietaries({
    Key? key,
  }) : super(key: key);

  @override
  _DietariesState createState() => _DietariesState();
}

class _DietariesState extends State<Dietaries> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(
          title: "Dietary",
          // When press the clean all
          press: () {},
          isMainSection: false,
        ),
        VerticalSpacing(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Wrap(
            spacing: 10,
            children: List.generate(
              demoDietaries.length,
              (index) => FittedButton(
                text: demoDietaries[index]["title"],
                isActive: demoDietaries[index]["isActive"],
                press: () {
                  setState(() {
                    demoDietaries[index]["isActive"] =
                        !demoDietaries[index]["isActive"];
                  });
                },
              ),
            ),
          ),
        )
      ],
    );
  }

  List<Map<String, dynamic>> demoDietaries = [
    {"title": "Any", "isActive": false},
    {"title": "Vegetarian", "isActive": false},
    {"title": "Vegan", "isActive": false},
    {"title": "Gluten-Free", "isActive": false},
  ];
}
