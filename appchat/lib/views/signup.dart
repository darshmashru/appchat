import 'dart:html';

import 'package:appchat/views/chatroom.dart';
import 'package:flutter/material.dart';
import 'package:appchat/Widgets/widget.dart';
// ignore: unused_import
import 'package:appchat/services/auth.dart';
import 'package:appchat/views/chatroom.dart';

class signup extends StatefulWidget{
  @override 
  _signupState createState() => _signupState();
}

class _signupState extends State<signup>{

  bool isLoading = false;


  Authmethods authmethods= new Authmethods();

  final formKey = GlobalKey<FormState>();
  TextEditingController usernameTextEditingController = new TextEditingController();
  TextEditingController emailTextEditingController = new TextEditingController();
  TextEditingController passwordTextEditingController = new TextEditingController();
  
  signMeUp(){
    if(formKey.currentState!.validate()){
      setState(() {
        isLoading = true;
      });
      authmethods.signUpWithEmailAndPassword(emailTextEditingController.text, passwordTextEditingController.text).then((val){
        //print("$val");
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ChatRoom()
        ));
      }
      );
    }
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: isLoading ? Container(
        child: Center(child: CircularProgressIndicator())
      ) : 
        SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                   validator: (val){
                      return val!.isEmpty || val.length < 3 ? "Enter Username of more than 3 characters" : null;
                    },
                    controller: usernameTextEditingController,
                    style: simpleTextStyle(),
                    decoration: textFieldInputDecoration("User Name")
                  ),
                    TextFormField(
                       validator: (val){
                         return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val!) ?
                          null : "Enter correct email";
                    },
                      controller: emailTextEditingController,
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
                    TextFormField(
                        validator:  (val){
                        return val!.length < 6 ? "Enter Password 6+ characters" : null;
                      },
                      obscureText: true,
                      controller: passwordTextEditingController,
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
                ]
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
              GestureDetector(
                onTap: (){

                },
                child: Container(
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
                  child: Text("Signup", style: TextStyle(color: Colors.pink,
                    fontSize: 18),)
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
                child: Text("Signup With Google", style: TextStyle(color: Colors.pink,
                  fontSize: 18),)
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account??", style: mediumTextStyle(),),
                Text("Login karlo :)", style: TextStyle(color: Colors.white54,
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