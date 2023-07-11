part of 'series_cubit.dart';


@immutable
abstract class SeriesState {}

class SeriesInitial extends SeriesState {}


class SeriesLoading extends SeriesState {}
class SeriesSetCategorySuccess extends SeriesState {

}


class SeriesFailure extends SeriesState {
  final String error;
  SeriesFailure({required this.error});
}

