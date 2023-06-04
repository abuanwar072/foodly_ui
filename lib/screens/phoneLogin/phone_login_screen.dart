import 'package:flutter/material.dart';

import 'components/body.dart';

class PghoneLoginScreen extends StatelessWidget {
  const PghoneLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login to Foodly"),
      ),
      body: const Body(),
    );
  }
}
