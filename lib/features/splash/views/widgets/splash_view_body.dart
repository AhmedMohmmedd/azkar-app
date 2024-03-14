import 'package:azkar/features/home/views/home_view.dart';
import 'package:azkar/features/splash/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<double> _animation;
  double? height = 20;
  double? width = 20;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigatToHome();

    slidingAnimation.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
              animation: animationController,
              builder: (context, _) {
                return Container(
                  height: _animation.value,
                  width: _animation.value,
                  child: Image.asset(
                    'assets/images/logo_image.jpg',
                    fit: BoxFit.fill,
                  ),
                );
              }),
          const SizedBox(
            height: 10,
          ),
          SlidingText(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 4), end: Offset.zero)
            .animate(animationController);
    _animation =
        Tween<double>(begin: 50.0, end: 250.0).animate(animationController);
    animationController.forward();
  }

  void navigatToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return HomeView();
        }));
      },
    );
  }
}
