

import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class HadethItem extends StatelessWidget {
  const HadethItem({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kPrimaryColor.withOpacity(.6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Text(
              text,
              style: AppStyles.styleArefRuqaaBold30(context).copyWith(color: Colors.white),
              textAlign: TextAlign.right,
            ),
          ),
        ),
      ),
    );
  }
}
