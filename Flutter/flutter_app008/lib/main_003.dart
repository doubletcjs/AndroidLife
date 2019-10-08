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
          title: Text('AspectRatio Card Demo'),
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
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  '张三',
                ),
                subtitle: Text(
                  '高级工程师',
                ),
              ),
              ListTile(
                title: Text(
                  '电话：xxxxx',
                ),
              ),
              ListTile(
                title: Text(
                  '地址：xxxxx',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
