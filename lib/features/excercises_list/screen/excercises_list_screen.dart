import 'package:flutter/material.dart';
import 'package:reface/features/excercise/screen/face_detector_view.dart';
import 'package:reface/features/excercises_list/data/excercises_data.dart';
import 'package:reface/features/excercises_list/widgets/excercise_card.dart';
import 'package:reface/shared/shared.dart';
import 'package:reface/shared/widgets/screen_title.dart';

import '../widgets/excercises_alert_dialog.dart';

class ExcercisesListScreen extends StatefulWidget {
  const ExcercisesListScreen({super.key});

  @override
  State<ExcercisesListScreen> createState() => _ExcercisesListScreenState();
}

class _ExcercisesListScreenState extends State<ExcercisesListScreen> {
  @override
  Widget build(BuildContext context) {
    Dimensions(context); //initializing context

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
            top: Dimensions.screenWidth! * 8,
            bottom: Dimensions.screenWidth! * 2,
            left: Dimensions.screenWidth! * 5,
            right: Dimensions.screenWidth! * 5),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ScreenTitle(title: "Today's Excercises"),
              const ExcercisesAlertDialog(
                  title: "This Session will take 30 minutes !"),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: excercisesList.length,
                itemBuilder: ((context, index) {
                  return ExcerciseItem(
                    key: Key('$index'),
                    excerciseModel: excercisesList[index],
                  );
                }),
              ),

              //TODO: move button to a separate widget
              Container(
                padding: EdgeInsets.only(
                  top: Dimensions.screenHeight! * 1,
                ),
                width: Dimensions.screenWidth! * 80,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FaceDetectorView()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "Start Now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
