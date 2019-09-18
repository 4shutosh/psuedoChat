import 'package:flutter/material.dart';

const String _name = "Ashutosh";

class ChatMessage extends StatelessWidget {
  final String text ;
  ChatMessage({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(top: 2,),
            child: new CircleAvatar(
              child: new Text(_name[0]),
            ),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(_name,style: Theme.of(context).textTheme.subhead),
              new Container(
                margin: const EdgeInsets.all(5.0),
                child: new Text(text),
              )
            ],
          )
        ],
      )
    );
  }
}
