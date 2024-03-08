import 'package:azkar/common/custom_app_bar.dart';
import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:azkar/features/azkar/widgets/azkar_view_body.dart';
import 'package:azkar/features/azkar/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class AzkarView extends StatelessWidget {
  const AzkarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f4fe),
      appBar: CustomAppBar( title: 'الاذكار',),
      body:  Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage(kBacGroundImage),
          fit: BoxFit.fill,
        ),
      ),
        child: const Padding(
          padding:  EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
          ),
          child: AzkarViewBody(),
        ),
      ),
      
    );
  }
}
