import 'package:flutter/material.dart';

class ReusableCard extends StatefulWidget {
  ReusableCard({required this.colour, this.cardChild});
  final Color colour;
  final Widget? cardChild;

  @override
  _ReusableCardState createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.cardChild,
      margin: EdgeInsets.all(15.3),
      decoration: BoxDecoration(
        color: widget.colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
