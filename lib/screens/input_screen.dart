import 'package:flutter/material.dart';
import 'package:life_calculator/widgets/container_box.dart';
import 'package:life_calculator/widgets/gender_box.dart';
import 'package:life_calculator/widgets/height_weight_box.dart';
import 'package:life_calculator/widgets/smoke_box.dart';
import 'package:life_calculator/widgets/sport_box.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    Map userData = {
      'height': heightOfUser,
      'gender': 'male',
      'smokeCount': smokeCount,
      'weight': weightOfUser,
      'workoutCount': workoutCount
    };

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
                  children: const [
                    Box(
                      innerWidget: HeightWeightBox(typeOfBox: 'height'),
                    ),
                    Box(
                      innerWidget: HeightWeightBox(typeOfBox: 'weight'),
                    )
                  ],
                )),
            const Box(innerWidget: SportBox()),
            const Box(
              innerWidget: SmokeBox(),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Box(
                    innerWidget: GenderBox(
                      gender: 'male',
                    ),
                  ),
                  Box(
                    innerWidget: GenderBox(gender: 'female'),
                  )
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.white,
                  ),
                  padding: MaterialStatePropertyAll(
                    EdgeInsetsDirectional.fromSTEB(80, 5, 80, 5),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/ResultScreen',
                      arguments: userData);
                },
                child: const Text(
                  'CALCULATE',
                  style: TextStyle(
                    color: Colors.cyan,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
