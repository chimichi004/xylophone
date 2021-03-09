import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }

  Expanded buildKey(int soundNum, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNum);
          print('note $soundNum');
        },
        // child: Text('Note $soundNum'),
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
            children: <Widget>[
              buildKey(1, Colors.purple),
              buildKey(2, Colors.blue),
              buildKey(3, Colors.teal),
              buildKey(4, Colors.lightGreen),
              buildKey(5, Colors.yellow),
              buildKey(6, Colors.orange),
              buildKey(7, Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
