import 'package:flutter/material.dart';

import 'components/body.dart';

class FeaturedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Featured Partners"),
      ),
      body: Body(),
    );
  }
}
