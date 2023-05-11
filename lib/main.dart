import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Didou parisien'),
        ),
        body: MusicPage(),
      ),
    );
  }
}

class MusicPage extends StatefulWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    AudioPlayer player = AudioPlayer();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextButton(
          onPressed: () {
            musicNumber = Random().nextInt(5) + 1;
            Source path = AssetSource("Didou$musicNumber.mp3");
            player.play(path);
          },
          child: const Text('Play'),
        ),
        TextButton(
          onPressed: () {
            player.stop();
          },
          child: const Text('Stop'),
        ),
        TextButton(
          onPressed: () {
            player.pause();
          },
          child: const Text('pause'),
        ),
        TextButton(
          onPressed: () {
            player.resume();
          },
          child: const Text('resume'),
        ),
      ],
    );
  }
}
