import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../components/welcome_text.dart';
import '../../../components/buttons/primary_button.dart';
import '../../../components/buttons/secondery_button.dart';
import '../../home/home_screen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isLoading = false;

  // void getCurrentLocation() async {
  //   setState(() {
  //     isLoading = true;
  //   });
  //   Position position = await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.medium);
  //   List<Placemark> placemarks =
  //       await placemarkFromCoordinates(position.latitude, position.longitude);
  //   setState(() {
  //     isLoading = false;
  //     // Store your location as you want
  //     // it to show a SnackBar.
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text(placemarks[0].name!)));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeText(
              title: "Find restaurants near you ",
              text:
                  "Please enter your location or allow access to \nyour location to find restaurants near you.",
            ),

            // Getting Current Location
            SeconderyButton(
              press: () {},
              child: isLoading
                  ? buildLodingIndicator()
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/location.svg",
                          height: 24,
                          color: primaryColor,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "Use current location",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: primaryColor),
                        )
                      ],
                    ),
            ),
            const SizedBox(height: defaultPadding),

            // New Address Form
            Form(
              child: Column(
                children: [
                  TextFormField(
                    // onSaved: (value) => _location = value,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: titleColor),
                    cursorColor: primaryColor,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          "assets/icons/marker.svg",
                          color: bodyTextColor,
                        ),
                      ),
                      hintText: "Enter a new address",
                      contentPadding: kTextFieldPadding,
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  PrimaryButton(
                    text: "Continue",
                    press: () {
                      // Use your onw way how you combine both New Address and Current Location
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: defaultPadding),
          ],
        ),
      ),
    );
  }

  SizedBox buildLodingIndicator() {
    return SizedBox(
      height: 24,
      width: 24,
      child: Platform.isAndroid
          ? const CircularProgressIndicator()
          : const CupertinoActivityIndicator(),
    );
  }
}
