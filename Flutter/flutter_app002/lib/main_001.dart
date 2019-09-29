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
        child: Image.network(
          'https://i0.hdslb.com/bfs/sycp/creative_img/201909/d3197198f1141f35f0910d623346f8b9.jpg',
          alignment: Alignment.center,
          // color: Colors.blue,
          // colorBlendMode: BlendMode.screen,
          fit: BoxFit.cover,
          // fit: BoxFit.contain,
          // fit: BoxFit.fitHeight,
          // repeat: ImageRepeat.repeatY, 
        ),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow, 
        ),
      )
    );
  }
}