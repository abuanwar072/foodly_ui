import 'package:flutter/material.dart';
import 'package:foodly_ui/size_config.dart';

import 'components/body.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Onboarding is our starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
