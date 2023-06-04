import 'package:flutter/material.dart';
import 'package:foodly_ui/size_config.dart';

import 'components/body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Onboarding is our starting screen
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
