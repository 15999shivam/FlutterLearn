import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  Expanded buildKey({Color color, int soundNo}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNo);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              buildKey(color: Colors.red, soundNo: 1),
              buildKey(color: Colors.orange, soundNo: 2),
              buildKey(color: Colors.yellow, soundNo: 3),
              buildKey(color: Colors.green, soundNo: 4),
              buildKey(color: Colors.blue, soundNo: 5),
              buildKey(color: Colors.teal, soundNo: 6),
              buildKey(color: Colors.indigo, soundNo: 7),
            ],
          ),
        ),
      ),
    );
  }
}
