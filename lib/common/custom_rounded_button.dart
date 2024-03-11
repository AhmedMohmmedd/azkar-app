import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  const CustomRoundedButton({
    super.key,
    required this.onPressed,
    this.margin,  this.icon =Icons.arrow_back_ios_new_rounded ,
  });
  final VoidCallback onPressed;
  final EdgeInsets? margin;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor.withOpacity(.5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
        child:  Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
