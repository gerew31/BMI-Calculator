import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.sigh, required this.action});

  IconData sigh;
  void Function() action;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6,
      onPressed: action,
      shape: const CircleBorder(),
      fillColor: const Color(0xff4c4f5e),
      child: Icon(
        sigh,
        size: 30,
      ),
    );
  }
}
