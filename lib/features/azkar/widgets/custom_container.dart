
import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return 
              Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0 , vertical: 10),
                child: Container(
                 decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color:const Color(0xfff4f4fe),
              border: Border.all(
                color: const Color(0xffc4c6f3), 
                width: 1, 
              ),
            ),

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
                    child: Text(
                      text ,
                      textAlign: TextAlign.right,
                      style: AppStyles.styleBold18(context),
                    ),
                  ),
                ),
              );

      
  }
}
