import 'package:azkar/common/custom_share_icon.dart';
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kContainerColor,
        border: Border.all(
          color: const Color(0xffc4c6f3),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: AppStyles.styleArefRuqaaBold30(context)
                      .copyWith(color: Colors.black),
                  textAlign: TextAlign.right,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomShareIcon(text: text),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
