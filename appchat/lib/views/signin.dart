
import 'package:appchat/Widgets/widget.dart';
import 'package:flutter/material.dart';


class signin extends StatefulWidget{
  @override 
  _signinState createState() => _signinState();

}

class _signinState extends State<signin>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "email id",
                hintStyle: TextStyle(
                  color: Colors.white54
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red) )
              ),
            ),
            TextField(
              style: TextStyle(
                color: Colors.white54
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "password",
                hintStyle: TextStyle(
                  color: Colors.white54
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red) ),
              ),
            ),
            SizedBox(height: 8,),
            Container(
              alignment: Alignment.center,
              child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              child: Text("Forgot Password?", style: simpleTextStyle(),),
            ),
            ),
            SizedBox(height: 8,),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFFCCBC),
                      const Color(0xFFDCEDC8),
                    ]
                  ),
                  borderRadius: BorderRadius.circular(30) 
                ),
                child: Text("Signin", style: TextStyle(color: Colors.pink,
                  fontSize: 18),)
            ),
            SizedBox(height: 8,),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFFCCBC),
                      const Color(0xFFDCEDC8),
                    ]
                  ),
                  borderRadius: BorderRadius.circular(30) 
                ),
                child: Text("Signin With Google", style: TextStyle(color: Colors.pink,
                  fontSize: 18),)
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dont have an account??", style: mediumTextStyle(),),
                Text("Register karlo :)", style: TextStyle(color: Colors.white54,
                  fontSize: 18, decoration: TextDecoration.underline),
                ),
              ],
            ),
            SizedBox(height: 50,),
          ],),
          ),
      ),
    );
  }
}