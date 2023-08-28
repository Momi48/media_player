import 'package:flutter/material.dart';
import 'package:media_player/neu_box.dart';
import 'package:media_player/song_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: SongPage()

    );
  }
}


