import 'package:azkar/features/ahadeth/widgets/hadeth_item.dart';
import 'package:azkar/common/custom_app_bar.dart';
import 'package:azkar/common/custom_rounded_button.dart';
import 'package:azkar/common/custom_slider.dart';
import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class AyatView extends StatefulWidget {
  const AyatView({super.key});

  @override
  State<AyatView> createState() => _AyatViewState();
}

class _AyatViewState extends State<AyatView> {
  static List ayat = [
    'واتقوا اللَّه لعلكم تفلحون',
    'لذين آمنوا وتطمئن قلوبهم بذكر اللَّهِ ألا بذكر اللَّه تطمئِن القلوب',
    'فَمَنِ اتَّبَعَ هُدَايَ فَلا يَضِلُّ وَلا يَشْقَى',
    'وَمَنْ أَعْرَضَ عَنْ ذِكْرِي فَإِنَّ لَهُ مَعِيشَةً ضَنكًا',
    'فَنَادَىٰ فِي الظُّلُمَاتِ أَن لَّا إِلَٰهَ إِلَّا أَنتَ سُبْحَانَكَ إِنِّي كُنتُ مِنَ الظَّالِمِينَ',
    'إِنَّمَا يُوَفَّى الصَّابِرُونَ أَجْرَهُمْ بِغَيْرِ حِسَابٍ',
    'قُلْ يَا عِبَادِيَ الَّذِينَ أَسْرَفُوا عَلَىٰ أَنفُسِهِمْ لَا تَقْنَطُوا مِن رَّحْمَةِ اللَّهِ ۚ إِنَّ اللَّهَ يَغْفِرُ الذُّنُوبَ جَمِيعًا ۚ إِنَّهُ هُوَ الْغَفُورُ الرَّحِيمُ',
    'وَبَشِّرِ الصَّابِرِينَ',
    'إنَّ مَعَ العُسْرِ يُسْراً',
    'فَلَا يَحْزُنْكَ قَوْلُهُمْ',
    'رَبَّنَا لَا تُزِغْ قُلُوبَنَا بَعْدَ إِذْ هَدَيْتَنَا وَهَبْ لَنَا مِن لَّدُنكَ رَحْمَةً ۚ إِنَّكَ أَنتَ ٱلْوَهَّابُ',
  ];
  static double index = 0;
  static double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: ''),
      body: Container(
        color: kbackgroundColor,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomSlider(
                        max: ayat.length.toDouble() - 1,
                        sliderValue: sliderValue,
                      ),
                      Text('${index.toInt()+1}/${ayat.length}' , style: AppStyles.styleBold18(context),)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  HadethItem(
                    text: ayat[index.toInt()],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomRoundedButton(
                        onPressed: () {
                          if (index > 0) {
                            index--;
                            sliderValue = index;
                            setState(() {});
                          } else {}
                        },
                      ),
                      CustomRoundedButton(
                        icon: Icons.arrow_forward_ios_rounded,
                        onPressed: () {
                          if (index < ayat.length - 1) {
                            index++;
                            sliderValue = index;
                            setState(() {});
                          } else {}
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
