import 'package:flutter/material.dart';
import 'constants/constants.dart';



class Card_Content extends StatelessWidget {

  Card_Content({ this.sex,  this.sexIcon});

  final String? sex;
  final IconData? sexIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          sexIcon,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          sex!,
          style: ksexTextStyle,
        ),
      ],
    );
  }
}

