
import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget  {
  const CustomAppBar({
    super.key, required this.title,
  });
final String title ;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:  kPrimaryColor,
      title: Text(title, style: AppStyles.styleBold30(context),),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.keyboard_return_outlined ,color: Colors.white,)),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize =>  Size.fromHeight(60);
}
