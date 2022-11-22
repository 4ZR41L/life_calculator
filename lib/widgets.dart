import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Box extends StatefulWidget {
  late Color reng;
  final Widget? innerWidget;
  Box({super.key, this.reng = Colors.white, this.innerWidget});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
              color: widget.reng, borderRadius: BorderRadius.circular(15)),
          padding: const EdgeInsets.all(15),
          child: widget.innerWidget),
    );
  }
}

class GenderBox extends StatefulWidget {
  final String gender;

  const GenderBox({super.key, required this.gender});

  @override
  State<GenderBox> createState() => _GenderBoxState();
}

class _GenderBoxState extends State<GenderBox> {

  Color maleColor = Colors.black54;
  Color femaleColor = Colors.black54;

  void selectGender(gender) {
    setState(() {
      if (gender == 'male') {
        femaleColor = Colors.black45;
        maleColor = Colors.green;
      } else {
        femaleColor = Colors.green;
        maleColor = Colors.black45;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        selectGender(widget.gender);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget.gender == 'female'
              ? FaIcon(
                  FontAwesomeIcons.venus,
                  size: 40,
                  color: femaleColor,
                )
              : FaIcon(
                  FontAwesomeIcons.mars,
                  size: 40,
                  color: maleColor,
                ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.gender == "female" ? 'Female' : 'Male',
              style: TextStyle(
                  fontSize: 25,
                  color: widget.gender == "female" ? femaleColor : maleColor),
            ),
          )
        ],
      ),
    );
  }
}
