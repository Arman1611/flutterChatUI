import "package:flutter/material.dart";
import "package:flutterchat/homepage.dart";
void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My Chat App",
      home:new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
        accentColor: Colors.teal,
        brightness: Brightness.light
      ),
    );
  }
}

