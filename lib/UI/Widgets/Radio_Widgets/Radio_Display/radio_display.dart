import 'package:flutter/material.dart';

class RadioDisplay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RadioState();
}

class RadioState extends State<RadioDisplay> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      heightFactor: 0.4,
      child: Center(
        child: Container(
          width: double.infinity,
          color: Colors.amberAccent,
          child: Column(
            children: const [
              Text('Station'),
              Text('Song'),
              Text('bitrate'),
            ],
          ),
        ),
      ),
    );
  }
}
