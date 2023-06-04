import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../search/search_screen.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/share.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SearchScreen(),
            ),
          ),
        ),
      ],
    );
  }
}
