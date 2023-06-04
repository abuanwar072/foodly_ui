import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../screens/filter/filter_screen.dart';
import '../../size_config.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// If you set your home screen as first screen make sure call [SizeConfig().init(context)]
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: const SizedBox(),
      title: Column(
        children: [
          Text(
            "Delivery to".toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: primaryColor),
          ),
          const Text(
            "San Francisco",
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FilterScreen(),
              ),
            );
          },
          child: Text(
            "Filter",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
