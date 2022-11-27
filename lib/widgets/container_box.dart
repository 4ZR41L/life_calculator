
import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Color reng;
  final Widget? innerWidget;
  const Box({super.key, this.reng = Colors.white, this.innerWidget});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          margin: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
              color: reng, borderRadius: BorderRadius.circular(15)),
          padding: const EdgeInsets.all(15),
          child: innerWidget),
    );
  }
}