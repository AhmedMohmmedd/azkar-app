import 'package:azkar/features/ahadeth/views/widgets/hadeth_item.dart';
import 'package:azkar/common/custom_app_bar.dart';
import 'package:azkar/common/custom_rounded_button.dart';
import 'package:azkar/common/custom_slider.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class AhadethView extends StatefulWidget {
  const AhadethView({super.key});

  @override
  State<AhadethView> createState() => _AhadethViewState();
}

class _AhadethViewState extends State<AhadethView> {
  static List ahadeth = [
    // '',
    'عن أبي هريرة رضي الله عنه أن رسول الله صلى الله عليه وسلم قال: من صلى علي صلاة واحدة صلى الله عليه عشراً',
    'عن أبي هريرة رضي الله عنه أن رسول الله صلى الله عليه وسلم قال: من كذب علي متعمداً فليتبوأ مقعده من النار',
    'إنما الأعمال بالنيات، وإنما لكل امرئ ما نوى، فمن كانت هجرته إلى الله ورسوله، فهجرته إلى الله ورسوله، ومن كانت هجرته لدنيا يصيبها أو امرأة يتزوجها، فهجرته إلى ما هاجر إليه',
    'كل أمتي يدخلون الجنة إلا من أبى قالوا: يا رسول الله: ومن يأبى؟ قال: من أطاعني دخل الجنة، ومن عصاني فقد أبى',
    'عن أنس بن مالك الأنصاري رضي الله عنه أن النبي صلى الله عليه وسلم قال: من رغب عن سنتي فليس مني',
    'لا يؤمن أحدكم حتى أكون أحب إليه من والده وولده والناس أجمعين',
    'عن أبي هريرة رضي الله عنه عن النبي صلى الله عليه وسلم قال: الإيمان بضع وستون شعبة، والحياء شعبة من الإيمان',
    'لا يؤمن أحدكم حتى يحب لأخيه ما يحب لنفسه',
    'عن عثمان بن عفان رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: خيركم من تعلم القرآن وعلمه ',
    'لا حسد إلا في اثنتين: رجل آتاه الله القرآن فهو يقوم به آناء الليل وآناء النهار، ورجل آتاه الله مالاً فهو ينفقه آناء الليل وآناء النهار',
    'عن ابن مسعود رضي الله عنه قال: قال النبي صلى الله عليه وسلم:  من قرأ بالآيتين من آخر سور البقرة في ليلة كفتاه ',
    'عن معاوية بن أبي سفيان رضي الله عنهما قال: سمعت النبي صلى الله عليه وسلم يقول: من يرد الله به خيرا يفقهه في الدين ',
    'من سلك طريقاً يلتمس فيه علماً سهَّل الله له به طريقاً إلى الجنة',
    'عن أبي بكرة رضي الله عنه قال: قال النبي صلى الله عليه وسلم: أكبر الكبائر: الإشراك بالله، وعقوق الوالدين، وشهادة الزور',
    'عن عبدالله بن عمر بن الخطاب رضي الله عنهما عن النبي صلى الله عليه وسلم قال: الظلم ظلمات يوم القيامة',
    'إن العبد ليتكلم بالكلمة، ما يتبين ما فيها، يهوي بها في النار، أبعد ما بين المشرق والمغرب',
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
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * .3,
                    child: HadethItem(
                      text: ahadeth[index.toInt()],
                    ),
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
