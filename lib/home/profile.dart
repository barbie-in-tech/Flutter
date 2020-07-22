import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
        color: Color(0xfff6defc),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.not_interested,
              size: 60.0,
              color: Colors.red,
            ),
            Text(
              'Disable AD',
              style: const TextStyle(
                fontSize: 22.0,
                color: Colors.black87,
              ),
            )
          ],
        ),
      ),
      Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
        color: Color(0xffdec5fa),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.star,
              size: 60.0,
              color: Color(0xfffff700),
            ),
            Text(
              'Rate App',
              style: const TextStyle(
                fontSize: 25.0,
                color: Colors.black87,
              ),
            )
          ],
        ),
      ),
      Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
        color: Color(0xffdec5fa),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.person,
              size: 60.0,
              color: Color(0xff2a0752),
            ),
            Text(
              'User Info',
              style: const TextStyle(
                fontSize: 25.0,
                color: Colors.black87,
              ),
            )
          ],
        ),
      ),
      Card(
        elevation: 10.0,
        shadowColor: Color(0xff28074d),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
        color: Color(0xfff6defc),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.notifications,
              size: 60.0,
              color: Colors.blue,
            ),
            Text(
              'Notifications',
              style: const TextStyle(
                fontSize: 22.0,
                color: Colors.black87,
              ),
            )
          ],
        ),
      ),
    ];
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: ([
                Color(0xff28074d),
                Color(0xffebd9ff),
                Color(0xfff2e6ff),
                Colors.white
              ]))),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 6.0,
        children: children,
        padding: EdgeInsets.all(7.0),
      ),
    );
  }
}
