import 'package:flutter/material.dart';

class ScaltonLine extends StatelessWidget {
  const ScaltonLine({
    Key? key,
    this.height = 15,
    this.width = double.infinity,
  }) : super(key: key);

  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: Colors.black.withOpacity(0.08),
    );
  }
}
