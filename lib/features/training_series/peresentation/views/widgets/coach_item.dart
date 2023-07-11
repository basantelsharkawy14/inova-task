import 'package:flutter/material.dart';
import 'package:task_inova/features/training_series/data/models/coach_model.dart';

class CoahItem extends StatelessWidget {
  const CoahItem(
      {Key? key,
      required this.coach})
      : super(key: key);

  final CoachModel coach;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
   //     color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child:        Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          offset: const Offset(1.1, 4.0),
                          blurRadius: 8.0),
                    ],
                  ),
                  child:  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(coach.image),
                  ),
                ),
              ),
              SizedBox(
                width: size.width * .03,
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Instructor",
                          style: TextStyle(
                              color: Colors.grey,
                              //   height:  size.height*0.002,
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                         coach.coachName,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: size.height * 0.014,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * .007,
                    ),

                  ],
                ),
              ),
              SizedBox(
                width: size.width * .02,
              ),
            ],
          ),
          Text(
            coach.description,
            style: TextStyle(
              color: Colors.grey,
              fontSize: size.height * 0.014,
            ),
          ),
        ],
      ),
    );
  }
}
