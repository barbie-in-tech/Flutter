import 'package:flutter/material.dart';
import 'package:flutter_app/services/auth.dart';
import 'package:flutter_app/services/delayed_animation.dart';

class HomePage extends StatefulWidget {
  final AuthService _auth = AuthService();
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final int delayedAmount = 500;
  double _scale;
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  Widget build(BuildContext context) {
    final color = Colors.white;
    _scale = 1 - _controller.value;
    return SafeArea(
        child: Container(
      child: ListView(children: <Widget>[
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 30.0, horizontal: 10.0),
                      child: Icon(Icons.arrow_back_ios)),
                ],
              ),
              DelayedAnimation(
                child: Text(
                  'Hello, Name!',
                  style: TextStyle(
                      fontFamily: 'Sacramento',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                ),
                delay: delayedAmount + 1000,
              ),
              DelayedAnimation(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Material(
                    color: Color(0xff8862b3),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0)),
                    elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () {
                        //Implement login functionality.
                      },
                      minWidth: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            height: 30.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Talk to a ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                              Text(
                                'psychologist',
                                style: TextStyle(
                                  fontFamily: 'Sacramento',
                                  color: Colors.white,
                                  fontSize: 30.0,
                                ),
                              )
                            ],
                          ),
                          Container(
                            child: Image(
                              image: AssetImage(
                                'assets/images/chat.png',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                delay: delayedAmount + 3000,
              ),
              DelayedAnimation(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Material(
                    color: Color(0xff8862b3),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0)),
                    elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            height: 30.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'A',
                                    style: TextStyle(
                                        fontFamily: 'Sacramento',
                                        color: Colors.white,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'ctivities',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Container(
                            child: Image(
                              image: AssetImage(
                                'assets/images/relax.png',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                delay: delayedAmount + 3000,
              ),
              DelayedAnimation(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Material(
                    color: Color(0xff8862b3),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0)),
                    elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () {
                        //Implement login functionality.
                      },
                      minWidth: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            height: 30.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Calm your',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                              Text(
                                'mind',
                                style: TextStyle(
                                  fontFamily: 'Sacramento',
                                  color: Colors.white,
                                  fontSize: 30.0,
                                ),
                              )
                            ],
                          ),
                          Container(
                            child: Image(
                              image: AssetImage(
                                'assets/images/mind.png',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                delay: delayedAmount + 3000,
              ),
              DelayedAnimation(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Material(
                    color: Color(0xff8862b3),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0)),
                    elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () {
                        //Implement login functionality.
                      },
                      minWidth: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'F',
                                style: TextStyle(
                                    fontFamily: 'Sacramento',
                                    color: Colors.white,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'orums',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Container(
                            child: Image(
                              image: AssetImage(
                                'assets/images/forum.png',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                delay: delayedAmount + 3000,
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}
