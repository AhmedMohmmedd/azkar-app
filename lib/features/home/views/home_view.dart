import 'package:azkar/utils/constantis.dart';
import 'package:azkar/features/home/views/widgets/home_view_body.dart';
import 'package:azkar/utils/image_strings.dart';
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
        title: Image.asset(CustomImages.saluh),
        centerTitle: true,
      ),
      body: HomeViewBody(),
    );
  }
}
