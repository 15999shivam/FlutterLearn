import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Center(child: Text("Ask Me Anything")),
            backgroundColor: Colors.blue.shade900,
          ),
          body: SafeArea(child: AskPage()),
        ),
      ),
    );

class AskPage extends StatefulWidget {
  @override
  _AskPageState createState() => _AskPageState();
}

class _AskPageState extends State<AskPage> {
  int ballval = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.all(0),
              child: Image.asset('images/ball$ballval.png'),
              onPressed: () {
                setState(() {
                  ballval = Random().nextInt(5) + 1;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
