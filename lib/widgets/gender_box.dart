import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../controller.dart';

class GenderBox extends StatelessWidget {
  GenderBox({Key? key, required this.widgetGender}) : super(key: key);

  final controller = Get.put(Controller());

  final String widgetGender;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.all(15),
        child: GestureDetector(
          onTap: () {
            widgetGender == 'female'
                ? controller.gender.value = 'female'
                : controller.gender.value = 'male';
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widgetGender == 'female'
                  ? Obx(() => FaIcon(
                FontAwesomeIcons.venus,
                size: 40,
                color: controller.gender.value == 'female'
                    ? Colors.cyan
                    : Colors.black45,
              ))
                  : Obx(() => FaIcon(
                FontAwesomeIcons.mars,
                size: 40,
                color: controller.gender.value == 'male'
                    ? Colors.cyan
                    : Colors.black45,
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(() => Text(
                  widgetGender == "female" ? 'Female' : 'Male',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: controller.gender.value == widgetGender
                        ? Colors.cyan
                        : Colors.black45,
                  ),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}