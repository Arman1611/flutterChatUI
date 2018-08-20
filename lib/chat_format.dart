import 'package:flutter/material.dart';

class ChatFormat extends StatelessWidget {
  static const String _name="Arman";
  String text;
  ChatFormat({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin:const EdgeInsets.only(right: 16.0),
            child:new CircleAvatar(
              child: new Text(_name[0]),
            )
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(_name,style:Theme.of(context).textTheme.subhead),
              new Container(
                margin: const EdgeInsets.only(top:4.0),
                child: new Text(text),
              )
            ],
          )
        ],
      )
    );
  }
}