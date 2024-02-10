import 'package:flutter/material.dart';
import 'package:reface/shared/shared.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.dirtyWhite,
        body: SafeArea(
          child: Column(
            children: [
              Text('Home Screen'),
            ],
          ),
        ));
  }
}
