import 'package:b_radio/UI/Widgets/Radio_Widgets/Radio_Custom_Knob/radio_knob_line.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class RadioKnob extends StatefulWidget {

  // Define the parameters of this widget
  final double value;
  final double min;
  final double max;

  // Two extra parameters to make the widget more easy to customise
  final double size;
  final Color color;

  // ValueChanged is a type built into Dart for a function that changes a value
  final ValueChanged<double> onChanged;

  // Define a build method for the widget which uses these parameters
  RadioKnob({required this.value, this.min = 0, this.max = 1, this.color = Colors.blue, this.size = 10, required this.onChanged});

  @override
  State<StatefulWidget> createState() => KnobState();
}

class KnobState extends State<RadioKnob> {

  // These are static constants because they are in internal parameters of the knob that
  // can't be changed from the outside
  static const double minAngle = -120;
  static const double maxAngle = 120;
  static const double sweepAngle = maxAngle - minAngle;

  @override
  Widget build(BuildContext context) {
    // distanceToAngle now depends on potentially non-constant parameters,
    // so must be defined in the build method
    double distanceToAngle = 0.007 * (widget.max - widget.min);

    double _normalisedValue = (widget.value - widget.min)/(widget.max - widget.min);
    double _angle = (minAngle + _normalisedValue * sweepAngle) * 2 * pi / 360;
    double size = widget.size;
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: GestureDetector(
          onVerticalDragUpdate: (DragUpdateDetails details) {
            double changeInY = -details.delta.dy;
            double changeInValue = distanceToAngle * changeInY;
            double newValue = widget.value + changeInValue;
            double clippedValue = min(max(newValue, widget.min), widget.max);

            widget.onChanged(clippedValue);
          },
          child: Transform.rotate(
            angle: _angle,
            child: Image.asset('./Resources/Images/knobs/Knob.png', width: 200,),
          ),
        ),
      ),
    );
  }
}