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
      child: Container(
        child: Text(
          '我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本',
          textAlign: TextAlign.center,

          style: TextStyle(
            fontSize: 20.0,
            color: Colors.brown,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,

            decoration: TextDecoration.underline,
            decorationColor: Colors.cyan,
            decorationStyle: TextDecorationStyle.dashed,

            letterSpacing: 3.0,
          ),

          textScaleFactor: 1.5,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          border: Border.all(
            color: Colors.red,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0)
          ),
        ),

        // padding: EdgeInsets.all(10),
        padding: EdgeInsets.fromLTRB(10, 30, 5, 0),
        // transform: Matrix4.translationValues(100, 0, 0),
        // transform: Matrix4.rotationZ(0.3),
        // transform: Matrix4.diagonal3Values(1.2, 1, 1),
        alignment: Alignment.bottomRight,
      )
    );
  }
}