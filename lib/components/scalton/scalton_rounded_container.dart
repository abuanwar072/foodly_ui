import 'package:flutter/material.dart';

class ScaltonRoundedContainer extends StatelessWidget {
  const ScaltonRoundedContainer({
    Key? key,
    this.height = double.infinity,
    this.width = double.infinity,
    this.radious = 10,
  }) : super(key: key);

  final double height, width, radious;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.08),
        borderRadius: BorderRadius.all(Radius.circular(radious)),
      ),
    );
  }
}
