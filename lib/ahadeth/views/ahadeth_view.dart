import 'package:azkar/ahadeth/widgets/hadeth_item.dart';
import 'package:azkar/common/custom_app_bar.dart';
import 'package:azkar/common/custom_rounded_button.dart';
import 'package:azkar/common/custom_slider.dart';
import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class AhadethView extends StatefulWidget {
  const AhadethView({super.key});

  @override
  State<AhadethView> createState() => _AhadethViewState();
}

class _AhadethViewState extends State<AhadethView> {
  static List ahadeth = [
    'عن أبي هريرة رضي الله عنه: أن رجلاً قال للنبي صلى الله عليه وسلم: أوصني، قال: لا تغضب فردد مراراً، قال: لا تغضب',
    'عن فضالة بن عبيد أن رسول الله صلى الله عليه وسلم قال في حجة الوداع: ألا أخبركم من المسلم، من سلم المسلمون من لسانه ويده، والمؤمن من أمنه الناس على أموالهم وأنفسهم، والمهاجر من هجر الخطايا والذنوب، والمجاهد من جاهد نفسه في طاعة الله عز وجل',
    'عن عبد الله بن بسر رضي الله عنه: أن رجلاً قال: يا رسول الله إن شرائع الإسلام قد كثرت علي فأخبرني بشيء أتشبث به، قال: لا يزال لسانك رطباً من ذكر الله',
    'قال رسول الله صلى الله عليه وسلم: من صمت نجا',
    'قال رسول الله صلى الله عليه وسلم: المؤمن للمؤمن كالبنيان يشد بعضه بعضاً',
    'عن أبي هريرة رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: (المؤمن القوي خير وأحب إلى الله من المؤمن الضعيف، وفي كل خير، احرص على ما ينفعك، واستعن بالله ولا تعجز، وإن أصابك شيء فلا تقل: لو أني فعلت كان كذا وكذا، ولكن قل: قدَر الله وما شاء فعل، فإن لو تفتح عمل الشيطان)',
    // '',
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
                  CustomSlider(
                    max: ahadeth.length.toDouble() - 1,
                    sliderValue: sliderValue,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  HadethItem(
                    text: ahadeth[index.toInt()],
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
                          if (index < ahadeth.length - 1) {
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
