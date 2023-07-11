import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_inova/features/training_series/peresentation/manager/series_overview_cubit/series_overview_cubit.dart';

import 'coach_item.dart';


class CoachList extends StatelessWidget {
  const CoachList({
  super.key,
  });


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return   BlocBuilder<SeriesOverViewCubit, SeriesOverViewState>(
    builder: (context, state) {

if(state is SeriesOverViewSuccess) {
  return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: size.width * .06),

      itemCount: state.coaches.length,
      itemBuilder: (context, index) =>
          CoahItem(
           coach: state.coaches[index],
          )
  );
}else{
  return CircularProgressIndicator();
}

    });
  }
}