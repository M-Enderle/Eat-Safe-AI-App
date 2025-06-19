// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';

class DisplayNumberWidget extends StatefulWidget {
  const DisplayNumberWidget({
    Key? key,
    this.number = 0,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double number;
  final double width;
  final double height;

  @override
  _DisplayNumberWidgetState createState() => _DisplayNumberWidgetState();
}

class _DisplayNumberWidgetState extends State<DisplayNumberWidget>
    with SingleTickerProviderStateMixin {
  // Make _valueNotifier an instance member
  late ValueNotifier<double> _valueNotifier;
  late AnimationController _animationController;
  late Animation<double> _animation;

  Color getProgressColor(double value) {
    final clampedValue = value.clamp(0.0, 100.0);
    final normalizedValue = clampedValue / 100.0;

    // Define pastel color stops (from red to green)
    const Color pastelRed = Color(0xFFFF6961); // 0%
    const Color pastelOrange = Color(0xFFFFB54C); // 25%
    const Color crayolaYellow = Color(0xFFF8D66D); // 50%
    const Color iguanaGreen = Color(0xFF7ABD7E); // 75%
    const Color pistachio = Color(0xFF8CD47E); // 100%

    if (normalizedValue <= 0.25) {
      return Color.lerp(pastelRed, pastelOrange, normalizedValue / 0.25)!;
    } else if (normalizedValue <= 0.5) {
      return Color.lerp(
          pastelOrange, crayolaYellow, (normalizedValue - 0.25) / 0.25)!;
    } else if (normalizedValue <= 0.75) {
      return Color.lerp(
          crayolaYellow, iguanaGreen, (normalizedValue - 0.5) / 0.25)!;
    } else {
      return Color.lerp(
          iguanaGreen, pistachio, (normalizedValue - 0.75) / 0.25)!;
    }
  }

  @override
  void initState() {
    super.initState();
    _valueNotifier = ValueNotifier<double>((widget.number + 5).toDouble());

    // Initialize AnimationController for explicit animation
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000), // Adjust animation duration
    );

    _animation = Tween<double>(
      begin: 0, // Start animation from 0 or a previous value
      end: (widget.number + 5).toDouble(),
    ).animate(_animationController)
      ..addListener(() {
        _valueNotifier.value = _animation.value;
      });

    _animationController.forward();
  }

  @override
  void didUpdateWidget(DisplayNumberWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.number != widget.number) {
      // Update the animation target and restart animation
      _animation = Tween<double>(
        begin: _valueNotifier.value, // Start from current displayed value
        end: (widget.number + 5).toDouble(),
      ).animate(_animationController);
      _animationController
        ..reset()
        ..forward();
    }
  }

  @override
  void dispose() {
    _valueNotifier.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: ValueListenableBuilder<double>(
        valueListenable: _valueNotifier,
        builder: (context, value, _) {
          final progressColor = getProgressColor(widget.number);

          return DashedCircularProgressBar.aspectRatio(
            aspectRatio: 1,
            valueNotifier: _valueNotifier,
            progress: value, // Use the animated value
            maxProgress: 105,
            startAngle: 225,
            sweepAngle: 270,
            foregroundColor: progressColor,
            backgroundColor: const Color(0xffeeeeee),
            foregroundStrokeWidth: 15,
            backgroundStrokeWidth: 15,
            // animation: true, // Not needed when using an explicit AnimationController
            seekSize: 6,
            seekColor: const Color(0xffeeeeee),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${widget.number.toInt()}%',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 45,
                    ),
                  ),
                  const Text(
                    'Compatibility Score',
                    style: TextStyle(
                      color: Color.fromARGB(255, 121, 121, 121),
                      fontWeight: FontWeight.w400,
                      fontSize: 9,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
