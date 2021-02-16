import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void play(int n)
  {
    final player =AudioCache();
    player.play('note$n.wav');
  }
  Expanded each(Color s,int n)
  {
    return Expanded(
      child: FlatButton(
        onPressed: ()
        {
          play(n);
        },
        color: s,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             each(Colors.red,1),
              each(Colors.orange,2),
              each(Colors.yellow,3),
              each(Colors.green,4),
              each(Colors.blue,5),
              each(Colors.indigo,6),
              each(Colors.deepPurple,7),
            ],
          ),
        ),
      ),
    );
  }
}
