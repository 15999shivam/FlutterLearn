import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1F33);
const inactiveCardColor = Color(0xFF111328);
const bottomCardColor = Color(0xFFEA1556);
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
//  Color maleCardColor = inactiveCardColor;
//  Color femaleCardColor = inactiveCardColor;
  Gender gender = Gender.male;
  //1=Male 2=Female
//  void updateColor(Gender gender) {
//    if (gender == Gender.male) {
//      if (maleCardColor == inactiveCardColor) {
//        maleCardColor = activeCardColor;
//        femaleCardColor = inactiveCardColor;
//      } else {
//        maleCardColor = inactiveCardColor;
//      }
//    } else {
//      if (femaleCardColor == inactiveCardColor) {
//        femaleCardColor = activeCardColor;
//        maleCardColor = inactiveCardColor;
//      } else {
//        femaleCardColor = inactiveCardColor;
//      }
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardChild: IconWidget(
                      icon: FontAwesomeIcons.mars,
                      text: "MALE",
                    ),
                    colour: (gender == Gender.male)
                        ? activeCardColor
                        : inactiveCardColor,
                    tap: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  cardChild: IconWidget(
                    icon: FontAwesomeIcons.venus,
                    text: "FEMALE",
                  ),
                  colour: (gender == Gender.female)
                      ? activeCardColor
                      : inactiveCardColor,
                  tap: () {
                    setState(() {
                      gender = Gender.female;
                    });
                  },
                )),
              ],
            )),
            Expanded(
              child: ReusableCard(
                colour: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReusableCard(
                    colour: activeCardColor,
                  )),
                  Expanded(
                      child: ReusableCard(
                    colour: activeCardColor,
                  )),
                ],
              ),
            ),
            Container(
              color: bottomCardColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
