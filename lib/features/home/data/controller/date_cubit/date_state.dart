part of 'date_cubit.dart';

@immutable
sealed class DateState {}

final class DateInitial extends DateState {}

final class DateSuccess extends DateState {
  final String day, dayName, month, year;

  DateSuccess(
      {required this.day,
      required this.dayName,
      required this.month,
      required this.year});
}
