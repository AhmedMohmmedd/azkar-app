import 'package:azkar/utils/app_style.dart';
import 'package:azkar/features/azkar/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class AzkarSafarList extends StatelessWidget {
  const AzkarSafarList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Column(
        children: [
          CustomContainer(
            text: ' سُبْحَانَ الّذِي سَخّرَ لَنَا هَذَا وَمَا كُنّا لَهُ مُقْرِنِينَ* وَإِنّا إِلَىَ رَبّنَا لَمُنْقَلِبُونَ'
          ),
          CustomContainer(
            text: 'اللّهُمّ إِنّا نَسْأَلُكَ فِي سَفَرِنَا هَذَا الْبِرّ وَالتّقْوَىَ. وَمِنَ الْعَمَلِ مَا تَرْضَىَ',
          ),
          CustomContainer(
            text: 'اللّهُمّ هَوّنْ عَلَيْنَا سَفَرَنَا هَذَا. وَاطْوِ عَنّا بُعْدَهُ. اللّهُمّ أَنْتَ الصّاحِبُ فِي السّفَرِ. وَالْخَلِيفَةُ فِي الأَهْلِ',
          ),
          CustomContainer(
            text: 'اللّهُمّ إِنّي أَعُوذُ بِكَ مِنْ وَعْثَاءِ السّفَرِ، وَكَآبَةِ الْمَنْظَرِ، وَسُوءِ الْمُنْقَلَبِ، فِي الْمَالِ وَالأَهْلِ',
          ),

        ],
      ),
    );
  }
}
