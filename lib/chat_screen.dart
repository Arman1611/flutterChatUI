import "package:flutter/material.dart";
import 'package:flutterchat/chat_format.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  final TextEditingController _textController=new TextEditingController();
  final List<ChatFormat> _message=new List<ChatFormat>();
  void _submitText(String text)
  {  
    if(text.isEmpty) return;
    _textController.clear();
    ChatFormat chatFormat=new ChatFormat(text: text,);
    setState(() {
          _message.insert(0, chatFormat);
        });
  }
  Widget _textComposerWidget()
  {
     return IconTheme(
        data: new IconThemeData(
          color:Colors.yellow
        ),
        child: new Container(
         margin: const EdgeInsets.symmetric(horizontal: 8.0),
         child: new Row(
           children: <Widget>[
             new Flexible(
             child: new TextField(
              decoration:new InputDecoration.collapsed(
              hintText: "Enter the message"
               ),
              controller: _textController,
              onSubmitted: _submitText,
              ),
             ),
             new Container(
               margin:const EdgeInsets.symmetric(horizontal: 4.0),
               child:new IconButton(
                 icon: new Icon(Icons.send),
                 onPressed: ()=>_submitText(_textController.text),
               )
             )
           ],
         )
       ),
     );
  }
  @override
  Widget build(BuildContext context) {
    return new Column(
       children: <Widget>[
         new Flexible(
           child: new ListView.builder(
             itemBuilder: (context,int index)=>_message[index],
             padding: const EdgeInsets.all(8.0),
             reverse:true,
             itemCount: _message.length,
           ),
         ),
         new Divider(height: 1.0,),
         new Container(
             decoration: new BoxDecoration(
             color: Theme.of(context).cardColor
           ),
           child:_textComposerWidget()
         )
       ],
    );
  }
}
