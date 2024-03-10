import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationInitial());
  late Position position;
  Future<void> getCuruntLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
          if (permission == LocationPermission.denied) {
            print('denied');
          }
    }
     if (permission == LocationPermission.whileInUse) {
      print('whileInUse');
      position = await Geolocator.getCurrentPosition();
      print(position.altitude);
      print(position.longitude);
    }
  }
}
