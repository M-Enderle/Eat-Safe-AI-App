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

final ValueNotifier<double> _valueNotifier = ValueNotifier(0);

class _DisplayNumberWidgetState extends State<DisplayNumberWidget> {
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
  void didUpdateWidget(DisplayNumberWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.number != widget.number) {
      // Add 5 to the number to ensure a minimum display
      _valueNotifier.value = (widget.number + 5).toDouble();
    }
  }

  @override
  void initState() {
    super.initState();
    // Add 5 to the initial number to ensure a minimum display
    _valueNotifier.value = (widget.number + 5).toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: ValueListenableBuilder<double>(
        valueListenable: _valueNotifier,
        builder: (context, value, _) {
          // Pass the original value (without the +5 offset) to getProgressColor
          final progressColor = getProgressColor(widget.number);

          return DashedCircularProgressBar.aspectRatio(
            aspectRatio: 1,
            valueNotifier: _valueNotifier,
            // Use the offset value for progress
            progress: value,
            // Set maxProgress to 105
            maxProgress: 105,
            startAngle: 225,
            sweepAngle: 270,
            foregroundColor: progressColor,
            backgroundColor: const Color(0xffeeeeee),
            foregroundStrokeWidth: 15,
            backgroundStrokeWidth: 15,
            animation: true,
            seekSize: 6,
            seekColor: const Color(0xffeeeeee),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    // Display the original number (without the +5 offset)
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
