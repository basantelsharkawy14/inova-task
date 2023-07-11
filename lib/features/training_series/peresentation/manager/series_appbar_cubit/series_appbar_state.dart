part of 'series_appbar_cubit.dart';


@immutable
abstract class SeriesAppbarState {}

class SeriesAppbarInitial extends SeriesAppbarState {}


class SeriesAppbarLoading extends SeriesAppbarState {}
class SeriesAppbarSuccess extends SeriesAppbarState {
  final SeriesOverViewModel seriesOverView;
  SeriesAppbarSuccess({required this.seriesOverView});

}


class SeriesAppbarFailure extends SeriesAppbarState {
  final String error;
  SeriesAppbarFailure({required this.error});
}

