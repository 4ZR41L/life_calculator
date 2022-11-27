import 'package:flutter/material.dart';
import 'package:life_calculator/screens/final_screen.dart';
import 'package:life_calculator/screens/input_screen.dart';
import 'package:life_calculator/screens/result_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.cyan,
          primaryColor: Colors.cyan,
          backgroundColor: Colors.cyan,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.cyan)),
      routes: {
        '/': (context) => const InputScreen(),
        '/ResultScreen': (context) => const ResultScreen(),
        '/FinalScreen': (context) => const FinalScreen()
      },
    );
  }
}
