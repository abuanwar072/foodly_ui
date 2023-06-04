import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocalButton extends StatelessWidget {
  final Color color;
  final String text;
  final Widget icon;
  final GestureTapCallback press;

  const SocalButton(
      {Key? key,
      required this.color,
      required this.icon,
      required this.press,
      required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    const padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8);
    return SizedBox(
      width: double.infinity,
      child: Platform.isIOS
          ? CupertinoButton(
              padding: padding,
              color: color,
              child: buildButtonContent(context),
              onPressed: press,
            )
          : ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: padding, backgroundColor: color,
                shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
              ),
              onPressed: press,
              child: buildButtonContent(context),
            ),
    );
  }

  Row buildButtonContent(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(7),
          height: 28,
          width: 28,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          child: icon,
        ),
        // HorizontalSpacing(of: 40),
        Spacer(flex: 2),
        Text(
          text.toUpperCase(),
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        Spacer(flex: 3),
      ],
    );
  }
}
