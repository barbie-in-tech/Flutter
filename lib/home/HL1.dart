import 'package:flutter/material.dart';

class HL1 extends StatefulWidget {
  @override
  _HL1State createState() => _HL1State();
}

class _HL1State extends State<HL1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg2.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  "Breathe and let go",
                  style: TextStyle(
                    color: Colors.deepPurple[700],
                    fontFamily: 'Red Rose',
                    fontSize: 25.0,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "───────────",
                  style: TextStyle(
                    color: Colors.deepPurple[700],
                    fontFamily: 'Red Rose',
                    fontSize: 25.0,
                  ),
                ),
              ),
              Cards(
                onPressed1: () {},
              ),
              Cards(),
              Cards(),
              Cards(),
              Cards(),
              Cards(),
              Cards(),
              Cards(),
            ],
          ),
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final Function onPressed1;
  final Function onPressed2;

  Cards({this.onPressed1, this.onPressed2});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          MaterialButton(
            elevation: 0.0,
            onPressed: onPressed1,
            child: Container(
              decoration: BoxDecoration(
                //border: Border.all(color: Colors.deepPurple[900], width: 1.5),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.purple[100],
                      Colors.pink[100],
                    ]),
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: MediaQuery.of(context).size.height * 0.27,
              width: MediaQuery.of(context).size.width * 0.41,
            ),
          ),
          MaterialButton(
            elevation: 0.0,
            onPressed: onPressed2,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.pink[100],
                        Colors.purple[100],
                      ]),
                  borderRadius: BorderRadius.circular(20.0)),
              height: MediaQuery.of(context).size.height * 0.27,
              width: MediaQuery.of(context).size.width * 0.41,
            ),
          )
        ],
      ),
    );
  }
}
