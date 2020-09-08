import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildKey({Color noteColor, int note, String noteName}) => Expanded(
        child: FlatButton(
          color: noteColor,
          child: Text(noteName),
          onPressed: () {
            playSound(note);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(noteColor: Colors.red, note: 1, noteName: 'C'),
              buildKey(noteColor: Colors.orange, note: 2, noteName: 'D'),
              buildKey(noteColor: Colors.yellow, note: 3, noteName: 'E'),
              buildKey(noteColor: Colors.green, note: 4, noteName: 'F'),
              buildKey(noteColor: Colors.blue, note: 5, noteName: 'G'),
              buildKey(noteColor: Colors.purple, note: 6, noteName: 'A'),
              buildKey(noteColor: Colors.pink[400], note: 7, noteName: 'B'),
            ],
          ),
        ),
      ),
    );
  }
}
