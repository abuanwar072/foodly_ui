import 'package:flutter/material.dart';

class SmallDot extends StatelessWidget {
  const SmallDot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 4,
      decoration: BoxDecoration(
        color: Color(0xFF868686),
        shape: BoxShape.circle,
      ),
    );
  }
}
