import 'package:flutter/material.dart';
import 'package:flutter_app/player.dart';

class CalmBox extends StatefulWidget {
  @override
  _CalmBoxState createState() => _CalmBoxState();
}

class _CalmBoxState extends State<CalmBox> {
  @override
  Widget build(BuildContext context) {
    Widget horizontalList1 = new Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CardLayout(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExampleApp()),
                );
              },
              image: "4",
            ),
            CardLayout(
              image: "4",
            ),
            CardLayout(
              image: "4",
            ),
            CardLayout(
              image: "4",
            ),
          ],
        ));

    Widget horizontalList2 = new Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CardLayout(
              image: "3",
            ),
            CardLayout(
              image: "3",
            ),
            CardLayout(
              image: "3",
            ),
            CardLayout(
              image: "3",
            ),
          ],
        ));

    Widget horizontalList3 = new Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CardLayout(
              image: "6",
            ),
            CardLayout(
              image: "6",
            ),
            CardLayout(
              image: "6",
            ),
            CardLayout(
              image: "6",
            ),
          ],
        ));
    Widget horizontalList4 = new Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CardLayout(
              image: "5",
            ),
            CardLayout(
              image: "5",
            ),
            CardLayout(
              image: "5",
            ),
            CardLayout(
              image: "5",
            ),
          ],
        ));
    Widget horizontalList5 = new Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CardLayout(
              image: "7",
            ),
            CardLayout(
              image: "7",
            ),
            CardLayout(
              image: "7",
            ),
            CardLayout(
              image: "7",
            ),
          ],
        ));

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        color: Color(0xffc6eff5),
                      ),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          "<",
                          style: TextStyle(
                            fontFamily: 'Sacramento',
                            color: Colors.black87,
                            fontSize: 40.0,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        color: Color(0xffd7c2f0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                        ),
                      ),
                      child: Text(
                        "calm your mind",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Sacramento',
                          color: Colors.black87,
                          fontSize: 40.0,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox()
                ],
              ),
              Headings(
                text: "Relaxing music",
              ),
              horizontalList1,
              Headings(
                text: "Relaxing visuals",
              ),
              horizontalList2,
              Headings(
                text: "Yoga",
              ),
              horizontalList3,
              Headings(
                text: "Meditation",
              ),
              horizontalList4,
              Headings(
                text: "Podcast",
              ),
              horizontalList5,
            ],
          ),
        ),
      ),
    );
  }
}

class Headings extends StatelessWidget {
  final String text;
  Headings({this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(10.0, 50.0, 0.0, 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Text(
                text,
                style: TextStyle(fontFamily: 'Red Rose', fontSize: 20.0),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                '+ more',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.purple[300],
                ),
              ),
            )
          ],
        ));
  }
}

class CardLayout extends StatelessWidget {
  final Function onPressed;
  final String image;
  CardLayout({this.onPressed, this.image});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Container(
        child: Image(
          image: AssetImage('assets/images/$image.png'),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.purple[100],
                  Colors.lightBlue[100],
                ]),
            borderRadius: BorderRadius.circular(20.0)),
        width: 170.0,
        height: 170.0,
      ),
    );
  }
}
