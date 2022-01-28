import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double BottomButtonHeight = 80.0;
const Color activeCardColor = Color(0xFF1D1E33);
const Color bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            ReusableCard(colour: Colors.grey);
                          });
                        },
                        child: ReusableCard(
                            colour: activeCardColor,
                            cardChild: IconContent(
                              icontype: FontAwesomeIcons.mars,
                              gender: 'MALE',
                            )),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        colour: activeCardColor,
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
                  colour: activeCardColor,
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        colour: activeCardColor,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        colour: activeCardColor,
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
