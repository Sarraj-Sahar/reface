import 'package:flutter/material.dart';
import 'package:reface/features/excercise/widgets/repetition_card.dart';
import 'package:reface/shared/theme/app_colors.dart';
import 'package:reface/shared/theme/app_sizes.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../widgets/progress_card.dart';

class ExcerciseProgressView extends StatefulWidget {
  const ExcerciseProgressView({super.key});

  @override
  State<ExcerciseProgressView> createState() => _ExcerciseProgressViewState();
}

class _ExcerciseProgressViewState extends State<ExcerciseProgressView> {
  @override
  Widget build(BuildContext context) {
    Dimensions(context);
    return Container(
        width: Dimensions.screenWidth! * 100,
        height: Dimensions.screenHeight! * 25,
        color: Colors.white,
        padding: EdgeInsets.symmetric(
            vertical: Dimensions.screenHeight! * 0.2,
            horizontal: Dimensions.screenWidth! * 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //IntrinsicHeight allows the children of the row to know the height of their parent and take up the same height
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Excercises and Series
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProgressCard(),
                      SizedBox(
                        height: Dimensions.screenHeight! * 1,
                      ),
                      ProgressCard()
                    ],
                  ),

                  //Repetitions
                  RepetitionCard(),
                ],
              ),
            ),

            //progressbar
            Padding(
              padding: EdgeInsets.only(left: Dimensions.screenWidth! * 3),
              child: Text(
                "Overall Progress",
                style: TextStyle(fontSize: Dimensions.screenHeight! * 2),
              ),
            ),
            LinearPercentIndicator(
              width: Dimensions.screenWidth! * 90,
              lineHeight: Dimensions.screenHeight! * 1.5,
              percent: 0.5,
              barRadius: Radius.circular(10),
              backgroundColor: AppColors.extraLightGrey,
              progressColor: AppColors.primary,
            ),
          ],
        ));
  }
}
