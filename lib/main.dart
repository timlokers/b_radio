import 'package:flutter/material.dart';

import 'UI/Pages/radio_page.dart';

void main() => runApp(PartyAllTheTime());

class PartyAllTheTime extends StatelessWidget {
  const PartyAllTheTime({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RadioPage(),
      theme: ThemeData(scaffoldBackgroundColor:  const Color(0xfff2e587)),
    );
  }
}
