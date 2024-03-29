import 'package:azkar/common/custom_app_bar.dart';
import 'package:azkar/common/custom_share_icon.dart';
import 'package:azkar/features/ahadeth/views/widgets/hadeth_item.dart';
import 'package:azkar/features/azkar/views/widgets/custom_container.dart';
import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

class DoaBody extends StatelessWidget {
  DoaBody({super.key, this.index});
  static const doaa = [
    'روى مسلم في صحيحه عن ابْنَ عُمَرَ أَنّ رَسُولَ اللّهِ صلى الله عليه وسلم كَانَ إِذَا اسْتَوَىَ عَلَىَ بَعِيرِهِ خَارِجاً إِلَىَ سَفَرٍ، كَبّرَ ثَلاَثاً، ثُمّ قَالَ: سُبْحَانَ الّذِي سَخّرَ لَنَا هَذَا وَمَا كُنّا لَهُ مُقْرِنِينَ* وَإِنّا إِلَىَ رَبّنَا لَمُنْقَلِبُونَ. اللّهُمّ إِنّا نَسْأَلُكَ فِي سَفَرِنَا هَذَا الْبِرّ وَالتّقْوَىَ. وَمِنَ الْعَمَلِ مَا تَرْضَىَ. اللّهُمّ هَوّنْ عَلَيْنَا سَفَرَنَا هَذَا. وَاطْوِ عَنّا بُعْدَهُ. اللّهُمّ أَنْتَ الصّاحِبُ فِي السّفَرِ. وَالْخَلِيفَةُ فِي الأَهْلِ. اللّهُمّ إِنّي أَعُوذُ بِكَ مِنْ وَعْثَاءِ السّفَرِ، وَكَآبَةِ الْمَنْظَرِ، وَسُوءِ الْمُنْقَلَبِ، فِي الْمَالِ وَالأَهْلِ". وَإِذَا رَجَعَ قَالَهُنّ. وَزَادَ فِيهِنّ: "آيِبُونَ، تَائِبُونَ، عَابِدُونَ، لِرَبّنَا حَامِدُونَ".',
    'الاستخارة هي طلب الخير، ومعناها أن يسأل الإنسان ربه سبحانه أن يختار له ما فيه الخير له في دينه ودنياه، وهي سُنَّة لمن أراد القدوم على أمر ذي بال، فيصلي ركعتين من غير الفريضة، يقرأ فيهما بالفاتحة وما تيسر من القرآن، فإذا سلَّم من الصلاة دعا بهذا الدعاء: (اللهمّ إنّي أستخيرك بعلمك، وأستقدرك بقدرتك، وأسألك من فضلك العظيم، فإنّك تقدر ولا أقدر، وتعلم ولا أعلم، وأنت علّام الغيوب، اللهمّ إن كنت تعلم أنّ هذا الأمر (ويسمّي حاجته) خير لي في ديني ومعاشي، وعاقبة أمري فاقدره لي، ويسّره لي، ثمّ بارك لي فيه، وإن كنت تعلم أنّ هذا الأمر (ويسمي حاجته) شرّ لي في ديني ومعاشي، وعاقبة أمري فاصرفه عنّي، واصرفني عنه، واقدر لي الخير حيث كان، ثمّ رضّني به) رواه البخاري.',
    'عن عبد الله بن عمر رضي الله عنه، قال: كان رسول الله صلى الله عليه وسلم إذا أفطر قال: (ذهب الظمأ، وابتلت العروق، وثبت الأجر إن شاء الله) رواه أبو داود.',
    'عن أبي طلحة رضي الله عنه، قال: (أصبح رسول الله صلى الله عليه وسلم يوماً طيب النفس، يُرَى في وجهه البِشْر. قالوا: يا رسول الله! أصبحت اليوم طيب النفس، يُرى في وجهك البِشْر، قال: (أجل، أتاني آت من عند ربي عز وجل، فقال: منْ صلى عليك من أمتك صلاة، كتب الله له بها عشر حسنات، ومحا عنه عشر سيئات، ورفع له عشر درجات، ورد عليه مثلها) رواه أحمد.',
    'عن أم المؤمنين عائشة رضي الله عنها أنها سألت النبي صلى الله عليه وسلم: (يا رسول الله! أرأيتَ إن علمتُ أي ليلةٍ ليلة القدر ما أقول فيها؟، قال: (قولي: اللهم إنك عفو كريم تحب العفو، فاعف عني) رواه الترمذي.'
  ];
  int? index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: ''),
      backgroundColor: kbackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child:Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kbackgroundColor,
        border: Border.all(
          color: kPrimaryColor,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  doaa[index!],
                  style: AppStyles.styleArefRuqaaBold30(context)
                      .copyWith(color: Colors.black),
                  textAlign: TextAlign.right,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomShareIcon(text: doaa[index!]),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ),
          ),
        ),
      ),
    );
  }
}
