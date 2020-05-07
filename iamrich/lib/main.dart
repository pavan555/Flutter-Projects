import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I am rich',
      home: Scaffold(
        appBar: AppBar(
          title: Text("I Am Rich",
            style:TextStyle(color: Colors.redAccent),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightGreenAccent[400],
        ),
        body: Center(
          child: Image(
            image: AssetImage("images/diamond.png"),
          ),
        ),
        backgroundColor: Colors.lightBlue[400],
      ),
    );
  }
}
