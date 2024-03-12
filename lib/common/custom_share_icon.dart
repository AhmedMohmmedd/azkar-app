
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class CustomShareIcon extends StatelessWidget {
  const CustomShareIcon({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Share.share(
            text,
            subject: shareSubject,
          
          );
        },
        child: Icon(
          Icons.share,
          color: kPrimaryColor,
        ),
        );
  }
}
