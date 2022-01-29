import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

enum GenderType { male, female }

class _InputPageState extends State<InputPage> {
  GenderType? selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = GenderType.male;
                          });
                        },
                        child: ReusableCard(
                            colour: selected == GenderType.male
                                ? kActiveCardColor
                                : kInactiveCardColor,
                            cardChild: IconContent(
                              iconType: FontAwesomeIcons.mars,
                              gender: 'MALE',
                            )),
                      ), //male card
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = GenderType.female;
                          });
                        },
                        child: ReusableCard(
                          colour: selected == GenderType.female
                              ? kActiveCardColor
                              : kInactiveCardColor,
                          cardChild: IconContent(
                            iconType: FontAwesomeIcons.venus,
                            gender: 'FEMALE',
                          ),
                        ),
                      ), //female card
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: ReusableCard(
                  colour: kInactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: kLabelText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text('180', style: kNumberStyle),
                          Text(
                            ' cm',
                            style: kLabelText,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        colour: kInactiveCardColor,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        colour: kInactiveCardColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: kBottomContainerColor,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: kBottomButtonHeight,
                child: Center(
                    child: Text(
                  'CALCULATE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                )),
              ),
            ],
          ),
        ));
  }
}
