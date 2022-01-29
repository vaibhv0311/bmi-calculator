import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double BottomButtonHeight = 80.0;
const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
const Color bottomContainerColor = Color(0xFFEB1555);

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
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                          onPress: () {
                            setState(() {
                              selected = GenderType.male;
                            });
                          },
                          colour: selected == GenderType.male
                              ? activeCardColor
                              : inactiveCardColor,
                          cardChild: IconContent(
                            icontype: FontAwesomeIcons.mars,
                            gender: 'MALE',
                          )),
                    ),
                    Expanded(
                      child: ReusableCard(
                        onPress: () {
                          setState(() {
                            selected = GenderType.female;
                          });
                        },
                        colour: selected == GenderType.female
                            ? activeCardColor
                            : inactiveCardColor,
                        cardChild: IconContent(
                          icontype: FontAwesomeIcons.venus,
                          gender: 'FEMALE',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: ReusableCard(
                  colour: inactiveCardColor,
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        colour: inactiveCardColor,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        colour: inactiveCardColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: bottomContainerColor,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: BottomButtonHeight,
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
