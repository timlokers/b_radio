import 'package:flutter/material.dart';

class RadioSliderShape extends SliderComponentShape {

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size.fromRadius(0);
  }

  @override
  void paint(
      PaintingContext context,
      Offset center, {
        required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        required bool isDiscrete,
        required TextPainter labelPainter,
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required TextDirection textDirection,
        required double value,
        required double textScaleFactor,
        required Size sizeWithOverflow,
      }) {
    final Canvas canvas = context.canvas;

    final rectangle = Rect.fromCenter(center: center, width: 10, height: 20);

    final fillPaint = Paint()
      ..color = Colors.redAccent
      ..style = PaintingStyle.fill;

    canvas.drawRect(rectangle, fillPaint);
  }
}