import 'package:flutter/material.dart';

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
                    Expanded(child: ReusableCard(Color(0xFF1D1E33))),
                    Expanded(child: ReusableCard(Color(0xFF1D1E33))),
                  ],
                ),
              ),
              Expanded(flex: 2, child: ReusableCard(Color(0xFF1D1E33))),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(child: ReusableCard(Color(0xFF1D1E33))),
                    Expanded(child: ReusableCard(Color(0xFF1D1E33))),
                  ],
                ),
              ),
              Expanded(
                child: ReusableCard(Colors.red),
                flex: 1,
              )
            ],
          ),
        ));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard(this.colour);
  Color colour;
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
