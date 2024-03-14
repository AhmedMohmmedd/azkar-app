import 'package:azkar/common/custom_app_bar.dart';
import 'package:azkar/common/custom_rouned_container.dart';
import 'package:azkar/features/saluh/data/controller/saluh_cubit/saluh_cubit.dart';
import 'package:azkar/features/saluh/views/widgets/custom_saluh_container.dart';
import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class SaluhTimesView extends StatelessWidget {
  const SaluhTimesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: const CustomAppBar(title: ''),
      body: BlocBuilder<SaluhCubit, SaluhState>(
        builder: (context, state) {
          if (state is SaluhPrayerTimes) {
            final prayerTimes = state.prayerTimes;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'وَأَقِمِ ٱلصَّلَوٰةَ لِذِكْرِىٓ ',
                        style: AppStyles.styleReguler30(context)
                            .copyWith(fontSize: 32),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomSaluhContainer(
                            saluhName: state.prayerTimes
                                .nextPrayer()
                                .name
                                .toUpperCase(),
                            saluhTime: '',
                          ),
                          Column(
                            children: [
                              Text(
                                ' الصلاة القادمة',
                                style: AppStyles.styleReguler30(context),
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
          } else {
            return Center(
              child: Text(
                'خطاء ',
                style: AppStyles.styleReguler30(context),
              ),
            );
          }
        },
      ),
    );
  }
}
