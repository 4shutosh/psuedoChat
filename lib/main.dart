import 'package:flutter/material.dart';
import 'HomePage.dart';
void main()=>runApp(new myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Chat App",
      home: new HomePage()
    );
  }
}
