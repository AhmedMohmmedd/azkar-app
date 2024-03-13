
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
    required this.max,
    required this.sliderValue,
  });

  final double max;
  final double sliderValue;

  @override
  Widget build(BuildContext context) {
    return Slider(
      activeColor: kPrimaryColor,
      min: 0,
      max: max,
      divisions: max.toInt(),
      value: sliderValue,
      label: '${sliderValue.round()}',
      onChanged: (val) {},
    );
  }
}
