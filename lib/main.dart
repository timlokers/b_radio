import 'package:flutter/material.dart';

import 'UI/Radio_Widgets/radio_knob.dart';
import 'UI/Radio_Widgets/radio_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
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
  static const double maxValue = 450;

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
                color: Colors.blue,
                onChanged: _setValue,
                min: minValue,
                max: maxValue,
                size: 150
            ),
            RadioSlider(minValue, maxValue, _value),
            Text(
              'Value: ${_value.toStringAsFixed(3)}',
            ),
          ],
        ),
      ),
    );
  }
}