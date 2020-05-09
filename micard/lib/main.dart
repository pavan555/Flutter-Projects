import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("images/avatar.jpg"),
            ),
            Text(
              "Sai Pavan Kumar",
              style: TextStyle(
                  fontFamily: "Pacifico",
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.white),
            ),
            Text(
              "Android Developer",
              style: TextStyle(
                  fontFamily: "SourceSansPro",
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.0),
            ),
            SizedBox(
              height: 40.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "+91 9490718115",
                      style: TextStyle(
                          fontFamily: "SourceSansPro",
                          fontWeight: FontWeight.bold,
                          color: Colors.teal.shade900,
                          fontSize: 18.0,
                          letterSpacing: 1.5),
                    )),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "gandhipavan@gmail.com",
                    style: TextStyle(
                      fontFamily: "SourceSansPro",
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
