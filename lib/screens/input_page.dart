import 'package:bmi_calculate/brain.dart';
import 'package:flutter/material.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../components/constants/constants.dart';
import 'results_page.dart';
import '../components/bottom_button.dart';
import '../components/round_icon_buttom.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum checker { men, women }

class _InputPageState extends State<InputPage> {
  checker? check;
  dynamic height = 180;
  int weigh = 60;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        check = checker.men;
                      });
                    },
                    colour: check == checker.men
                        ? kcardColorActive
                        : kcardColorInactive,
                    child: Card_Content(
                      sex: 'MALE',
                      sexIcon: Icons.male,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        check = checker.women;
                      });
                    },
                    colour: check == checker.women
                        ? kcardColorActive
                        : kcardColorInactive,
                    child: Card_Content(
                      sex: 'FEMALE',
                      sexIcon: Icons.female,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kcardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGH',
                    style: ksexTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kBoldNumbers),
                      const Text(
                        'cm',
                        style: ksexTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: const Color(0xff8d8e98),
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 15,
                      ),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30),
                      thumbColor: const Color(0xffeb1555),
                      activeTrackColor: Colors.white,
                      overlayColor: const Color(0x15eb1555),
                    ),
                    child: Slider(
                        min: 160,
                        max: 220,
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kcardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: ksexTextStyle,
                        ),
                        Text(
                          weigh.toString(),
                          style: kBoldNumbers,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              sigh: Icons.remove,
                              action: () {
                                setState(() {
                                  weigh--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            RoundIconButton(
                              sigh: Icons.add,
                              action: () {
                                setState(() {
                                  weigh++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kcardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: ksexTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kBoldNumbers,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              sigh: Icons.remove,
                              action: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            RoundIconButton(
                              sigh: Icons.add,
                              action: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              Calculator calc = Calculator(height: height, weigh: weigh);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpritation: calc.Interpritation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
