import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ExampleApp extends StatefulWidget {
  @override
  _ExampleAppState createState() => new _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp>
    with SingleTickerProviderStateMixin {
  Duration _duration = new Duration();
  Duration _position = new Duration();
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  VideoPlayerController _vpController;

  AnimationController animationController;
  bool isPlaying = true;

  @override
  void initState() {
    super.initState();
    initPlayer();
    audioCache.play('2.mp3');
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _vpController = VideoPlayerController.asset("assets/images/relax.gif")
      ..initialize().then((_) {
        // Once the video has been loaded we play the video and set looping to true.
        _vpController.play();
        _vpController.setLooping(true);
        // Ensure the first frame is shown after the video is initialized.
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
    _vpController.dispose();
  }

  void initPlayer() {
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);

    advancedPlayer.durationHandler = (d) => setState(() {
          _duration = d;
        });

    advancedPlayer.positionHandler = (p) => setState(() {
          _position = p;
        });
  }

  // String localFilePath;

  Widget slider() {
    return Slider(
      activeColor: Colors.white,
      inactiveColor: Colors.grey,
      value: _position.inSeconds.toDouble(),
      min: 0.0,
      max: _duration.inSeconds.toDouble(),
      onChanged: (double value) {
        setState(
          () {
            seekToSecond(value.toInt());
            value = value;
          },
        );
      },
    );
  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);

    advancedPlayer.seek(newDuration);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/relax.gif'),
                  fit: BoxFit.cover,
                ),
              ),
              constraints: BoxConstraints.expand(),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 20, left: 10),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.close,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height *
                        0.65, //TODO USE MEDIA QUERY
                  ),
                  Container(
//                    margin: EdgeInsets.only(top: 130),
                    child: Text(
                      "Song name",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  slider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.transparent,
//                          child: Button(
//                            icon: Icons.play_arrow,
//                            onPressed: () {
//                              audioCache.play('1.mp3');
//                            },
//                          ),

                        child: IconButton(
                          onPressed: () {
                            if (isPlaying) {
                              advancedPlayer.pause();
                              _handleOnPressed();
                            } else {
                              // _handleOnPressed();

                              audioCache.play('2.mp3');
                              _handleOnPressed();
                              isPlaying = true;
                            }
                          },
//                          icon: isPlaying
//                              ? Icon(Icons.pause)
//                              : Icon(Icons.play_arrow),
                          icon: AnimatedIcon(
                              icon: AnimatedIcons.pause_play,
                              progress: animationController,
                              size: 40,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleOnPressed() {
    setState(
      () {
        isPlaying = !isPlaying;
        isPlaying
            ? animationController.reverse()
            : animationController.forward();
      },
    );
  }
}

class Button extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  Button({this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Icon(
        icon,
        size: 40.0,
        color: Colors.white,
      ),
      onPressed: onPressed,
    );
  }
}
