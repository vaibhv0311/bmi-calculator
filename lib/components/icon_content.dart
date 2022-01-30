import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  final IconData iconType;
  final String gender;
  IconContent({required this.iconType, required this.gender});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconType,
          size: 100,
          color: Colors.grey[300],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: kLabelText,
        )
      ],
    );
  }
}
