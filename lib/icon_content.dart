import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icontype;
  final String gender;
  IconContent({required this.icontype, required this.gender});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icontype,
          size: 100,
          color: Colors.grey[300],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: TextStyle(color: Colors.grey[300], fontSize: 18.0),
        )
      ],
    );
  }
}
