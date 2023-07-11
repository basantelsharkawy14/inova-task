import 'package:flutter/material.dart';
import 'package:task_inova/features/training_series/peresentation/views/widgets/training_series_body.dart';

class TrainingSeriesView extends StatelessWidget {
  const TrainingSeriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TrainingSeriesBody(),
    );
  }
}
