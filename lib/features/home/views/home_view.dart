import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:azkar/features/home/widgets/category_container.dart';
import 'package:azkar/features/home/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  kbackgroundColor,
      //#2b7870
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: const Icon(
          Icons.reorder,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        child: HomeViewBody(),
      ),
    );
  }
}
