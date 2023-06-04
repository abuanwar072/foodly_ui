import 'package:flutter/material.dart';

import 'components/body.dart';

class PghoneLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login to Foodly"),
      ),
      body: Body(),
    );
  }
}
