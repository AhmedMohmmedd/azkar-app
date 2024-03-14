import 'package:azkar/features/home/widgets/calinder_container.dart';
import 'package:azkar/features/home/widgets/categorys_section.dart';
import 'package:azkar/features/home/widgets/salah_time_container.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ClenderContainer(),
          // SalahTimeContainer(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: CategorysSection(),
          ),
        ],
      ),
    );
  }
}
