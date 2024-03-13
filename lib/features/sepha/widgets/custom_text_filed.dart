
import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(text: 'سبحان الله'),
      textAlign: TextAlign.center,
      style: AppStyles.styleRegulerBlac34(context),
      decoration: const InputDecoration(
        border: InputBorder.none,
      ),
      showCursor: false,
      cursorColor: kPrimaryColor,
    );
  }
}