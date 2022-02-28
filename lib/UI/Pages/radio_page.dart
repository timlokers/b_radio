import 'package:b_radio/Logic/Services/radiostreamservice.dart';
import 'package:b_radio/Logic/Services/streamservice.dart';
import 'package:b_radio/Model/radiostream.dart';
import 'package:b_radio/UI/Widgets/Radio_Widgets/Radio_Custom_Slider/radio_slider_shape.dart';
import 'package:b_radio/UI/Widgets/Radio_Widgets/Radio_Custom_Slider/radio_slider_tick.dart';
import 'package:b_radio/UI/Widgets/Radio_Widgets/Radio_Custom_Slider/radio_slider_track.dart';
import 'package:b_radio/UI/Widgets/Radio_Widgets/Radio_Custom_Knob/radio_knob.dart';
import 'package:b_radio/UI/Widgets/Radio_Widgets/Radio_Display/radio_display.dart';
import 'package:b_radio/UI/Widgets/Radio_Widgets/radio_bitrate_knob.dart';
import 'package:b_radio/UI/Widgets/Radio_Widgets/radio_speaker.dart';
import 'package:flutter/material.dart';
import 'package:b_radio/UI/Widgets/Radio_Widgets/radio_frequency_label.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();
    getRadioStream();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: Container(
              padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.24,
                    child: RadioBitrateKnob(),
                  ), //Bitrate control section
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: RadioDisplay(),
                  ), //Display section
                  SizedBox(
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
            child: RadioFrequencyLabel(),
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.075,
            child: SliderTheme(
              data: SliderThemeData(
                  tickMarkShape: RadioSliderTick(),
                  trackHeight: 20.0,
                  trackShape: RadioSliderTrack(),
                  thumbShape: RadioSliderShape()),
              child: Slider(
                divisions: 50,
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
            height: MediaQuery.of(context).size.height * 0.575,
            color: Colors.deepOrangeAccent,
          ), //Speaker section
        ],
      ),
    );
  }
}

void getRadioStream(){
  Future<RadioStream> streamList;

  streamList = RadioStreamService().fetchRadioStreams();
  
  print('This is the length:' + streamList.toString());
}
