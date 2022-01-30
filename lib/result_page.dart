import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';

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
          child: Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Text('Hello'),
            ),
          ),
        ));
  }
}
