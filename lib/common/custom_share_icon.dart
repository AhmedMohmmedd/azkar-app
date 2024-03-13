import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class CustomShareIcon extends StatelessWidget {
  const CustomShareIcon({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Share.share(
          text,
          subject: shareSubject,
        );
      },
      icon: Icon(
        Icons.share,
        color: kPrimaryColor,
      ),
    );
  }
}
