import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life_calculator/screens/result_screen.dart';
import 'package:life_calculator/widgets/smoke_box.dart';
import 'package:life_calculator/widgets/sport_box.dart';
import '../controller.dart';
import '../widgets/container_box.dart';
import '../widgets/gender_box.dart';
import '../widgets/height_weight_box.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text(
          'Life Calculator',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Box(
                      innerWidget: HeightWeightBox(
                        typeOfBox: 'height',
                      ),
                    ),
                    Box(
                        innerWidget: HeightWeightBox(
                      typeOfBox: 'weight',
                    ))
                  ],
                )),
            Box(innerWidget: SportBox()),
            Box(
              innerWidget: SmokeBox(),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  GenderBox(
                    widgetGender: 'male',
                  ),
                  GenderBox(
                    widgetGender: 'female',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Get.to(ResultScreen());
        },
        child: const Icon(
          Icons.calculate,
          color: Colors.cyan,
        ),
      ),
    );
  }
}
