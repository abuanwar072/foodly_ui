import 'package:flutter/material.dart';

import 'components/body.dart';

class FilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
      ),
      body: Body(),
    );
  }
}
