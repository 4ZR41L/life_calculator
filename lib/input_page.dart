import 'package:flutter/material.dart';
import 'package:life_calculator/widgets.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text(
          'Life Calculator',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(flex: 1, child: Row(children: [Box(), Box()],)),
          Box(),
          Box(),
          Expanded(flex: 1, child: Row(children: [Box(innerWidget: const GenderBox(gender: 'male',)), Box(innerWidget: const GenderBox(gender:'female'),)],)),




        ],
      )),
    );
  }
}
