import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 5;
  int rightDiceNo = 5;
  void changeDice() {
    setState(() {
      rightDiceNo = Random().nextInt(6) + 1;
      leftDiceNo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: FlatButton(
                padding: EdgeInsets.all(0),
                child: Image.asset('images/dice$leftDiceNo.png'),
                onPressed: () {
                  setState(() {
                    changeDice();
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: FlatButton(
                padding: EdgeInsets.all(0),
                child: Image.asset('images/dice$rightDiceNo.png'),
                onPressed: () {
                  changeDice();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
