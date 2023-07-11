import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletons/skeletons.dart';
import 'package:task_inova/core/utils/styles.dart';

import '../../manager/series_appbar_cubit/series_appbar_cubit.dart';
import '../../manager/series_cubit/series_cubit.dart';

class SeriesAppBar extends StatelessWidget {
  const SeriesAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder<SeriesAppbarCubit, SeriesAppbarState>(
        builder: (context, state) {
      if (state is SeriesAppbarSuccess) {
        return SliverAppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          expandedHeight: size.height * .62,
          pinned: true,
          snap: true,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            // title: Te xt('Goa', textScaleFactor: 1),
            background: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: size.height * .21),
                      //     padding:  EdgeInsets.only(left: 28.0,right: 28,top: 20,bottom: size.height * .21),
                      child: ClipRRect(
                        //    borderRadius:  BorderRadius.circular(20),
                        child: CachedNetworkImage(
                          imageUrl:
                              state.seriesOverView.image,
                          fit: BoxFit.fill,
                          height: size.height * .52,
                          width: size.width,
                          placeholder: (context, url) => SkeletonAvatar(
                            style: SkeletonAvatarStyle(
                              width: size.width,
                              height: size.height * .52,
                              borderRadius: BorderRadius.circular(20),
                              // padding:  const EdgeInsets.symmetric(
                              //     vertical: 5.0, horizontal: 5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 12),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                  ],
                ),
              ],
            ),
          ),
          bottom: AppBar(
            toolbarHeight: size.height * .2,
            elevation: 0,
            scrolledUnderElevation: 0.0,
            bottomOpacity: 0.0,
            backgroundColor: Colors.white,
            title: Column(
              children: [
                Center(
                    child: Text(
                  state.seriesOverView.name,
                  textScaleFactor: 1,
                  style: TextStyle(
                      color: Colors.black, fontSize: size.width * .07),
                )),
                Center(
                    child: Text(
                        state.seriesOverView.coachName,
                  textScaleFactor: 1,
                  style:
                      TextStyle(color: Colors.grey, fontSize: size.width * .05),
                )),
                SizedBox(
                  height: size.height * .02,
                ),

                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        BlocProvider.of<SeriesAppbarCubit>(context).changeCategory(1,context);
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal:size.width * .01 ),
                        padding: EdgeInsets.symmetric(horizontal:size.width * .03 ),

                        decoration:  BoxDecoration(
                          border: Border(
                            bottom: BorderSide( //                   <--- left side
                              color:   BlocProvider.of<SeriesCubit>(context).category ==1? Colors.black:Colors.transparent,
                              width: 3.0,
                            ),
                        )),
                        child: const Center(child: Text("OverView",style:Styles.textStyle18,)),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        BlocProvider.of<SeriesAppbarCubit>(context).changeCategory(2,context);

                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal:size.width * .01 ),
                        padding: EdgeInsets.symmetric(horizontal:size.width * .03 ),

                        decoration:  BoxDecoration(
                            border: Border(
                              bottom: BorderSide( //                   <--- left side
                                color:  BlocProvider.of<SeriesCubit>(context).category ==2? Colors.black:Colors.transparent,
                                width: 3.0,
                              ),
                            )),
                        child: const Center(child: Text("OverView",style:Styles.textStyle18,)),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        BlocProvider.of<SeriesAppbarCubit>(context).changeCategory(3,context);

                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal:size.width * .01 ),
                        padding: EdgeInsets.symmetric(horizontal:size.width * .03 ),

                        decoration:  BoxDecoration(
                            border: Border(
                              bottom: BorderSide( //                   <--- left side
                                color: BlocProvider.of<SeriesCubit>(context).category ==3? Colors.black:Colors.transparent,
                                width: 3.0,
                              ),
                            )),
                        child: const Center(child: Text("OverView",style:Styles.textStyle18,)),
                      ),
                    ),
                  ],
                )
              ],
            ),
            automaticallyImplyLeading: false,
          ),
        );
      } else {
        return SliverAppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          expandedHeight: size.height * .52,
          pinned: true,
          snap: true,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            // title: Te xt('Goa', textScaleFactor: 1),
            background: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: size.height * .21),
                  //     padding:  EdgeInsets.only(left: 28.0,right: 28,top: 20,bottom: size.height * .21),
                  child: ClipRRect(
                    //    borderRadius:  BorderRadius.circular(20),
                    child: CachedNetworkImage(
                      imageUrl:"",
                   //   "https://images.squarespace-cdn.com/content/v1/5d31ed671abe780001b2964d/1575931323456-NYTRRCWQEVSR6VH48Y6N/dancer+pose+yoga",
                      fit: BoxFit.fill,
                      height: size.height * .52,
                      width: size.width,
                      placeholder: (context, url) => SkeletonAvatar(
                        style: SkeletonAvatarStyle(
                          width: size.width,
                          height: size.height * .52,
                          borderRadius: BorderRadius.circular(20),
                          // padding:  const EdgeInsets.symmetric(
                          //     vertical: 5.0, horizontal: 5),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 12),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          bottom: AppBar(
            toolbarHeight: size.height * .2,
            elevation: 0,
            scrolledUnderElevation: 0.0,
            bottomOpacity: 0.0,
            backgroundColor: Colors.white,
            title: Column(
              children: [
                Center(
                    child: Text(
                      "",
                      textScaleFactor: 1,
                      style: TextStyle(
                          color: Colors.black, fontSize: size.width * .07),
                    )),
                Center(
                    child: Text(
                      "",
                      textScaleFactor: 1,
                      style:
                      TextStyle(color: Colors.grey, fontSize: size.width * .05),
                    )),
                SizedBox(
                  height: size.height * .02,
                ),
              ],
            ),
            automaticallyImplyLeading: false,
          ),
        );
      }
    });
  }
}
