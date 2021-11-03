import 'package:appchat/views/signin.dart';
import 'package:appchat/views/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
      title: 'chat app',
      theme: ThemeData(
        primaryColor: Colors.yellowAccent,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // ignore: prefer_const_constructors
        scaffoldBackgroundColor: Color(0xFF000000),
      ),
      home: signup(),
    );
  }
}
