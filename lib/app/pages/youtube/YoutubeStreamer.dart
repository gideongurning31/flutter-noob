import 'package:flutter/material.dart';
import 'package:youtube_player/youtube_player.dart';

class YoutubeStreamer extends StatelessWidget {
  final String url = '';

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      source: url,
      quality: YoutubeQuality.LOW,
      aspectRatio: 16 / 9,
      showThumbnail: false,
    );
  }
}
