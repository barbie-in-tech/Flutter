import 'package:flutter/material.dart';
import 'package:flutter_app/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Counselling App'),
      ),
      body:Container(
        alignment: Alignment.center,
        padding:EdgeInsets.symmetric(vertical: 20.0,horizontal: 15.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Sign In"),
              RaisedButton(
               child:Text('Sign in anon'),
                onPressed: () async {
                  dynamic result = await _auth.signInAnon();
                  if(result==null){
                    print('error signing in');
                  }else{
                    print('signed in');
                    print(result.uid);
                  }
          },
        ),
      ],
      ),
    ),
    );
  }
}
