import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_inova/core/errors/failures.dart';
import 'package:task_inova/features/training_series/data/models/coach_model.dart';
import 'package:task_inova/features/training_series/data/models/series_overview.dart';
import 'package:task_inova/features/training_series/data/repo/series_repo.dart';

import '../models/coach_json.dart';
import '../models/series_json.dart';

class SeriesRepoImpl implements SeriesRepo {

  SeriesRepoImpl();

  @override
  Future<Either<Failure, SeriesOverViewModel>> fetchSeriesOverView()async {
    try {
      SeriesOverViewModel seriesOverView = SeriesOverViewModel.fromJson(data);
      return right(seriesOverView);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<CoachModel>>> fetchCoaches() async{
    try {
      List<CoachModel> coaches = List<CoachModel>.from(
          dataCoach.map((value) => CoachModel.fromJson(value)));
      return right(coaches);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}