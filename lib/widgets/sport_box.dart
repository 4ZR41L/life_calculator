import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life_calculator/controller.dart';

import '../constants.dart';

class SportBox extends StatelessWidget {
  SportBox({Key? key}) : super(key: key);

  final controller = Get.put(Controller());

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
          child: Obx(
            () => Text(
              controller.workoutCount.toString(),
              style: font25,
            ),
          ),
        ),
        Obx(
          () => Slider.adaptive(
            value: controller.workoutCount.value.toDouble(),
            onChanged: (value) {
              controller.workoutCount.value = value.toInt();
            },
            activeColor: Colors.cyan,
            max: 7,
            min: 0,
            thumbColor: Colors.cyan,
            inactiveColor: Colors.black45,
            divisions: 7,
          ),
        ),
      ],
    );
  }
}
