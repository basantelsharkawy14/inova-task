import 'package:dartz/dartz.dart';
import 'package:task_inova/core/errors/failures.dart';

import '../models/coach_model.dart';
import '../models/series_overview.dart';

abstract class SeriesRepo {
  Future<Either<Failure,SeriesOverViewModel>> fetchSeriesOverView();

  Future<Either<Failure,List<CoachModel>>> fetchCoaches();

}