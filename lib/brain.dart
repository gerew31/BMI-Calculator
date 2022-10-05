import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Calculator {

  Calculator({required this.weigh,required this.height,});

  final int height;
  final int weigh;

  late double _result;

  String calculateBMI (){
    _result = weigh / pow(height/100, 2);
    return _result.toStringAsFixed(1);
  }


  String getResult(){
    if (_result >= 25){
      return 'OVERWEIGHT';
    }
    else if (_result >= 16.5){
      return 'NORMAL';
    }
    else {
      return 'ENDERWEIGHT';
    }


  }

  String Interpritation (){
    if (_result >= 25){
      return 'Eat less!';
    }
    else if (_result >= 18.5){
      return 'You\'re the best!';
    }
    else {
      return 'Eat more!';
    }
  }
}