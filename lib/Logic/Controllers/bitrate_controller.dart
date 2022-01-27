import 'dart:developer';
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
      }
      else if(count == 2){
        imageString = './Resources/Images/knobs/KnobBitrate_192_mini.png';
      }
      else{
        imageString = './Resources/Images/knobs/KnobBitrate_320_mini.png';
      }
    }
    update();
    log(count.toString());
    log(imageString);
  }


}