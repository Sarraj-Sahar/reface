import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_mlkit_commons/google_mlkit_commons.dart';
import 'package:reface/shared/theme/app_sizes.dart';
import 'done_camera_view.dart';
import 'done_excercise_progress_view.dart';

enum DetectorViewMode { liveFeed, gallery }

class DoneDetectorView extends StatefulWidget {
  DoneDetectorView({
    Key? key,
    required this.title,
    required this.onImage,
    this.customPaint,
    this.text,
    this.initialDetectionMode = DetectorViewMode.liveFeed,
    this.initialCameraLensDirection = CameraLensDirection.back,
    this.onCameraFeedReady,
    this.onDetectorViewModeChanged,
    this.onCameraLensDirectionChanged,
  }) : super(key: key);

  final String title;
  final CustomPaint? customPaint;
  final String? text;
  final DetectorViewMode initialDetectionMode;
  final Function(InputImage inputImage) onImage;
  final Function()? onCameraFeedReady;
  final Function(DetectorViewMode mode)? onDetectorViewModeChanged;
  final Function(CameraLensDirection direction)? onCameraLensDirectionChanged;
  final CameraLensDirection initialCameraLensDirection;

  @override
  State<DoneDetectorView> createState() => _DetectorViewState();
}

class _DetectorViewState extends State<DoneDetectorView> {
  late DetectorViewMode _mode;

  @override
  void initState() {
    _mode = widget.initialDetectionMode;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Dimensions(context);
    return _mode == DetectorViewMode.liveFeed
        ? Scaffold(
            body: Column(
              children: [
                //camera view part
                Flexible(
                  child: DoneCameraView(
                    customPaint: widget.customPaint,
                    onImage: widget.onImage,
                    onCameraFeedReady: widget.onCameraFeedReady,
                    onDetectorViewModeChanged: _onDetectorViewModeChanged,
                    initialCameraLensDirection:
                        widget.initialCameraLensDirection,
                    onCameraLensDirectionChanged:
                        widget.onCameraLensDirectionChanged,
                  ),
                ),

                const DoneExcerciseProgressView(),
              ],
            ),
          )
        : Container(
            child: Text("Camera View not working !"),
          );
  }

  void _onDetectorViewModeChanged() {
    if (_mode == DetectorViewMode.liveFeed) {
      _mode = DetectorViewMode.gallery;
    } else {
      _mode = DetectorViewMode.liveFeed;
    }
    if (widget.onDetectorViewModeChanged != null) {
      widget.onDetectorViewModeChanged!(_mode);
    }
    setState(() {});
  }
}
