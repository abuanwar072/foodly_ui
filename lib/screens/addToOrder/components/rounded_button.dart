import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key);

  final IconData iconData;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: const Color(0xFFF8F8F8),
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(100)),
            side: BorderSide(
              color: const Color(0xFF979797).withOpacity(0.1),
            ),
          ),
        ),
        onPressed: press,
        child: Icon(iconData),
      ),
    );
  }
}
