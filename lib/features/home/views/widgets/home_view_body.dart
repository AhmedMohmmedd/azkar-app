import 'package:azkar/features/home/views/widgets/calinder_container.dart';
import 'package:azkar/features/home/views/widgets/categorys_section.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        bottom: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: kDividerColor,
              width: .5,
            ),
          ),
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: kDividerColor,
              width: .5,
            ),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClenderContainer(),
              SizedBox(
                height: 40,
              ),
              CategorysSection(),
            ],
          ),
        ),
      ),
    );
  }
}
