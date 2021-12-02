import 'package:flutter/material.dart';

import 'UI/Pages/radio_page.dart';
import 'UI/Widgets/Radio_Widgets/Radio_Custom_Slider/radio_slider_shape.dart';
import 'UI/Widgets/Radio_Widgets/Radio_Custom_Slider/radio_slider_tick.dart';
import 'UI/Widgets/Radio_Widgets/Radio_Custom_Slider/radio_slider_track.dart';
import 'UI/Widgets/Radio_Widgets/radio_knob.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RadioPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _value = 0.0;

  void _setValue(double value) => setState(() => _value = value);
  static const double minValue = 0;
  static const double maxValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tutorial'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RadioKnob(
                value: _value,
                color: Colors.grey,
                onChanged: _setValue,
                min: minValue,
                max: maxValue,
                size: 100),
            SliderTheme(
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
            Text(
              'Value: ${_value.toStringAsFixed(3)}',
            ),
          ],
        ),
      ),
    );
  }
}
