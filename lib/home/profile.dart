import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> children=[
      Card( shape:
      RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35.0)
      ),
        color: Colors.brown[100],
        child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Icon(
              Icons.not_interested,
            size: 60.0,
          ),
          Text(
              'Disable AD',
            style: const TextStyle(
              fontSize: 25.0,
              color: Colors.black87,
            ),
          )
        ],
        ),
      ),
      Card(
        shape:
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35.0)
        ),
        color: Colors.brown[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.star,
              size: 60.0,
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
      Card( shape:
      RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35.0)
      ),
        color: Colors.brown[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.person,
              size: 60.0,
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
        shape:
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35.0)
        ),
        color: Colors.brown[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.notifications,
              size: 60.0,
            ),
            Text(
              'Notifications',
              style: const TextStyle(
                fontSize: 25.0,
                color: Colors.black87,
              ),
            )
          ],
        ),
      ),
    ];
    return GridView.count(
      crossAxisCount: 2,
        crossAxisSpacing: 6.0,
        children: children,
    );
  }
}
