import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoContentWidget extends StatelessWidget {
  final String content;

  VideoContentWidget({@required this.content});

  YoutubePlayerController getYoutubePlayer() {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: content,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );

    return _controller;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(5),
        child: YoutubePlayer(
          controller: getYoutubePlayer(),
          liveUIColor: Colors.amber,
        ),
      ),
    );
  }
}
