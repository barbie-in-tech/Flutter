import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MPlayer extends StatefulWidget {
  @override
  _MPlayerState createState() => _MPlayerState();
}

class _MPlayerState extends State<MPlayer> with SingleTickerProviderStateMixin {
  VideoPlayerController _vpController;

  double _value = 0.0;
  void _setValue(double value) {
    setState(() {
      _value = value;
    });
  }

  AnimationController animationController;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _vpController = VideoPlayerController.asset("assets/videos/rain.mp4")
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      SizedBox.expand(
          child: FittedBox(
        // If your background video doesn't look right, try changing the BoxFit property.
        // BoxFit.fill created the look I was going for.
        fit: BoxFit.fill,
        child: SizedBox(
          width: _vpController.value.size?.width ?? 0,
          height: _vpController.value.size?.height ?? 0,
          child: VideoPlayer(_vpController),
        ),
      )),
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
            Container(
              margin: EdgeInsets.only(top: 55),
              child: Text("NAME",
                  style: TextStyle(
                    fontSize: 40,
                    fontStyle: FontStyle.italic,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4),
              child: Slider(
                onChanged: (v) {
                  setState((){
                    _value = v;
                  });
                },
                value: _value,
                max: 100,
                min: 0,
                activeColor: Colors.black,
                inactiveColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: Row(
                children: <Widget>[
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.replay, color: Colors.black, size: 30)),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black,
                    child: IconButton(
                        onPressed: () {
                          _handleOnPressed();
                        },
                        icon: AnimatedIcon(
                            icon: AnimatedIcons.play_pause,
                            progress: animationController,
                            size: 30,
                            color: Colors.white)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ]));
  }

  void _handleOnPressed() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying ? animationController.forward() : animationController.reverse();
    });
  }
}
