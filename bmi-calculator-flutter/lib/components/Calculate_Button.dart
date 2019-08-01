import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class CalculateButton extends StatelessWidget {
  CalculateButton({this.onTap, this.text});
  final String text;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomCardColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
