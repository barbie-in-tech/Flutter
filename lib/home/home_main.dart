import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/services/auth.dart';

import 'home.dart';
import 'profile.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedPage = 0;
  final AuthService _auth = AuthService();
  final _pageOptions = [
    HomePage(),
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectedPage],

      bottomNavigationBar: FloatingNavbar(
          backgroundColor: Color(0x00000000),
          selectedBackgroundColor: Colors.purple[100],
          unselectedItemColor: Colors.pink[100],
          selectedItemColor: Colors.purple[900],
          currentIndex: _selectedPage,
//          type: FloatingNavbar.fixed,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            FloatingNavbarItem(icon: Icons.healing, title: 'Home'),
            FloatingNavbarItem(icon: Icons.forum, title: 'Forum'),
            FloatingNavbarItem(icon: Icons.home, title: 'Home'),
            FloatingNavbarItem(icon: Icons.chat, title: 'Chat'),
            FloatingNavbarItem(icon: Icons.perm_identity, title: 'Profile'),
          ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
