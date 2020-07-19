import 'package:flutter/material.dart';
import 'package:flutter_app/services/auth.dart';
class HomePage extends StatelessWidget{
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Scrollbar(
        // Column is also a layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Invoke "debug painting" (press "p" in the console, choose the
        // "Toggle Debug Paint" action from the Flutter Inspector in Android
        // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        // to see the wireframe for each widget.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
        child:SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
          Icon(
              Icons.person,
            size: 100.0,
            color: Colors.grey,
          ),
          Text(
            'Hi, Name',
          ),
            SizedBox(height: 15),
          Text('Hope you are having a good day!!',
            style:const TextStyle(
              fontSize: 25.0,
              color: Colors.orange,
            ),
          ),
            SizedBox(height: 15),
          Card(
            shape:
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0)
            ),
            color: Colors.purple[100],
            child: Column(
              mainAxisSize: MainAxisSize.max,

              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                  "          11:45 am",
                ),
              ),
            ),

                const ListTile(
                  contentPadding: EdgeInsets.all(10.0),
                 trailing: FlutterLogo(size:72.0),
                  title: Text('Today Meditation',
                    style:const TextStyle(
                    fontSize: 25.0,
                    color: Colors.black87,
                  ),
                  ),
                  subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
            ],
          ),
      ),
            SizedBox(height: 10),
            Card(
              shape:
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0)
              ),
              color: Colors.brown[100],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "          10:00 am",
                      ),
                    ),
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.all(10.0),
                    trailing: FlutterLogo(size:72.0),
                    title: Text('Talk to Someone',
                      style:const TextStyle(
                        fontSize: 25.0,
                        color: Colors.black87,
                      ),
                    ),
                    subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Card(
              shape:
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0)
              ),
              color: Colors.blueGrey[100],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "          9:00 pm",
                      ),
                    ),
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.all(10.0),
                    trailing: FlutterLogo(size:72.0),
                    title: Text('Share Your Thoughts',
                      style:const TextStyle(
                        fontSize: 25.0,
                        color: Colors.black87,
                      ),
                    ),
                    subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Card(
              shape:
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0)
              ),
              color: Colors.lightGreenAccent[100],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "          11:45 am",
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(10.0),
                    trailing: SizedBox(
                      height: 150.0,
                      width: 120.0, // fixed width and height
                      child: Image.asset('assets/images/med.jpg')),
                    title: Text('Map your Thoughts',
                      style:const TextStyle(
                        fontSize: 25.0,
                        color: Colors.black87,
                      ),
                    ),
                    subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Card(
              shape:
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0)
              ),
              color: Colors.grey[200],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "          11:45 am",
                      ),
                    ),
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.all(10.0),
                    trailing: FlutterLogo(size:72.0),
                    title: Text('Track Your Mood!!',
                      style:const TextStyle(
                        fontSize: 25.0,
                        color: Colors.black87,
                      ),
                    ),
                    subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  ),
                ],
              ),
            ),
      ],
    ),
      ),
      ),
    );
  }
}