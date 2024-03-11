import 'package:bloc/bloc.dart';
import 'package:jhijri/_src/_jHijri.dart';
import 'package:jhijri/jHijri.dart';
import 'package:meta/meta.dart';

part 'date_state.dart';

class DateCubit extends Cubit<DateState> {
  DateCubit() : super(DateInitial());
  getHijiryDate() {
    HijriDate todayHijriDate = HijriDate.now();
    String dayName = todayHijriDate.dayName;
    String day = "${todayHijriDate.day}";
    String month = todayHijriDate.monthName;
    String year = todayHijriDate.dayName;
    emit(DateSuccess(
      day: day,
      dayName: dayName,
      month: month,
      year: year,
    ));
  }
}
