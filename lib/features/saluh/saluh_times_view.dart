import 'package:azkar/features/home/data/controller/saluh_cubit/saluh_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:adhan/adhan.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaluhTimesView extends StatelessWidget {
  const SaluhTimesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaluhCubit, SaluhState>(
      builder: (context, state) {
        if (state is SaluhPrayerTimes){
          final prayerTimes = state.prayerTimes;
          return Center(child: Text(prayerTimes.asr.toString()),);
        }
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('ahmed')],
        );
      },
    );
    ;
  }
}
