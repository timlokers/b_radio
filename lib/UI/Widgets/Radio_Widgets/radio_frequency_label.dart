import 'package:flutter/material.dart';

class RadioFrequencyLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      './Resources/Images/frequency_label.png',
      width: MediaQuery.of(context).size.height * 0.8,
    );
  }
}
