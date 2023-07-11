
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:task_inova/features/training_series/data/models/coach_model.dart';
import 'package:task_inova/features/training_series/data/models/series_overview.dart';
import 'package:task_inova/features/training_series/data/repo/series_repo.dart';
part 'series_state.dart';


class SeriesCubit extends Cubit<SeriesState> {
  final SeriesRepo seriesRepo;


  SeriesCubit(this.seriesRepo) : super(SeriesInitial());
  SeriesOverViewModel? seriesOverView;

  int category =1;
  setCategory(int categoryNum) {
    category = categoryNum;
    emit(SeriesSetCategorySuccess());
  }


}
