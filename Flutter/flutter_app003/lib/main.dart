import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
            '列表 Demo',
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
      height: 180,
      child: ListView(   
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: <Widget>[  
          Container( 
            width: 180,
            height: 180,
            color: Colors.red,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.orange,
            child: ListView(
              children: <Widget>[
                Image.network(
                  'https://www.itying.com/images/flutter/1.png',
                ),
                Text(
                  '文字',
                ),
              ],
            ),
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.blue,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}