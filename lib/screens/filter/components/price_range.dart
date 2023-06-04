import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../components/section_title.dart';

class PriceRange extends StatelessWidget {
  const PriceRange({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(
          title: "Price Range",
          press: () {},
          isMainSection: false,
        ),
        const VerticalSpacing(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: defaultPadding),
              ...List.generate(
                // For demo i'm using length 5
                5, // Price limit
                (index) => Padding(
                  padding: EdgeInsets.only(
                      right: getProportionateScreenWidth(defaultPadding)),
                  child: RoundedButton(
                    index: index,
                    isActive: index == 2, // for demo just select 3rd item
                    press: () {},
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    this.isActive = false,
    required this.index,
    required this.press,
  }) : super(key: key);

  final bool isActive;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(64),
      width: getProportionateScreenWidth(64),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: isActive ? primaryColor : inputColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: BorderSide(
                color:
                    isActive ? primaryColor : bodyTextColor.withOpacity(0.1)),
          ),
        ),
        onPressed: press,
        child: Text(
          "\$" * (index + 1),
          style: TextStyle(
              fontWeight: FontWeight.normal,
              color: isActive ? Colors.white : titleColor,
              fontSize: getProportionateScreenWidth(14)),
        ),
      ),
    );
  }
}
