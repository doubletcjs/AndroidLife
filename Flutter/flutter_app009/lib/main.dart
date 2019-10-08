import 'dart:ui';

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
          title: Text('Wrap Demo'),
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
      height: 600,
      width: 400,
      color: Colors.amber,
      padding: EdgeInsets.all(10),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        direction: Axis.vertical,
        // alignment: WrapAlignment.spaceEvenly,
        // runAlignment: WrapAlignment.center,
        children: <Widget>[
          MyButton('第1集'),
          MyButton('第2集第2集'),
          MyButton('第3集'),
          MyButton('第4集第2集'),
          MyButton('第5集'),
          MyButton('第2集第6集'),
          MyButton('第7集'),
          MyButton('第8集'),
          MyButton('第2集第9集'),
          MyButton('第10集'),
          MyButton('第2集第11集'),
          MyButton('第12集'),
          MyButton('第13集'),
          MyButton('第14集'),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String title; 
  const MyButton(this.title, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(
        this.title,
      ),
      onPressed: () {},
      textColor: Theme.of(context).accentColor,
    );
  }
}
