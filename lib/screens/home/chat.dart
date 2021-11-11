import 'package:flutter/material.dart';
import 'chatUsersModel.dart';
import 'package:flutter/cupertino.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Chats", style: TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.only(
                          left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.red[50],
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add, color: Colors.red, size: 20,),
                          SizedBox(width: 2,),
                          Text("Add New", style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ],
                ),

              ),
            ), Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search, color: Colors.grey.shade600, size: 20,),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.grey.shade100
                      )
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  List<ChatUsers> chatUsers = [
    ChatUsers(name: "Jane Russel", messageText: "Awesome Setup", time: "Now", imageURL: '/Users/darshmashru/Desktop/Coding/flutterapps/images/1.jpg'),
    ChatUsers(
        name: "Glady's Murphy", messageText: "That's Great", time: "Yesterday", imageURL: '/Users/darshmashru/Desktop/Coding/flutterapps/images/2.jpg'),
    ChatUsers(
        name: "Jorge Henry", messageText: "Hey where are you?", time: "31 Mar", imageURL: '/Users/darshmashru/Desktop/Coding/flutterapps/images/1.jpg'),
    ChatUsers(name: "Philip Fox",
        messageText: "Busy! Call me in 20 mins",
        time: "28 Mar", imageURL: '/Users/darshmashru/Desktop/Coding/flutterapps/images/1.jpg'),
    ChatUsers(name: "Debra Hawkins",
        messageText: "Thankyou, It's awesome",
        time: "23 Mar", imageURL: '/Users/darshmashru/Desktop/Coding/flutterapps/images/1.jpg',),
    ChatUsers(name: "Jacob Pena",
        messageText: "will update you in evening",
        time: "17 Mar", imageURL: '/Users/darshmashru/Desktop/Coding/flutterapps/images/1.jpg'),
    ChatUsers(name: "Andrey Jones",
        messageText: "Can you please share the file?",
        time: "24 Feb", imageURL: '/Users/darshmashru/Desktop/Coding/flutterapps/images/1.jpg'),
    ChatUsers(name: "John Wick", messageText: "How are you?", time: "18 Feb", imageURL: '/Users/darshmashru/Desktop/Coding/flutterapps/images/1.jpg'),
  ];
}