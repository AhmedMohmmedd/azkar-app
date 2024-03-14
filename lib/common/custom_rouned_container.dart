
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class CustomRoundedContainer extends StatelessWidget {
  const CustomRoundedContainer({
    super.key,
    this.child, this.height = 40, this.width = 40,
  });
  final Widget? child;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: kPrimaryColor,
          width: 1,
        ),
      ),
      child: child,
    );
  }
}
