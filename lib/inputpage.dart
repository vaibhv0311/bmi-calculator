import 'package:flutter/material.dart';

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
                      child: ReusableCard(activeCardColor),
                    ),
                    Expanded(
                      child: ReusableCard(activeCardColor),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: ReusableCard(activeCardColor),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(activeCardColor),
                    ),
                    Expanded(
                      child: ReusableCard(activeCardColor),
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

class ReusableCard extends StatelessWidget {
  ReusableCard(this.colour);
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.3),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
