import 'package:flutter/material.dart';
import 'constants/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});

  final void Function()? onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kbottomButtomColor,
        margin: const EdgeInsets.only(top: 15),
        width: double.infinity,
        height: kbottomConatinerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
