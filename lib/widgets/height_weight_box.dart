import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../constants.dart';
import '../controller.dart';



class HeightWeightBox extends StatelessWidget {

  final controller = Get.put(Controller());

  final String typeOfBox;


  HeightWeightBox({
    super.key,
    required this.typeOfBox,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        RotatedBox(
          quarterTurns: -1,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                typeOfBox == 'height' ? "Height" : "Weight",
                style: const TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(() => Text(
                  typeOfBox == 'height'
                      ? controller.userHeight.toString()
                      : controller.userWeight.toString(),
                  style: font25,
                ),),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 36,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(1),
                    side: const BorderSide(
                      color: Colors.cyan,
                    )),
                onPressed: () {

                  controller.incrementUserData(typeOfBox);

                },
                child: const Icon(
                  FontAwesomeIcons.plus,
                  color: Colors.cyan,
                  size: 15,
                ),
              ),
            ),
            SizedBox(
              width: 36,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(1),
                  side: const BorderSide(
                      width: 1, color: Colors.cyan, style: BorderStyle.solid),
                ),
                onPressed: () {
                  controller.decrementUserData(typeOfBox);
                },
                child: const Icon(
                  FontAwesomeIcons.minus,
                  color: Colors.cyan,
                  size: 10,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

