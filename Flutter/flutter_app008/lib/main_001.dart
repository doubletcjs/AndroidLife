import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'AspectRatio Card Demo'
          ),
        ),
        body: MyAppContent(),
      ),
      theme: ThemeData.dark(),
    );
  }
}

class MyAppContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 300, 
      color: Colors.yellow,
      child: AspectRatio(
        aspectRatio: 3/1,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}