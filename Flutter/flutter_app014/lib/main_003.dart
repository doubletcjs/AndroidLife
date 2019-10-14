import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//自定义组件 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Demo',
          ),
        ),
        body: MyAppContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}

class MyAppContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        '您好 flutter',
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.yellow,
        ),
        textDirection: TextDirection.ltr,
      ),
    );
  }
}