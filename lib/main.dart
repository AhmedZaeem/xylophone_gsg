import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          children: [
            Buttons(const Color(0xffF44236), 1),
            Buttons(const Color(0xffFF9800), 2),
            Buttons(const Color(0xffFEEB3B), 3),
            Buttons(const Color(0xff4CAF50), 4),
            Buttons(const Color(0xff049588), 5),
            Buttons(const Color(0xff2296F3), 6),
            Buttons(const Color(0xff9C26B0), 7)
          ],
        )),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  Color color;
  int note;
  Buttons(
    this.color,
    this.note, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          AudioPlayer player = AudioPlayer();
          player.play(AssetSource('note$note.wav'));
        },
        child: Container(color: color),
      ),
    );
  }
}
