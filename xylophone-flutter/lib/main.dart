import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Expanded createButton({int soundNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          player.play("note$soundNumber.wav");
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF000000),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createButton(soundNumber:1, color:Colors.red),
              createButton(soundNumber:2, color:Colors.tealAccent),
              createButton(soundNumber:3, color:Color(0xFF6638F0)),
              createButton(soundNumber:4, color:Color(0xFF5CC9F5)),
              createButton(soundNumber:5, color:Color(0xFF4AF2A1)),
              createButton(soundNumber:6, color:Color(0xFFB0F566)),
              createButton(soundNumber:7, color:Color(0xFFF78AE0))
            ],
          ),
        ),
      ),
    );
  }
}
