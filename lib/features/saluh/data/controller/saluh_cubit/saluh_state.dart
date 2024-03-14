part of 'saluh_cubit.dart';

@immutable
sealed class SaluhState {}

final class SaluhInitial extends SaluhState {}
class SaluhPrayerTimes extends SaluhState {
  final PrayerTimes prayerTimes;
  

  SaluhPrayerTimes(this.prayerTimes);

  // @override
  // List<Object> get props => [prayerTimes];
}
