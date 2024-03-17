import 'package:azkar/utils/app_style.dart';
import 'package:flutter/widgets.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Text(
              'وَبَشِّرِ الصَّابِرِينَ',
              style: AppStyles.styleReguler30(context),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
