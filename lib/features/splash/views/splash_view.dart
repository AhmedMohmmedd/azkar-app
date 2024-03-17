import 'package:azkar/features/splash/views/widgets/splash_view_body.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';


class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // backgroundColor: Color(0xfff1f4f9),
      backgroundColor: kbackgroundColor,
      body: const SplashViewBody(),
    );
  }
}