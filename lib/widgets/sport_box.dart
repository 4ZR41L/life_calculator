import 'package:flutter/material.dart';

import '../constants.dart';

int workoutCount = 0;

class SportBox extends StatefulWidget {
  const SportBox({Key? key}) : super(key: key);

  @override
  State<SportBox> createState() => _SportBoxState();
}

class _SportBoxState extends State<SportBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "How many times do you go to workout in a week?",
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            workoutCount.toString(),
            style: font25,
          ),
        ),
        Slider.adaptive(
          value: workoutCount.toDouble(),
          onChanged: (value) {
            setState(() {
              workoutCount = value.toInt();
            });
          },
          activeColor: Colors.cyan,
          max: 7,
          min: 0,
          thumbColor: Colors.cyan,
          inactiveColor: Colors.black45,
          divisions: 7,
        ),
      ],
    );
  }
}
