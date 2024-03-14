import 'package:adhan/src/prayer_times.dart';
import 'package:azkar/features/saluh/data/controller/saluh_cubit/saluh_cubit.dart';
import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class SalahTimeContainer extends StatelessWidget {
  const SalahTimeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaluhCubit, SaluhState>(builder: (context, state) {
      if (state is SaluhPrayerTimes) {
        final prayerTimes = state.prayerTimes;
        
        return Container(
          decoration: const BoxDecoration(
            borderRadius:  BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10,),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomSaluhTimeItem(
                    name: 'الفجْر',
                    time:  '${DateFormat.jm().format(prayerTimes.fajr)}',
                  ),
                  CustomSaluhTimeItem(
                    name: 'الظُّهْر',
                    time: '${DateFormat.jm().format(prayerTimes.dhuhr)}',
                  ),
                  CustomSaluhTimeItem(
                    name: 'العَصر',
                    time: '${DateFormat.jm().format(prayerTimes.asr)}',
                  ),
                  CustomSaluhTimeItem(
                    name: 'المَغرب',
                    time: '${DateFormat.jm().format(prayerTimes.maghrib)}',
                  ),
                  CustomSaluhTimeItem(
                    name: 'العِشاء',
                    time: '${DateFormat.jm().format(prayerTimes.isha)}',
                  ),
                ],
              ),
            ),
          ),
        );
      } else {
        return SizedBox();
      }
    });
  }
}

class CustomSaluhTimeItem extends StatelessWidget {
  const CustomSaluhTimeItem({
    super.key, required this.name, required this.time,
  });

final String name , time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 70,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xff747264)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
             name,
              style: AppStyles.styleBold18(context).copyWith(
                color: Colors.white,
              ),
            ),
           const SizedBox(height: 5,),
            Text(
              time,
              style: AppStyles.styleBold18(context).copyWith(color: Colors.white)
            ),
           
          ],
        ),
      ),
    );
  }
}
