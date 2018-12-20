import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Darksouls Voice',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: AppFrame(title: 'Darksouls Voice'),
    );
  }
}

class AppFrame extends StatelessWidget{
  AppFrame({Key key, this.title}) : super(key: key);
  final String title;
  final AudioCache player = new AudioCache();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children:<Widget>[
          VoiceItem(
            icon: Icon(Icons.call),
            text: Text('Hello'),
            audio: 'Hello.mp3',
            player: player,
          ),
          VoiceItem(
            icon: Icon(Icons.help),
            text: Text('Help Me'),
            audio: 'Help Me.mp3',
            player: player,
          ),
          VoiceItem(
            icon: Icon(Icons.sentiment_dissatisfied),
            text: Text('I\'m Sorry'),
            audio: 'Im Sorry.mp3',
            player: player,
          ),
          VoiceItem(
            icon: Icon(Icons.mood),
            text: Text('Thank You'),
            audio: 'Thank You.mp3',
            player: player,
          ),
          VoiceItem(
            icon: Icon(Icons.thumb_up),
            text: Text('Very Good'),
            audio: 'Very Good.mp3',
            player: player,
          ),
        ],
      ),
    );
  }
}

class VoiceItem extends StatelessWidget{
  VoiceItem({Key key, this.text, this.icon, this.audio, this.player}) : super(key: key);
  final Text text;
  final Icon icon;
  final String audio;
  final AudioCache player;

  @override
  Widget build(BuildContext context){
    return ListTile(
      leading: icon,
      title: text,
      onTap:(){ player.play(audio); },
    );
  }
}