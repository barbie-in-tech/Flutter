import 'package:flutter/material.dart';

class HL1 extends StatefulWidget {
  @override
  _HL1State createState() => _HL1State();
}

class _HL1State extends State<HL1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.contacts), text: "Tab 1"),
                Tab(icon: Icon(Icons.camera_alt), text: "Tab 2")
              ],
            ),
          ),
          body: ListView(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  "Breather and let go",
                  style: TextStyle(
                    color: Colors.purple,
                    fontFamily: 'Red Rose',
                    fontSize: 25.0,
                  ),
                ),
              ),
              Cards(),
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
                  color: Colors.purple[50],
                  borderRadius: BorderRadius.circular(20.0)),
              height: MediaQuery.of(context).size.height * 0.27,
              width: MediaQuery.of(context).size.width * 0.41,
            ),
          ),
          MaterialButton(
            elevation: 0.0,
            onPressed: onPressed2,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.purple[50],
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
