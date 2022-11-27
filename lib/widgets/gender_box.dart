import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class GenderBox extends StatefulWidget {

   String gender = 'male';

  GenderBox({super.key, required this.gender});

  @override
  State<GenderBox> createState() => _GenderBoxState();
}

class _GenderBoxState extends State<GenderBox> {
  Color maleColor = Colors.black45;
  Color femaleColor = Colors.black45;
  String selectedGender = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.gender == 'female') {
          setState(() {
            selectedGender = 'female';
          });
        } else {
          setState(() {
            selectedGender = 'male';
          });
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget.gender == 'female'
              ? FaIcon(
                  FontAwesomeIcons.venus,
                  size: 40,
                  color:
                      selectedGender == 'female' ? Colors.cyan : Colors.black45,
                )
              : FaIcon(
                  FontAwesomeIcons.mars,
                  size: 40,
                  color:
                      selectedGender == 'male' ? Colors.cyan : Colors.black45,
                ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.gender == "female" ? 'Female' : 'Male',
              style: font25,
            ),
          )
        ],
      ),
    );
  }
}
