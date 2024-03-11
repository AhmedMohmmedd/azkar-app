import 'package:adhan/adhan.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'saluh_state.dart';

class SaluhCubit extends Cubit<SaluhState> {
  SaluhCubit() : super(SaluhInitial());

   getSaluhTime() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    double altitude = sharedPreferences.getDouble('altitude')!;
    double longitude = sharedPreferences.getDouble('longitude')!;
    final myCoordinates = Coordinates(altitude, longitude);
    final params = CalculationMethod.karachi.getParameters();
    params.madhab = Madhab.hanafi;
    final prayerTimes = PrayerTimes.today(myCoordinates, params);
    emit(SaluhPrayerTimes(prayerTimes));
    print(prayerTimes.asr);
    print('///////////////////////////////');
    print(prayerTimes.maghrib);
  }
}
