import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
        padding: EdgeInsets.all(Dimensions.screenHeight! * 1.5),
        child: Card(
          elevation: 2,
          child: ListTile(
            title: Text(
              excerciseModel.title,
              style: TextStyle(fontSize: Dimensions.screenHeight! * 2.2),
            ),
          ),
        ),
      ),
    );
  }
}
