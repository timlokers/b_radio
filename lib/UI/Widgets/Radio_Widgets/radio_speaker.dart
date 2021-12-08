import 'package:flutter/material.dart';

class RadioSpeaker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('./Resources/Images/speaker.jpg'),
              fit: BoxFit.cover,
            )
        ),
      ),
    );
  }

}