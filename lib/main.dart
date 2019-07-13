import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
              backgroundColor: Colors.red,
              title: Text("Ask AnyThing"),
            ),
            body: MyApp()),
      ),
    );

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int randomvariable = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: () {
            setState(() {
              randomvariable = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset("images/ball$randomvariable.png")),
    );
  }
}
