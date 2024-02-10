import 'package:flutter/material.dart';
import 'package:reface/shared/shared.dart';
import 'package:reface/shared/widgets/screen_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Dimensions(context); //initializing context

    return Scaffold(
        backgroundColor: AppColors.dirtyWhite,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Dimensions.screenHeight! * 5),
            child: Column(
              children: [ScreenTitle(title: "Home")],
            ),
          ),
        ));
  }
}
