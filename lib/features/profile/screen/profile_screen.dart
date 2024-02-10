import 'package:flutter/material.dart';
import 'package:reface/shared/shared.dart';
import 'package:reface/shared/widgets/screen_title.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Dimensions(context); //initializing context

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(Dimensions.screenHeight! * 5),
        child: Column(
          children: [ScreenTitle(title: "Profile")],
        ),
      ),
    );
  }
}
