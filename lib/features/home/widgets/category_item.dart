import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:azkar/utils/image_strings.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key, required this.image, required this.text, this.onTap,
  });
final String image;
final String text;
final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: kPrimaryColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset(image),
         const SizedBox(height: 5,),
          Text(
            text,
            style: AppStyles.styleReguler16(context),
          ),
          const SizedBox(height: 1,),
        ]),
      ),
    );
  }
}
