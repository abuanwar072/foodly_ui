import 'package:flutter/material.dart';

import '../../constants.dart';

class FittedButton extends StatelessWidget {
  const FittedButton({
    Key? key,
    this.isActive = false,
    required this.text,
    required this.press,
  }) : super(key: key);

  final bool? isActive;
  final String? text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 1.5),
        backgroundColor: isActive! ? primaryColor : const Color(0xFFF1F1F1),
      ),
      onPressed: press,
      child: Text(
        text!.toUpperCase(),
        style: TextStyle(
          fontSize: 12,
          color: isActive! ? Colors.white : titleColor.withOpacity(0.54),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
