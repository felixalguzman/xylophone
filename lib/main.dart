import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  List colores = [
    Colors.blue,
    Colors.yellow,
    Colors.greenAccent,
    Colors.indigoAccent,
    Colors.teal,
    Colors.tealAccent,
    Colors.redAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            for (int i = 1; i <= 7; i++)
              Expanded(
                child: FlatButton(
                    color: colores[i - 1],
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note$i.wav');
                    },
                    child: Text('play')),
              )
          ],
        )),
      ),
    );
  }
}
