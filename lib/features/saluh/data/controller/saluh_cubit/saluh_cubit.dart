import 'package:adhan/adhan.dart';
import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'saluh_state.dart';

class SaluhCubit extends Cubit<SaluhState> {
  SaluhCubit() : super(SaluhInitial());

  getSaluhTime() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    emit(SaluhLoding());
    Position position;
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    permission = await Geolocator.checkPermission();
    if (sharedPreferences.getDouble('longitude') != null) {
      final myCoordinates = Coordinates(
          sharedPreferences.getDouble('altitude')!,
          sharedPreferences.getDouble('longitude')!);
      final params = CalculationMethod.karachi.getParameters();
      params.madhab = Madhab.hanafi;
      final prayerTimes = PrayerTimes.today(myCoordinates, params);
      emit(SaluhPrayerTimes(prayerTimes));
      return;
    }
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        emit(SaluhLocationDenied());
      }
    }
    if (permission == LocationPermission.whileInUse) {
      position = await Geolocator.getCurrentPosition();

      double latitude = position.latitude;
      double longitude = position.longitude;
      sharedPreferences.setDouble('altitude', latitude);
      sharedPreferences.setDouble('longitude', longitude);

      ////////////////get prayerTimes ////////////////////////////

      final myCoordinates = Coordinates(latitude, longitude);
      final params = CalculationMethod.karachi.getParameters();
      params.madhab = Madhab.hanafi;
      final prayerTimes = PrayerTimes.today(myCoordinates, params);
      emit(SaluhPrayerTimes(prayerTimes));
    }
  }
}
