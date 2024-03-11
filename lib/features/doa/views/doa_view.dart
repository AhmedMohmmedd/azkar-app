import 'package:azkar/common/custom_app_bar.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class DoaView extends StatelessWidget {
  const DoaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'وَقَالَ رَبُّكُمُ ادْعُونِي'),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kPrimaryColor,     
              ),
              child: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}