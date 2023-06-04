import 'package:flutter/material.dart';

import '../../constants.dart';

class SeconderyButton extends StatelessWidget {
  const SeconderyButton({
    Key? key,
    required this.child,
    required this.press,
  }) : super(key: key);

  final Widget child;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding, vertical: 12),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            side: BorderSide(color: primaryColor, width: 0.8),
          ),
        ),
        child: child,
      ),
    );
  }
}
