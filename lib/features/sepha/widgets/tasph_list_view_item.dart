
import 'package:azkar/utils/app_style.dart';
import 'package:flutter/material.dart';

class TasphListViewItem extends StatelessWidget {
  const TasphListViewItem({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, top: 4),
      child: Text(
        text,
        style: AppStyles.styleRegulerBlac34(context),
        textAlign: TextAlign.center,
      ),
    );
  }
}
