import 'package:flutter/material.dart';
import 'final_screen.dart';


class ResultScreen extends StatelessWidget {

  const ResultScreen({super.key});

  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {

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
             const Text(
              'Height: \nWeight:  \nWorkoutCount:  \nSmokeCount: \nGender: ',
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
