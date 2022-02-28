import 'dart:convert';
import 'package:b_radio/Model/radiostream.dart';
import 'package:http/http.dart' as http;

class RadioStreamService{

  Future<RadioStream> fetchRadioStreams() async{
    const url ='https://nl1.api.radio-browser.info/json/stations/bycountrycodeexact/NL?hidebroken=true&order=bitrate';

    final response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
      return RadioStream.fromJson(jsonDecode(response.body));
    }
    else{
      throw Exception('Failed to load radio stream');
    }
  }

}