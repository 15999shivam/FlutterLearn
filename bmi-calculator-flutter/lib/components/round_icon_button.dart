import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.icon, this.onPresses});
  final IconData icon;
  final Function onPresses;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onPresses,
      constraints: BoxConstraints.tightFor(
        height: 50.0,
        width: 50.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
