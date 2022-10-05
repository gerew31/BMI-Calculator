import 'package:flutter/material.dart';
import '../components/constants/constants.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculate/components/bottom_button.dart';

class ResultPage extends StatelessWidget {


 ResultPage({required this.interpritation, required this.resultText, required this.bmiResult});

  final String bmiResult;
  final String resultText;
  final String interpritation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Your Result',
                  style: kBoldNumbers,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kcardColorActive,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText,
                      style: const TextStyle(
                        color: Color(0xff24d876),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(bmiResult, style: kBoldNumbers,),
                    Text (interpritation, style: ksexTextStyle, textAlign: TextAlign.center,),

                  ],
                ),
              ),
            ),
            BottomButton(onTap: (){
              Navigator.pop(context);
            }, buttonTitle: 'RE-CALCULATE'),
          ],
        ));
  }
}
