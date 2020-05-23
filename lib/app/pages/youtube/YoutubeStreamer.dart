import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeStreamer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: double.infinity,
      color: Colors.grey,
      child: Center(child: Text('KONTEN VIDEO', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0))),
    );
  }
}
