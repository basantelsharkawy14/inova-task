
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:task_inova/features/training_series/data/models/coach_model.dart';
import 'package:task_inova/features/training_series/data/models/series_overview.dart';
import 'package:task_inova/features/training_series/data/repo/series_repo.dart';
part 'series_overview_state.dart';


class SeriesOverViewCubit extends Cubit<SeriesOverViewState> {
  final SeriesRepo seriesRepo;


  SeriesOverViewCubit(this.seriesRepo) : super(SeriesOverViewInitial());
  SeriesOverViewModel? seriesOverView;
  getCoaches() async {
    emit(SeriesOverViewLoading());
    var result = await seriesRepo
        .fetchCoaches();
    result.fold((failure) {
      debugPrint(failure.errMessage+"kkkkkkkkkkkkkkk");
      emit(SeriesOverViewFailure(error: failure.errMessage,));
    }, (data) {

      emit(SeriesOverViewSuccess(coaches: data));
    });
  }



}
