import 'package:flutter/material.dart';
import 'package:reface/features/intro/widgets/video.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Video(
        url: 'assets/videos/bp.mp4', title: "Introduction video")
    );
  }
}
