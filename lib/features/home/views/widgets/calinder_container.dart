import 'package:azkar/features/home/data/controller/date_cubit/date_cubit.dart';
import 'package:azkar/utils/app_style.dart';
import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ClenderContainer extends StatelessWidget {
  const ClenderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String monthName = DateFormat('MMMM').format(now);
    int dayOfMonth = now.day;

    return BlocBuilder<DateCubit, DateState>(
      builder: (context, state) {
        if (state is DateSuccess) {
          final String day = state.day;
          final String dayName = state.dayName;
          final String month = state.month;
          // final String year = state.year;

          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              // border: Border.all(
              //   color: kDividerColor,
              //   width: .5,
              // ),
              //    image: const DecorationImage(
              //   image: AssetImage('assets/images/clinder_backround.jpg'),
              //   fit: BoxFit.fill,
              // ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    dayName,
                    style: AppStyles.styleReguler30(context),
                  ),
                ),
                Divider(
                  color: kDividerColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('$dayOfMonth',
                            style: AppStyles.styleReguler20(context)),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * .3,
                          child: Divider(
                            color: kDividerColor,
                          ),
                        ),
                        Text(monthName,
                            style: AppStyles.styleReguler20(context)),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      child: VerticalDivider(
                        thickness: 1,
                        color: kDividerColor,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          day,
                          style: AppStyles.styleReguler20(context),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * .3,
                          child: Divider(
                            color: kDividerColor,
                          ),
                        ),
                        Text(
                          month,
                          style: AppStyles.styleReguler20(context),
                        ),
                      ],
                    ),
                  ],
                ),
               
              ],
            ),
          );
        } else {
          return SizedBox();
        }
      },
    );
  }
}
