import 'package:b_radio/UI/Widgets/Radio_Widgets/Radio_Custom_Slider/radio_slider_shape.dart';
import 'package:b_radio/UI/Widgets/Radio_Widgets/Radio_Custom_Slider/radio_slider_tick.dart';
import 'package:b_radio/UI/Widgets/Radio_Widgets/Radio_Custom_Slider/radio_slider_track.dart';
import 'package:b_radio/UI/Widgets/Radio_Widgets/Radio_Custom_Knob/radio_knob.dart';
import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  double _value = 0.0;

  void _setValue(double value) => setState(() => _value = value);
  static const double minValue = 0;
  static const double maxValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            color: Colors.blue,
              child: Container(
                padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      color: Colors.blueGrey,
                    ) ,//Bitrate control section
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      color: Colors.purple,
                    ), //Display section
                    Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      color: Colors.blueGrey,
                      child: RadioKnob(
                          value: _value,
                          color: Colors.grey,
                          onChanged: _setValue,
                          min: minValue,
                          max: maxValue,
                          size: 100),
                    ), //Station knob section
                  ],
                ),
              ),
          ), //Display and control section
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            color: Colors.amberAccent,
            child: SliderTheme(
              data: SliderThemeData(
                  tickMarkShape: RadioSliderTick(),
                  trackHeight: 20.0,
                  trackShape: RadioSliderTrack(),
                  thumbShape: RadioSliderShape()),
              child: Slider(
                divisions: 100,
                min: 0,
                max: 100,
                thumbColor: Colors.redAccent,
                activeColor: Colors.black45,
                inactiveColor: Colors.black45,
                value: _value,
                onChanged: (val) {
                  _value = val;
                  setState(() {});
                },
              ),
            ),
          ), //Frequency beam section
          Container(
            height: MediaQuery.of(context).size.height * 0.55,
            color: Colors.deepOrangeAccent,
          ), //Speaker section
        ],
      ),
    );
  }
}
