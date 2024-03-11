import 'package:azkar/features/home/widgets/calinder_container.dart';
import 'package:azkar/features/home/widgets/categorys_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child:  Column(
        children: [
          ClenderContainer(),
          SizedBox(height: 20,),
          CategorysSection(),
        ],
      ),
    );
  }
}


