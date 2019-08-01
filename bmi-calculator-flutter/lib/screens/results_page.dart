import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/Calculate_Button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    @required this.bmiResult,
    @required this.bmiValue,
    @required this.bmiInterpretation,
  });
  final String bmiResult;
  final String bmiValue;
  final String bmiInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Result",
                  style: kTitleYourResult,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      bmiResult.toUpperCase(),
                      style: kBmiTitleText,
                    ),
                    Text(
                      bmiValue,
                      style: kBmiValue,
                    ),
                    Text(
                      bmiInterpretation,
                      style: kBmiMessage,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            CalculateButton(
              text: "RE-CALCULATE",
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
