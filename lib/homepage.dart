import "package:flutter/material.dart";
import "package:flutterchat/chat_screen.dart";
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     appBar: new AppBar(
       title: new Text("Chatter"),
     ),
     body:new ChatScreen()
    );
  }
}