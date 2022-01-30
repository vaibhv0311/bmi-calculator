import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String bmiValue;
  final String interpretation;
  ResultPage(
      {required this.bmiResult,
      required this.bmiValue,
      required this.interpretation});

  TextStyle resultCheck(String bmiResult) {
    if (bmiResult == 'NORMAL') {
      return kResultTextStyleGreen;
    } else if (bmiResult == 'OVERWEIGHT') {
      return kResultTextStyleRed;
    } else
      return kResultTextStyleOrange;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          centerTitle: true,
          backgroundColor: kActiveCardColor,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Your Result',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        bmiResult,
                        style: resultCheck(bmiResult),
                      ),
                      Text(
                        bmiValue,
                        style: kBMIStyle,
                      ),
                      Text(
                        interpretation,
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              BottomButton(
                buttonTitle: 'RE-CALCULATE',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ));
  }
}
