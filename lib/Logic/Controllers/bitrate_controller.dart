import 'dart:developer';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

class BitrateController extends GetxController{
  int count = 0;
  String imageString = './Resources/Images/knobs/KnobBitrate_0_mini.png';

  void increment(){
    if(count == 3){
      count = 0;
      imageString = './Resources/Images/knobs/KnobBitrate_0_mini.png';
    }
    else{
      count++;
      if(count == 1){
        imageString = './Resources/Images/knobs/KnobBitrate_128_mini.png';
        //playBitrateSound(false);
      }
      else if(count == 2){
        imageString = './Resources/Images/knobs/KnobBitrate_192_mini.png';
        //playBitrateSound(false);
      }
      else{
        imageString = './Resources/Images/knobs/KnobBitrate_320_mini.png';
        //playBitrateSound(true);
      }
    }
    update();
    log(count.toString());
    log(imageString);
  }


}

//To do: Make it work
Future<AudioPlayer> playBitrateSound(bool isEnd) async{
  AudioCache cache = AudioCache();
  if(isEnd){
    return await cache.play("SwitchOff.wav");
  }
  else{
    return await cache.play("SwitchOn.wav");
  }
}
