import 'package:flutter/material.dart';
import 'ChatMessage.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  final TextEditingController _textController = new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage> [];


  void _handleSubmited(String text) {
   ChatMessage message = new ChatMessage(
     text: text,
   );
   setState(() {
     _messages.insert(0, message);
   });
    _textController.clear();
  }


  Widget _TextComposerWidget(){
    return new IconTheme(
      data: new IconThemeData(
        color: Colors.blue
      ),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                decoration: new InputDecoration.collapsed(hintText: "Type a message"),
                controller: _textController,
                onSubmitted: _handleSubmited,
              ),
            ),
            new Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: new IconButton(
                  icon: new Icon(Icons.send),
                  onPressed:()=> _handleSubmited(_textController.text)),
            ),
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
            padding: new EdgeInsets.all(8.0),
            reverse: true,
            itemBuilder: (_,int index) => _messages[index],
          ),
        ),
        new Divider(height: 10),
        new Container(
          decoration: new BoxDecoration(
            color: Theme.of(context).cardColor,),
          child: _TextComposerWidget(),

        )
      ],
    );
  }
}
