import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationInitial());

  // double? longitude;
  // double? altitude;

  Future<void> getCuruntLocation() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    Position position;
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    permission = await Geolocator.checkPermission();
    if (sharedPreferences.getDouble('longitude') != null)  {
      return;
    }
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        print('denied');
      }
    }
    if (permission == LocationPermission.whileInUse) {
      // print('whileInUse');
      position = await Geolocator.getCurrentPosition();
     double latitude = position.latitude;
     double longitude = position.longitude;
      sharedPreferences.setDouble('altitude' , latitude);
      sharedPreferences.setDouble('longitude' , longitude);
      // print(latitude);
      // print(longitude);
    }
  }
}
