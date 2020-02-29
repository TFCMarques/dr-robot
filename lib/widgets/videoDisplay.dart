import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoDisplay extends StatefulWidget {
  final VideoPlayerController videoController;
  final bool looping;

  VideoDisplay({
    @required this.videoController,
    this.looping,
    Key key,
  }) : super(key : key);

  @override
  _VideoDisplayState createState() => _VideoDisplayState();
}

class _VideoDisplayState extends State<VideoDisplay> {
  ChewieController chewieController;

  @override
  void initState() {
    super.initState();

    chewieController = ChewieController(
      videoPlayerController: widget.videoController,
      aspectRatio: 16 / 9,
      autoInitialize: true,
      autoPlay: false,
      looping: widget.looping,
      allowFullScreen: false,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 300.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 60),
          Text(
            "Showcase",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Unica",
              fontSize: 64,
              color: Color(0xFF4980C8)
            )
          ),
          SizedBox(height: 20),
          Chewie(
            controller: chewieController,
          ),
          SizedBox(height: 10)
        ]
      )
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.videoController.dispose();
    chewieController.dispose();
  }
}