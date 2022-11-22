import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Box extends StatelessWidget {
  late Color reng;
  final Widget? innerWidget;
  Box({super.key, this.reng = Colors.white, this.innerWidget});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
              color: reng, borderRadius: BorderRadius.circular(15)),
          padding: const EdgeInsets.all(15),
          child: innerWidget),
    );
  }
}

class GenderBox extends StatelessWidget {
  final String gender;
  const GenderBox({super.key, required this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        gender == 'female'
            ? const FaIcon(FontAwesomeIcons.venus, size: 40, color: Colors.black54,)
            : const FaIcon(FontAwesomeIcons.mars, size: 40, color: Colors.black54,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            gender == "female" ? 'Female' : 'Male',
            style: const TextStyle(fontSize: 25, color: Colors.black54),
          ),
        )
      ],
    );
  }
}
