import 'package:flutter/material.dart';

class RadioSliderTick extends RoundSliderTickMarkShape{

  @override
  Size getPreferredSize({
    required SliderThemeData sliderTheme,
    required bool isEnabled,
  }) {
    assert(sliderTheme != null);
    assert(sliderTheme.trackHeight != null);
    assert(isEnabled != null);
    // The tick marks are tiny circles. If no radius is provided, then the
    // radius is defaulted to be a fraction of the
    // [SliderThemeData.trackHeight]. The fraction is 1/4.
    return Size.fromRadius(tickMarkRadius ?? sliderTheme.trackHeight! / 100);
  }

  @override
  void paint(
      PaintingContext context,
      Offset center, {
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required Animation<double> enableAnimation,
        required TextDirection textDirection,
        required Offset thumbCenter,
        required bool isEnabled,
      }) {
    assert(context != null);
    assert(center != null);
    assert(parentBox != null);
    assert(sliderTheme != null);
    assert(sliderTheme.disabledActiveTickMarkColor != null);
    assert(sliderTheme.disabledInactiveTickMarkColor != null);
    assert(sliderTheme.activeTickMarkColor != null);
    assert(sliderTheme.inactiveTickMarkColor != null);
    assert(enableAnimation != null);
    assert(textDirection != null);
    assert(thumbCenter != null);
    assert(isEnabled != null);

    final Canvas canvas = context.canvas;
    final rectangle = Rect.fromCenter(center: center, width: 1, height: 15);
    final Paint paint = Paint()..color = Colors.redAccent;

    canvas.drawRect(rectangle, paint);
  }
}
