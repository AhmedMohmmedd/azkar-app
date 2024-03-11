import 'package:azkar/ahadeth/widgets/hadeth_item.dart';
import 'package:azkar/common/custom_app_bar.dart';
import 'package:azkar/common/custom_rounded_button.dart';
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
    // '',
  ];
  static int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: ''),
      body: Container(
        color: kbackgroundColor,
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/images/pexels-jose-aragones-3254036.jpg'),
        //     fit: BoxFit.fill
        //   ),
        // ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HadethItem(
                    text: ahadeth[index],
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
                            setState(() {});
                          } else {}
                        },
                      ),
                      CustomRoundedButton(
                        icon: Icons.arrow_forward_ios_rounded,
                        onPressed: () {
                          if (index < ahadeth.length - 1) {
                            index++;
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
