import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/models/user.dart';
import 'home/home_main.dart';
import 'authenticate/authenticate.dart';
class Wrapper extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final user = Provider.of<User>(context);
    if(user==null){
      return Authenticate();
    }else {
      return MyApp();
    }
  }
}