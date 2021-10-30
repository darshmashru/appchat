import 'package:appchat/views/signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

getLoggedInState() async{
  await HelperFunction.getUserLoggedInSharedPrefernce().then((value){
      setState(() {
        userIsLoggedIn  = value;
      });
    });
}

void setState(Null Function() param0) {
}

class HelperFunction {
  static getUserLoggedInSharedPrefernce() {}
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: signin(),
    );
  }
}
