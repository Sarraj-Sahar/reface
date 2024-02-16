import 'package:flutter/material.dart';
import 'package:reface/shared/shared.dart';
import 'package:percent_indicator/percent_indicator.dart';

class RepetitionCard extends StatelessWidget {
  const RepetitionCard({super.key});

  @override
  Widget build(BuildContext context) {
    Dimensions(context);
    return SizedBox(
      width: Dimensions.screenWidth! * 50,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(width: 0.5, color: AppColors.lightGrey),
        ),
        color: Colors.white,
        surfaceTintColor: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: Dimensions.screenHeight! * 1, horizontal: 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.screenWidth! * 2,
                    bottom: Dimensions.screenHeight! * 0.2),
                child: const Text(
                    "Repetitions: "), //TODO: move const text to strings.dart
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //circualr progress indicator
                  CircularPercentIndicator(
                    circularStrokeCap: CircularStrokeCap.round,
                    radius: Dimensions.screenWidth! * 8,
                    lineWidth: 5.0,
                    //@ahmed_chelly : u change values of progress of excercise screen here
                    percent: 0.1,
                    center: const Text("10%"),
                    progressColor: AppColors.primary,
                  ),

                  //Value
                  const Text(
                    "1/10",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
