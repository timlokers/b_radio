import 'package:b_radio/Logic/Controllers/bitrate_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RadioBitrateKnob extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RadioBitrateKnob();
}

class _RadioBitrateKnob extends State<RadioBitrateKnob> {
  final BitrateController bitrateController = Get.put(BitrateController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        bitrateController.increment();
      },
      child: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
        child: GetBuilder<BitrateController>(
          builder: (_) {
            return Image.asset(
              _.imageString,
              alignment: const Alignment(1, -0.2),
            );
          },
        ),

        /*Image.asset(
          './Resources/Images/knobs/KnobBitrate_0_mini.png',
          alignment: const Alignment(1, -0.2),
        )*/
      ),
    );
  }
}