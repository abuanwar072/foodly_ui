import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodly_ui/entry_point.dart';

import '../../components/buttons/secondery_button.dart';
import '../../components/welcome_text.dart';
import '../../constants.dart';

class FindRestaurantsScreen extends StatelessWidget {
  const FindRestaurantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const EntryPoint(),
              ),
            );
          },
        ),
      ),
      body: SafeArea(
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
                child: Row(
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
                            colorFilter: const ColorFilter.mode(
                                bodyTextColor, BlendMode.srcIn),
                          ),
                        ),
                        hintText: "Enter a new address",
                        contentPadding: kTextFieldPadding,
                      ),
                    ),
                    const SizedBox(height: defaultPadding),
                    ElevatedButton(
                      onPressed: () {
                        // Use your onw way how you combine both New Address and Current Location
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EntryPoint(),
                          ),
                        );
                      },
                      child: const Text("Continue"),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
