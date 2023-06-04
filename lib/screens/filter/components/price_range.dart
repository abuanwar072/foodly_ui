import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../components/section_title.dart';

class PriceRange extends StatelessWidget {
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
        VerticalSpacing(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: kDefaultPadding),
              ...List.generate(
                // For demo i'm using length 5
                5, // Price limit
                (index) => Padding(
                  padding: EdgeInsets.only(
                      right: getProportionateScreenWidth(kDefaultPadding)),
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
          padding: EdgeInsets.zero, backgroundColor: isActive ? kActiveColor : kInputColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: BorderSide(
                color:
                    isActive ? kActiveColor : kBodyTextColor.withOpacity(0.1)),
          ),
        ),
        onPressed: press,
        child: Text(
          "\$" * (index + 1),
          style: TextStyle(
              fontWeight: FontWeight.normal,
              color: isActive ? Colors.white : kMainColor,
              fontSize: getProportionateScreenWidth(14)),
        ),
      ),
    );
  }
}
