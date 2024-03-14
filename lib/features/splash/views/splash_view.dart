import 'package:azkar/features/splash/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';


class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff1f4f9),
      body: SplashViewBody(),
    );
  }
}