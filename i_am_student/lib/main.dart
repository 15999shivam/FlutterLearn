import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("I AM Student"),
            backgroundColor: Colors.teal[400],
          ),
          backgroundColor: Colors.lightGreenAccent[100],
          body: Center(
            child: Image(
              image: AssetImage('images/student.png'),
            ),
          )),
    ));
