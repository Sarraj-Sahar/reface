import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reface/features/excercise/screen/face_detector_view.dart';
import 'package:reface/features/excercises_list/model/excercise_model.dart';
import 'package:reface/shared/theme/app_sizes.dart';

class ExcerciseItem extends ConsumerWidget {
  ExcerciseModel excerciseModel;
  ExcerciseItem({super.key, required this.excerciseModel});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Dimensions(context); //initializing context
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Dimensions.screenHeight! * 0.5),
        child: SizedBox(
          height: Dimensions.screenHeight! * 16,
          child: Card(
            surfaceTintColor: Colors.transparent,
            color: Colors.white,
            elevation: 2,
            child: ListTile(
              title: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: Dimensions.screenWidth! * 2.5,
                      ),
                      child: Image.asset(
                        excerciseModel.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //title
                          Text(
                            excerciseModel.title,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Dimensions.screenHeight! * 2.2),
                          ),
                          SizedBox(height: Dimensions.screenHeight! * 1),

                          //duration
                          //TODO: move this to a separate widget
                          Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                size: Dimensions.screenHeight! * 2,
                              ),
                              SizedBox(width: Dimensions.screenWidth! * 2),
                              Text(
                                excerciseModel.duration,
                                style: TextStyle(
                                    fontSize: Dimensions.screenHeight! * 1.5),
                              ),
                            ],
                          ),

                          //type
                          Row(
                            children: [
                              Icon(
                                Icons.info_outline,
                                size: Dimensions.screenHeight! * 2,
                              ),
                              SizedBox(width: Dimensions.screenWidth! * 2),
                              Text(
                                excerciseModel.type,
                                style: TextStyle(
                                    fontSize: Dimensions.screenHeight! * 1.5),
                              ),
                            ],
                          ),
                          SizedBox(height: Dimensions.screenHeight! * 1),

                          //series and repitions
                          Padding(
                            padding: EdgeInsets.only(
                                left: Dimensions.screenWidth! * 2),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: Dimensions.screenWidth! * 2),
                                  child: Icon(
                                    Icons.circle,
                                    size: Dimensions.screenHeight! * 1,
                                    color: Colors.green,
                                  ),
                                ),
                                Text(excerciseModel.series,
                                    style: TextStyle(
                                        fontSize:
                                            Dimensions.screenHeight! * 1.5)),
                                const Text("-"),
                                Text(excerciseModel.repetitions,
                                    style: TextStyle(
                                        fontSize:
                                            Dimensions.screenHeight! * 1.5)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
