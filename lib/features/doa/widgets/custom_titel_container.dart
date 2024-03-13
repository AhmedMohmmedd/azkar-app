
import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class CustomTitelContainer extends StatelessWidget {
  const CustomTitelContainer({
    super.key, required this.title, this.onTap,
  });
final String title;
final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 5),
        child: Container(
          height: 60,
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: kPrimaryColor,
            width: 3,
          ),
        ),
          child: Center(
              child: Text(
            title,
            style: AppStyles.styleArefRuqaaBold30(context)
                .copyWith(color: kPrimaryColor),
          )),
        ),
      ),
    );
  }
}
