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
            children: [
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Radio V-Rock',
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'DigitalClock',
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0.5, 0.5),
                      blurRadius: 2.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Turbo Lover - Judas Priest',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'DigitalClock',
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0.5, 0.5),
                      blurRadius: 2.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Heavy Metal',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'DigitalClock',
                      fontStyle: FontStyle.italic,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(0.5, 0.5),
                          blurRadius: 2.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
