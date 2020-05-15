import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Ask Me Anything"),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 4.0,
      ),
      body: MyAnswer(),
    );
  }
}

class MyAnswer extends StatefulWidget {
  @override
  _MyAnswerState createState() => _MyAnswerState();
}

class _MyAnswerState extends State<MyAnswer> {
  int number = 3;

  void generateNum() {
    setState(() {
      number = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset("images/ball$number.png"),
        onPressed: () {
          generateNum();
        },
      ),
    );
  }
}
