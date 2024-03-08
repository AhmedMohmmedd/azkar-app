
import 'package:azkar/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.text,
    this.onTap,
  });
  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color:const Color(0xfff4f4fe).withOpacity(.3) ,
            border: Border.all(
              color: const Color(0xffc4c6f3),
              width: 1,
            ),
          ),
          child: ListTile(
            trailing: Text(
              text,
              style: AppStyles.styleBold18(context),
            ),
            leading: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 22,
            ),
          ),
        ),
      ),
    );
  }
}