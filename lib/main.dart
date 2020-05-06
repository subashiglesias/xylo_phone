import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  allButton(int number, {Color color}) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(number);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              allButton(1, color: Colors.red),
              allButton(2, color: Colors.amber),
              allButton(3, color: Colors.yellow),
              allButton(4, color: Colors.green),
              allButton(5, color: Colors.green.shade800),
              allButton(6, color: Colors.blue),
              allButton(7, color: Colors.deepPurple),
            ],
          ),
        )),
      ),
    );
  }
}
