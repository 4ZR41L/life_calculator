import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

int heightOfUser = 170;
int weightOfUser = 70;
class HeightWeightBox extends StatefulWidget {
  final String typeOfBox;

  const HeightWeightBox({super.key, required this.typeOfBox});

  @override
  State<HeightWeightBox> createState() => _HeightWeightBoxState();
}

class _HeightWeightBoxState extends State<HeightWeightBox> {


  int getHeight() {
    return heightOfUser;
  }

  int getWeight() {
    return weightOfUser;
  }

  //late String typeOfBox = '';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        RotatedBox(
          quarterTurns: -1,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.typeOfBox == 'height' ? "Height" : "Weight",
                style: const TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.typeOfBox == 'height'
                      ? heightOfUser.toString()
                      : weightOfUser.toString(),
                  style: font25,
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 36,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(1),
                    side: const BorderSide(
                      color: Colors.cyan,
                    )),
                onPressed: () {
                  setState(() {
                    widget.typeOfBox == 'height'
                        ? heightOfUser++
                        : weightOfUser++;
                  });
                },
                child: const Icon(
                  FontAwesomeIcons.plus,
                  color: Colors.cyan,
                  size: 15,
                ),
              ),
            ),
            SizedBox(
              width: 36,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(1),
                  side: const BorderSide(
                      width: 1, color: Colors.cyan, style: BorderStyle.solid),
                ),
                onPressed: () {
                  setState(() {
                    widget.typeOfBox == 'height'
                        ? heightOfUser--
                        : weightOfUser--;
                  });
                },
                child: const Icon(
                  FontAwesomeIcons.minus,
                  color: Colors.cyan,
                  size: 10,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
