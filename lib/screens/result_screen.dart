import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller.dart';
import 'final_screen.dart';


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
              'Height: $userHeight\nWeight:  $userWeight\nWorkoutCount:  $workoutCount\nSmokeCount: $smokeCount\nGender: $gender',
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                Route route = MaterialPageRoute(
                  builder: (context) {
                    return const FinalScreen();
                  },
                );

                Navigator.push(context, route);
              },
              child: const Text('next'),
            )
          ],
        ),
      ),
    );
  }
}
