
import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class CustomSaluhContainer extends StatelessWidget {
  const CustomSaluhContainer({
    super.key,
    required this.saluhName,
    required this.saluhTime,
  });
  final String saluhName;
  final String saluhTime;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: kPrimaryColor, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            saluhName,
            style: AppStyles.styleReguler20(context),
          ),
          Text(
            saluhTime,
            style: AppStyles.styleReguler18(context)
                .copyWith(color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
