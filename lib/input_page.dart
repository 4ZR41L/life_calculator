import 'package:flutter/material.dart';
import 'widgets.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text(
          'Life Calculator',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              children: [Box(), Box()],
            ),
          ),
          Expanded(
            child: Box(),
          ),
          Expanded(
            child: Box(),
          ),
          Expanded(
            child: Row(
              children: [
                Box(innerWidget: GenderBox(gender: 'male')),
                Box(innerWidget: GenderBox(gender: 'female')),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
