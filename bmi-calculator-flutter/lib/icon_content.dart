import 'package:flutter/material.dart';

const iconSize = 80.0;
const sizeBoxHeight = 15.0;
const textFontSize = 18.0;
const textStyle = TextStyle(
  fontSize: textFontSize,
  color: Color(0xFF8D8E98),
);

class IconWidget extends StatelessWidget {
  IconWidget({@required this.icon, @required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: sizeBoxHeight,
        ),
        Text(
          text,
          style: textStyle,
        )
      ],
    );
  }
}
