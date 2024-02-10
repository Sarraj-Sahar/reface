import 'package:flutter/material.dart';
import 'package:reface/features/excercises_list/data/excercises_data.dart';
import 'package:reface/features/excercises_list/widgets/excercise_card.dart';
import 'package:reface/shared/shared.dart';
import 'package:reface/shared/widgets/screen_title.dart';

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
        padding: EdgeInsets.all(Dimensions.screenHeight! * 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ScreenTitle(title: "Today's Excercises"),
            ListView.builder(
              shrinkWrap: true,
              itemCount: excercisesList.length,
              itemBuilder: ((context, index) {
                return ExcerciseItem(
                  key: Key('$index'),
                  excerciseModel: excercisesList[index],
                );
              }),
            ),

            // add capsule shaped button
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Start Now",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
