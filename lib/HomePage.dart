import 'package:flutter/material.dart';
import 'ChatScreen.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Let's Talk!"),
      ),
      body: ChatScreen(),
    );
  }
}
