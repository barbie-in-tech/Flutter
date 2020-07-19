
import 'package:flutter/material.dart';
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
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


        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                shape:
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: ListTile(
                  title: Text('Three-line ListTile'),
                  subtitle: Text(
                      'A sufficiently long subtitle warrants three lines.'
                  ),
                  isThreeLine: true,
                ),
              ),
              Card(
                shape:
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0)
                ),
              ),
              ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
                      Icon(
                      Icons.perm_identity,
                      size: 100.0,
                  ),
                  Text(
                  'Hi,Name',
                  ),
              ]
            ),
      ],
      ),
    );
  }
}
