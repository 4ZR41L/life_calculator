import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life_calculator/controller.dart';

import '../constants.dart';

class SmokeBox extends StatelessWidget {
  SmokeBox({Key? key}) : super(key: key);

  final controller = Get.put(Controller());

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
            child: Obx(
              () => Text(
                controller.smokeCount.toString(),
                style: font25,
              ),
            )),
        Obx(
          () => Slider.adaptive(
            value: controller.smokeCount.toDouble(),
            onChanged: (value) {
              controller.smokeCount.value = value.toInt();
            },
            activeColor: Colors.cyan,
            max: 30,
            min: 0,
            thumbColor: Colors.cyan,
            inactiveColor: Colors.black45,
            divisions: 30,
          ),
        )
      ],
    );
  }
}
