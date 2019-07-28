import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('images/shivam.jpg'),
                ),
                Text(
                  "Shivam Garg",
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "FLUTTER DEVELOPER",
                  style: TextStyle(
                    fontFamily: 'SourceSans',
                    color: Colors.teal.shade100,
                    fontSize: 20.0,
                    letterSpacing: 3.5,
                    wordSpacing: 4.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 25,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "+91 8168386500",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal.shade900,
                          fontFamily: 'SourceSans'),
                    ),
                  ),
                ),
                Card(
                    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text(
                        "Shivamgarg260@gmail.com",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.teal.shade900,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SourceSans',
                        ),
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}
