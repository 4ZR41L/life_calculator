import 'package:flutter/material.dart';

import '../constants.dart';

int smokeCount = 0;

class SmokeBox extends StatefulWidget {
  const SmokeBox({Key? key}) : super(key: key);

  @override
  State<SmokeBox> createState() => _SmokeBoxState();
}

class _SmokeBoxState extends State<SmokeBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "How many times do you smoke in a day?",
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            smokeCount.toString(),
            style: font25,
          ),
        ),
        Slider.adaptive(
          value: smokeCount.toDouble(),
          onChanged: (value) {
            setState(() {
              smokeCount = value.toInt();
            });
          },
          activeColor: Colors.cyan,
          max: 30,
          min: 0,
          thumbColor: Colors.cyan,
          inactiveColor: Colors.black45,
          divisions: 30,
        ),
      ],
    );
  }
}
