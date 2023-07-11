import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletons/skeletons.dart';
import 'package:task_inova/features/training_series/peresentation/manager/series_cubit/series_cubit.dart';
import 'package:task_inova/features/training_series/peresentation/views/widgets/coaches_list.dart';
import 'package:task_inova/features/training_series/peresentation/views/widgets/series_app_bar.dart';

class TrainingSeriesBody extends StatelessWidget {
  const TrainingSeriesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return  BlocBuilder<SeriesCubit, SeriesState>(
        builder: (context, state)=>
            CustomScrollView(
        slivers: [
          const SeriesAppBar(),
          SliverList(
              delegate: SliverChildListDelegate(
                [
                  if(BlocProvider.of<SeriesCubit>(context).category == 1)
                  const CoachList()
                ],
              )),
        ],
      ),
    );
  }
}


