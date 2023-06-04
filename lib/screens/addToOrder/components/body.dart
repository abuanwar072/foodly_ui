import 'package:flutter/material.dart';
import 'package:foodly_ui/constants.dart';

import '../../../components/buttons/primary_button.dart';
import '../../../size_config.dart';
import '../../orderDetails/order_details_screen.dart';
import 'info.dart';
import 'required_section_title.dart';
import 'rounded_button.dart';
import 'rounded_checkedbox_list_tile.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // for demo we select 2nd one
  int choiceOfTopCookie = 1;
  int choiceOfBottomCookie = 1;
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Info(),
            const SizedBox(height: defaultPadding),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const RequiredSectionTitle(title: "Choice of top Cookie"),
                  const SizedBox(height: defaultPadding),
                  ...List.generate(
                    choiceOfTopCookies.length,
                    (index) => RoundedCheckboxListTile(
                      isActive: index == choiceOfTopCookie,
                      text: choiceOfTopCookies[index],
                      press: () {
                        setState(() {
                          choiceOfTopCookie = index;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  const RequiredSectionTitle(title: "Choice of Bottom Cookie"),
                  const SizedBox(height: defaultPadding),
                  ...List.generate(
                    choiceOfTopCookies.length,
                    (index) => RoundedCheckboxListTile(
                      isActive: index == choiceOfBottomCookie,
                      text: choiceOfTopCookies[index],
                      press: () {
                        setState(() {
                          choiceOfBottomCookie = index;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  // Num of item
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // increment button
                      RoundedButton(
                        press: () {
                          setState(() {
                            numOfItems++;
                          });
                        },
                        iconData: Icons.add,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding),
                        child: Text(numOfItems.toString().padLeft(2, "0"),
                            style: kSubHeadTextStyle),
                      ),
                      // decrement buuton
                      RoundedButton(
                        press: () {
                          if (numOfItems > 1) {
                            setState(() {
                              numOfItems--;
                            });
                          }
                        },
                        iconData: Icons.remove,
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  PrimaryButton(
                    text: "Add to Order (\$11.98)",
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrderDetailsScreen(),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: defaultPadding)
          ],
        ),
      ),
    );
  }
}

const List<String> choiceOfTopCookies = [
  "Choice of top Cookie",
  "Cookies and Cream",
  "Funfetti",
  "M and M",
  "Red Velvet",
  "Peanut Butter",
  "Snickerdoodle",
  "White Chocolate Macadamia",
];
