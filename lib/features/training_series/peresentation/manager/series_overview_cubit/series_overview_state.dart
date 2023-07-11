part of 'series_overview_cubit.dart';


@immutable
abstract class SeriesOverViewState {}

class SeriesOverViewInitial extends SeriesOverViewState {}


class SeriesOverViewLoading extends SeriesOverViewState {}
class SeriesOverViewSuccess extends SeriesOverViewState {
  final List<CoachModel> coaches;
  SeriesOverViewSuccess({required this.coaches});

}


class SeriesOverViewFailure extends SeriesOverViewState {
  final String error;
  SeriesOverViewFailure({required this.error});
}

