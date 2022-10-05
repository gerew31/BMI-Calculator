import 'package:flutter/material.dart';
import '../screens/input_page.dart';
import 'constants/constants.dart';


class ReusableCard extends StatelessWidget {

  ReusableCard({required this.colour, required this.child, this.onTap});

  final Color colour;
  final Widget child;
   void Function()?  onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
        onTap,
      child: Container(
        child: child,
        margin: EdgeInsets.all(15),
        decoration:
        BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}