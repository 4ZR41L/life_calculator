import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller.dart';


class ResultScreen extends StatelessWidget {

   ResultScreen({super.key});


  final controller = Get.put(Controller());



  @override
  Widget build(BuildContext context) {

    final userHeight = controller.userHeight;
    final userWeight = controller.userWeight;
    final workoutCount = controller.workoutCount;
    final smokeCount = controller.smokeCount;
    final gender = controller.gender;
    int avarageLife = controller.calculateUserLife().toInt();



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Result Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Text(
              'Height: $userHeight\nWeight:  $userWeight\nWorkoutCount:  $workoutCount\nSmokeCount: $smokeCount\nGender: $gender\nYour avarage life is $avarageLife',
              textAlign: TextAlign.center,
            ),

          ],
        ),
      ),
    );
  }
}
