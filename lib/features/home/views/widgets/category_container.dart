
import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class CategryContainer extends StatelessWidget {
  const CategryContainer({
    super.key, required this.text, required this.image, this.onTap,
  });
final String text , image;
final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image),
            Text(
              text,
              style: AppStyles.styleBold15(context),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
