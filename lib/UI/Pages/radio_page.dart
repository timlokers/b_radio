import 'package:b_radio/UI/Widgets/Radio_Widgets/Radio_Custom_Slider/radio_slider_shape.dart';
import 'package:b_radio/UI/Widgets/Radio_Widgets/Radio_Custom_Slider/radio_slider_tick.dart';
import 'package:b_radio/UI/Widgets/Radio_Widgets/Radio_Custom_Slider/radio_slider_track.dart';
import 'package:b_radio/UI/Widgets/Radio_Widgets/Radio_Custom_Knob/radio_knob.dart';
import 'package:b_radio/UI/Widgets/Radio_Widgets/Radio_Display/radio_display.dart';
import 'package:b_radio/UI/Widgets/Radio_Widgets/radio_bitrate_knob.dart';
import 'package:b_radio/UI/Widgets/Radio_Widgets/radio_speaker.dart';
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
              child: Container(
                padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      child: RadioBitrateKnob(),
                    ) ,//Bitrate control section
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: RadioDisplay(),
                    ), //Display section
                    Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      child: RadioKnob(
                          value: _value,
                          onChanged: _setValue,
                          min: minValue,
                          max: maxValue,
                          size: 250),
                    ), //Station knob section
                  ],
                ),
              ),
          ), //Display and control section
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
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
            child: RadioSpeaker(),
            height: MediaQuery.of(context).size.height * 0.55,
            color: Colors.deepOrangeAccent,
          ), //Speaker section
        ],
      ),
    );
  }
}
