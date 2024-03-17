import 'package:adhan/adhan.dart';
import 'package:azkar/features/saluh/data/controller/saluh_cubit/saluh_cubit.dart';
import 'package:azkar/features/saluh/views/widgets/saluh_times_Items.dart';
import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SaluhTimesViewBody extends StatelessWidget {
  const SaluhTimesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaluhCubit, SaluhState>(
      builder: (context, state) {
        if (state is SaluhLoding) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SaluhPrayerTimes) {
          final prayerTimes = state.prayerTimes;
          Prayer next = prayerTimes.nextPrayer();

          return SaluhTimesItems(
            prayerTimes: prayerTimes,
            next: next,
          );
        } else if (state is SaluhLocationDenied) {
          return Center(
            child: Text(
              'يجب فتح اللوكيشن لعرض اةقات الصلاه ',
              style: AppStyles.styleReguler16(context)
                  .copyWith(color: kPrimaryColor),
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
    );
  }
}
