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
            '图片',
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
    return Center(
      child: Container( 
        child: ClipOval(
          child: Image.network(
            'https://i0.hdslb.com/bfs/sycp/creative_img/201909/992098ee18ebded78e7f9c71e36f9dce.jpg',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      )
    );
  }
}