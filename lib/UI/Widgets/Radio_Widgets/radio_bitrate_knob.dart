import 'package:flutter/material.dart';

class RadioBitrateKnob extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _RadioBitrateKnob();

}

class _RadioBitrateKnob extends State<RadioBitrateKnob>{
  @override
  Widget build(BuildContext context) {
return Container(
  height: double.infinity ,
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
        child: Image.asset(
          './Resources/Images/knobs/KnobBitrate_0_mini.png',
          alignment: const Alignment(1, -0.2),
        ),
      );
  }

}