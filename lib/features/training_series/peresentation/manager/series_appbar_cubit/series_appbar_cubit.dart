
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_inova/features/training_series/data/models/series_overview.dart';
import 'package:task_inova/features/training_series/data/repo/series_repo.dart';

import '../series_cubit/series_cubit.dart';
part 'series_appbar_state.dart';


class SeriesAppbarCubit extends Cubit<SeriesAppbarState> {
  final SeriesRepo seriesRepo;


  SeriesAppbarCubit(this.seriesRepo) : super(SeriesAppbarInitial());
  SeriesOverViewModel? seriesOverView;
  getSeriesOverView() async {
    emit(SeriesAppbarLoading());
    var result = await seriesRepo
        .fetchSeriesOverView();
    result.fold((failure) {
      debugPrint(failure.errMessage+"kkkkkkkkkkkkkkk");
      emit(SeriesAppbarFailure(error: failure.errMessage,));
    }, (data) {
seriesOverView = data;
      emit(SeriesAppbarSuccess(seriesOverView: data));
    });
  }


changeCategory(int category,context){
  BlocProvider.of<SeriesCubit>(context).setCategory(category);

  emit(SeriesAppbarSuccess(seriesOverView: seriesOverView!));

}
}
