import 'package:flutter/material.dart';

class RadioSlider extends StatefulWidget {

  final double minValue;
  final double maxValue;
  final double value;

  RadioSlider(this.minValue, this.maxValue, this.value);

  @override
  State<RadioSlider> createState() => _RadioSliderState();
}

class _RadioSliderState extends State<RadioSlider> {
  double _value = 0.0;

  void _setValue(double value) => setState(() => _value = widget.value);

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _value,
      onChanged: _setValue,
      min: widget.minValue,
      max: widget.maxValue,
    );
  }
}