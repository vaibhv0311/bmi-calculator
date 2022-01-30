import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'inputpage.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

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
              Expanded(
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
                        'NORMAL',
                        style: kResultTextStyle,
                      ),
                      Text(
                        '23.4',
                        style: kNumberStyle,
                      ),
                      Text(
                        'Your body weight index is normal!',
                        style: kLabelText,
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InputPage()));
                },
                child: Container(
                  color: kBottomContainerColor,
                  margin: EdgeInsets.only(top: 10.0),
                  width: double.infinity,
                  height: kBottomButtonHeight,
                  child: Center(
                      child: Text(
                    'Re-CALCULATE',
                    textAlign: TextAlign.center,
                    style: kBigTextStyle,
                  )),
                ),
              ),
            ],
          ),
        ));
  }
}
