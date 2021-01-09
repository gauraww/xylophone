import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }
  Expanded soundbar({int note,Color color})
  {
    return Expanded(
        child: FlatButton(
        onPressed: () {
      playSound(note);
    },
    color: color,
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    soundbar(note: 1,color: Colors.red),
                    soundbar(note: 2,color: Colors.orange),
                    soundbar(note: 3,color: Colors.yellow),
                    soundbar(note: 4,color: Colors.lightGreen),
                    soundbar(note: 5,color: Colors.cyan),
                    soundbar(note: 6,color: Colors.lightBlueAccent),
                    soundbar(note: 7,color: Colors.blue),
          ]
              ),
        ),
      ),
    );
  }
}
