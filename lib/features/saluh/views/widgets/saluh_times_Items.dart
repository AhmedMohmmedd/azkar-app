import 'package:adhan/adhan.dart';
import 'package:azkar/features/saluh/views/widgets/custom_saluh_container.dart';
import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SaluhTimesItems extends StatelessWidget {
  const SaluhTimesItems({
    super.key,
    required this.prayerTimes,
    required this.next,
  });

  final PrayerTimes prayerTimes;
  final Prayer next;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'وَأَقِمِ ٱلصَّلَوٰةَ لِذِكْرِىٓ ',
                style: AppStyles.styleReguler30(context).copyWith(fontSize: 32),
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomSaluhContainer(
                    saluhName: prayerTimes.nextPrayer().name.toUpperCase(),
                    saluhTime: '',
                  ),
                  Column(
                    children: [
                      Text(
                        ' الصلاة القادمة',
                        style: AppStyles.styleReguler30(context),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        DateFormat.jm()
                            .format(prayerTimes.timeForPrayer(next)!),
                        style: AppStyles.styleBold24(context).copyWith(
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomSaluhContainer(
                    saluhName: 'الظُّهْر',
                    saluhTime: DateFormat.jm().format(
                      prayerTimes.dhuhr,
                    ),
                  ),
                  CustomSaluhContainer(
                    saluhName: 'الشروق',
                    saluhTime: DateFormat.jm().format(
                      prayerTimes.sunrise,
                    ),
                  ),
                  CustomSaluhContainer(
                    saluhName: 'الفجْر',
                    saluhTime: DateFormat.jm().format(
                      prayerTimes.fajr,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomSaluhContainer(
                    saluhName: 'العِشاء',
                    saluhTime: DateFormat.jm().format(
                      prayerTimes.isha,
                    ),
                  ),
                  CustomSaluhContainer(
                    saluhName: 'المَغرب',
                    saluhTime: DateFormat.jm().format(
                      prayerTimes.maghrib,
                    ),
                  ),
                  CustomSaluhContainer(
                    saluhName: 'العَصر',
                    saluhTime: DateFormat.jm().format(
                      prayerTimes.asr,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
